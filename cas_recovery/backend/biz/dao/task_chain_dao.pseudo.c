/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/biz/dao.TaskChain.TableName | VA 0x996920 | task_chain_dao.go:21
   DWARF parameters and results: ~p0 CAS-Backend/biz/dao.TaskChain, ~r0 string
   DWARF locals: (no entries) */
undefined  [16] biz_dao_TaskChain_TableName(void)
{
    undefined auVar1 [16];
    
    auVar1._8_8_ = 0xe;
    auVar1._0_8_ = 0x11799c5 /* "agv_task_chain" */;
    return auVar1;
}

/* CAS-Backend/biz/dao.InsertTaskChain | VA 0x996940 | task_chain_dao.go:24
   DWARF parameters and results: t *CAS-Backend/biz/dao.TaskChain, ~r0 bool
   DWARF locals: result *gorm.io/gorm.DB */
undefined8 __stdcall biz_dao_InsertTaskChain(int64_t arg_8h, int64_t arg_40h)
{
    uint64_t uVar1;
    int64_t in_RAX;
    undefined8 extraout_RAX;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 uVar2;
    int64_t iVar3;
    undefined8 extraout_RBX;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    if (in_RAX == 0) {
        return 0;
    }
    if (*(int64_t *)(in_RAX + 0x38) == 0) {
        uVar1 = *(uint64_t *)(in_RAX + 0x40);
        if ((int64_t)uVar1 < 0) {
            iVar3 = ((uVar1 & 0x7fffffffffffffff) >> 0x1e) + 0xdd7b17f80;
        } else {
            iVar3 = *(int64_t *)(in_RAX + 0x48);
        }
        if ((iVar3 == 0) && ((uVar1 & 0x3fffffff) == 0)) {
            time_Now();
            *(undefined8 *)(in_RAX + 0x40) = extraout_RAX;
            *(undefined8 *)(in_RAX + 0x48) = extraout_RBX;
            uVar2 = extraout_RCX;
            if (*(int32_t *)0x355db50 != 0) {
                runtime_gcWriteBarrier2();
                *extraout_R11 = extraout_RCX_00;
                extraout_R11[1] = *(undefined8 *)(in_RAX + 0x50);
                uVar2 = extraout_RCX_00;
            }
            *(undefined8 *)(in_RAX + 0x50) = uVar2;
        }
    }
    iVar3 = gorm___DB__Create(*(undefined8 *)0x3512040, 0x1072ea0, in_RAX);
    if (*(int64_t *)(iVar3 + 8) == 0) {
        return 1;
    }
    var_18h = 0;
    if (*(int64_t *)(iVar3 + 8) != 0) {
        var_18h = *(int64_t *)(*(int64_t *)(iVar3 + 8) + 8);
    }
    var_10h = *(int64_t *)(iVar3 + 0x10);
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1186bb2 /* "插入任务链失败: %v\n" */, 0x1a, &var_18h, 1, 1);
    return 0;
}

/* CAS-Backend/biz/dao.DeleteTaskChain | VA 0x996a80 | task_chain_dao.go:39
   DWARF parameters and results: id int, ~r0 bool
   DWARF locals: result *gorm.io/gorm.DB */
bool __stdcall biz_dao_DeleteTaskChain(int64_t arg_8h, int64_t arg_40h)
{
    undefined8 in_RAX;
    undefined8 uVar1;
    undefined8 *puVar2;
    undefined8 uVar3;
    int64_t iVar4;
    undefined8 *extraout_RDI;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
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
    uVar1 = runtime_newobject(0x1121540);
    puVar2 = (undefined8 *)runtime_newobject(0x104dea0);
    uVar3 = runtime_convT64(in_RAX);
    *puVar2 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        uVar3 = runtime_gcWriteBarrier2();
        *extraout_R11 = uVar3;
        extraout_R11[1] = extraout_RDI[1];
        puVar2 = extraout_RDI;
    }
    puVar2[1] = uVar3;
    iVar4 = gorm___DB__Delete(*(undefined8 *)0x3512040, 0x1072ea0, uVar1, puVar2, 1, 1);
    if (*(int64_t *)(iVar4 + 8) != 0) {
        var_20h = runtime_convT64(in_RAX);
        var_28h = 0x1042b60;
        var_18h = 0;
        if (*(int64_t *)(iVar4 + 8) != 0) {
            var_18h = *(int64_t *)(*(int64_t *)(iVar4 + 8) + 8);
        }
        var_10h = *(int64_t *)(iVar4 + 0x10);
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x119780a /* "删除任务链失败, ID: %d, 错误: %v\n" */, 0x2a, &var_28h, 2, 2);
        return false;
    }
    return 0 < *(int64_t *)(iVar4 + 0x18);
}

/* CAS-Backend/biz/dao.UpdateTaskChain | VA 0x996be0 | task_chain_dao.go:48
   DWARF parameters and results: t CAS-Backend/biz/dao.TaskChain, ~r0 bool
   DWARF locals: result *gorm.io/gorm.DB */
bool __stdcall
biz_dao_UpdateTaskChain
          (int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
          int64_t arg_38h, int64_t arg_40h, int64_t arg_50h, int64_t arg_60h, int64_t arg_78h)
{
    undefined8 uVar1;
    int64_t iVar2;
    undefined8 *puVar3;
    undefined8 uVar4;
    undefined8 uVar5;
    int64_t iVar6;
    int64_t extraout_RCX;
    uint64_t uVar7;
    undefined8 extraout_RSI;
    undefined8 *extraout_RDI;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    undefined8 *extraout_R11_03;
    undefined8 *extraout_R11_04;
    undefined8 *extraout_R11_05;
    undefined8 *extraout_R11_06;
    int64_t unaff_R14;
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
    uVar1 = runtime_newobject(0x1121540);
    iVar2 = gorm___DB__getInstance(*(undefined8 *)0x3512040);
    iVar6 = *(int64_t *)(iVar2 + 0x20);
    *(undefined8 *)(iVar6 + 0x20) = 0x1072ea0;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier2();
        *extraout_R11 = uVar1;
        extraout_R11[1] = *(undefined8 *)(extraout_RCX + 0x28);
        iVar6 = extraout_RCX;
    }
    *(undefined8 *)(iVar6 + 0x28) = uVar1;
    puVar3 = (undefined8 *)runtime_newobject(0x104dea0);
    uVar1 = runtime_convT64(arg_8h);
    *puVar3 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        uVar1 = runtime_gcWriteBarrier2();
        *extraout_R11_00 = uVar1;
        extraout_R11_00[1] = extraout_RDI[1];
        puVar3 = extraout_RDI;
    }
    puVar3[1] = uVar1;
    uVar1 = gorm___DB__Where(iVar2, 0x1042920, 0x2e67d60 /* "id = ?" */, puVar3, 1, 1);
    uVar4 = runtime_makemap_small();
    uVar5 = runtime_convTstring(arg_10h, arg_18h);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x11752bb /* "chainName" */, 9);
    *puVar3 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_01 = uVar5;
        extraout_R11_01[1] = puVar3[1];
    }
    puVar3[1] = uVar5;
    uVar5 = runtime_convTstring(arg_20h, arg_28h);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x116a5cb /* "descr" */, 5);
    *puVar3 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_02 = uVar5;
        extraout_R11_02[1] = puVar3[1];
    }
    puVar3[1] = uVar5;
    uVar5 = runtime_convTstring(arg_30h, arg_38h);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x11752c4 /* "chainJson" */, 9);
    *puVar3 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_03 = uVar5;
        extraout_R11_03[1] = puVar3[1];
    }
    puVar3[1] = uVar5;
    uVar5 = runtime_convT64(arg_40h);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x116f267 /* "status" */, 6);
    *puVar3 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_04 = uVar5;
        extraout_R11_04[1] = puVar3[1];
    }
    puVar3[1] = uVar5;
    uVar5 = runtime_convT(0x11502e0, &arg_60h);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x1172acf /* "finTime" */, 7);
    *puVar3 = 0x11502e0;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_05 = uVar5;
        extraout_R11_05[1] = puVar3[1];
    }
    puVar3[1] = uVar5;
    uVar7 = (uint64_t)(uint8_t)arg_78h;
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x1168a3c /* "del" */, 3);
    *puVar3 = 0x1042d20;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11_06 = extraout_RSI;
    }
    puVar3[1] = uVar7 * 8 + 0xf7a720;
    iVar6 = gorm___DB__Updates(uVar1, 0x107d4c0, uVar4);
    if (*(int64_t *)(iVar6 + 8) == 0) {
        return 0 < *(int64_t *)(iVar6 + 0x18);
    }
    var_20h = runtime_convT64(arg_8h);
    var_28h = 0x1042b60;
    var_18h = 0;
    if (*(int64_t *)(iVar6 + 8) != 0) {
        var_18h = *(int64_t *)(*(int64_t *)(iVar6 + 8) + 8);
    }
    var_10h = *(int64_t *)(iVar6 + 0x10);
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1197834 /* "更新任务链失败, ID: %d, 错误: %v\n" */, 0x2a, &var_28h, 2, 2);
    return false;
}

/* CAS-Backend/biz/dao.Select1TaskChain | VA 0x997020 | task_chain_dao.go:64
   DWARF parameters and results: id int, ~r0 bool, ~r1 CAS-Backend/biz/dao.TaskChain
   DWARF locals: &t *CAS-Backend/biz/dao.TaskChain, result *gorm.io/gorm.DB */
// WARNING: Variable defined which should be unmapped: var_8h

undefined8 __stdcall biz_dao_Select1TaskChain(int64_t arg_8h, int64_t arg_10h, int64_t arg_40h, int64_t arg_80h)
{
    undefined8 in_RAX;
    undefined8 *puVar1;
    undefined8 uVar2;
    int64_t iVar3;
    undefined8 *extraout_RDI;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    int64_t var_88h;
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0x99720b;
        runtime_morestack_noctxt_abi0();
    }
    runtime_duffzero_offset_326();
    var_10h = runtime_newobject(0x1121540);
    puVar1 = (undefined8 *)runtime_newobject(0x104dea0);
    uVar2 = runtime_convT64(in_RAX);
    *puVar1 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        uVar2 = runtime_gcWriteBarrier2();
        *extraout_R11 = uVar2;
        extraout_R11[1] = extraout_RDI[1];
        puVar1 = extraout_RDI;
    }
    puVar1[1] = uVar2;
    iVar3 = gorm___DB__First(*(undefined8 *)0x3512040, 0x1072ea0, var_10h, puVar1, 1, 1);
    if (*(int64_t *)(iVar3 + 8) != 0) {
        var_28h = runtime_convT64(in_RAX);
        var_30h = 0x1042b60;
        var_20h = 0;
        if (*(int64_t *)(iVar3 + 8) != 0) {
            var_20h = *(int64_t *)(*(int64_t *)(iVar3 + 8) + 8);
        }
        var_18h = *(int64_t *)(iVar3 + 0x10);
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x119785e /* "查询任务链失败, ID: %d, 错误: %v\n" */, 0x2a, &var_30h, 2, 2);
        runtime_duffzero_offset_326();
        return 0;
    }
    runtime_duffcopy_offset_798();
    return 1;
}

/* CAS-Backend/biz/dao.SelectAllTaskChain | VA 0x997220 | task_chain_dao.go:74
   DWARF parameters and results: page int, size int, search string, ~r0 bool, ~r1 int64, ~r2 []CAS-Backend/biz/dao.TaskChain
   DWARF locals: query *gorm.io/gorm.DB, &total *int64, &list *[]CAS-Backend/biz/dao.TaskChain, offset int, like string */
undefined8 __stdcall
biz_dao_SelectAllTaskChain
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_50h)
{
    int64_t in_RAX;
    undefined8 uVar1;
    undefined8 *puVar2;
    undefined8 uVar3;
    int64_t iVar4;
    undefined8 *puVar5;
    undefined8 uVar6;
    int64_t iVar7;
    int64_t extraout_RCX;
    int64_t unaff_RBX;
    undefined8 *extraout_RDI;
    undefined8 *extraout_R10;
    undefined8 *puVar8;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    int64_t unaff_R14;
    undefined auVar9 [16];
    int64_t var_48h;
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
    uVar1 = runtime_newobject(0x1042ae0);
    puVar2 = (undefined8 *)runtime_newobject(0x10348a0);
    *puVar2 = 0;
    uVar3 = runtime_newobject(0x1121540);
    iVar4 = gorm___DB__getInstance(*(undefined8 *)0x3512040);
    iVar7 = *(int64_t *)(iVar4 + 0x20);
    *(undefined8 *)(iVar7 + 0x20) = 0x1072ea0;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier2();
        *extraout_R11 = uVar3;
        extraout_R11[1] = *(undefined8 *)(extraout_RCX + 0x28);
        iVar7 = extraout_RCX;
    }
    *(undefined8 *)(iVar7 + 0x28) = uVar3;
    puVar5 = (undefined8 *)runtime_newobject(0x104dea0);
    *puVar5 = 0x1042d20;
    puVar5[1] = 0xf7a720;
    uVar3 = gorm___DB__Where(iVar4, 0x1042920, 0x2e67d70 /* "del = ?" */, puVar5, 1, 1);
    if (arg1 != 0) {
        auVar9 = runtime_concatstring3(0, 0x2e64b30, 1, arg4, arg1, 0x2e64b30, 1);
        puVar5 = (undefined8 *)runtime_newobject(0x104e3e0);
        uVar6 = runtime_convTstring(auVar9._0_8_, auVar9._8_8_);
        *puVar5 = 0x1042920;
        puVar8 = puVar5;
        if (*(int32_t *)0x355db50 != 0) {
            uVar6 = runtime_gcWriteBarrier2();
            *extraout_R11_00 = uVar6;
            extraout_R11_00[1] = extraout_R10[1];
            puVar8 = extraout_R10;
        }
        puVar8[1] = uVar6;
        uVar6 = runtime_convTstring(auVar9._0_8_, auVar9._8_8_);
        auVar9._8_8_ = 0x1042920;
        auVar9._0_8_ = uVar6;
        puVar5[2] = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            auVar9 = runtime_gcWriteBarrier2();
            *extraout_R11_01 = auVar9._0_8_;
            extraout_R11_01[1] = extraout_RDI[3];
            puVar5 = extraout_RDI;
        }
        puVar5[3] = auVar9._0_8_;
        uVar3 = gorm___DB__Where(uVar3, auVar9._8_8_, 0x2e67d80 /* "chainName LIKE ? OR descr LIKE ?" */, puVar5, 2, 2);
    }
    iVar7 = gorm___DB__Count(uVar3, uVar1);
    if (*(int64_t *)(iVar7 + 8) != 0) {
        return 0;
    }
    uVar1 = gorm___DB__Order(uVar3, 0x1042920, 0x2e67d90 /* "id DESC" */);
    iVar7 = (in_RAX + -1) * unaff_RBX;
    if (iVar7 < 0) {
        iVar7 = 0;
    }
    uVar1 = gorm___DB__Offset(uVar1, iVar7);
    uVar1 = gorm___DB__Limit(uVar1, unaff_RBX);
    iVar7 = gorm___DB__Find(uVar1, 0x10348e0, puVar2, 0, 0, 0);
    if (*(int64_t *)(iVar7 + 8) == 0) {
        return 1;
    }
    return 0;
}

/* CAS-Backend/biz/dao.UpdateTaskChainStatusByID | VA 0x997500 | task_chain_dao.go:95
   DWARF parameters and results: chainID int, status int, ~r0 bool
   DWARF locals: result *gorm.io/gorm.DB */
bool __stdcall biz_dao_UpdateTaskChainStatusByID(int64_t arg_8h, int64_t arg_10h, int64_t arg_48h)
{
    undefined8 in_RAX;
    undefined8 uVar1;
    int64_t iVar2;
    undefined8 *puVar3;
    undefined8 uVar4;
    int64_t iVar5;
    int64_t extraout_RCX;
    undefined8 unaff_RBX;
    undefined8 *extraout_RDI;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t unaff_R14;
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
    uVar1 = runtime_newobject(0x1121540);
    iVar2 = gorm___DB__getInstance(*(undefined8 *)0x3512040);
    iVar5 = *(int64_t *)(iVar2 + 0x20);
    *(undefined8 *)(iVar5 + 0x20) = 0x1072ea0;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier2();
        *extraout_R11 = uVar1;
        extraout_R11[1] = *(undefined8 *)(extraout_RCX + 0x28);
        iVar5 = extraout_RCX;
    }
    *(undefined8 *)(iVar5 + 0x28) = uVar1;
    puVar3 = (undefined8 *)runtime_newobject(0x104dea0);
    uVar1 = runtime_convT64(in_RAX);
    *puVar3 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        uVar1 = runtime_gcWriteBarrier2();
        *extraout_R11_00 = uVar1;
        extraout_R11_00[1] = extraout_RDI[1];
        puVar3 = extraout_RDI;
    }
    puVar3[1] = uVar1;
    uVar1 = gorm___DB__Where(iVar2, 0x1042920, 0x2e67d60 /* "id = ?" */, puVar3, 1, 1);
    uVar4 = runtime_convT64(unaff_RBX);
    iVar5 = gorm___DB__Update(uVar1, 0x116f267 /* "status" */, 6, 0x1042b60, uVar4);
    if (*(int64_t *)(iVar5 + 8) == 0) {
        return 0 < *(int64_t *)(iVar5 + 0x18);
    }
    var_20h = runtime_convT64(in_RAX);
    var_28h = 0x1042b60;
    var_18h = 0;
    if (*(int64_t *)(iVar5 + 8) != 0) {
        var_18h = *(int64_t *)(*(int64_t *)(iVar5 + 8) + 8);
    }
    var_10h = *(int64_t *)(iVar5 + 0x10);
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x119bdfb /* "更新任务链状态失败, ID: %d, 错误: %v\n" */, 0x30, &var_28h, 2, 2);
    return false;
}

/* CAS-Backend/biz/dao.UpdateTaskChainCompletion | VA 0x997700 | task_chain_dao.go:104
   DWARF parameters and results: chainID int, status int, finTime time.Time, ~r0 bool
   DWARF locals: result *gorm.io/gorm.DB */
bool __stdcall
biz_dao_UpdateTaskChainCompletion
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h,
          int64_t arg_48h, int64_t arg_50h)
{
    undefined8 in_RAX;
    undefined8 uVar1;
    int64_t iVar2;
    undefined8 *puVar3;
    undefined8 uVar4;
    undefined8 uVar5;
    int64_t iVar6;
    int64_t extraout_RCX;
    undefined8 unaff_RBX;
    undefined8 *extraout_RDI;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
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
    
    arg_18h = arg4;
    arg_28h = arg2;
    arg_20h = arg1;
    while (&var_18h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    uVar1 = runtime_newobject(0x1121540);
    iVar2 = gorm___DB__getInstance(*(undefined8 *)0x3512040);
    iVar6 = *(int64_t *)(iVar2 + 0x20);
    *(undefined8 *)(iVar6 + 0x20) = 0x1072ea0;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier2();
        *extraout_R11 = uVar1;
        extraout_R11[1] = *(undefined8 *)(extraout_RCX + 0x28);
        iVar6 = extraout_RCX;
    }
    *(undefined8 *)(iVar6 + 0x28) = uVar1;
    puVar3 = (undefined8 *)runtime_newobject(0x104dea0);
    uVar1 = runtime_convT64(in_RAX);
    *puVar3 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        uVar1 = runtime_gcWriteBarrier2();
        *extraout_R11_00 = uVar1;
        extraout_R11_00[1] = extraout_RDI[1];
        puVar3 = extraout_RDI;
    }
    puVar3[1] = uVar1;
    uVar1 = gorm___DB__Where(iVar2, 0x1042920, 0x2e67d60 /* "id = ?" */, puVar3, 1, 1);
    uVar4 = runtime_makemap_small();
    uVar5 = runtime_convT64(unaff_RBX);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x116f267 /* "status" */, 6);
    *puVar3 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_01 = uVar5;
        extraout_R11_01[1] = puVar3[1];
    }
    puVar3[1] = uVar5;
    uVar5 = runtime_convT(0x11502e0, &arg_18h);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x1172acf /* "finTime" */, 7);
    *puVar3 = 0x11502e0;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_02 = uVar5;
        extraout_R11_02[1] = puVar3[1];
    }
    puVar3[1] = uVar5;
    iVar6 = gorm___DB__Updates(uVar1, 0x107d4c0, uVar4);
    if (*(int64_t *)(iVar6 + 8) == 0) {
        return 0 < *(int64_t *)(iVar6 + 0x18);
    }
    var_20h = runtime_convT64(in_RAX);
    var_28h = 0x1042b60;
    var_18h = 0;
    if (*(int64_t *)(iVar6 + 8) != 0) {
        var_18h = *(int64_t *)(*(int64_t *)(iVar6 + 8) + 8);
    }
    var_10h = *(int64_t *)(iVar6 + 0x10);
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x119f91b /* "更新任务链完成状态失败, ID: %d, 错误: %v\n" */, 0x36, &var_28h, 2, 2);
    return false;
}
