/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/biz/dao.User.TableName | VA 0x999f80 | user_dao.go:102
   DWARF parameters and results: ~p0 CAS-Backend/biz/dao.User, ~r0 string
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: arg_10h

undefined8 __stdcall
biz_dao_User_TableName
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, int64_t arg5, int64_t arg6,
          int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
          int64_t arg_38h, int64_t arg_40h)
{
    return 0x11740ab /* "agv_user" */;
}

/* CAS-Backend/biz/dao.Insert_user | VA 0x999fc0 | user_dao.go:107
   DWARF parameters and results: no string, name string, pwd string, roles []int, ~r0 bool
   DWARF locals: &user *CAS-Backend/biz/dao.User, result *gorm.io/gorm.DB, roleValue int */
undefined8 __stdcall
biz_dao_Insert_user(int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, int64_t arg5, int64_t arg6,
                   int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
                   int64_t arg_38h, int64_t arg_40h, int64_t arg_48h, undefined8 placeholder_15, int64_t arg_58h)
{
    int64_t in_RAX;
    int64_t iVar1;
    int64_t unaff_RBX;
    int64_t in_R10;
    int64_t unaff_R14;
    int64_t in_XMM15_Qa;
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
    if (in_R10 == 0) {
        arg6 = 0;
    } else {
        arg6 = *(int64_t *)arg6;
    }
    var_10h = runtime_newobject(0x110c1c0);
    var_50h = in_XMM15_Qa;
    var_48h = arg4;
    var_40h = arg1;
    var_38h = in_RAX;
    var_30h = unaff_RBX;
    var_28h = arg2;
    var_20h = arg5;
    var_18h = arg6;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_wbMove(0x110c1c0, var_10h, &var_50h);
    }
    *(int64_t *)var_10h = var_50h;
    *(int64_t *)(var_10h + 8) = var_48h;
    *(int64_t *)(var_10h + 0x10) = var_40h;
    *(int64_t *)(var_10h + 0x18) = var_38h;
    *(int64_t *)(var_10h + 0x20) = var_30h;
    *(int64_t *)(var_10h + 0x28) = var_28h;
    *(undefined4 *)(var_10h + 0x30) = (undefined4)var_20h;
    *(undefined4 *)(var_10h + 0x34) = var_20h._4_4_;
    *(undefined4 *)(var_10h + 0x38) = (undefined4)var_18h;
    *(undefined4 *)(var_10h + 0x3c) = var_18h._4_4_;
    iVar1 = gorm___DB__Create(*(undefined8 *)0x3512040, 0x1072f00, var_10h);
    if (*(int64_t *)(iVar1 + 8) != 0) {
        var_60h = 0;
        if (*(int64_t *)(iVar1 + 8) != 0) {
            var_60h = *(int64_t *)(*(int64_t *)(iVar1 + 8) + 8);
        }
        var_58h = *(int64_t *)(iVar1 + 0x10);
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x117b7a3 /* "插入失败: %v" */, 0x10, &var_60h, 1, 1);
        return 0;
    }
    var_68h = runtime_convT64(*(undefined8 *)var_10h);
    var_70h = 0x1042b60;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11800e2 /* "插入成功, ID: %d" */, 0x14, &var_70h, 1, 1);
    return 1;
}

/* CAS-Backend/biz/dao.IsExist_user | VA 0x99a260 | user_dao.go:166
   DWARF parameters and results: no string, ~r0 bool
   DWARF locals: &count *int64, result *gorm.io/gorm.DB */
bool __stdcall biz_dao_IsExist_user(int64_t arg_8h, int64_t arg_10h, int64_t arg_48h)
{
    undefined8 in_RAX;
    undefined8 uVar1;
    int64_t iVar2;
    undefined8 *puVar3;
    int64_t iVar4;
    int64_t extraout_RCX;
    undefined8 unaff_RBX;
    undefined8 *extraout_RDI;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
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
    var_10h = runtime_newobject(0x1042ae0);
    uVar1 = runtime_newobject(0x110c1c0);
    iVar2 = gorm___DB__getInstance(*(undefined8 *)0x3512040);
    iVar4 = *(int64_t *)(iVar2 + 0x20);
    *(undefined8 *)(iVar4 + 0x20) = 0x1072f00;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier2();
        *extraout_R11 = uVar1;
        extraout_R11[1] = *(undefined8 *)(extraout_RCX + 0x28);
        iVar4 = extraout_RCX;
    }
    *(undefined8 *)(iVar4 + 0x28) = uVar1;
    puVar3 = (undefined8 *)runtime_newobject(0x104dea0);
    uVar1 = runtime_convTstring(in_RAX, unaff_RBX);
    auVar5._8_8_ = 0x1042920;
    auVar5._0_8_ = uVar1;
    *puVar3 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        auVar5 = runtime_gcWriteBarrier2();
        *extraout_R11_00 = auVar5._0_8_;
        extraout_R11_00[1] = extraout_RDI[1];
        puVar3 = extraout_RDI;
    }
    puVar3[1] = auVar5._0_8_;
    uVar1 = gorm___DB__Where(iVar2, auVar5._8_8_, 0x2e67dd0 /* "no = ?" */, puVar3, 1, 1);
    iVar4 = gorm___DB__Count(uVar1, var_10h);
    if (*(int64_t *)(iVar4 + 8) == 0) {
        return 0 < *(int64_t *)var_10h;
    }
    var_28h = runtime_convTstring(in_RAX, unaff_RBX);
    var_30h = 0x1042920;
    var_20h = 0;
    if (*(int64_t *)(iVar4 + 8) != 0) {
        var_20h = *(int64_t *)(*(int64_t *)(iVar4 + 8) + 8);
    }
    var_18h = *(int64_t *)(iVar4 + 0x10);
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1191ac2 /* "查询失败, 工号: %s, 错误: %v" */, 0x24, &var_30h, 2, 2);
    return false;
}

/* CAS-Backend/biz/dao.Select1_user | VA 0x99a440 | user_dao.go:180
   DWARF parameters and results: no string, ~r0 CAS-Backend/biz/dao.User, ~r0 CAS-Backend/biz/dao.User
   DWARF locals: &u *CAS-Backend/biz/dao.User, result *gorm.io/gorm.DB */
undefined8 __stdcall biz_dao_Select1_user(int64_t arg_8h, int64_t arg_10h, int64_t arg_80h)
{
    undefined8 in_RAX;
    undefined8 uVar1;
    int64_t iVar2;
    undefined8 unaff_RBX;
    int64_t extraout_RDI;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    undefined auVar3 [16];
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
    
    while (&var_38h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(0x110c1c0);
    var_38h = runtime_newobject(0x104dea0);
    uVar1 = runtime_convTstring(in_RAX, unaff_RBX);
    auVar3._8_8_ = 0x1042920;
    auVar3._0_8_ = uVar1;
    *(undefined8 *)var_38h = 0x1042920;
    iVar2 = var_38h;
    if (*(int32_t *)0x355db50 != 0) {
        auVar3 = runtime_gcWriteBarrier2();
        *extraout_R11 = auVar3._0_8_;
        extraout_R11[1] = *(undefined8 *)(extraout_RDI + 8);
        iVar2 = extraout_RDI;
    }
    *(int64_t *)(iVar2 + 8) = auVar3._0_8_;
    uVar1 = gorm___DB__Where(*(undefined8 *)0x3512040, auVar3._8_8_, 0x2e67dd0 /* "no = ?" */, iVar2, 1, 1);
    iVar2 = gorm___DB__First(uVar1, 0x1072f00, var_10h, 0, 0, 0);
    if (*(int64_t *)(iVar2 + 8) != 0) {
        var_28h = runtime_convTstring(in_RAX, unaff_RBX);
        var_30h = 0x1042920;
        var_20h = 0;
        if (*(int64_t *)(iVar2 + 8) != 0) {
            var_20h = *(int64_t *)(*(int64_t *)(iVar2 + 8) + 8);
        }
        var_18h = *(int64_t *)(iVar2 + 0x10);
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1191ac2 /* "查询失败, 工号: %s, 错误: %v" */, 0x24, &var_30h, 2, 2);
        return 0;
    }
    return *(undefined8 *)var_10h;
}
