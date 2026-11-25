/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/biz/dao.InitDB | VA 0x994920 | db.go:46
   DWARF parameters and results: (no entries)
   DWARF locals: db *gorm.io/gorm.DB, sqlDB *database/sql.DB, dsn string, err error */
// WARNING: Variable defined which should be unmapped: var_b8h
// WARNING: Variable defined which should be unmapped: var_b0h

void __stdcall biz_dao_InitDB(int64_t arg_48h, int64_t arg_f8h)
{
    undefined8 uVar1;
    int64_t *piVar2;
    undefined8 *puVar3;
    int64_t extraout_RAX;
    int64_t extraout_RAX_00;
    int64_t iVar4;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    int64_t extraout_RBX;
    int64_t extraout_RBX_00;
    int64_t *extraout_R11;
    int64_t *extraout_R11_00;
    int64_t *extraout_R11_01;
    int64_t *extraout_R11_02;
    int64_t unaff_R14;
    int64_t in_XMM15_Qa;
    int64_t in_XMM15_Qb;
    undefined auVar5 [16];
    int64_t unaff_retaddr;
    int64_t in_stack_00000008;
    int64_t in_stack_ffffffffffffff00;
    int64_t in_stack_ffffffffffffff08;
    int64_t var_d0h;
    int64_t var_c8h;
    int64_t var_c0h;
    int64_t var_b8h;
    int64_t var_b0h;
    int64_t var_a0h;
    int64_t var_90h;
    int64_t var_88h;
    int64_t var_80h;
    int64_t var_78h;
    int64_t var_70h;
    int64_t iStack_68;
    int64_t var_60h;
    int64_t var_58h;
    int64_t var_50h;
    undefined8 uStack_48;
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&var_80h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_stack_00000008);
    }
    iVar4 = *(int64_t *)0x35164d0;
    var_38h = *(int64_t *)0x35164c8;
    if (*(int64_t *)0x35164d0 == 0) {
        var_38h = pkg_appdir_Resolve(in_stack_ffffffffffffff00, in_stack_ffffffffffffff08, var_b8h, var_b0h);
        iVar4 = 0xb;
    }
    uVar1 = internal_filepathlite_Dir(in_stack_ffffffffffffff00, in_stack_ffffffffffffff08);
    auVar5 = os_MkdirAll(uVar1, iVar4, 0x1ed);
    if (auVar5._0_8_ != 0) {
        var_b0h._1_7_ = (unkbyte7)((uint64_t)in_XMM15_Qa >> 8);
        var_b0h = CONCAT71(var_b0h._1_7_, 0x1a);
        var_50h = *(int64_t *)(auVar5._0_8_ + 8);
        var_80h = 0x116a5c1;
        var_78h = 5;
        var_70h = var_b0h;
        iStack_68 = in_XMM15_Qb;
        var_60h = in_XMM15_Qa;
        var_58h = in_XMM15_Qb;
        uStack_48 = auVar5._8_8_;
        piVar2 = (int64_t *)runtime_newobject(0x104e380);
        if (*(int32_t *)0x355db50 != 0) {
            var_10h = (int64_t)piVar2;
            runtime_wbMove(0x11129a0, piVar2, &var_80h);
            piVar2 = (int64_t *)var_10h;
        }
        *piVar2 = var_80h;
        piVar2[1] = var_78h;
        piVar2[2] = var_70h;
        piVar2[3] = iStack_68;
        piVar2[4] = var_60h;
        piVar2[5] = var_58h;
        *(undefined4 *)(piVar2 + 6) = (undefined4)var_50h;
        *(undefined4 *)((int64_t)piVar2 + 0x34) = var_50h._4_4_;
        *(undefined4 *)(piVar2 + 7) = (undefined4)uStack_48;
        *(undefined4 *)((int64_t)piVar2 + 0x3c) = uStack_48._4_4_;
        go_uber_org_zap___Logger__Fatal(*(undefined8 *)0x3512068, 0x118a30c /* "创建数据库目录失败: " */, 0x1d, piVar2, 1, 1);
    }
    var_18h = runtime_newobject(0x1128560);
    *(int64_t *)(var_18h + 0x18) = iVar4;
    if (*(int32_t *)0x355db50 != 0) {
        var_18h = runtime_gcWriteBarrier1();
        *extraout_R11 = var_38h;
    }
    *(int64_t *)(var_18h + 0x10) = var_38h;
    auVar5 = (**(code **)(*(int64_t *)0x3513930 + 0x28))(*(undefined8 *)0x3513938, 3);
    var_20h = auVar5._8_8_;
    var_28h = runtime_newobject(0x114d960);
    *(int64_t *)(var_28h + 0x28) = auVar5._0_8_;
    if (*(int32_t *)0x355db50 != 0) {
        var_28h = runtime_gcWriteBarrier1();
        *extraout_R11_00 = var_20h;
    }
    *(int64_t *)(var_28h + 0x30) = var_20h;
    puVar3 = (undefined8 *)runtime_newobject(0x104e560);
    *puVar3 = 0x2e6f208;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11_01 = var_28h;
    }
    puVar3[1] = var_28h;
    gorm_Open(0x2e774b8, var_18h, puVar3, 1, 1);
    var_30h = extraout_RAX;
    if (extraout_RBX != 0) {
        var_b0h._1_7_ = (unkbyte7)((uint64_t)in_XMM15_Qa >> 8);
        var_b0h = CONCAT71(var_b0h._1_7_, 0x1a);
        var_50h = *(int64_t *)(extraout_RBX + 8);
        var_80h = 0x116a5c1;
        var_78h = 5;
        var_70h = var_b0h;
        iStack_68 = in_XMM15_Qb;
        var_60h = in_XMM15_Qa;
        var_58h = in_XMM15_Qb;
        uStack_48 = extraout_RCX;
        piVar2 = (int64_t *)runtime_newobject(0x104e380);
        if (*(int32_t *)0x355db50 != 0) {
            var_10h = (int64_t)piVar2;
            runtime_wbMove(0x11129a0, piVar2, &var_80h);
            piVar2 = (int64_t *)var_10h;
        }
        *piVar2 = var_80h;
        piVar2[1] = var_78h;
        piVar2[2] = var_70h;
        piVar2[3] = iStack_68;
        piVar2[4] = var_60h;
        piVar2[5] = var_58h;
        *(undefined4 *)(piVar2 + 6) = (undefined4)var_50h;
        *(undefined4 *)((int64_t)piVar2 + 0x34) = var_50h._4_4_;
        *(undefined4 *)(piVar2 + 7) = (undefined4)uStack_48;
        *(undefined4 *)((int64_t)piVar2 + 0x3c) = uStack_48._4_4_;
        go_uber_org_zap___Logger__Fatal(*(undefined8 *)0x3512068, 0x118a329 /* "连接SQLite数据库失败: " */, 0x1d, piVar2, 1, 1);
    }
    gorm___DB__DB(var_30h);
    var_40h = extraout_RAX_00;
    if (extraout_RBX_00 != 0) {
        var_b0h._1_7_ = (unkbyte7)((uint64_t)in_XMM15_Qa >> 8);
        var_b0h = CONCAT71(var_b0h._1_7_, 0x1a);
        var_50h = *(int64_t *)(extraout_RBX_00 + 8);
        var_80h = 0x116a5c1;
        var_78h = 5;
        var_70h = var_b0h;
        iStack_68 = in_XMM15_Qb;
        var_60h = in_XMM15_Qa;
        var_58h = in_XMM15_Qb;
        uStack_48 = extraout_RCX_00;
        piVar2 = (int64_t *)runtime_newobject(0x104e380);
        if (*(int32_t *)0x355db50 != 0) {
            var_10h = (int64_t)piVar2;
            runtime_wbMove(0x11129a0, piVar2, &var_80h);
            piVar2 = (int64_t *)var_10h;
        }
        *piVar2 = var_80h;
        piVar2[1] = var_78h;
        piVar2[2] = var_70h;
        piVar2[3] = iStack_68;
        piVar2[4] = var_60h;
        piVar2[5] = var_58h;
        *(undefined4 *)(piVar2 + 6) = (undefined4)var_50h;
        *(undefined4 *)((int64_t)piVar2 + 0x34) = var_50h._4_4_;
        *(undefined4 *)(piVar2 + 7) = (undefined4)uStack_48;
        *(undefined4 *)((int64_t)piVar2 + 0x3c) = uStack_48._4_4_;
        go_uber_org_zap___Logger__Fatal(*(undefined8 *)0x3512068, 0x118a346 /* "获取数据库连接失败: " */, 0x1d, piVar2, 1, 1);
    }
    database_sql___DB__SetMaxIdleConns(var_40h, 1);
    database_sql___DB__SetMaxOpenConns(var_40h, 1);
    database_sql___DB__SetConnMaxLifetime(var_40h, 0);
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier2();
        *extraout_R11_02 = var_30h;
        extraout_R11_02[1] = *(int64_t *)0x3512040;
    }
    *(int64_t *)0x3512040 = var_30h;
    auVar5 = biz_dao_testConnection();
    uStack_48 = auVar5._8_8_;
    if (auVar5._0_8_ != 0) {
        var_b0h._1_7_ = (unkbyte7)((uint64_t)in_XMM15_Qa >> 8);
        var_b0h = CONCAT71(var_b0h._1_7_, 0x1a);
        var_50h = *(int64_t *)(auVar5._0_8_ + 8);
        var_80h = 0x116a5c1;
        var_78h = 5;
        var_70h = var_b0h;
        iStack_68 = in_XMM15_Qb;
        var_60h = in_XMM15_Qa;
        var_58h = in_XMM15_Qb;
        piVar2 = (int64_t *)runtime_newobject(0x104e380);
        if (*(int32_t *)0x355db50 != 0) {
            var_10h = (int64_t)piVar2;
            runtime_wbMove(0x11129a0, piVar2, &var_80h);
            piVar2 = (int64_t *)var_10h;
        }
        *piVar2 = var_80h;
        piVar2[1] = var_78h;
        piVar2[2] = var_70h;
        piVar2[3] = iStack_68;
        piVar2[4] = var_60h;
        piVar2[5] = var_58h;
        *(undefined4 *)(piVar2 + 6) = (undefined4)var_50h;
        *(undefined4 *)((int64_t)piVar2 + 0x34) = var_50h._4_4_;
        *(undefined4 *)(piVar2 + 7) = (undefined4)uStack_48;
        *(undefined4 *)((int64_t)piVar2 + 0x3c) = uStack_48._4_4_;
        go_uber_org_zap___Logger__Fatal(*(undefined8 *)0x3512068, 0x11909ef /* "SQLite数据库连接测试失败: " */, 0x23, piVar2, 1, 1);
    }
    var_80h = 0x117405b;
    var_78h = 8;
    var_70h = CONCAT71((unkint7)((uint64_t)in_XMM15_Qa >> 8), 0xf);
    var_60h = var_38h;
    iStack_68 = in_XMM15_Qb;
    var_58h = iVar4;
    var_50h = in_XMM15_Qa;
    uStack_48 = in_XMM15_Qb;
    piVar2 = (int64_t *)runtime_newobject(0x104e380);
    if (*(int32_t *)0x355db50 != 0) {
        var_10h = (int64_t)piVar2;
        runtime_wbMove(0x11129a0, piVar2, &var_80h);
        piVar2 = (int64_t *)var_10h;
    }
    *piVar2 = var_80h;
    piVar2[1] = var_78h;
    piVar2[2] = var_70h;
    piVar2[3] = iStack_68;
    piVar2[4] = var_60h;
    piVar2[5] = var_58h;
    *(undefined4 *)(piVar2 + 6) = (undefined4)var_50h;
    *(undefined4 *)((int64_t)piVar2 + 0x34) = var_50h._4_4_;
    *(undefined4 *)(piVar2 + 7) = (undefined4)uStack_48;
    *(undefined4 *)((int64_t)piVar2 + 0x3c) = uStack_48._4_4_;
    go_uber_org_zap___Logger__Info(*(undefined8 *)0x3512068, 0x1187d10 /* "SQLite数据库连接成功" */, 0x1b, piVar2, 1, 1);
    return;
}

/* CAS-Backend/biz/dao.testConnection | VA 0x995080 | db.go:84
   DWARF parameters and results: ~r0 error
   DWARF locals: &result *int */
undefined  [16] biz_dao_testConnection(void)
{
    int64_t iVar1;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000008;
    int64_t in_stack_00000030;
    int64_t in_stack_00000050;
    int64_t in_stack_ffffffffffffffc0;
    int64_t in_stack_ffffffffffffffc8;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_stack_00000008);
    }
    runtime_newobject(in_stack_ffffffffffffffc0);
    gorm___DB__Raw(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, 
                 in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, in_stack_ffffffffffffffe8, in_stack_00000050);
    iVar1 = gorm___DB__Scan(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, 
                         in_stack_00000030);
    return *(undefined (*) [16])(iVar1 + 8);
}
