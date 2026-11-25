/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/biz/controller.NewTaskChainHandler | VA 0xe83d80 | task_chain_controller.go:26
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &req *CAS-Backend/biz/controller.TaskChainRequest, t *CAS-Backend/biz/dao.TaskChain, ~r0.data *uint8, ~r0.itab uintptr, err error */
void __stdcall biz_controller_NewTaskChainHandler(int64_t arg_8h, int64_t arg_88h)
{
    char cVar1;
    int64_t in_RAX;
    undefined8 *puVar2;
    undefined8 uVar3;
    undefined8 extraout_RAX;
    undefined8 *extraout_RAX_00;
    undefined8 *extraout_RAX_01;
    undefined8 *puVar4;
    uint64_t uVar5;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 extraout_RCX_01;
    int64_t extraout_RCX_02;
    int64_t extraout_RCX_03;
    int64_t extraout_RCX_04;
    int64_t iVar6;
    undefined8 extraout_RCX_05;
    undefined8 extraout_RCX_06;
    undefined8 extraout_RCX_07;
    int64_t extraout_RBX;
    undefined8 extraout_RBX_00;
    undefined8 extraout_RBX_01;
    undefined8 extraout_RBX_02;
    undefined8 extraout_RSI;
    int64_t extraout_RDI;
    uint64_t uVar7;
    undefined8 *extraout_R11;
    int64_t *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    undefined8 *extraout_R11_03;
    int64_t *extraout_R11_04;
    undefined8 *extraout_R11_05;
    undefined8 *extraout_R11_06;
    undefined8 *extraout_R11_07;
    int64_t *extraout_R11_08;
    undefined8 *extraout_R11_09;
    undefined8 *extraout_R11_10;
    int64_t *extraout_R11_11;
    undefined8 *extraout_R11_12;
    undefined8 *extraout_R11_13;
    int64_t unaff_R14;
    undefined auVar8 [16];
    undefined auVar9 [16];
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
    
    while (&var_20h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(0x1104b80);
    uVar3 = *(undefined8 *)0xfb77e8;
    uVar5 = 0;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar5 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar7 = uVar5 & **(uint64_t **)0xfbb350;
            if ((*(uint64_t **)0xfbb350)[uVar7 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar5 = (*(uint64_t **)0xfbb350)[uVar7 * 2 + 2];
                goto code_r0x00e83de5;
            }
            uVar5 = uVar5 + 1;
        } while ((*(uint64_t **)0xfbb350)[uVar7 * 2 + 1] != 0);
        uVar5 = runtime_typeAssert(0xfbb350);
    }
code_r0x00e83de5:
    auVar8 = (**(code **)(uVar5 + 0x18))(uVar3, *(undefined8 *)(in_RAX + 0x20), 0x1026660, var_10h);
    if (auVar8._0_8_ != 0) {
        var_18h = runtime_makemap_small();
        auVar9 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
        puVar2 = auVar9._0_8_;
        *puVar2 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar9._8_8_, puVar2[1]);
            *extraout_R11 = extraout_RCX;
        }
        puVar2[1] = 0x2e64ac0;
        auVar8 = (**(code **)(auVar8._0_8_ + 0x18))(auVar8._8_8_);
        runtime_concatstring2(0, 0x118043e, 0x14, auVar8._0_8_, auVar8._8_8_);
        var_20h = runtime_convTstring();
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
        *puVar2 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_00 = var_20h;
            extraout_R11_00[1] = puVar2[1];
        }
        puVar2[1] = var_20h;
        var_38h = 0x10a4880;
        var_30h = var_18h;
        uVar3 = runtime_convT(0x10cbee0, &var_38h);
        gin_gonic_gin___Context__Render(in_RAX, 400, 0x2e6f230, uVar3);
        return;
    }
    strings_TrimSpace(*(undefined8 *)(var_10h + 0x28), *(undefined8 *)(var_10h + 0x30));
    if (extraout_RBX == 0) {
        var_18h = runtime_makemap_small();
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
        *puVar2 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            uVar3 = puVar2[1];
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_01 = uVar3;
        }
        puVar2[1] = 0x2e64ac0;
        auVar8 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
        puVar2 = auVar8._0_8_;
        *puVar2 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar8._8_8_, puVar2[1]);
            *extraout_R11_02 = extraout_RCX_00;
        }
        puVar2[1] = 0x2e68b90 /* "任务链 JSON 不能为空" */;
        var_38h = 0x10a4880;
        var_30h = var_18h;
        uVar3 = runtime_convT(0x10cbee0, &var_38h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
        return;
    }
    pkg_agvcontrol_ParseForkliftTaskChainJSON(*(undefined8 *)(var_10h + 0x28), *(undefined8 *)(var_10h + 0x30));
    if (extraout_RDI != 0) {
        var_18h = runtime_makemap_small();
        auVar8 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
        puVar2 = auVar8._0_8_;
        *puVar2 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar8._8_8_, puVar2[1]);
            *extraout_R11_03 = extraout_RCX_01;
        }
        puVar2[1] = 0x2e64ac0;
        (**(code **)(extraout_RDI + 0x18))(extraout_RSI);
        var_20h = runtime_convTstring();
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
        *puVar2 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_04 = var_20h;
            extraout_R11_04[1] = puVar2[1];
        }
        puVar2[1] = var_20h;
        var_38h = 0x10a4880;
        var_30h = var_18h;
        uVar3 = runtime_convT(0x10cbee0, &var_38h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
        return;
    }
    time_Now();
    var_28h = extraout_RCX_02;
    puVar2 = (undefined8 *)runtime_newobject(0x1121540);
    uVar3 = *(undefined8 *)(var_10h + 8);
    puVar2[2] = *(undefined8 *)(var_10h + 0x10);
    iVar6 = var_10h;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier1();
        *extraout_R11_05 = extraout_RBX_01;
        puVar2 = extraout_RAX_00;
        iVar6 = extraout_RCX_03;
        uVar3 = extraout_RBX_01;
    }
    puVar2[1] = uVar3;
    uVar3 = *(undefined8 *)(iVar6 + 0x18);
    puVar2[4] = *(undefined8 *)(iVar6 + 0x20);
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier1();
        *extraout_R11_06 = extraout_RBX_02;
        puVar2 = extraout_RAX_01;
        iVar6 = extraout_RCX_04;
        uVar3 = extraout_RBX_02;
    }
    puVar2[3] = uVar3;
    uVar3 = *(undefined8 *)(iVar6 + 0x28);
    puVar2[6] = *(undefined8 *)(iVar6 + 0x30);
    if (*(int32_t *)0x355db50 != 0) {
        puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11_07 = extraout_RCX_05;
        uVar3 = extraout_RCX_05;
    }
    puVar2[5] = uVar3;
    puVar2[7] = 0;
    puVar2[8] = extraout_RAX;
    puVar2[9] = extraout_RBX_00;
    if (*(int32_t *)0x355db50 != 0) {
        puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11_08 = var_28h;
    }
    puVar2[10] = var_28h;
    cVar1 = biz_dao_InsertTaskChain();
    if (cVar1 == '\0') {
        var_18h = runtime_makemap_small();
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
        *puVar2 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            uVar3 = puVar2[1];
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_12 = uVar3;
        }
        puVar2[1] = 0x2e64ac0;
        auVar8 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
        puVar2 = auVar8._0_8_;
        *puVar2 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar8._8_8_, puVar2[1]);
            *extraout_R11_13 = extraout_RCX_07;
        }
        puVar2[1] = 0x2e68ba0 /* "任务链添加失败" */;
        var_38h = 0x10a4880;
        var_30h = var_18h;
        uVar3 = runtime_convT(0x10cbee0, &var_38h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
        return;
    }
    var_18h = runtime_makemap_small();
    puVar4 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
    *puVar4 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        uVar3 = puVar4[1];
        puVar4 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11_09 = uVar3;
    }
    puVar4[1] = 0x2e67830;
    auVar8 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
    puVar4 = auVar8._0_8_;
    *puVar4 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar4 = (undefined8 *)runtime_gcWriteBarrier1(puVar4, auVar8._8_8_, puVar4[1]);
        *extraout_R11_10 = extraout_RCX_06;
    }
    puVar4[1] = 0x2e68bb0 /* "任务链添加成功" */;
    var_20h = runtime_convT64(*puVar2);
    puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116859a /* "id" */, 2);
    *puVar2 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_11 = var_20h;
        extraout_R11_11[1] = puVar2[1];
    }
    puVar2[1] = var_20h;
    var_38h = 0x10a4880;
    var_30h = var_18h;
    uVar3 = runtime_convT(0x10cbee0, &var_38h);
    gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
    return;
}

/* CAS-Backend/biz/controller.UpdateTaskChainHandler | VA 0xe84540 | task_chain_controller.go:54
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &req *CAS-Backend/biz/controller.TaskChainRequest, ok bool, ~r0.data *uint8, ~r0.itab uintptr, err error */
// WARNING: Variable defined which should be unmapped: var_8h

void __stdcall biz_controller_UpdateTaskChainHandler(int64_t arg_8h, int64_t arg_138h)
{
    char cVar1;
    int64_t in_RAX;
    undefined8 *puVar2;
    undefined8 uVar3;
    uint64_t uVar4;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 extraout_RCX_01;
    undefined8 extraout_RCX_02;
    undefined8 extraout_RCX_03;
    undefined8 extraout_RCX_04;
    undefined8 extraout_RCX_05;
    int64_t iVar5;
    int64_t extraout_RBX;
    int64_t extraout_RSI;
    int64_t extraout_RDI;
    uint64_t uVar6;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    undefined8 *extraout_R11_03;
    int64_t *extraout_R11_04;
    undefined8 *extraout_R11_05;
    undefined8 *extraout_R11_06;
    undefined8 *extraout_R11_07;
    undefined8 *extraout_R11_08;
    undefined8 *extraout_R11_09;
    undefined8 *extraout_R11_10;
    undefined8 *extraout_R11_11;
    int64_t *extraout_R11_12;
    int64_t unaff_R14;
    undefined auVar7 [16];
    int64_t var_160h;
    int64_t var_150h;
    int64_t var_148h;
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
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (&var_d0h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe84f25;
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(0x1104b80);
    uVar4 = 0;
    iVar5 = *(int64_t *)0xfb77e8;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar4 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar6 = uVar4 & **(uint64_t **)0xfbb370;
            if ((*(uint64_t **)0xfbb370)[uVar6 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar4 = (*(uint64_t **)0xfbb370)[uVar6 * 2 + 2];
                goto code_r0x00e845a5;
            }
            uVar4 = uVar4 + 1;
        } while ((*(uint64_t **)0xfbb370)[uVar6 * 2 + 1] != 0);
        var_b0h = *(int64_t *)0xfb77e8;
        uVar4 = runtime_typeAssert(0xfbb370);
        iVar5 = var_b0h;
    }
code_r0x00e845a5:
    auVar7 = (**(code **)(uVar4 + 0x18))(iVar5, *(undefined8 *)(in_RAX + 0x20), 0x1026660, var_10h);
    var_c0h = auVar7._8_8_;
    var_d0h = auVar7._0_8_;
    if (var_d0h != 0) {
        var_18h = runtime_makemap_small();
        auVar7 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
        puVar2 = auVar7._0_8_;
        *puVar2 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar7._8_8_, puVar2[1]);
            *extraout_R11_11 = extraout_RCX_05;
        }
        puVar2[1] = 0x2e64ac0;
        auVar7 = (**(code **)(var_d0h + 0x18))(var_c0h);
        runtime_concatstring2(0, 0x118043e, 0x14, auVar7._0_8_, auVar7._8_8_);
        var_20h = runtime_convTstring();
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
        *puVar2 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_12 = var_20h;
            extraout_R11_12[1] = puVar2[1];
        }
        puVar2[1] = var_20h;
        var_30h = 0x10a4880;
        var_28h = var_18h;
        uVar3 = runtime_convT(0x10cbee0, &var_30h);
        gin_gonic_gin___Context__Render(in_RAX, 400, 0x2e6f230, uVar3);
        return;
    }
    if (*(int64_t *)var_10h < 1) {
        var_18h = runtime_makemap_small();
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
        *puVar2 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            uVar3 = puVar2[1];
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11 = uVar3;
        }
        puVar2[1] = 0x2e64ac0;
        auVar7 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
        puVar2 = auVar7._0_8_;
        *puVar2 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar7._8_8_, puVar2[1]);
            *extraout_R11_00 = extraout_RCX;
        }
        puVar2[1] = 0x2e68bc0 /* "无效的任务链 ID" */;
        var_30h = 0x10a4880;
        var_28h = var_18h;
        uVar3 = runtime_convT(0x10cbee0, &var_30h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
        return;
    }
    strings_TrimSpace(*(undefined8 *)(var_10h + 0x28), *(undefined8 *)(var_10h + 0x30));
    if (extraout_RBX == 0) {
        var_18h = runtime_makemap_small();
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
        *puVar2 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            uVar3 = puVar2[1];
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_01 = uVar3;
        }
        puVar2[1] = 0x2e64ac0;
        auVar7 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
        puVar2 = auVar7._0_8_;
        *puVar2 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar7._8_8_, puVar2[1]);
            *extraout_R11_02 = extraout_RCX_00;
        }
        puVar2[1] = 0x2e68b90 /* "任务链 JSON 不能为空" */;
        var_30h = 0x10a4880;
        var_28h = var_18h;
        uVar3 = runtime_convT(0x10cbee0, &var_30h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
        return;
    }
    pkg_agvcontrol_ParseForkliftTaskChainJSON(*(undefined8 *)(var_10h + 0x28), *(undefined8 *)(var_10h + 0x30));
    if (extraout_RDI == 0) {
        runtime_duffzero_offset_326();
        biz_dao_Select1TaskChain(*(undefined8 *)var_10h);
        cVar1 = runtime_duffcopy_offset_798();
        if (cVar1 == '\0') {
            var_18h = runtime_makemap_small();
            puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
            *puVar2 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                uVar3 = puVar2[1];
                puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11_09 = uVar3;
            }
            puVar2[1] = 0x2e64ac0;
            auVar7 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
            puVar2 = auVar7._0_8_;
            *puVar2 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar7._8_8_, puVar2[1]);
                *extraout_R11_10 = extraout_RCX_04;
            }
            puVar2[1] = 0x2e68bd0 /* "任务链不存在" */;
            var_30h = 0x10a4880;
            var_28h = var_18h;
            uVar3 = runtime_convT(0x10cbee0, &var_30h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
            return;
        }
        runtime_duffzero_offset_326();
        var_a8h = *(int64_t *)var_10h;
        var_a0h = *(int64_t *)(var_10h + 8);
        var_98h = *(int64_t *)(var_10h + 0x10);
        var_90h = *(int64_t *)(var_10h + 0x18);
        var_88h = *(int64_t *)(var_10h + 0x20);
        var_80h = *(int64_t *)(var_10h + 0x28);
        var_78h = *(int64_t *)(var_10h + 0x30);
        runtime_duffcopy_offset_798();
        cVar1 = biz_dao_UpdateTaskChain();
        if (cVar1 == '\0') {
            var_18h = runtime_makemap_small();
            puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
            *puVar2 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                uVar3 = puVar2[1];
                puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11_07 = uVar3;
            }
            puVar2[1] = 0x2e64ac0;
            auVar7 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
            puVar2 = auVar7._0_8_;
            *puVar2 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar7._8_8_, puVar2[1]);
                *extraout_R11_08 = extraout_RCX_03;
            }
            puVar2[1] = 0x2e68be0 /* "任务链更新失败" */;
            var_30h = 0x10a4880;
            var_28h = var_18h;
            uVar3 = runtime_convT(0x10cbee0, &var_30h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
            return;
        }
        var_18h = runtime_makemap_small();
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
        *puVar2 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            uVar3 = puVar2[1];
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_05 = uVar3;
        }
        puVar2[1] = 0x2e67830;
        auVar7 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
        puVar2 = auVar7._0_8_;
        *puVar2 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar7._8_8_, puVar2[1]);
            *extraout_R11_06 = extraout_RCX_02;
        }
        puVar2[1] = 0x2e68bf0 /* "任务链更新成功" */;
        var_30h = 0x10a4880;
        var_28h = var_18h;
        uVar3 = runtime_convT(0x10cbee0, &var_30h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
        return;
    }
    var_c8h = extraout_RDI;
    var_b8h = extraout_RSI;
    var_18h = runtime_makemap_small();
    auVar7 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
    puVar2 = auVar7._0_8_;
    *puVar2 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar7._8_8_, puVar2[1]);
        *extraout_R11_03 = extraout_RCX_01;
    }
    puVar2[1] = 0x2e64ac0;
    (**(code **)(var_c8h + 0x18))(var_b8h);
    var_20h = runtime_convTstring();
    puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
    *puVar2 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_04 = var_20h;
        extraout_R11_04[1] = puVar2[1];
    }
    puVar2[1] = var_20h;
    var_30h = 0x10a4880;
    var_28h = var_18h;
    uVar3 = runtime_convT(0x10cbee0, &var_30h);
    gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
    return;
}

/* CAS-Backend/biz/controller.DeleteTaskChainHandler | VA 0xe84f40 | task_chain_controller.go:89
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: id int, err error */
void __stdcall biz_controller_DeleteTaskChainHandler(int64_t arg_8h)
{
    char cVar1;
    undefined8 in_RAX;
    int64_t iVar2;
    undefined8 *puVar3;
    undefined8 uVar4;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 extraout_RCX_01;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    undefined8 *extraout_R11_03;
    undefined8 *extraout_R11_04;
    int64_t unaff_R14;
    undefined auVar5 [16];
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    gin_gonic_gin___Context__Query();
    auVar5 = strconv_Atoi();
    if ((auVar5._8_8_ == 0) && (0 < auVar5._0_8_)) {
        cVar1 = biz_dao_DeleteTaskChain();
        if (cVar1 == '\0') {
            iVar2 = runtime_makemap_small();
            puVar3 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, iVar2, 0x116968c /* "code" */, 4);
            *puVar3 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                uVar4 = puVar3[1];
                puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11_03 = uVar4;
            }
            puVar3[1] = 0x2e64ac0;
            auVar5 = runtime_mapassign_faststr(0x10a4880, iVar2, 0x1168a54 /* "msg" */, 3);
            puVar3 = auVar5._0_8_;
            *puVar3 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, auVar5._8_8_, puVar3[1]);
                *extraout_R11_04 = extraout_RCX_01;
            }
            puVar3[1] = 0x2e68c00 /* "任务链删除失败" */;
            var_18h = 0x10a4880;
            var_10h = iVar2;
            uVar4 = runtime_convT(0x10cbee0, &var_18h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar4);
            return;
        }
        iVar2 = runtime_makemap_small();
        puVar3 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, iVar2, 0x116968c /* "code" */, 4);
        *puVar3 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            uVar4 = puVar3[1];
            puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_01 = uVar4;
        }
        puVar3[1] = 0x2e67830;
        auVar5 = runtime_mapassign_faststr(0x10a4880, iVar2, 0x1168a54 /* "msg" */, 3);
        puVar3 = auVar5._0_8_;
        *puVar3 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, auVar5._8_8_, puVar3[1]);
            *extraout_R11_02 = extraout_RCX_00;
        }
        puVar3[1] = 0x2e68c10 /* "任务链删除成功" */;
        var_18h = 0x10a4880;
        var_10h = iVar2;
        uVar4 = runtime_convT(0x10cbee0, &var_18h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar4);
        return;
    }
    iVar2 = runtime_makemap_small();
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, iVar2, 0x116968c /* "code" */, 4);
    *puVar3 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        uVar4 = puVar3[1];
        puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11 = uVar4;
    }
    puVar3[1] = 0x2e64ac0;
    auVar5 = runtime_mapassign_faststr(0x10a4880, iVar2, 0x1168a54 /* "msg" */, 3);
    puVar3 = auVar5._0_8_;
    *puVar3 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, auVar5._8_8_, puVar3[1]);
        *extraout_R11_00 = extraout_RCX;
    }
    puVar3[1] = 0x2e68bc0 /* "无效的任务链 ID" */;
    var_18h = 0x10a4880;
    var_10h = iVar2;
    uVar4 = runtime_convT(0x10cbee0, &var_18h);
    gin_gonic_gin___Context__Render(in_RAX, 400, 0x2e6f230, uVar4);
    return;
}

/* CAS-Backend/biz/controller.GetAllTaskChainHandler | VA 0xe85240 | task_chain_controller.go:102
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: page int, size int, ok bool, total int64, search string, list []CAS-Backend/biz/dao.TaskChain, data []CAS-Backend/biz/controller.TaskChainRequest, item CAS-Backend/biz/dao.TaskChain */
// WARNING: Variable defined which should be unmapped: var_8h

void __stdcall biz_controller_GetAllTaskChainHandler(int64_t arg_8h, int64_t arg_128h)
{
    undefined8 uVar1;
    char cVar2;
    undefined8 in_RAX;
    undefined8 uVar3;
    undefined8 uVar4;
    int64_t extraout_RAX;
    int64_t extraout_RAX_00;
    undefined8 *puVar5;
    int64_t extraout_RCX;
    undefined8 extraout_RCX_00;
    int64_t iVar6;
    uint64_t uVar7;
    int64_t extraout_RCX_01;
    uint64_t extraout_RCX_02;
    undefined8 extraout_RCX_03;
    int64_t *piVar8;
    undefined8 extraout_RBX;
    uint64_t uVar9;
    uint64_t extraout_RBX_00;
    uint64_t extraout_RBX_01;
    uint64_t uVar10;
    uint64_t extraout_RDI;
    int64_t extraout_R9;
    int64_t iVar11;
    int64_t *piVar12;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    int64_t *extraout_R11_03;
    int64_t *extraout_R11_04;
    int64_t *extraout_R11_05;
    int64_t *extraout_R11_06;
    int64_t unaff_R14;
    undefined auVar13 [16];
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
    
    while (&var_108h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe858eb;
        runtime_morestack_noctxt_abi0();
    }
    gin_gonic_gin___Context__DefaultQuery();
    uVar3 = strconv_Atoi();
    gin_gonic_gin___Context__DefaultQuery(in_RAX, 0x1169694 /* "size" */, 4, 0x116859e /* "20" */, 2);
    uVar4 = strconv_Atoi();
    auVar13 = gin_gonic_gin___Context__Query(in_RAX, 0x116f489 /* "search" */, 6);
    cVar2 = biz_dao_SelectAllTaskChain(uVar3, uVar4, auVar13._0_8_, auVar13._8_8_);
    if (cVar2 == '\0') {
        var_60h = runtime_makemap_small();
        puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_60h, 0x1172d0d /* "success" */, 7);
        *puVar5 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            uVar3 = puVar5[1];
            puVar5 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11 = uVar3;
        }
        puVar5[1] = 0xf7a720;
        auVar13 = runtime_mapassign_faststr(0x10a4880, var_60h, 0x1172cf1 /* "message" */, 7);
        puVar5 = auVar13._0_8_;
        *puVar5 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar5 = (undefined8 *)runtime_gcWriteBarrier1(puVar5, auVar13._8_8_, puVar5[1]);
            *extraout_R11_00 = extraout_RCX_00;
        }
        puVar5[1] = 0x2e68c20 /* "任务链获取失败" */;
        var_18h = 0x10a4880;
        var_10h = var_60h;
        uVar3 = runtime_convT(0x10cbee0, &var_18h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
        return;
    }
    var_100h = extraout_RCX;
    var_78h = runtime_makeslice(0x1104b80, 0, extraout_RDI);
    uVar10 = 0;
    uVar7 = extraout_RDI;
    piVar8 = (int64_t *)var_100h;
    uVar9 = extraout_RDI;
    while (0 < (int64_t)uVar7) {
        var_f8h = *piVar8;
        var_108h = uVar7;
        var_68h = (int64_t)piVar8;
        runtime_duffcopy_offset_798();
        uVar10 = extraout_R9 + 1;
        var_58h = var_f8h;
        var_50h = var_f0h;
        var_48h = var_e8h;
        var_40h = var_e0h;
        var_38h = var_d8h;
        var_30h = var_d0h;
        var_28h = var_c8h;
        var_20h = var_c0h;
        var_78h = extraout_RAX;
        iVar6 = extraout_RCX_01;
        uVar9 = extraout_RBX_00;
        if (extraout_RBX_00 < uVar10) {
            runtime_growslice(extraout_RAX, uVar10, extraout_RBX_00, 1, 0x1104b80);
            var_78h = extraout_RAX_00;
            iVar6 = var_108h;
            piVar8 = (int64_t *)var_68h;
            uVar9 = extraout_RCX_02;
            uVar10 = extraout_RBX_01;
        }
        iVar11 = (uVar10 - 1) * 0x40;
        piVar12 = (int64_t *)(var_78h + iVar11);
        if (*(int32_t *)0x355db50 != 0) {
            var_80h = var_78h;
            var_70h = (int64_t)piVar12;
            runtime_wbMove(0x1104b80, piVar12, &var_58h);
            var_78h = var_80h;
            iVar6 = var_108h;
            piVar8 = (int64_t *)var_68h;
            piVar12 = (int64_t *)var_70h;
        }
        iVar11 = var_78h + iVar11;
        *piVar12 = var_58h;
        piVar12[1] = var_50h;
        piVar12[2] = var_48h;
        piVar12[3] = var_40h;
        *(int64_t *)(iVar11 + 0x20) = var_38h;
        *(int64_t *)(iVar11 + 0x28) = var_30h;
        *(undefined4 *)(iVar11 + 0x30) = (undefined4)var_28h;
        *(undefined4 *)(iVar11 + 0x34) = var_28h._4_4_;
        *(undefined4 *)(iVar11 + 0x38) = (undefined4)var_20h;
        *(undefined4 *)(iVar11 + 0x3c) = var_20h._4_4_;
        piVar8 = piVar8 + 0xf;
        uVar7 = iVar6 - 1;
    }
    var_60h = runtime_makemap_small();
    puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_60h, 0x1172d0d /* "success" */, 7);
    *puVar5 = 0x1042d20;
    if (*(int32_t *)0x355db50 != 0) {
        uVar1 = puVar5[1];
        puVar5 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11_01 = uVar1;
    }
    puVar5[1] = 0xf7a728;
    auVar13 = runtime_mapassign_faststr(0x10a4880, var_60h, 0x1172cf1 /* "message" */, 7);
    puVar5 = auVar13._0_8_;
    *puVar5 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar5 = (undefined8 *)runtime_gcWriteBarrier1(puVar5, auVar13._8_8_, puVar5[1]);
        *extraout_R11_02 = extraout_RCX_03;
    }
    puVar5[1] = 0x2e68c30 /* "任务链获取成功" */;
    var_68h = runtime_convT64(extraout_RBX);
    puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_60h, 0x116a760 /* "total" */, 5);
    *puVar5 = 0x1042ae0;
    if (*(int32_t *)0x355db50 != 0) {
        puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_03 = var_68h;
        extraout_R11_03[1] = puVar5[1];
    }
    puVar5[1] = var_68h;
    var_68h = runtime_convT64(uVar3);
    puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_60h, 0x1169690 /* "page" */, 4);
    *puVar5 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_04 = var_68h;
        extraout_R11_04[1] = puVar5[1];
    }
    puVar5[1] = var_68h;
    var_68h = runtime_convT64(uVar4);
    puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_60h, 0x1169694 /* "size" */, 4);
    *puVar5 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_05 = var_68h;
        extraout_R11_05[1] = puVar5[1];
    }
    puVar5[1] = var_68h;
    var_68h = runtime_convTslice(var_78h, uVar10, uVar9);
    puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_60h, 0x1169698 /* "data" */, 4);
    *puVar5 = 0x10378c0;
    if (*(int32_t *)0x355db50 != 0) {
        puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_06 = var_68h;
        extraout_R11_06[1] = puVar5[1];
    }
    puVar5[1] = var_68h;
    var_18h = 0x10a4880;
    var_10h = var_60h;
    uVar3 = runtime_convT(0x10cbee0, &var_18h);
    gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
    return;
}

/* CAS-Backend/biz/controller.ExcTaskChainHandler | VA 0xe85900 | task_chain_controller.go:131
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &req *CAS-Backend/biz/controller.TaskChainRequest, approachAdded bool, chainJson string, ip string, taskids []string, err error, tasks []CAS-Backend/pkg/agvcontrol.ForkliftTask, timestamp string, currentStation string, ~r0.ptr *uint8, ~r0.len int, success bool, ok bool, dbChain CAS-Backend/biz/dao.TaskChain, msg string, i int */
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Removing arg arg_270h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Removing arg arg_260h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_1f2h
// WARNING: [rz-ghidra] Detected overlap for variable var_1f3h
// WARNING: [rz-ghidra] Detected overlap for variable var_1f1h

void __stdcall biz_controller_ExcTaskChainHandler(int64_t arg_8h)
{
    char cVar1;
    int64_t in_RAX;
    undefined8 *puVar2;
    undefined8 uVar3;
    undefined8 extraout_RAX;
    int64_t extraout_RAX_00;
    int64_t extraout_RAX_01;
    undefined8 extraout_RAX_02;
    uint64_t uVar4;
    undefined8 *extraout_RCX;
    int64_t iVar5;
    undefined8 extraout_RCX_00;
    int64_t extraout_RCX_01;
    undefined8 extraout_RCX_02;
    undefined8 extraout_RCX_03;
    int64_t extraout_RCX_04;
    undefined8 extraout_RCX_05;
    undefined8 extraout_RCX_06;
    int64_t iVar6;
    int64_t extraout_RCX_07;
    int64_t iVar7;
    undefined8 extraout_RBX;
    int64_t extraout_RBX_00;
    int64_t extraout_RBX_01;
    undefined8 extraout_RBX_02;
    undefined8 extraout_RSI;
    int64_t extraout_RSI_00;
    int64_t extraout_RSI_01;
    int64_t extraout_RSI_02;
    char extraout_DIL;
    int64_t extraout_RDI;
    int64_t extraout_RDI_00;
    int64_t extraout_R8;
    int64_t extraout_R8_00;
    int64_t extraout_R8_01;
    int64_t extraout_R8_02;
    int64_t extraout_R9;
    int64_t iVar8;
    int64_t extraout_R9_00;
    uint64_t uVar9;
    int64_t extraout_R10;
    undefined8 extraout_R10_00;
    int64_t *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t *extraout_R11_01;
    int64_t *extraout_R11_02;
    undefined8 *extraout_R11_03;
    int64_t *extraout_R11_04;
    int64_t *extraout_R11_05;
    undefined8 *extraout_R11_06;
    int64_t *extraout_R11_07;
    int64_t *extraout_R11_08;
    undefined8 *extraout_R11_09;
    undefined8 *extraout_R11_10;
    undefined8 *extraout_R11_11;
    undefined8 *extraout_R11_12;
    undefined8 *extraout_R11_13;
    int64_t *extraout_R11_14;
    int64_t *extraout_R11_15;
    undefined8 *extraout_R11_16;
    int64_t *extraout_R11_17;
    int64_t *extraout_R11_18;
    int64_t *extraout_R11_19;
    undefined8 *extraout_R11_20;
    undefined8 *extraout_R11_21;
    int64_t *extraout_R11_22;
    undefined8 *extraout_R11_23;
    undefined8 *extraout_R11_24;
    int64_t *extraout_R11_25;
    int64_t *extraout_R11_26;
    undefined8 *extraout_R11_27;
    int64_t unaff_R14;
    int64_t in_XMM15_Qa;
    int64_t in_XMM15_Qb;
    undefined auVar10 [16];
    undefined auVar11 [16];
    undefined auVar12 [16];
    int64_t var_288h;
    int64_t var_278h;
    int64_t var_270h;
    undefined auStack_1f8 [5];
    char var_1f3h;
    char var_1f2h;
    char var_1f1h;
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
    int64_t var_150h;
    int64_t var_148h;
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
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (auStack_1f8 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe86cdb;
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(0x1104b80);
    uVar4 = 0;
    iVar5 = *(int64_t *)0xfb77e8;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar4 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar9 = uVar4 & **(uint64_t **)0xfbb390;
            if ((*(uint64_t **)0xfbb390)[uVar9 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar4 = (*(uint64_t **)0xfbb390)[uVar9 * 2 + 2];
                goto code_r0x00e85965;
            }
            uVar4 = uVar4 + 1;
        } while ((*(uint64_t **)0xfbb390)[uVar9 * 2 + 1] != 0);
        var_e8h = *(int64_t *)0xfb77e8;
        uVar4 = runtime_typeAssert(0xfbb390);
        iVar5 = var_e8h;
    }
code_r0x00e85965:
    auVar10 = (**(code **)(uVar4 + 0x18))(iVar5, *(undefined8 *)(in_RAX + 0x20), 0x1026660, var_10h);
    if (auVar10._0_8_ != 0) {
        gin_gonic_gin___Context__AbortWithError(in_RAX, 400, auVar10._0_8_, auVar10._8_8_);
        return;
    }
    auVar10 = strings_TrimSpace(*(undefined8 *)(var_10h + 0x28), *(undefined8 *)(var_10h + 0x30));
    iVar5 = var_10h;
    if (0 < *(int64_t *)var_10h) {
        var_1b0h = auVar10._8_8_;
        var_f0h = auVar10._0_8_;
        runtime_duffzero_offset_326();
        biz_dao_Select1TaskChain(*extraout_RCX);
        var_98h = var_278h;
        runtime_duffcopy_offset_798();
        var_178h = var_98h;
        cVar1 = runtime_duffcopy_offset_798();
        iVar5 = var_10h;
        if (cVar1 == '\0') {
            var_18h = runtime_makemap_small();
            puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172d0d /* "success" */, 7);
            *puVar2 = 0x1042d20;
            if (*(int32_t *)0x355db50 != 0) {
                uVar3 = puVar2[1];
                puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11_11 = uVar3;
            }
            puVar2[1] = 0xf7a720;
            auVar10 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172cf1 /* "message" */, 7);
            puVar2 = auVar10._0_8_;
            *puVar2 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar10._8_8_, puVar2[1]);
                *extraout_R11_12 = extraout_RCX_03;
            }
            puVar2[1] = 0x2e68bd0 /* "任务链不存在" */;
            var_a8h = 0x10a4880;
            var_a0h = var_18h;
            uVar3 = runtime_convT(0x10cbee0, &var_a8h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
            return;
        }
        iVar6 = var_f0h;
        iVar7 = var_1b0h;
        if (var_1b0h == 0) {
            iVar6 = var_150h;
            iVar7 = var_148h;
        }
        auVar10._8_8_ = iVar7;
        auVar10._0_8_ = iVar6;
        if (*(int64_t *)(var_10h + 0x10) == 0) {
            *(int64_t *)(var_10h + 0x10) = var_168h;
            if (*(int32_t *)0x355db50 != 0) {
                auVar10 = runtime_gcWriteBarrier2();
                *extraout_R11 = extraout_R8;
                extraout_R11[1] = *(int64_t *)(iVar5 + 8);
                var_170h = extraout_R8;
            }
            *(int64_t *)(iVar5 + 8) = var_170h;
        }
    }
    if (auVar10._8_8_ == 0) {
        var_18h = runtime_makemap_small(auVar10._0_8_, 0, iVar5);
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172d0d /* "success" */, 7);
        *puVar2 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            uVar3 = puVar2[1];
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_09 = uVar3;
        }
        puVar2[1] = 0xf7a720;
        auVar10 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172cf1 /* "message" */, 7);
        puVar2 = auVar10._0_8_;
        *puVar2 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar10._8_8_, puVar2[1]);
            *extraout_R11_10 = extraout_RCX_02;
        }
        puVar2[1] = 0x2e68c40 /* "任务链 JSON 为空" */;
        var_a8h = 0x10a4880;
        var_a0h = var_18h;
        uVar3 = runtime_convT(0x10cbee0, &var_a8h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
        return;
    }
    var_1f0h = *(int64_t *)0x3516458;
    var_1a8h = *(int64_t *)0x3516450;
    if ((*(int64_t *)0x3516458 == 0) &&
       (var_1f0h = *(int64_t *)0xfb5e08, var_1a8h = *(int64_t *)0xfb5e00, *(int64_t *)0xfb5e08 == 0)) {
        var_1f0h = 9;
        var_1a8h = 0x1175303;
    }
    var_b8h = 0xe86d80;
    var_b0h = (int64_t)&var_100h;
    var_1b0h = auVar10._8_8_;
    var_100h = in_XMM15_Qa;
    var_f8h = in_XMM15_Qb;
    var_f0h = auVar10._0_8_;
    auVar10 = pkg_agvcontrol_DoWithConn(var_1a8h, var_1f0h, 0x4b04, &var_b8h);
    var_180h = auVar10._8_8_;
    var_1b8h = auVar10._0_8_;
    if (var_1b8h != 0) {
        auVar10 = (**(code **)(var_1b8h + 0x18))(var_180h);
        var_1c0h = auVar10._8_8_;
        var_188h = auVar10._0_8_;
        var_1f1h = errors_Is(var_1b8h, var_180h, *(undefined8 *)0xfb6b50, *(undefined8 *)0xfb6b58);
        var_18h = runtime_makemap_small();
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172d0d /* "success" */, 7);
        *puVar2 = 0x1042d20;
        if (var_1f1h != '\0') {
            var_1c0h = 0xf;
            var_188h = 0x117aa0b;
        }
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_00 = extraout_RSI;
        }
        puVar2[1] = 0xf7a720;
        var_20h = runtime_convTslice(0x355d2a0, 0, 0);
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172d1b /* "taskids" */, 7);
        *puVar2 = 0x1038980;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_01 = var_20h;
            extraout_R11_01[1] = puVar2[1];
        }
        puVar2[1] = var_20h;
        var_20h = runtime_convTstring(var_188h, var_1c0h);
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172cf1 /* "message" */, 7);
        *puVar2 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_02 = var_20h;
            extraout_R11_02[1] = puVar2[1];
        }
        puVar2[1] = var_20h;
        var_a8h = 0x10a4880;
        var_a0h = var_18h;
        uVar3 = runtime_convT(0x10cbee0, &var_a8h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
        return;
    }
    pkg_agvcontrol_ParseForkliftTaskChainJSON(var_f0h, var_1b0h);
    if (extraout_RDI != 0) {
        var_1b8h = extraout_RDI;
        var_180h = extraout_RSI_00;
        var_18h = runtime_makemap_small();
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172d0d /* "success" */, 7);
        *puVar2 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            uVar3 = puVar2[1];
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_03 = uVar3;
        }
        puVar2[1] = 0xf7a720;
        var_20h = runtime_convTslice(0x355d2a0, 0, 0);
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172d1b /* "taskids" */, 7);
        *puVar2 = 0x1038980;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_04 = var_20h;
            extraout_R11_04[1] = puVar2[1];
        }
        puVar2[1] = var_20h;
        (**(code **)(var_1b8h + 0x18))(var_180h);
        var_20h = runtime_convTstring();
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172cf1 /* "message" */, 7);
        *puVar2 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_05 = var_20h;
            extraout_R11_05[1] = puVar2[1];
        }
        puVar2[1] = var_20h;
        var_a8h = 0x10a4880;
        var_a0h = var_18h;
        uVar3 = runtime_convT(0x10cbee0, &var_a8h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
        return;
    }
    pkg_diapdu_PrependApproachToTaskChain(var_100h, var_f8h, extraout_RAX, extraout_RBX, extraout_RCX_00);
    if (extraout_RSI_01 != 0) {
        var_1b8h = extraout_RSI_01;
        var_180h = extraout_R8_00;
        var_18h = runtime_makemap_small();
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172d0d /* "success" */, 7);
        *puVar2 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            uVar3 = puVar2[1];
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_06 = uVar3;
        }
        puVar2[1] = 0xf7a720;
        var_20h = runtime_convTslice(0x355d2a0, 0, 0);
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172d1b /* "taskids" */, 7);
        *puVar2 = 0x1038980;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_07 = var_20h;
            extraout_R11_07[1] = puVar2[1];
        }
        puVar2[1] = var_20h;
        (**(code **)(var_1b8h + 0x18))(var_180h);
        var_20h = runtime_convTstring();
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172cf1 /* "message" */, 7);
        *puVar2 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_08 = var_20h;
            extraout_R11_08[1] = puVar2[1];
        }
        puVar2[1] = var_20h;
        var_a8h = 0x10a4880;
        var_a0h = var_18h;
        uVar3 = runtime_convT(0x10cbee0, &var_a8h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
        return;
    }
    var_1f2h = extraout_DIL;
    var_1e8h = extraout_RBX_00;
    var_1e0h = extraout_RCX_01;
    var_1a0h = extraout_RAX_00;
    time_Now();
    auVar11 = time_Time_Format();
    iVar5 = var_1a0h;
    if (var_1f2h != '\0') {
        iVar7 = var_1e8h;
        for (iVar6 = 0; iVar6 < iVar7; iVar6 = iVar6 + 1) {
            iVar8 = iVar6 * 0xe0;
            *(undefined8 *)(iVar5 + 0x28 + iVar8) = 0;
            if (*(int32_t *)0x355db50 != 0) {
                runtime_gcWriteBarrier1();
                auVar11._8_8_ = extraout_RBX_02;
                auVar11._0_8_ = extraout_RAX_02;
                *extraout_R11_27 = extraout_R10_00;
                iVar6 = extraout_RCX_07;
                iVar7 = extraout_R8_02;
                iVar8 = extraout_R9_00;
            }
            *(undefined8 *)(iVar5 + 0x20 + iVar8) = 0;
        }
    }
    pkg_agvcontrol_AssignForkliftTaskIDs(var_1a0h, var_1e8h, var_1e0h, auVar11._0_8_, auVar11._8_8_);
    var_1d8h = extraout_RSI_02;
    var_1d0h = extraout_R8_01;
    var_198h = extraout_RDI_00;
    if (extraout_R9 != 0) {
        var_1b8h = extraout_R9;
        var_180h = extraout_R10;
        var_18h = runtime_makemap_small();
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172d0d /* "success" */, 7);
        *puVar2 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            uVar3 = puVar2[1];
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_13 = uVar3;
        }
        puVar2[1] = 0xf7a720;
        var_20h = runtime_convTslice(var_198h, var_1d8h, var_1d0h);
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172d1b /* "taskids" */, 7);
        *puVar2 = 0x1038980;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_14 = var_20h;
            extraout_R11_14[1] = puVar2[1];
        }
        puVar2[1] = var_20h;
        (**(code **)(var_1b8h + 0x18))(var_180h);
        var_20h = runtime_convTstring();
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172cf1 /* "message" */, 7);
        *puVar2 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_15 = var_20h;
            extraout_R11_15[1] = puVar2[1];
        }
        puVar2[1] = var_20h;
        var_a8h = 0x10a4880;
        var_a0h = var_18h;
        uVar3 = runtime_convT(0x10cbee0, &var_a8h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
        return;
    }
    var_1f3h = '\0';
    var_e0h = 0xe86d00;
    var_c0h = (int64_t)&var_1f3h;
    var_d8h = extraout_RAX_01;
    var_d0h = extraout_RBX_01;
    var_c8h = extraout_RCX_04;
    auVar10 = pkg_agvcontrol_DoWithConn(var_1a8h, var_1f0h, 0x4b06, &var_e0h);
    if (auVar10._0_8_ == 0) {
        if (var_1f3h != '\0') {
            if ((0 < *(int64_t *)var_10h) && (cVar1 = biz_dao_UpdateTaskChainStatusByID(*(int64_t *)var_10h, 2), cVar1 == '\0')) {
                var_18h = runtime_makemap_small();
                puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172d0d /* "success" */, 7);
                *puVar2 = 0x1042d20;
                if (*(int32_t *)0x355db50 != 0) {
                    uVar3 = puVar2[1];
                    puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
                    *extraout_R11_21 = uVar3;
                }
                puVar2[1] = 0xf7a720;
                var_20h = runtime_convTslice(var_198h, var_1d8h, var_1d0h);
                puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172d1b /* "taskids" */, 7);
                *puVar2 = 0x1038980;
                if (*(int32_t *)0x355db50 != 0) {
                    puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
                    *extraout_R11_22 = var_20h;
                    extraout_R11_22[1] = puVar2[1];
                }
                puVar2[1] = var_20h;
                auVar10 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172cf1 /* "message" */, 7);
                puVar2 = auVar10._0_8_;
                *puVar2 = 0x1042920;
                if (*(int32_t *)0x355db50 != 0) {
                    puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar10._8_8_, puVar2[1]);
                    *extraout_R11_23 = extraout_RCX_06;
                }
                puVar2[1] = 0x2e68c50 /* "下发成功但更新任务链状态失败" */;
                var_a8h = 0x10a4880;
                var_a0h = var_18h;
                uVar3 = runtime_convT(0x10cbee0, &var_a8h);
                gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
                return;
            }
            *(undefined8 *)0x355d3e8 = 2;
            var_18h = runtime_makemap_small();
            puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172d0d /* "success" */, 7);
            *puVar2 = 0x1042d20;
            if (*(int32_t *)0x355db50 != 0) {
                uVar3 = puVar2[1];
                puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11_16 = uVar3;
            }
            puVar2[1] = 0xf7a728;
            var_20h = runtime_convTslice(var_198h, var_1d8h, var_1d0h);
            puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172d1b /* "taskids" */, 7);
            *puVar2 = 0x1038980;
            if (*(int32_t *)0x355db50 != 0) {
                puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
                *extraout_R11_17 = var_20h;
                extraout_R11_17[1] = puVar2[1];
            }
            puVar2[1] = var_20h;
            var_20h = runtime_convT64(*(undefined8 *)var_10h);
            puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116859a /* "id" */, 2);
            *puVar2 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
                *extraout_R11_18 = var_20h;
                extraout_R11_18[1] = puVar2[1];
            }
            puVar2[1] = var_20h;
            var_20h = runtime_convTstring(*(undefined8 *)(var_10h + 8), *(undefined8 *)(var_10h + 0x10));
            puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x11752bb /* "chainName" */, 9);
            *puVar2 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
                *extraout_R11_19 = var_20h;
                extraout_R11_19[1] = puVar2[1];
            }
            puVar2[1] = var_20h;
            auVar10 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172cf1 /* "message" */, 7);
            puVar2 = auVar10._0_8_;
            *puVar2 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar10._8_8_, puVar2[1]);
                *extraout_R11_20 = extraout_RCX_05;
            }
            puVar2[1] = 0x2e68c60 /* "任务链已开始执行" */;
            var_a8h = 0x10a4880;
            var_a0h = var_18h;
            uVar3 = runtime_convT(0x10cbee0, &var_a8h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
            return;
        }
        auVar12._8_8_ = 0x12;
        auVar12._0_8_ = 0x117de02;
    } else {
        auVar12 = (**(code **)(auVar10._0_8_ + 0x18))(auVar10._8_8_);
    }
    var_1c8h = auVar12._8_8_;
    var_190h = auVar12._0_8_;
    var_18h = runtime_makemap_small();
    puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172d0d /* "success" */, 7);
    *puVar2 = 0x1042d20;
    if (*(int32_t *)0x355db50 != 0) {
        uVar3 = puVar2[1];
        puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11_24 = uVar3;
    }
    puVar2[1] = 0xf7a720;
    var_20h = runtime_convTslice(var_198h, var_1d8h, var_1d0h);
    puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172d1b /* "taskids" */, 7);
    *puVar2 = 0x1038980;
    if (*(int32_t *)0x355db50 != 0) {
        puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_25 = var_20h;
        extraout_R11_25[1] = puVar2[1];
    }
    puVar2[1] = var_20h;
    var_20h = runtime_convTstring(var_190h, var_1c8h);
    puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172cf1 /* "message" */, 7);
    *puVar2 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_26 = var_20h;
        extraout_R11_26[1] = puVar2[1];
    }
    puVar2[1] = var_20h;
    var_a8h = 0x10a4880;
    var_a0h = var_18h;
    uVar3 = runtime_convT(0x10cbee0, &var_a8h);
    gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
    return;
}

/* CAS-Backend/biz/controller.ExcTaskChainHandler.func1 | VA 0xe86d80 | task_chain_controller.go:161
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: loc *CAS-Backend/pkg/agvcontrol.VechileLocation, &currentStation *string, owner *CAS-Backend/pkg/agvcontrol.ControlOwnerResponse, e error */
// WARNING: Removing unreachable block (ram,0x00e86e05)
// WARNING: [rz-ghidra] Detected overlap for variable var_bch
// WARNING: [rz-ghidra] Detected overlap for variable var_d0h
// WARNING: [rz-ghidra] Removing arg arg_44h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_cch
// WARNING: [rz-ghidra] Detected overlap for variable var_e8h
// WARNING: [rz-ghidra] Detected overlap for variable var_e4h

int64_t __stdcall
biz_controller_ExcTaskChainHandler_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h)
{
    undefined8 uVar1;
    char cVar2;
    int64_t in_RAX;
    int64_t iVar3;
    int64_t extraout_RDX;
    int64_t unaff_RBX;
    undefined8 *extraout_RSI;
    undefined8 *puVar4;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000070;
    int64_t in_stack_00000088;
    int64_t in_stack_000000c8;
    int64_t in_stack_000000e0;
    int64_t in_stack_000000e8;
    int64_t in_stack_00000110;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
        arg3 = extraout_RDX;
    }
    puVar4 = *(undefined8 **)(arg3 + 8);
    pkg_agvcontrol_QueryControlOwner(in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, in_stack_00000088, in_stack_000000e8);
    if (unaff_RBX == 0) {
        cVar2 = pkg_agvcontrol_ControlOwnerAllowsManualDispatch(in_stack_ffffffffffffffd8);
        if (cVar2 != '\0') {
            iVar3 = pkg_agvcontrol_queryAMRLocation(in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, in_stack_ffffffffffffffe8, 
                                 in_stack_00000070, in_stack_000000c8, in_stack_000000e0, in_stack_00000110);
            uVar1 = *(undefined8 *)(iVar3 + 0x48);
            puVar4[1] = *(undefined8 *)(iVar3 + 0x50);
            if (*(int32_t *)0x355db50 != 0) {
                runtime_gcWriteBarrier2();
                *extraout_R11 = uVar1;
                extraout_R11[1] = *extraout_RSI;
                puVar4 = extraout_RSI;
            }
            *puVar4 = uVar1;
            return 0;
        }
        return *(int64_t *)0xfb6b50;
    }
    return unaff_RBX;
}

/* CAS-Backend/biz/controller.ExcTaskChainHandler.func2 | VA 0xe86d00 | task_chain_controller.go:214
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &success *bool, ok bool, tasks []CAS-Backend/pkg/agvcontrol.ForkliftTask, e error */
// WARNING: [rz-ghidra] Detected overlap for variable var_10eh
// WARNING: [rz-ghidra] Detected overlap for variable var_f8h
// WARNING: [rz-ghidra] Detected overlap for variable var_10ch
// WARNING: [rz-ghidra] Detected overlap for variable var_108h
// WARNING: [rz-ghidra] Detected overlap for variable var_d8h

undefined8 __stdcall
biz_controller_ExcTaskChainHandler_func2
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

/* CAS-Backend/biz/controller.taskChainStatusFromDB | VA 0xe86e60 | task_chain_controller.go:249
   DWARF parameters and results: chainID int, ~r0 int
   DWARF locals: ok bool, ch CAS-Backend/biz/dao.TaskChain */
// WARNING: Variable defined which should be unmapped: var_178h
// WARNING: Variable defined which should be unmapped: var_170h
// WARNING: Variable defined which should be unmapped: var_8h

int64_t __stdcall biz_controller_taskChainStatusFromDB(int64_t arg_8h, int64_t arg_c0h, int64_t arg_100h)
{
    char cVar1;
    int64_t in_RAX;
    int64_t unaff_R14;
    int64_t var_188h;
    int64_t var_178h;
    int64_t var_170h;
    int64_t in_stack_fffffffffffffec0;
    int64_t in_stack_ffffffffffffff00;
    int64_t var_f8h;
    int64_t var_f0h;
    int64_t var_c0h;
    int64_t var_80h;
    int64_t var_78h;
    int64_t var_8h;
    
    while (&var_f8h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe86f85;
        runtime_morestack_noctxt_abi0();
    }
    if (0 < in_RAX) {
        fcn.00478ae6();
        biz_dao_Select1TaskChain(var_178h, var_170h, in_stack_fffffffffffffec0, in_stack_ffffffffffffff00);
        var_80h = var_178h;
        fcn.00478e3e();
        var_f8h = var_80h;
        cVar1 = fcn.00478e3e();
        if (cVar1 != '\0') {
            *(int64_t *)0x355d3e8 = var_c0h;
            return var_c0h;
        }
        return *(int64_t *)0x355d3e8;
    }
    return *(int64_t *)0x355d3e8;
}

/* CAS-Backend/biz/controller.normalizeTaskIDList | VA 0xe86fa0 | task_chain_controller.go:261
   DWARF parameters and results: ids []string, ~r0 []string
   DWARF locals: out []string, id string */
void __stdcall
biz_controller_normalizeTaskIDList(int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_60h)
{
    undefined8 *in_RAX;
    int64_t iVar1;
    undefined8 uVar2;
    uint64_t uVar3;
    uint64_t extraout_RCX;
    uint64_t uVar4;
    uint64_t unaff_RBX;
    int64_t extraout_RSI;
    int64_t iVar5;
    int64_t extraout_RDI;
    uint64_t uVar6;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    undefined auVar7 [16];
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
    }
    iVar1 = runtime_makeslice(in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, in_stack_ffffffffffffff90);
    uVar4 = 0;
    uVar3 = unaff_RBX;
    for (uVar6 = unaff_RBX; 0 < (int64_t)uVar6; uVar6 = uVar6 - 1) {
        auVar7 = strings_TrimSpace(*in_RAX, in_RAX[1]);
        uVar2 = auVar7._0_8_;
        if (auVar7._8_8_ != 0) {
            if (uVar3 < uVar4 + 1) {
                iVar1 = runtime_growslice(in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, 
                                     in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0, unaff_RBX);
            }
            iVar5 = uVar4 * 0x10;
            *(int64_t *)(iVar1 + 8 + iVar5) = auVar7._8_8_;
            if (*(int32_t *)0x355db50 != 0) {
                uVar2 = runtime_gcWriteBarrier2();
                *extraout_R11 = uVar2;
                extraout_R11[1] = *(undefined8 *)(extraout_RSI + extraout_RDI);
                uVar3 = extraout_RCX;
                iVar1 = extraout_RSI;
                iVar5 = extraout_RDI;
            }
            *(undefined8 *)(iVar1 + iVar5) = uVar2;
            uVar4 = uVar4 + 1;
        }
        in_RAX = in_RAX + 2;
    }
    return;
}

/* CAS-Backend/biz/controller.updateTaskChainStatusRecord | VA 0xe87120 | task_chain_controller.go:272
   DWARF parameters and results: chainID int, status int, ~r0 bool
   DWARF locals: (no entries) */
undefined8 __stdcall
biz_controller_updateTaskChainStatusRecord(int64_t arg_8h, int64_t arg_10h, int64_t arg_40h, int64_t arg_48h)
{
    char cVar1;
    int64_t in_RAX;
    int64_t unaff_RBX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000018;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    if (0 < in_RAX) {
        if (((unaff_RBX != 4) && (unaff_RBX != 5)) && (unaff_RBX != 6)) {
            cVar1 = biz_dao_UpdateTaskChainStatusByID(in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, unaff_RBX);
            if (cVar1 != '\0') {
                *(int64_t *)0x355d3e8 = unaff_RBX;
                return 1;
            }
            return 0;
        }
        time_Now();
        cVar1 = biz_dao_UpdateTaskChainCompletion(in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, 
                             in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0, unaff_RBX, in_stack_00000018);
        if (cVar1 != '\0') {
            *(int64_t *)0x355d3e8 = unaff_RBX;
            return 1;
        }
        return 0;
    }
    *(int64_t *)0x355d3e8 = unaff_RBX;
    return 1;
}

/* CAS-Backend/biz/controller.TaskChainStatusHandler | VA 0xe87200 | task_chain_controller.go:291
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: chainID int, taskids []string, chainName string, err error, tasks []struct { TaskID string "json:\"task_id\""; Status int "json:\"status\""; Type int "json:\"type\"" }, taskListResponse *CAS-Backend/pkg/agvcontrol.RobotTaskStatusRes, i int */
// WARNING: Variable defined which should be unmapped: var_1d0h
// WARNING: Variable defined which should be unmapped: var_1c8h
// WARNING: Variable defined which should be unmapped: var_8h

void __stdcall biz_controller_TaskChainStatusHandler(int64_t arg_8h, int64_t arg_108h)
{
    int64_t iVar1;
    char cVar2;
    int64_t in_RAX;
    undefined8 uVar3;
    int64_t extraout_RAX;
    undefined8 *puVar4;
    undefined8 uVar5;
    int64_t extraout_RCX;
    int64_t iVar6;
    int64_t iVar7;
    undefined8 *puVar8;
    int64_t arg_48h;
    int64_t extraout_RBX;
    int64_t *extraout_R11;
    int64_t *extraout_R11_00;
    int64_t unaff_R14;
    undefined auVar9 [16];
    int64_t unaff_retaddr;
    int64_t var_218h;
    int64_t in_stack_fffffffffffffdf8;
    int64_t in_stack_fffffffffffffe00;
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
    
    while (&var_188h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe87b0b;
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    gin_gonic_gin___Context__Query();
    uVar3 = strconv_Atoi();
    gin_gonic_gin___Context__GetQueryArray(in_RAX, 0x1172d1b /* "taskids" */, 7);
    biz_controller_normalizeTaskIDList();
    var_188h = extraout_RAX;
    auVar9 = gin_gonic_gin___Context__Query(in_RAX, 0x1176356 /* "chain_name" */, 10);
    var_178h = auVar9._0_8_;
    var_168h = runtime_convT64(uVar3);
    var_170h = 0x1042b60;
    var_158h = runtime_convTslice(var_188h, arg_48h, extraout_RCX);
    var_160h = 0x1038980;
    var_148h = runtime_convTstring(var_178h, auVar9._8_8_);
    var_150h = 0x1042920;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a63f1 /* "[任务链状态] 收到查询 chain_id=%d taskids=%v chain_name=%q\n" */, 0x44, &var_170h, 3, 3);
    var_180h = 0;
    iVar6 = *(int64_t *)0x3516458;
    uVar5 = *(undefined8 *)0x3516450;
    if ((*(int64_t *)0x3516458 == 0) &&
       (iVar6 = *(int64_t *)0xfb5e08, uVar5 = *(undefined8 *)0xfb5e00, *(int64_t *)0xfb5e08 == 0)) {
        iVar6 = 9;
        uVar5 = 0x1175303;
    }
    var_130h = 0xe87b20;
    var_128h = var_188h;
    var_110h = (int64_t)&var_180h;
    var_120h = arg_48h;
    var_118h = extraout_RCX;
    auVar9 = pkg_agvcontrol_DoWithConn(uVar5, iVar6, 0x4b04, &var_130h);
    var_10h = auVar9._8_8_;
    if (auVar9._0_8_ != 0) {
        var_18h = *(int64_t *)(auVar9._0_8_ + 8);
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1190cce /* "[任务链状态] 查询失败: %v\n" */, 0x23, &var_18h, 1, 1);
        var_100h = runtime_makemap_small();
        biz_controller_taskChainStatusFromDB(uVar3);
        var_108h = runtime_convT64();
        puVar4 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_100h, 0x116f267 /* "status" */, 6);
        *puVar4 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            puVar4 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11 = var_108h;
            extraout_R11[1] = puVar4[1];
        }
        puVar4[1] = var_108h;
        var_140h = 0x10a4880;
        var_138h = var_100h;
        uVar5 = runtime_convT(0x10cbee0, &var_140h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar5);
        return;
    }
    puVar4 = *(undefined8 **)(var_180h + 0xb8);
    iVar6 = *(int64_t *)(var_180h + 0xc0);
    puVar8 = puVar4;
    for (iVar7 = iVar6; 0 < iVar7; iVar7 = iVar7 + -1) {
        uVar5 = puVar8[2];
        uVar3 = puVar8[3];
        var_108h = (int64_t)puVar8;
        var_40h = runtime_convTstring(*puVar8, puVar8[1]);
        var_48h = 0x1042920;
        var_30h = runtime_convT64(uVar5);
        var_38h = 0x1042b60;
        var_20h = runtime_convT64(uVar3);
        var_28h = 0x1042b60;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x119b589, 0x2f, &var_48h, 3, 3);
        puVar8 = (undefined8 *)(var_108h + 0x20);
        var_10h = extraout_RBX;
    }
    runtime_duffzero_offset_336(iVar6, var_10h, iVar7, &var_c8h, puVar4);
    var_90h = runtime_convTstring(*(undefined8 *)(var_180h + 0x38), *(undefined8 *)(var_180h + 0x40));
    var_98h = 0x1042920;
    var_80h = runtime_convTstring(*(undefined8 *)(var_180h + 0x88), *(undefined8 *)(var_180h + 0x90));
    var_88h = 0x1042920;
    var_70h = runtime_convTstring(*(undefined8 *)(var_180h + 0xa8), *(undefined8 *)(var_180h + 0xb0));
    var_78h = 0x1042920;
    var_60h = runtime_convT32(*(undefined4 *)(var_180h + 0x70));
    var_68h = 0x1042ca0;
    var_50h = runtime_convTstring(*(undefined8 *)(var_180h + 0x60), *(undefined8 *)(var_180h + 0x68));
    var_58h = 0x1042920;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a8146, 0x4b, &var_98h, 5, 5);
    iVar7 = 0;
    do {
        if (iVar6 <= iVar7) {
code_r0x00e87a25:
            var_100h = runtime_makemap_small();
            var_108h = runtime_convT64(*(int64_t *)0x355d3e8);
            puVar4 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_100h, 0x116f267 /* "status" */, 6);
            *puVar4 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                puVar4 = (undefined8 *)runtime_gcWriteBarrier2();
                *extraout_R11_00 = var_108h;
                extraout_R11_00[1] = puVar4[1];
            }
            puVar4[1] = var_108h;
            var_140h = 0x10a4880;
            var_138h = var_100h;
            uVar5 = runtime_convT(0x10cbee0, &var_140h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar5);
            return;
        }
        iVar1 = puVar4[iVar7 * 4 + 2];
        if (iVar1 == 4) {
            if (iVar7 == iVar6 + -1) {
                cVar2 = biz_controller_updateTaskChainStatusRecord
                                  (in_stack_fffffffffffffdf8, in_stack_fffffffffffffe00, iVar6, arg_48h);
                if (cVar2 == '\0') {
                    var_b8h = 0x1042920;
                    var_b0h = 0x2e68c80 /* "[任务链状态] 更新状态失败4" */;
                    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_b8h, 1, 1);
                } else {
                    var_a8h = 0x1042920;
                    var_a0h = 0x2e68c70 /* "[任务链状态] 任务链完成" */;
                    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_a8h, 1, 1);
                }
                goto code_r0x00e87a25;
            }
        } else {
            if ((((iVar1 == 3) || (iVar1 == 5)) || (iVar1 == 6)) && (*(int64_t *)0x355d3e8 != iVar1)) {
                cVar2 = biz_controller_updateTaskChainStatusRecord
                                  (in_stack_fffffffffffffdf8, in_stack_fffffffffffffe00, iVar6, arg_48h);
                if (cVar2 == '\0') {
                    *(int64_t *)0x355d3e8 = puVar4[iVar7 * 4 + 2];
                    var_d8h = 0x1042920;
                    var_d0h = 0x2e68ca0 /* "[任务链状态] 更新状态失败3、5、6" */;
                    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_d8h, 1, 1);
                } else {
                    var_c8h = 0x1042920;
                    var_c0h = 0x2e68c90 /* "[任务链状态] 任务链异常3、5、6" */;
                    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_c8h, 1, 1);
                }
                goto code_r0x00e87a25;
            }
            if ((iVar1 == 2) && (*(int64_t *)0x355d3e8 != 2)) {
                cVar2 = biz_controller_updateTaskChainStatusRecord
                                  (in_stack_fffffffffffffdf8, in_stack_fffffffffffffe00, iVar6, arg_48h);
                if (cVar2 == '\0') {
                    *(int64_t *)0x355d3e8 = puVar4[iVar7 * 4 + 2];
                    var_f8h = 0x1042920;
                    var_f0h = 0x2e68cc0 /* "[任务链状态] 更新状态失败2" */;
                    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_f8h, 1, 1);
                } else {
                    var_e8h = 0x1042920;
                    var_e0h = 0x2e68cb0 /* "[任务链状态] 任务链运行" */;
                    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_e8h, 1, 1);
                }
                goto code_r0x00e87a25;
            }
        }
        iVar7 = iVar7 + 1;
    } while( true );
}

/* CAS-Backend/biz/controller.TaskChainStatusHandler.func1 | VA 0xe87b20 | task_chain_controller.go:303
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &taskListResponse **CAS-Backend/pkg/agvcontrol.RobotTaskStatusRes, res *CAS-Backend/pkg/agvcontrol.RobotTaskStatusRes, taskids []string, e error */
int64_t __stdcall
biz_controller_TaskChainStatusHandler_func1
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

/* CAS-Backend/biz/controller.PauseTaskChainHandler | VA 0xe87bc0 | task_chain_controller.go:368
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: (no entries) */
void __stdcall biz_controller_PauseTaskChainHandler(int64_t arg_8h)
{
    int64_t in_RAX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000018;
    int64_t in_stack_00000078;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    biz_controller_runTaskChainNavigationCommand(in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, in_stack_ffffffffffffffe8, 
                 in_stack_fffffffffffffff0, in_stack_00000018, in_stack_00000078);
    return;
}

/* CAS-Backend/biz/controller.ResumeTaskChainHandler | VA 0xe87c00 | task_chain_controller.go:372
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: (no entries) */
void __stdcall biz_controller_ResumeTaskChainHandler(int64_t arg_8h)
{
    int64_t in_RAX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000020;
    int64_t in_stack_00000088;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    biz_controller_runTaskChainNavigationControl(in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, in_stack_ffffffffffffffe8, 
                 in_stack_fffffffffffffff0, in_stack_00000020, in_stack_00000088);
    return;
}

/* CAS-Backend/biz/controller.CancelTaskChainHandler | VA 0xe87c40 | task_chain_controller.go:376
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: (no entries) */
void __stdcall biz_controller_CancelTaskChainHandler(int64_t arg_8h)
{
    int64_t in_RAX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000018;
    int64_t in_stack_00000078;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    biz_controller_runTaskChainNavigationCommand(in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, in_stack_ffffffffffffffe8, 
                 in_stack_fffffffffffffff0, in_stack_00000018, in_stack_00000078);
    return;
}

/* CAS-Backend/biz/controller.runTaskChainNavigationCommand | VA 0xe87c80 | task_chain_controller.go:380
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context, sendCmd func(net.Conn) error, action string
   DWARF locals: &req *CAS-Backend/biz/controller.TaskChainRequest, err error */
void __stdcall
biz_controller_runTaskChainNavigationCommand
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_48h,
          int64_t arg_a8h)
{
    int64_t in_RAX;
    int64_t iVar1;
    undefined8 *puVar2;
    undefined8 uVar3;
    uint64_t uVar4;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    uint64_t uVar5;
    undefined8 *extraout_R11;
    int64_t *extraout_R11_00;
    undefined8 *extraout_R11_01;
    int64_t unaff_R14;
    undefined auVar6 [16];
    undefined auVar7 [16];
    int64_t unaff_retaddr;
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
    
    while (&var_40h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    iVar1 = runtime_newobject(0x1104b80);
    uVar3 = *(undefined8 *)0xfb77e8;
    uVar4 = 0;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar4 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar5 = uVar4 & **(uint64_t **)0xfbb3b0;
            if ((*(uint64_t **)0xfbb3b0)[uVar5 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar4 = (*(uint64_t **)0xfbb3b0)[uVar5 * 2 + 2];
                goto code_r0x00e87cf0;
            }
            uVar4 = uVar4 + 1;
        } while ((*(uint64_t **)0xfbb3b0)[uVar5 * 2 + 1] != 0);
        var_10h = iVar1;
        uVar4 = runtime_typeAssert(0xfbb3b0);
        iVar1 = var_10h;
    }
code_r0x00e87cf0:
    auVar6 = (**(code **)(uVar4 + 0x18))(uVar3, *(undefined8 *)(in_RAX + 0x20), 0x1026660, iVar1);
    if (auVar6._0_8_ != 0) {
        gin_gonic_gin___Context__AbortWithError(in_RAX, 400, auVar6._0_8_, auVar6._8_8_);
        return;
    }
    iVar1 = *(int64_t *)0x3516458;
    uVar3 = *(undefined8 *)0x3516450;
    if ((*(int64_t *)0x3516458 == 0) &&
       (iVar1 = *(int64_t *)0xfb5e08, uVar3 = *(undefined8 *)0xfb5e00, *(int64_t *)0xfb5e08 == 0)) {
        iVar1 = 9;
        uVar3 = 0x1175303;
    }
    var_30h = 0xe88100;
    auVar6 = pkg_agvcontrol_DoWithConn(uVar3, iVar1, 0x4b06, &var_30h);
    iVar1 = auVar6._0_8_;
    if (iVar1 == 0) {
        var_68h = runtime_convTstring(arg4, arg1);
        var_70h = 0x1042920;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x119fb37 /* "任务链%s指令已下发，等待状态轮询确认\n" */, 0x36, &var_70h, 1, 1);
        var_18h = runtime_makemap_small();
        auVar6 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172d0d /* "success" */, 7);
        puVar2 = auVar6._0_8_;
        *puVar2 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar6._8_8_, puVar2[1]);
            *extraout_R11_01 = extraout_RCX_00;
        }
        puVar2[1] = 0xf7a728;
        var_40h = 0x10a4880;
        var_38h = var_18h;
        uVar3 = runtime_convT(0x10cbee0, &var_40h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
        return;
    }
    var_58h = runtime_convTstring(arg4, arg1);
    var_60h = 0x1042920;
    if (iVar1 == 0) {
        var_50h = 0;
    } else {
        var_50h = *(int64_t *)(iVar1 + 8);
    }
    var_48h = auVar6._8_8_;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11892f8 /* "任务链%s导航失败: %v\n" */, 0x1c, &var_60h, 2, 2);
    var_18h = runtime_makemap_small();
    auVar7 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172d0d /* "success" */, 7);
    puVar2 = auVar7._0_8_;
    *puVar2 = 0x1042d20;
    if (*(int32_t *)0x355db50 != 0) {
        puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar7._8_8_, puVar2[1]);
        *extraout_R11 = extraout_RCX;
    }
    puVar2[1] = 0xf7a720;
    (**(code **)(iVar1 + 0x18))(auVar6._8_8_);
    var_20h = runtime_convTstring();
    puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172cf1 /* "message" */, 7);
    *puVar2 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_00 = var_20h;
        extraout_R11_00[1] = puVar2[1];
    }
    puVar2[1] = var_20h;
    var_40h = 0x10a4880;
    var_38h = var_18h;
    uVar3 = runtime_convT(0x10cbee0, &var_40h);
    gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
    return;
}

/* CAS-Backend/biz/controller.runTaskChainNavigationCommand.func1 | VA 0xe88100 | task_chain_controller.go:387
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: sendCmd func(net.Conn) error */
void __stdcall
biz_controller_runTaskChainNavigationCommand_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h)
{
    int64_t in_RAX;
    int64_t extraout_RDX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
        arg3 = extraout_RDX;
    }
    (*(code *)**(undefined8 **)(arg3 + 8))();
    return;
}

/* CAS-Backend/biz/controller.runTaskChainNavigationControl | VA 0xe88160 | task_chain_controller.go:400
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context, sendCmd func(net.Conn) error, action string
   DWARF locals: &req *CAS-Backend/biz/controller.TaskChainRequest, st int, err error, taskListResponse *CAS-Backend/pkg/agvcontrol.RobotTaskListStatusRes */
// WARNING: Variable defined which should be unmapped: var_90h
// WARNING: Variable defined which should be unmapped: var_88h

void __stdcall
biz_controller_runTaskChainNavigationControl
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_50h,
          int64_t arg_b8h)
{
    int64_t in_RAX;
    int64_t iVar1;
    undefined8 *puVar2;
    undefined8 uVar3;
    uint64_t uVar4;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 extraout_RCX_01;
    int64_t iVar5;
    uint64_t uVar6;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    int64_t *extraout_R11_02;
    undefined8 *extraout_R11_03;
    int64_t *extraout_R11_04;
    int64_t unaff_R14;
    undefined auVar7 [16];
    int64_t in_stack_ffffffffffffff30;
    int64_t in_stack_ffffffffffffff38;
    int64_t in_stack_ffffffffffffff40;
    int64_t in_stack_ffffffffffffff48;
    int64_t in_stack_ffffffffffffff50;
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
    var_10h = runtime_newobject(0x1104b80);
    uVar4 = 0;
    iVar5 = *(int64_t *)0xfb77e8;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar4 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar6 = uVar4 & **(uint64_t **)0xfbb3d0;
            if ((*(uint64_t **)0xfbb3d0)[uVar6 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar4 = (*(uint64_t **)0xfbb3d0)[uVar6 * 2 + 2];
                goto code_r0x00e881dc;
            }
            uVar4 = uVar4 + 1;
        } while ((*(uint64_t **)0xfbb3d0)[uVar6 * 2 + 1] != 0);
        var_78h = *(int64_t *)0xfb77e8;
        uVar4 = runtime_typeAssert(0xfbb3d0);
        iVar5 = var_78h;
    }
code_r0x00e881dc:
    auVar7 = (**(code **)(uVar4 + 0x18))(iVar5, *(undefined8 *)(in_RAX + 0x20), 0x1026660, var_10h);
    if (auVar7._0_8_ != 0) {
        gin_gonic_gin___Context__AbortWithError(in_RAX, 400, auVar7._0_8_, auVar7._8_8_);
        return;
    }
    var_88h = 0;
    iVar5 = *(int64_t *)0x3516458;
    uVar3 = *(undefined8 *)0x3516450;
    if ((*(int64_t *)0x3516458 == 0) &&
       (iVar5 = *(int64_t *)0xfb5e08, uVar3 = *(undefined8 *)0xfb5e00, *(int64_t *)0xfb5e08 == 0)) {
        iVar5 = 9;
        uVar3 = 0x1175303;
    }
    var_40h = 0xe887a0;
    var_30h = var_10h;
    var_28h = (int64_t)&var_88h;
    auVar7 = pkg_agvcontrol_DoWithConn(uVar3, iVar5, 0x4b06, &var_40h);
    var_80h = auVar7._8_8_;
    iVar5 = auVar7._0_8_;
    if (iVar5 != 0) {
        var_68h = runtime_convTstring(arg4, arg1);
        var_70h = 0x1042920;
        if (iVar5 == 0) {
            var_60h = 0;
        } else {
            var_60h = *(int64_t *)(iVar5 + 8);
        }
        var_58h = var_80h;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11892f8 /* "任务链%s导航失败: %v\n" */, 0x1c, &var_70h, 2, 2);
        var_18h = runtime_makemap_small();
        auVar7 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172d0d /* "success" */, 7);
        puVar2 = auVar7._0_8_;
        *puVar2 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar7._8_8_, puVar2[1]);
            *extraout_R11_03 = extraout_RCX_01;
        }
        puVar2[1] = 0xf7a720;
        (**(code **)(iVar5 + 0x18))(var_80h);
        var_20h = runtime_convTstring();
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172cf1 /* "message" */, 7);
        *puVar2 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_04 = var_20h;
            extraout_R11_04[1] = puVar2[1];
        }
        puVar2[1] = var_20h;
        var_50h = 0x10a4880;
        var_48h = var_18h;
        uVar3 = runtime_convT(0x10cbee0, &var_50h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
        return;
    }
    iVar5 = *(int64_t *)(var_88h + 0x58);
    iVar1 = *(int64_t *)var_10h;
    *(int64_t *)0x355d3e8 = iVar5;
    if (0 < iVar1) {
        if (((iVar5 == 4) || (iVar5 == 5)) || (iVar5 == 6)) {
            time_Now();
            iVar1 = biz_dao_UpdateTaskChainCompletion(in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, 
                                 in_stack_ffffffffffffff48, in_stack_ffffffffffffff50, var_90h, var_88h);
        } else {
            iVar1 = biz_dao_UpdateTaskChainStatusByID(in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, var_90h);
            if ((char)iVar1 == '\0') {
                var_18h = runtime_makemap_small();
                puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172d0d /* "success" */, 7);
                *puVar2 = 0x1042d20;
                if (*(int32_t *)0x355db50 != 0) {
                    uVar3 = puVar2[1];
                    puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
                    *extraout_R11 = uVar3;
                }
                puVar2[1] = 0xf7a720;
                auVar7 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172cf1 /* "message" */, 7);
                puVar2 = auVar7._0_8_;
                *puVar2 = 0x1042920;
                if (*(int32_t *)0x355db50 != 0) {
                    puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar7._8_8_, puVar2[1]);
                    *extraout_R11_00 = extraout_RCX;
                }
                puVar2[1] = 0x2e68cd0 /* "更新任务链状态失败" */;
                var_50h = 0x10a4880;
                var_48h = var_18h;
                uVar3 = runtime_convT(0x10cbee0, &var_50h);
                gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
                return;
            }
        }
    }
    var_18h = runtime_makemap_small(iVar1, iVar5);
    auVar7 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172d0d /* "success" */, 7);
    puVar2 = auVar7._0_8_;
    *puVar2 = 0x1042d20;
    if (*(int32_t *)0x355db50 != 0) {
        puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar7._8_8_, puVar2[1]);
        *extraout_R11_01 = extraout_RCX_00;
    }
    puVar2[1] = 0xf7a728;
    var_20h = runtime_convT64(iVar5);
    puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116f267 /* "status" */, 6);
    *puVar2 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_02 = var_20h;
        extraout_R11_02[1] = puVar2[1];
    }
    puVar2[1] = var_20h;
    var_50h = 0x10a4880;
    var_48h = var_18h;
    uVar3 = runtime_convT(0x10cbee0, &var_50h);
    gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
    return;
}

/* CAS-Backend/biz/controller.runTaskChainNavigationControl.func1 | VA 0xe887a0 | task_chain_controller.go:408
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: res *CAS-Backend/pkg/agvcontrol.RobotTaskListStatusRes, sendCmd func(net.Conn) error, &req *CAS-Backend/biz/controller.TaskChainRequest, &taskListResponse **CAS-Backend/pkg/agvcontrol.RobotTaskListStatusRes, e error */
undefined  [16] __stdcall
biz_controller_runTaskChainNavigationControl_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h,
          int64_t arg_30h, int64_t arg_38h)
{
    undefined8 *puVar1;
    uint64_t *puVar2;
    undefined auVar3 [16];
    int64_t in_RAX;
    uint64_t uVar4;
    uint64_t uVar5;
    int64_t extraout_RDX;
    undefined8 unaff_RBX;
    uint64_t *extraout_R11;
    int64_t unaff_R14;
    undefined auVar6 [16];
    undefined auVar7 [16];
    int64_t unaff_retaddr;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
        arg3 = extraout_RDX;
    }
    puVar1 = *(undefined8 **)(arg3 + 8);
    uVar5 = *(uint64_t *)(arg3 + 0x10);
    puVar2 = *(uint64_t **)(arg3 + 0x18);
    auVar6._0_8_ = (*(code *)*puVar1)();
    if (auVar6._0_8_ != 0) {
        auVar6._8_8_ = puVar1;
        return auVar6;
    }
    auVar6 = pkg_agvcontrol_SendRobotTaskListStatusReq(in_RAX, unaff_RBX, *(undefined8 *)(uVar5 + 8), *(undefined8 *)(uVar5 + 0x10), 1);
    uVar4 = auVar6._0_8_;
    if (auVar6._8_8_ != 0) {
        auVar7._8_8_ = uVar5;
        auVar7._0_8_ = auVar6._8_8_;
        return auVar7;
    }
    if (*(int32_t *)0x355db50 != 0) {
        uVar4 = runtime_gcWriteBarrier2();
        *extraout_R11 = uVar4;
        uVar5 = *puVar2;
        extraout_R11[1] = uVar5;
    }
    *puVar2 = uVar4;
    auVar3._8_8_ = 0;
    auVar3._0_8_ = uVar5;
    return auVar3 << 0x40;
}
