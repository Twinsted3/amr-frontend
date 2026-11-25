/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/biz/dao.Vehicle.TableName | VA 0x99a6a0 | vehicle_dao.go:163
   DWARF parameters and results: ~p0 CAS-Backend/biz/dao.Vehicle, ~r0 string
   DWARF locals: (no entries) */
undefined  [16] biz_dao_Vehicle_TableName(void)
{
    undefined auVar1 [16];
    
    auVar1._8_8_ = 0xb;
    auVar1._0_8_ = 0x1176f24 /* "agv_vehicle" */;
    return auVar1;
}

/* CAS-Backend/biz/dao.Insert_veh | VA 0x99a6c0 | vehicle_dao.go:167
   DWARF parameters and results: v CAS-Backend/biz/dao.Vehicle, ~r0 bool
   DWARF locals: &v *CAS-Backend/biz/dao.Vehicle, result *gorm.io/gorm.DB */
// WARNING: [rz-ghidra] Detected overlap for variable var_60h

undefined8 __stdcall biz_dao_Insert_veh(int64_t arg_8h, int64_t arg_10h, int64_t arg_98h)
{
    undefined8 uVar1;
    undefined8 *puVar2;
    int64_t iVar3;
    undefined8 uVar4;
    undefined8 *extraout_RCX;
    undefined *puVar5;
    undefined8 unaff_RBP;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    undefined8 in_XMM15_Qa;
    undefined8 in_XMM15_Qb;
    undefined auVar6 [16];
    int64_t var_c0h;
    int64_t var_b0h;
    int64_t var_74h;
    int64_t var_64h;
    int64_t var_50h;
    int64_t var_40h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    do {
        puVar5 = (undefined *)*(undefined **)0x20;
        if (*(undefined **)(unaff_R14 + 0x10) < (undefined *)((int64_t)*(undefined **)0x20 + -0x30)) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            puVar5 = (undefined *)((int64_t)*(undefined **)0x20 + -0xb0);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0x99a6e6;
            puVar2 = (undefined8 *)runtime_newobject(0x1121680);
            *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x10) = puVar2;
            if (*(int32_t *)0x355db50 != 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0x99a70e;
                runtime_wbMove(0x1121680, puVar2, (undefined *)((int64_t)*(undefined **)0x20 + 8));
                puVar2 = *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x10);
            }
            *puVar2 = *(undefined8 *)((int64_t)*(undefined **)0x20 + 8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -0xc0) = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0x99a74f;
            runtime_duffcopy_offset_798();
            unaff_RBP = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xc0);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0x99a758;
            iVar3 = google_uuid_NewRandom();
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x40) =
                 *(undefined4 *)((int64_t)*(undefined **)0x20 + -0xb0);
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x3c) =
                 *(undefined4 *)((int64_t)*(undefined **)0x20 + -0xac);
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x38) =
                 *(undefined4 *)((int64_t)*(undefined **)0x20 + -0xa8);
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x34) =
                 *(undefined4 *)((int64_t)*(undefined **)0x20 + -0xa4);
            if (iVar3 == 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x74) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x6c) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -100) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x5c) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = in_XMM15_Qb;
                *(undefined4 *)((int64_t)*(undefined **)0x20 + -0xb0) =
                     *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x74);
                *(undefined4 *)((int64_t)*(undefined **)0x20 + -0xac) =
                     *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x70);
                *(undefined4 *)((int64_t)*(undefined **)0x20 + -0xa8) =
                     *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x6c);
                *(undefined4 *)((int64_t)*(undefined **)0x20 + -0xa4) =
                     *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x68);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0x99a7a5;
                google_uuid_encodeHex((undefined *)((int64_t)*(undefined **)0x20 + -100), 0x24, 0x24);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0x99a7b6;
                auVar6 = runtime_slicebytetostring(0, (undefined *)((int64_t)*(undefined **)0x20 + -100), 0x24);
                uVar4 = auVar6._0_8_;
                puVar2 = *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x10);
                puVar2[1] = auVar6._8_8_;
                if (*(int32_t *)0x355db50 != 0) {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0x99a7d0;
                    uVar4 = runtime_gcWriteBarrier2();
                    *extraout_R11 = uVar4;
                    extraout_R11[1] = *extraout_RCX;
                    puVar2 = extraout_RCX;
                }
                *puVar2 = uVar4;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0x99a7f0;
                iVar3 = gorm___DB__Create(*(undefined8 *)0x3512040, 0x1072f60);
                if (*(int64_t *)(iVar3 + 8) == 0) {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
                    uVar4 = **(undefined8 **)((int64_t)*(undefined **)0x20 + -0x10);
                    uVar1 = (*(undefined8 **)((int64_t)*(undefined **)0x20 + -0x10))[1];
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0x99a879;
                    uVar4 = runtime_convTstring(uVar4, uVar1);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = 0x1042920;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = uVar4;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0x99a8c5;
                    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11800f6 /* "插入成功, ID: %s" */, 0x14, 
                                    (undefined *)((int64_t)*(undefined **)0x20 + -0x30), 1, 1);
                    return 1;
                }
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = in_XMM15_Qb;
                uVar4 = 0;
                if (*(int64_t *)(iVar3 + 8) != 0) {
                    uVar4 = *(undefined8 *)(*(int64_t *)(iVar3 + 8) + 8);
                }
                uVar1 = *(undefined8 *)(iVar3 + 0x10);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar4;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = uVar1;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0x99a851;
                fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x117b7a3 /* "插入失败: %v" */, 0x10, 
                                (undefined *)((int64_t)*(undefined **)0x20 + -0x20), 1, 1);
                return 0;
            }
            uVar4 = *(undefined8 *)(iVar3 + 8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0x99a8de;
            runtime_gopanic(uVar4);
        }
        *(undefined8 *)(puVar5 + -8) = 0x99a8e5;
        runtime_morestack_noctxt_abi0();
        *(undefined **)0x20 = (BADSPACEBASE *)puVar5;
    } while( true );
}

/* CAS-Backend/biz/dao.Delete_veh | VA 0x99a900 | vehicle_dao.go:183
   DWARF parameters and results: id string, ~r0 bool
   DWARF locals: result *gorm.io/gorm.DB */
undefined8 __stdcall biz_dao_Delete_veh(int64_t arg_8h, int64_t arg_10h, int64_t arg_78h)
{
    undefined8 in_RAX;
    undefined8 uVar1;
    undefined8 *puVar2;
    undefined8 uVar3;
    int64_t iVar4;
    undefined8 unaff_RBX;
    undefined8 *extraout_RDI;
    undefined8 *extraout_R11;
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
    
    while (&var_18h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    uVar1 = runtime_newobject(0x1121680);
    puVar2 = (undefined8 *)runtime_newobject(0x104dea0);
    uVar3 = runtime_convTstring(in_RAX, unaff_RBX);
    *puVar2 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        uVar3 = runtime_gcWriteBarrier2();
        *extraout_R11 = uVar3;
        extraout_R11[1] = extraout_RDI[1];
        puVar2 = extraout_RDI;
    }
    puVar2[1] = uVar3;
    iVar4 = gorm___DB__Delete(*(undefined8 *)0x3512040, 0x1072f60, uVar1, puVar2, 1, 1);
    if (*(int64_t *)(iVar4 + 8) != 0) {
        var_20h = runtime_convTstring(in_RAX, unaff_RBX);
        var_28h = 0x1042920;
        var_18h = 0;
        if (*(int64_t *)(iVar4 + 8) != 0) {
            var_18h = *(int64_t *)(*(int64_t *)(iVar4 + 8) + 8);
        }
        var_10h = *(int64_t *)(iVar4 + 0x10);
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x118d8e8 /* "删除失败, ID: %s, 错误: %v" */, 0x20, &var_28h, 2, 2);
        return 0;
    }
    var_40h = runtime_convTstring(in_RAX, unaff_RBX);
    var_48h = 0x1042920;
    var_30h = runtime_convT64(*(undefined8 *)(iVar4 + 0x18));
    var_38h = 0x1042ae0;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1193b9d /* "删除成功, ID: %s, 影响行数: %d" */, 0x26, &var_48h, 2, 2);
    return 1;
}

/* CAS-Backend/biz/dao.Update_veh | VA 0x99ab20 | vehicle_dao.go:196
   DWARF parameters and results: v CAS-Backend/biz/dao.Vehicle, ~r0 bool
   DWARF locals: result *gorm.io/gorm.DB */
undefined8 __stdcall
biz_dao_Update_veh(int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
                  int64_t arg_38h, int64_t arg_40h, int64_t arg_48h, int64_t arg_50h, int64_t arg_58h, int64_t arg_60h,
                  int64_t arg_68h, int64_t arg_70h, int64_t arg_78h, int64_t arg_98h)
{
    undefined8 uVar1;
    int64_t iVar2;
    undefined8 *puVar3;
    undefined8 uVar4;
    undefined8 uVar5;
    int64_t iVar6;
    int64_t extraout_RCX;
    undefined8 *extraout_RDI;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    undefined8 *extraout_R11_03;
    undefined8 *extraout_R11_04;
    undefined8 *extraout_R11_05;
    undefined8 *extraout_R11_06;
    undefined8 *extraout_R11_07;
    int64_t unaff_R14;
    undefined auVar7 [16];
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
    uVar1 = runtime_newobject(0x1121680);
    iVar2 = gorm___DB__getInstance(*(undefined8 *)0x3512040);
    iVar6 = *(int64_t *)(iVar2 + 0x20);
    *(undefined8 *)(iVar6 + 0x20) = 0x1072f60;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier2();
        *extraout_R11 = uVar1;
        extraout_R11[1] = *(undefined8 *)(extraout_RCX + 0x28);
        iVar6 = extraout_RCX;
    }
    *(undefined8 *)(iVar6 + 0x28) = uVar1;
    puVar3 = (undefined8 *)runtime_newobject(0x104dea0);
    uVar1 = runtime_convTstring(arg_8h, arg_10h);
    auVar7._8_8_ = 0x1042920;
    auVar7._0_8_ = uVar1;
    *puVar3 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        auVar7 = runtime_gcWriteBarrier2();
        *extraout_R11_00 = auVar7._0_8_;
        extraout_R11_00[1] = extraout_RDI[1];
        puVar3 = extraout_RDI;
    }
    puVar3[1] = auVar7._0_8_;
    uVar1 = gorm___DB__Where(iVar2, auVar7._8_8_, 0x2e67d60 /* "id = ?" */, puVar3, 1, 1);
    uVar4 = runtime_makemap_small();
    uVar5 = runtime_convTstring(arg_18h, arg_20h);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x1168514 /* "ip" */, 2);
    *puVar3 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_01 = uVar5;
        extraout_R11_01[1] = puVar3[1];
    }
    puVar3[1] = uVar5;
    uVar5 = runtime_convT64(arg_28h);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x1169530 /* "port" */, 4);
    *puVar3 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_02 = uVar5;
        extraout_R11_02[1] = puVar3[1];
    }
    puVar3[1] = uVar5;
    uVar5 = runtime_convTstring(arg_30h, arg_38h);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x1169528 /* "name" */, 4);
    *puVar3 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_03 = uVar5;
        extraout_R11_03[1] = puVar3[1];
    }
    puVar3[1] = uVar5;
    uVar5 = runtime_convTstring(arg_40h, arg_48h);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x1169534 /* "type" */, 4);
    *puVar3 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_04 = uVar5;
        extraout_R11_04[1] = puVar3[1];
    }
    puVar3[1] = uVar5;
    uVar5 = runtime_convTstring(arg_50h, arg_58h);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x116a5da /* "brand" */, 5);
    *puVar3 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_05 = uVar5;
        extraout_R11_05[1] = puVar3[1];
    }
    puVar3[1] = uVar5;
    uVar5 = runtime_convTstring(arg_60h, arg_68h);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x1176130 /* "radarBrand" */, 10);
    *puVar3 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_06 = uVar5;
        extraout_R11_06[1] = puVar3[1];
    }
    puVar3[1] = uVar5;
    uVar5 = runtime_convTstring(arg_70h, arg_78h);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x117613a /* "motorBrand" */, 10);
    *puVar3 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_07 = uVar5;
        extraout_R11_07[1] = puVar3[1];
    }
    puVar3[1] = uVar5;
    iVar6 = gorm___DB__Updates(uVar1, 0x107d4c0, uVar4);
    if (*(int64_t *)(iVar6 + 8) == 0) {
        var_40h = runtime_convTstring(arg_8h, arg_10h);
        var_48h = 0x1042920;
        var_30h = runtime_convT64(*(undefined8 *)(iVar6 + 0x18));
        var_38h = 0x1042ae0;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1193bc3 /* "更新成功, ID: %s, 影响行数: %d" */, 0x26, &var_48h, 2, 2);
        return 1;
    }
    var_20h = runtime_convTstring(arg_8h, arg_10h);
    var_28h = 0x1042920;
    var_18h = 0;
    if (*(int64_t *)(iVar6 + 8) != 0) {
        var_18h = *(int64_t *)(*(int64_t *)(iVar6 + 8) + 8);
    }
    var_10h = *(int64_t *)(iVar6 + 0x10);
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x118d908 /* "更新失败, ID: %s, 错误: %v" */, 0x20, &var_28h, 2, 2);
    return 0;
}

/* CAS-Backend/biz/dao.SelectALL_veh | VA 0x99b080 | vehicle_dao.go:232
   DWARF parameters and results: page int, size int, search1 string, ip string, port int, ~r0 bool, ~r1 int64, ~r2 []CAS-Backend/biz/dao.Vehicle
   DWARF locals: offset int, &total *int64, &vs *[]CAS-Backend/biz/dao.Vehicle, query *gorm.io/gorm.DB, searchCondition string, err error */
undefined8 __stdcall
biz_dao_SelectALL_veh
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, int64_t arg5, int64_t arg6,
          int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
          int64_t arg_38h, int64_t arg_60h, int64_t arg_80h, int64_t arg_90h)
{
    int64_t in_RAX;
    undefined8 uVar1;
    int64_t iVar2;
    undefined8 *puVar3;
    undefined8 uVar4;
    int64_t iVar5;
    int64_t extraout_RCX;
    int64_t unaff_RBX;
    undefined8 *extraout_RDI;
    undefined8 *extraout_RDI_00;
    undefined8 *extraout_RDI_01;
    undefined8 *extraout_R10;
    undefined8 *puVar7;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    undefined8 *extraout_R11_03;
    undefined8 *extraout_R11_04;
    undefined8 *extraout_R11_05;
    undefined8 *extraout_R11_06;
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
    undefined8 uVar6;
    
    while (&var_30h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(0x1042ae0);
    var_18h = runtime_newobject(0x1034920);
    *(undefined8 *)var_18h = 0;
    uVar1 = runtime_newobject(0x1121680);
    iVar2 = gorm___DB__getInstance(*(undefined8 *)0x3512040);
    iVar5 = *(int64_t *)(iVar2 + 0x20);
    *(undefined8 *)(iVar5 + 0x20) = 0x1072f60;
    if (*(int32_t *)0x355db50 != 0) {
        iVar2 = runtime_gcWriteBarrier2();
        *extraout_R11 = uVar1;
        extraout_R11[1] = *(undefined8 *)(extraout_RCX + 0x28);
        iVar5 = extraout_RCX;
    }
    *(undefined8 *)(iVar5 + 0x28) = uVar1;
    if (arg1 != 0) {
        auVar8 = runtime_concatstring3(0, 0x2e64b30, 1, arg4, arg1, 0x2e64b30, 1);
        uVar6 = auVar8._8_8_;
        uVar1 = auVar8._0_8_;
        puVar3 = (undefined8 *)runtime_newobject(0x104e4a0);
        uVar4 = runtime_convTstring(uVar1, uVar6);
        *puVar3 = 0x1042920;
        puVar7 = puVar3;
        if (*(int32_t *)0x355db50 != 0) {
            uVar4 = runtime_gcWriteBarrier2();
            *extraout_R11_00 = uVar4;
            extraout_R11_00[1] = extraout_R10[1];
            puVar7 = extraout_R10;
        }
        puVar7[1] = uVar4;
        uVar4 = runtime_convTstring(uVar1, uVar6);
        puVar3[2] = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            uVar4 = runtime_gcWriteBarrier2();
            *extraout_R11_01 = uVar4;
            extraout_R11_01[1] = puVar3[3];
        }
        puVar3[3] = uVar4;
        uVar4 = runtime_convTstring(uVar1, uVar6);
        puVar3[4] = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            uVar4 = runtime_gcWriteBarrier2();
            *extraout_R11_02 = uVar4;
            extraout_R11_02[1] = puVar3[5];
        }
        puVar3[5] = uVar4;
        uVar4 = runtime_convTstring(uVar1, uVar6);
        puVar3[6] = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            uVar4 = runtime_gcWriteBarrier2();
            *extraout_R11_03 = uVar4;
            extraout_R11_03[1] = puVar3[7];
        }
        puVar3[7] = uVar4;
        uVar1 = runtime_convTstring(uVar1, uVar6);
        auVar8._8_8_ = 0x1042920;
        auVar8._0_8_ = uVar1;
        puVar3[8] = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            auVar8 = runtime_gcWriteBarrier2();
            *extraout_R11_04 = auVar8._0_8_;
            extraout_R11_04[1] = extraout_RDI[9];
            puVar3 = extraout_RDI;
        }
        puVar3[9] = auVar8._0_8_;
        iVar2 = gorm___DB__Where(iVar2, auVar8._8_8_, 0x2e67de0 /* "name LIKE ? OR type LIKE ? OR brand LIKE ? OR radarBrand LIKE ? OR motorBrand LIKE ?" */, puVar3, 5, 5);
    }
    if (arg5 != 0) {
        puVar3 = (undefined8 *)runtime_newobject(0x104dea0);
        uVar1 = runtime_convTstring(arg2, arg5);
        auVar9._8_8_ = 0x1042920;
        auVar9._0_8_ = uVar1;
        *puVar3 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            auVar9 = runtime_gcWriteBarrier2();
            *extraout_R11_05 = auVar9._0_8_;
            extraout_R11_05[1] = extraout_RDI_00[1];
            puVar3 = extraout_RDI_00;
        }
        puVar3[1] = auVar9._0_8_;
        iVar2 = gorm___DB__Where(iVar2, auVar9._8_8_, 0x2e67df0 /* "ip = ?" */, puVar3, 1, 1);
    }
    if (0x3ff < arg6) {
        puVar3 = (undefined8 *)runtime_newobject(0x104dea0);
        uVar1 = runtime_convT64(arg6);
        *puVar3 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            uVar1 = runtime_gcWriteBarrier2();
            *extraout_R11_06 = uVar1;
            extraout_R11_06[1] = extraout_RDI_01[1];
            puVar3 = extraout_RDI_01;
        }
        puVar3[1] = uVar1;
        iVar2 = gorm___DB__Where(iVar2, 0x1042920, 0x2e67e00 /* "port = ?" */, puVar3, 1, 1);
    }
    iVar5 = gorm___DB__Count(iVar2, var_10h);
    var_20h = *(int64_t *)(iVar5 + 0x10);
    if (*(int64_t *)(iVar5 + 8) == 0) {
        uVar1 = gorm___DB__Order(iVar2, 0x1042920, 0x2e67d40 /* "id ASC" */);
        iVar5 = (in_RAX + -1) * unaff_RBX;
        if (iVar5 < 0) {
            iVar5 = 0;
        }
        uVar1 = gorm___DB__Offset(uVar1, iVar5);
        uVar1 = gorm___DB__Limit(uVar1, unaff_RBX);
        iVar5 = gorm___DB__Find(uVar1, 0x1034960, var_18h, 0, 0, 0);
        var_30h = *(int64_t *)(iVar5 + 0x10);
        if (*(int64_t *)(iVar5 + 8) == 0) {
            return 1;
        }
        var_38h = *(int64_t *)(*(int64_t *)(iVar5 + 8) + 8);
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1188e28 /* "查询车辆列表失败: %v" */, 0x1c, &var_38h, 1, 1);
        return 0;
    }
    var_28h = *(int64_t *)(*(int64_t *)(iVar5 + 8) + 8);
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1188e0c /* "获取车辆总数失败: %v" */, 0x1c, &var_28h, 1, 1);
    return 0;
}

/* CAS-Backend/biz/dao.IsExist_veh | VA 0x99b5e0 | vehicle_dao.go:279
   DWARF parameters and results: id string, ~r0 bool
   DWARF locals: &count *int64, result *gorm.io/gorm.DB */
bool __stdcall biz_dao_IsExist_veh(int64_t arg_8h, int64_t arg_10h, int64_t arg_48h)
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
    uVar1 = runtime_newobject(0x1121680);
    iVar2 = gorm___DB__getInstance(*(undefined8 *)0x3512040);
    iVar4 = *(int64_t *)(iVar2 + 0x20);
    *(undefined8 *)(iVar4 + 0x20) = 0x1072f60;
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
    uVar1 = gorm___DB__Where(iVar2, auVar5._8_8_, 0x2e67d60 /* "id = ?" */, puVar3, 1, 1);
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
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x118d928 /* "查询失败, ID: %s, 错误: %v" */, 0x20, &var_30h, 2, 2);
    return false;
}

/* CAS-Backend/biz/dao.GetAllVehicles | VA 0x99b7c0 | vehicle_dao.go:337
   DWARF parameters and results: ~r0 []CAS-Backend/biz/dao.Vehicle, ~r1 error
   DWARF locals: &vehicles *[]CAS-Backend/biz/dao.Vehicle, err error */
// WARNING: Removing unreachable block (ram,0x0099b83f)

undefined8 __stdcall biz_dao_GetAllVehicles(int64_t arg_40h)
{
    undefined8 uVar1;
    int64_t iVar2;
    int64_t unaff_R14;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(0x1034920);
    *(undefined8 *)var_10h = 0;
    uVar1 = gorm___DB__Order(*(undefined8 *)0x3512040, 0x1042920, 0x2e67d40 /* "id ASC" */);
    iVar2 = gorm___DB__Find(uVar1, 0x1034960, var_10h, 0, 0, 0);
    var_18h = *(int64_t *)(iVar2 + 0x10);
    if (*(int64_t *)(iVar2 + 8) == 0) {
        return *(undefined8 *)var_10h;
    }
    var_20h = *(int64_t *)(*(int64_t *)(iVar2 + 8) + 8);
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x118a39d /* "查询所有车辆失败: %v\n" */, 0x1d, &var_20h, 1, 1);
    return 0;
}
