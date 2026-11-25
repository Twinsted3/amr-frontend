/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/biz/dao.Map.TableName | VA 0x995100 | map_dao.go:230
   DWARF parameters and results: ~p0 CAS-Backend/biz/dao.Map, ~r0 string
   DWARF locals: (no entries) */
undefined  [16] biz_dao_Map_TableName(void)
{
    undefined auVar1 [16];
    
    auVar1._8_8_ = 7;
    auVar1._0_8_ = 0x1172aba /* "agv_map" */;
    return auVar1;
}

/* CAS-Backend/biz/dao.SaveMap | VA 0x995120 | map_dao.go:247
   DWARF parameters and results: originalName string, fileData []uint8, ~r0 bool
   DWARF locals: &m *CAS-Backend/biz/dao.Map, result *gorm.io/gorm.DB, storageDir string, baseName string, Name string, storedPath string, ~r0.ptr *uint8, ~r0.len int, err error */
// WARNING: Variable defined which should be unmapped: var_d8h
// WARNING: Variable defined which should be unmapped: var_c0h
// WARNING: Variable defined which should be unmapped: var_e8h
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Detected overlap for variable var_80h

undefined8 __stdcall
biz_dao_SaveMap(int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
               undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h,
               int64_t arg_28h, int64_t arg_a0h, int64_t arg_130h)
{
    int64_t in_RAX;
    int64_t iVar1;
    int64_t iVar2;
    int64_t iVar3;
    int64_t extraout_RAX;
    int64_t extraout_RCX;
    int64_t unaff_RBX;
    int64_t extraout_RBX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t var_158h;
    int64_t in_stack_fffffffffffffeb8;
    int64_t in_stack_fffffffffffffec0;
    int64_t in_stack_fffffffffffffec8;
    int64_t in_stack_fffffffffffffed0;
    int64_t in_stack_fffffffffffffed8;
    int64_t in_stack_fffffffffffffee0;
    int64_t in_stack_fffffffffffffee8;
    int64_t var_110h;
    int64_t in_stack_fffffffffffffef8;
    int64_t in_stack_ffffffffffffff00;
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
    
    while (iVar2 = *(int64_t *)0xfb5df8, &var_c8h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0x995538;
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    var_c8h = *(int64_t *)0xfb5df0;
    iVar1 = os_MkdirAll(in_stack_fffffffffffffeb8, in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, 
                         in_stack_fffffffffffffee0, in_stack_fffffffffffffef8);
    if (iVar1 != 0) {
        var_20h = *(int64_t *)(iVar1 + 8);
        var_18h = iVar2;
        fmt_Fprintf(in_stack_fffffffffffffeb8, in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, 
                     in_stack_fffffffffffffed0, in_stack_fffffffffffffed8, in_stack_fffffffffffffee0, 
                     in_stack_fffffffffffffee8);
        return 0;
    }
    iVar1 = internal_filepathlite_Base(in_stack_fffffffffffffeb8, in_stack_fffffffffffffec0);
    var_30h = runtime_concatstring2(in_stack_fffffffffffffeb8, in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, 
                           in_stack_fffffffffffffed0, in_stack_fffffffffffffed8);
    var_38h = iVar2;
    var_40h = var_c8h;
    iVar2 = path_filepath_join(in_stack_fffffffffffffeb8, in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, var_d8h, 
                         var_c0h);
    iVar3 = os_WriteFile(in_stack_fffffffffffffeb8, in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, 
                         in_stack_fffffffffffffed0, in_stack_fffffffffffffed8, in_stack_fffffffffffffee0);
    if (iVar3 != 0) {
        var_50h = *(int64_t *)(iVar3 + 8);
        var_48h = 2;
        fmt_Fprintf(in_stack_fffffffffffffeb8, in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, 
                     in_stack_fffffffffffffed0, in_stack_fffffffffffffed8, in_stack_fffffffffffffee0, 
                     in_stack_fffffffffffffee8);
        return 0;
    }
    var_10h = runtime_newobject(in_stack_fffffffffffffeb8);
    time_Now();
    fcn.00478af0();
    var_80h = 2;
    var_78h = 0x1168510;
    var_70h = 2;
    var_98h = iVar1;
    var_88h = iVar2;
    var_68h = extraout_RAX;
    var_60h = extraout_RBX;
    var_58h = extraout_RCX;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_wbMove(0x110c0c0, var_10h, &var_a0h);
    }
    fcn.00478e5a();
    iVar2 = gorm___DB__Create(in_stack_fffffffffffffeb8, in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, 
                         in_stack_ffffffffffffff00);
    if (*(int64_t *)(iVar2 + 8) != 0) {
        var_b0h = 0;
        if (*(int64_t *)(iVar2 + 8) != 0) {
            var_b0h = *(int64_t *)(*(int64_t *)(iVar2 + 8) + 8);
        }
        var_a8h = *(int64_t *)(iVar2 + 0x10);
        fmt_Fprintf(in_stack_fffffffffffffeb8, in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, 
                     in_stack_fffffffffffffed0, in_stack_fffffffffffffed8, in_stack_fffffffffffffee0, 
                     in_stack_fffffffffffffee8);
        os_Remove(in_stack_fffffffffffffeb8, in_stack_fffffffffffffec0, in_stack_fffffffffffffef8, 
                     in_stack_ffffffffffffff00, unaff_RBX);
        return 0;
    }
    var_b8h = runtime_convT64(in_stack_fffffffffffffeb8);
    var_c0h = 0x1042b60;
    fmt_Fprintf(in_stack_fffffffffffffeb8, in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, 
                 in_stack_fffffffffffffed0, in_stack_fffffffffffffed8, in_stack_fffffffffffffee0, 
                 in_stack_fffffffffffffee8);
    return 1;
}

/* CAS-Backend/biz/dao.GetMap | VA 0x995560 | map_dao.go:287
   DWARF parameters and results: id int, ~r0 bool, ~r1 CAS-Backend/biz/dao.Map
   DWARF locals: &m *CAS-Backend/biz/dao.Map, result *gorm.io/gorm.DB */
// WARNING: Variable defined which should be unmapped: var_8h

undefined8 __stdcall biz_dao_GetMap(int64_t arg_8h, int64_t arg_40h, int64_t arg_58h)
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
        var_8h = 0x995710;
        runtime_morestack_noctxt_abi0();
    }
    runtime_duffzero_offset_336();
    var_10h = runtime_newobject(0x110c0c0);
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
    iVar3 = gorm___DB__First(*(undefined8 *)0x3512040, 0x1072e40, var_10h, puVar1, 1, 1);
    if (*(int64_t *)(iVar3 + 8) != 0) {
        var_28h = runtime_convT64(in_RAX);
        var_30h = 0x1042b60;
        var_20h = 0;
        if (*(int64_t *)(iVar3 + 8) != 0) {
            var_20h = *(int64_t *)(*(int64_t *)(iVar3 + 8) + 8);
        }
        var_18h = *(int64_t *)(iVar3 + 0x10);
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x118d828 /* "查询失败, ID: %d, 错误: %v" */, 0x20, &var_30h, 2, 2);
        runtime_duffzero_offset_336();
        return 0;
    }
    runtime_duffcopy_offset_826();
    return 1;
}

/* CAS-Backend/biz/dao.GetMapByName | VA 0x995720 | map_dao.go:300
   DWARF parameters and results: name string, ~r0 CAS-Backend/biz/dao.Map, ~r1 bool
   DWARF locals: &m *CAS-Backend/biz/dao.Map */
// WARNING: Variable defined which should be unmapped: var_8h

undefined8 __stdcall biz_dao_GetMapByName(int64_t arg_8h, int64_t arg_58h, int64_t arg_60h)
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
    undefined auVar5 [16];
    int64_t var_58h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    runtime_duffzero_offset_336();
    uVar1 = runtime_newobject(0x110c0c0);
    puVar2 = (undefined8 *)runtime_newobject(0x104dea0);
    uVar3 = runtime_convTstring(in_RAX, unaff_RBX);
    auVar5._8_8_ = 0x1042920;
    auVar5._0_8_ = uVar3;
    *puVar2 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        auVar5 = runtime_gcWriteBarrier2();
        *extraout_R11 = auVar5._0_8_;
        extraout_R11[1] = extraout_RDI[1];
        puVar2 = extraout_RDI;
    }
    puVar2[1] = auVar5._0_8_;
    uVar3 = gorm___DB__Where(*(undefined8 *)0x3512040, auVar5._8_8_, 0x2e67d30 /* "name = ?" */, puVar2, 1, 1);
    iVar4 = gorm___DB__First(uVar3, 0x1072e40, uVar1, 0, 0, 0);
    if (*(int64_t *)(iVar4 + 8) != 0) {
        runtime_duffzero_offset_336();
        return 0;
    }
    runtime_duffcopy_offset_826();
    return 1;
}

/* CAS-Backend/biz/dao.SelectALL_map | VA 0x995880 | map_dao.go:308
   DWARF parameters and results: page int, size int, search1 string, ~r0 bool, ~r1 int64, ~r2 []CAS-Backend/biz/dao.Map
   DWARF locals: &total *int64, &ms *[]CAS-Backend/biz/dao.Map, applySearch func(*gorm.io/gorm.DB) *gorm.io/gorm.DB, offset int, countQuery *gorm.io/gorm.DB, listQuery *gorm.io/gorm.DB, err error */
undefined  [16] __stdcall
biz_dao_SelectALL_map
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_40h,
          int64_t arg_48h, int64_t arg_58h)
{
    uint64_t uVar1;
    undefined auVar2 [16];
    undefined auVar3 [16];
    undefined auVar4 [16];
    int64_t in_RAX;
    undefined8 uVar5;
    int64_t iVar6;
    int64_t extraout_RCX;
    int64_t extraout_RCX_00;
    int64_t unaff_RBX;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t unaff_R14;
    undefined auVar7 [16];
    undefined auVar8 [16];
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
    var_18h = runtime_newobject(0x1042ae0);
    var_10h = runtime_newobject(0x10347a0);
    *(undefined8 *)var_10h = 0;
    var_30h = 0x995c40;
    var_28h = arg4;
    var_20h = arg1;
    uVar5 = runtime_newobject(0x110c0c0);
    iVar6 = gorm___DB__getInstance(*(undefined8 *)0x3512040);
    iVar6 = *(int64_t *)(iVar6 + 0x20);
    *(undefined8 *)(iVar6 + 0x20) = 0x1072e40;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier2();
        *extraout_R11 = uVar5;
        extraout_R11[1] = *(undefined8 *)(extraout_RCX + 0x28);
        iVar6 = extraout_RCX;
    }
    *(undefined8 *)(iVar6 + 0x28) = uVar5;
    uVar5 = (*(code *)var_30h)();
    iVar6 = gorm___DB__Count(uVar5, var_18h);
    var_38h = *(int64_t *)(iVar6 + 0x10);
    if (*(int64_t *)(iVar6 + 8) != 0) {
        var_40h = *(int64_t *)(*(int64_t *)(iVar6 + 8) + 8);
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1182362 /* "获取总数失败: %v" */, 0x16, &var_40h, 1, 1);
        auVar2._8_8_ = 0;
        auVar2._0_8_ = &var_30h;
        return auVar2 << 0x40;
    }
    uVar5 = runtime_newobject(0x110c0c0);
    iVar6 = gorm___DB__getInstance(*(undefined8 *)0x3512040);
    iVar6 = *(int64_t *)(iVar6 + 0x20);
    *(undefined8 *)(iVar6 + 0x20) = 0x1072e40;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier2();
        *extraout_R11_00 = uVar5;
        extraout_R11_00[1] = *(undefined8 *)(extraout_RCX_00 + 0x28);
        iVar6 = extraout_RCX_00;
    }
    *(undefined8 *)(iVar6 + 0x28) = uVar5;
    uVar5 = (*(code *)var_30h)();
    uVar5 = gorm___DB__Order(uVar5, 0x1042920, 0x2e67d40 /* "id ASC" */);
    if (unaff_RBX < 1) {
        iVar6 = gorm___DB__Find(uVar5, 0x10347e0, var_10h, 0, 0, 0);
        var_48h = *(int64_t *)(iVar6 + 0x10);
        if (*(int64_t *)(iVar6 + 8) == 0) {
            auVar7._8_8_ = var_18h;
            auVar7._0_8_ = 1;
            return auVar7;
        }
        uVar1 = *(uint64_t *)(*(int64_t *)(iVar6 + 8) + 8);
        var_50h = uVar1;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x117b7b3 /* "查询失败: %v" */, 0x10, &var_50h, 1, 1);
        auVar3._8_8_ = 0;
        auVar3._0_8_ = uVar1;
        return auVar3 << 0x40;
    }
    iVar6 = (in_RAX + -1) * unaff_RBX;
    if (iVar6 < 0) {
        iVar6 = 0;
    }
    uVar5 = gorm___DB__Offset(uVar5, iVar6);
    uVar5 = gorm___DB__Limit(uVar5, unaff_RBX);
    iVar6 = gorm___DB__Find(uVar5, 0x10347e0, var_10h, 0, 0, 0);
    uVar1 = *(uint64_t *)(iVar6 + 0x10);
    if (*(int64_t *)(iVar6 + 8) == 0) {
        auVar8._8_8_ = var_18h;
        auVar8._0_8_ = 1;
        return auVar8;
    }
    var_60h = *(int64_t *)(*(int64_t *)(iVar6 + 8) + 8);
    var_58h = uVar1;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x117b7b3 /* "查询失败: %v" */, 0x10, &var_60h, 1, 1);
    auVar4._8_8_ = 0;
    auVar4._0_8_ = uVar1;
    return auVar4 << 0x40;
}

/* CAS-Backend/biz/dao.SelectALL_map.func1 | VA 0x995c40 | map_dao.go:312
   DWARF parameters and results: q *gorm.io/gorm.DB, ~r0 *gorm.io/gorm.DB
   DWARF locals: search1 string, searchCondition string */
void __stdcall
biz_dao_SelectALL_map_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_68h)
{
    undefined8 in_RAX;
    undefined8 *puVar1;
    undefined8 uVar2;
    undefined8 *extraout_RDI;
    undefined8 *extraout_R10;
    undefined8 *puVar3;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t unaff_R14;
    undefined auVar4 [16];
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0();
    }
    if (*(int64_t *)(arg3 + 0x10) != 0) {
        auVar4 = runtime_concatstring3(0, 0x2e64b30, 1, *(undefined8 *)(arg3 + 8), *(int64_t *)(arg3 + 0x10), 0x2e64b30, 1);
        puVar1 = (undefined8 *)runtime_newobject(0x104e3e0);
        uVar2 = runtime_convTstring(auVar4._0_8_, auVar4._8_8_);
        *puVar1 = 0x1042920;
        puVar3 = puVar1;
        if (*(int32_t *)0x355db50 != 0) {
            uVar2 = runtime_gcWriteBarrier2();
            *extraout_R11 = uVar2;
            extraout_R11[1] = extraout_R10[1];
            puVar3 = extraout_R10;
        }
        puVar3[1] = uVar2;
        uVar2 = runtime_convTstring(auVar4._0_8_, auVar4._8_8_);
        auVar4._8_8_ = 0x1042920;
        auVar4._0_8_ = uVar2;
        puVar1[2] = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            auVar4 = runtime_gcWriteBarrier2();
            *extraout_R11_00 = auVar4._0_8_;
            extraout_R11_00[1] = extraout_RDI[3];
            puVar1 = extraout_RDI;
        }
        puVar1[3] = auVar4._0_8_;
        gorm___DB__Where(in_RAX, auVar4._8_8_, 0x2e67d50 /* "name LIKE ? OR version LIKE ?" */, puVar1, 2, 2);
        return;
    }
    return;
}

/* CAS-Backend/biz/dao.Delete_map | VA 0x995d60 | map_dao.go:349
   DWARF parameters and results: id int, path string, ~r0 bool
   DWARF locals: result *gorm.io/gorm.DB, err error */
undefined8 __stdcall biz_dao_Delete_map(int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_78h)
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
    undefined auVar5 [16];
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
    if ((arg4 != 0) && (auVar5 = os_Remove(unaff_RBX, arg4), auVar5._0_8_ != 0)) {
        var_28h = *(int64_t *)(auVar5._0_8_ + 8);
        var_20h = auVar5._8_8_;
        var_10h = runtime_convTstring(unaff_RBX, arg4);
        var_18h = 0x1042920;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x118fb31 /* "删除文件失败: %v, 路径: %s" */, 0x22, &var_28h, 2, 2);
    }
    uVar1 = runtime_newobject(0x110c0c0);
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
    iVar4 = gorm___DB__Delete(*(undefined8 *)0x3512040, 0x1072e40, uVar1, puVar2, 1, 1);
    if (*(int64_t *)(iVar4 + 8) == 0) {
        var_60h = runtime_convT64(in_RAX);
        var_68h = 0x1042b60;
        var_50h = runtime_convT64(*(undefined8 *)(iVar4 + 0x18));
        var_58h = 0x1042ae0;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1193b05 /* "删除成功, ID: %d, 影响行数: %d" */, 0x26, &var_68h, 2, 2);
        return 1;
    }
    var_40h = runtime_convT64(in_RAX);
    var_48h = 0x1042b60;
    var_38h = 0;
    if (*(int64_t *)(iVar4 + 8) != 0) {
        var_38h = *(int64_t *)(*(int64_t *)(iVar4 + 8) + 8);
    }
    var_30h = *(int64_t *)(iVar4 + 0x10);
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1193adf /* "删除记录失败, ID: %d, 错误: %v" */, 0x26, &var_48h, 2, 2);
    return 0;
}

/* CAS-Backend/biz/dao.Update_map | VA 0x996020 | map_dao.go:376
   DWARF parameters and results: m CAS-Backend/biz/dao.Map, fileData []uint8, ~r0 bool
   DWARF locals: result *gorm.io/gorm.DB, ~r0.ptr *uint8, ~r0.len int, storageDir string, baseName string, ext string, nameWithoutExt string, newFileName string, storedPath string, err error */
undefined8 __stdcall
biz_dao_Update_map(int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h,
                  int64_t arg_30h, int64_t arg_38h, int64_t arg_40h, int64_t arg_58h, int64_t arg_60h, int64_t arg_68h,
                  int64_t arg_130h, int64_t arg_178h)
{
    undefined8 uVar1;
    char cVar2;
    uint8_t uVar3;
    int64_t in_RAX;
    int64_t iVar4;
    undefined8 *puVar5;
    undefined8 uVar6;
    int64_t extraout_RAX;
    uint64_t uVar7;
    int64_t extraout_RCX;
    uint64_t uVar8;
    int64_t extraout_RCX_00;
    int64_t unaff_RBX;
    int64_t iVar9;
    undefined8 extraout_RBX;
    uint64_t extraout_RBX_00;
    int64_t extraout_RBX_01;
    undefined *puVar10;
    undefined *unaff_RBP;
    undefined *puVar11;
    undefined8 *extraout_RDI;
    int64_t iVar12;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    undefined8 *extraout_R11_03;
    undefined8 *extraout_R11_04;
    int64_t unaff_R14;
    bool bVar13;
    undefined8 in_XMM15_Qa;
    undefined8 in_XMM15_Qb;
    undefined auVar14 [16];
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
    
    do {
        puVar10 = (undefined *)*(undefined **)0x20;
        puVar11 = unaff_RBP;
        if (*(undefined **)(unaff_R14 + 0x10) < (undefined *)((int64_t)*(undefined **)0x20 + -0x118)) {
            puVar11 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            puVar10 = (undefined *)((int64_t)*(undefined **)0x20 + -0x198);
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x58) = in_RAX;
            if ((in_RAX == 0) || (unaff_RBX == 0)) goto code_r0x009960a5;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x68) = arg4;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x58) = in_RAX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x60) = unaff_RBX;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = *(undefined8 *)0xfb5df0;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x148) = *(undefined8 *)0xfb5df8;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x996097;
            auVar14 = internal_filepathlite_Base(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x20), 
                                      *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x28));
            uVar8 = auVar14._8_8_;
            iVar4 = auVar14._0_8_;
            uVar7 = uVar8;
            do {
                uVar7 = uVar7 - 1;
                if ((((int64_t)uVar7 < 0) || (cVar2 = *(char *)(iVar4 + uVar7), cVar2 == '\\')) || (cVar2 == '/')) {
                    iVar9 = 0;
                    iVar12 = 0;
                    goto code_r0x00996526;
                }
            } while (cVar2 != '.');
            iVar9 = uVar8 - uVar7;
            iVar12 = iVar4 + (uVar7 & -iVar9 >> 0x3f);
code_r0x00996526:
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x150) = iVar9;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120) = iVar4;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128) = iVar12;
            if ((int64_t)uVar8 < iVar9) {
                cVar2 = '\0';
code_r0x00996596:
                if ((cVar2 == '\0') || (bVar13 = uVar8 - iVar9 <= uVar8, uVar8 = uVar8 - iVar9, bVar13)) {
                    *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x158) = uVar8;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x9965b7;
                    time_Now(auVar14._0_8_, auVar14._8_8_, uVar8, iVar12);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x9965c8;
                    auVar14 = time_Time_Format();
                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x78) = auVar14._0_8_;
                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x138) = auVar14._8_8_;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa8) = in_XMM15_Qa;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa0) = in_XMM15_Qb;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x98) = in_XMM15_Qa;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x90) = in_XMM15_Qb;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x88) = in_XMM15_Qa;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x80) = in_XMM15_Qb;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x9965ff;
                    uVar6 = runtime_convTstring(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x120), 
                                            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x158));
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa8) = 0x1042920;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa0) = uVar6;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x996628;
                    uVar6 = runtime_convTstring(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78), 
                                            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138));
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x98) = 0x1042920;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x90) = uVar6;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x99664e;
                    uVar6 = runtime_convTstring(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128), 
                                            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x150));
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x88) = 0x1042920;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x80) = uVar6;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x996686;
                    auVar14 = fmt_Sprintf(0x1172ac1 /* "%s_%s%s" */, 7, (undefined *)((int64_t)*(undefined **)0x20 + -0xa8), 3, 3);
                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100) = auVar14._0_8_;
                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x140) = auVar14._8_8_;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -200) = in_XMM15_Qa;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xc0) = in_XMM15_Qb;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = in_XMM15_Qa;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb0) = in_XMM15_Qb;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xc0) =
                         *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x148);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -200) =
                         *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110);
                    *(undefined (*) [16])((int64_t)*(undefined **)0x20 + -0xb8) = auVar14;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x9966e7;
                    auVar14 = path_filepath_join((undefined *)((int64_t)*(undefined **)0x20 + -200), 2);
                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x130) = auVar14._0_8_;
                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x160) = auVar14._8_8_;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x996714;
                    auVar14 = os_WriteFile(auVar14._0_8_, auVar14._8_8_, 
                                              *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x58), 
                                              *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x60), 
                                              *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x68), 0x1a4);
                    if (auVar14._0_8_ != 0) {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8) = in_XMM15_Qa;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd0) = in_XMM15_Qb;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8) = *(undefined8 *)(auVar14._0_8_ + 8);
                        *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0) = auVar14._8_8_;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x996768;
                        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x118234c /* "写入文件失败: %v" */, 0x16, 
                                        (undefined *)((int64_t)*(undefined **)0x20 + -0xd8), 1, 1);
                        return 0;
                    }
                    if (*(int64_t *)((int64_t)*(undefined **)0x20 + 0x28) == 0) {
                        iVar4 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x160);
                        uVar3 = 0;
                    } else {
                        iVar4 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x160);
                        if (iVar4 == *(int64_t *)((int64_t)*(undefined **)0x20 + 0x28)) {
                            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x9967a8;
                            uVar3 = runtime_memequal(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x20), 
                                                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130));
                            uVar3 = uVar3 ^ 1;
                            iVar4 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x160);
                        } else {
                            uVar3 = 1;
                        }
                    }
                    if (uVar3 != 0) {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x9967dd;
                        auVar14 = os_Remove(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x20), 
                                                  *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x28));
                        if (auVar14._0_8_ != 0) {
                            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = in_XMM15_Qa;
                            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = in_XMM15_Qb;
                            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe8) = in_XMM15_Qa;
                            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe0) = in_XMM15_Qb;
                            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = *(undefined8 *)(auVar14._0_8_ + 8);
                            *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0) = auVar14._8_8_;
                            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x996826;
                            uVar6 = runtime_convTstring(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x20), 
                                                    *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x28));
                            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe8) = 0x1042920;
                            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe0) = uVar6;
                            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x99686d;
                            fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1192987, 0x25, 
                                            (undefined *)((int64_t)*(undefined **)0x20 + -0xf8), 2, 2);
                        }
                        iVar4 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x160);
                    }
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x20) =
                         *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130);
                    *(int64_t *)((int64_t)*(undefined **)0x20 + 0x28) = iVar4;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10) =
                         *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x100);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x18) =
                         *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x140);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x9968a9;
                    time_Now();
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x9968ba;
                    auVar14 = time_Time_Format();
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x9968d3;
                    auVar14 = runtime_concatstring2(0, 0x2e64b38, 1, auVar14._0_8_, auVar14._8_8_);
                    *(undefined (*) [16])((int64_t)*(undefined **)0x20 + 0x30) = auVar14;
code_r0x009960a5:
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x9960b1;
                    uVar6 = runtime_newobject(0x110c0c0);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50) = uVar6;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x9960c8;
                    iVar4 = gorm___DB__getInstance(*(undefined8 *)0x3512040);
                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118) = iVar4;
                    iVar4 = *(int64_t *)(iVar4 + 0x20);
                    *(undefined8 *)(iVar4 + 0x20) = 0x1072e40;
                    if (*(int32_t *)0x355db50 == 0) {
                        uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50);
                    } else {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x9960f7;
                        runtime_gcWriteBarrier2();
                        uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50);
                        *extraout_R11 = uVar6;
                        extraout_R11[1] = *(undefined8 *)(extraout_RCX + 0x28);
                        iVar4 = extraout_RCX;
                    }
                    *(undefined8 *)(iVar4 + 0x28) = uVar6;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x99611a;
                    uVar6 = runtime_newobject(0x104dea0);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) = uVar6;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x996132;
                    uVar6 = runtime_convT64(*(undefined8 *)((int64_t)*(undefined **)0x20 + 8));
                    puVar5 = *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x58);
                    *puVar5 = 0x1042b60;
                    if (*(int32_t *)0x355db50 != 0) {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x996152;
                        uVar6 = runtime_gcWriteBarrier2();
                        *extraout_R11_00 = uVar6;
                        extraout_R11_00[1] = extraout_RDI[1];
                        puVar5 = extraout_RDI;
                    }
                    puVar5[1] = uVar6;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x996185;
                    uVar6 = gorm___DB__Where(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118), 0x1042920, 0x2e67d60 /* "id = ?" */
                                            , puVar5, 1, 1);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) = uVar6;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x996192;
                    uVar6 = runtime_makemap_small();
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = uVar6;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x9961b2;
                    uVar6 = runtime_convTstring(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), 
                                            *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x18));
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = uVar6;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x9961da;
                    puVar5 = (undefined8 *)
                             runtime_mapassign_faststr(0x107d4c0, *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68), 0x1169528 /* "name" */
                                             , 4);
                    *puVar5 = 0x1042920;
                    if (*(int32_t *)0x355db50 == 0) {
                        uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70);
                    } else {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x9961fc;
                        puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
                        uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70);
                        *extraout_R11_01 = uVar6;
                        extraout_R11_01[1] = puVar5[1];
                    }
                    puVar5[1] = uVar6;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x996228;
                    uVar6 = runtime_convTstring(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x20), 
                                            *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x28));
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = uVar6;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x996250;
                    puVar5 = (undefined8 *)
                             runtime_mapassign_faststr(0x107d4c0, *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68), 0x116952c /* "path" */
                                             , 4);
                    *puVar5 = 0x1042920;
                    if (*(int32_t *)0x355db50 == 0) {
                        uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70);
                    } else {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x996272;
                        puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
                        uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70);
                        *extraout_R11_02 = uVar6;
                        extraout_R11_02[1] = puVar5[1];
                    }
                    puVar5[1] = uVar6;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x99629e;
                    uVar6 = runtime_convTstring(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x30), 
                                            *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x38));
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = uVar6;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x9962c6;
                    puVar5 = (undefined8 *)
                             runtime_mapassign_faststr(0x107d4c0, *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68), 0x1172ac8 /* "version" */
                                             , 7);
                    *puVar5 = 0x1042920;
                    if (*(int32_t *)0x355db50 == 0) {
                        uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70);
                    } else {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x9962e8;
                        puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
                        uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70);
                        *extraout_R11_03 = uVar6;
                        extraout_R11_03[1] = puVar5[1];
                    }
                    puVar5[1] = uVar6;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x996313;
                    uVar6 = runtime_convT(0x11502e0, (undefined *)((int64_t)*(undefined **)0x20 + 0x40));
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = uVar6;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x99633b;
                    puVar5 = (undefined8 *)
                             runtime_mapassign_faststr(0x107d4c0, *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68), 0x117407b /* "createTi" */
                                             , 8);
                    *puVar5 = 0x11502e0;
                    if (*(int32_t *)0x355db50 == 0) {
                        uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70);
                    } else {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x99635d;
                        puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
                        uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70);
                        *extraout_R11_04 = uVar6;
                        extraout_R11_04[1] = puVar5[1];
                    }
                    puVar5[1] = uVar6;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x996390;
                    iVar4 = gorm___DB__Updates(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60), 0x107d4c0, 
                                            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68));
                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108) = iVar4;
                    if (*(int64_t *)(iVar4 + 8) == 0) {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = in_XMM15_Qa;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Qb;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = in_XMM15_Qa;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qb;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x996465;
                        uVar6 = runtime_convT64(*(undefined8 *)((int64_t)*(undefined **)0x20 + 8));
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = 0x1042b60;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = uVar6;
                        uVar6 = *(undefined8 *)(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108) + 0x18);
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x99648d;
                        uVar6 = runtime_convT64(uVar6);
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = 0x1042ae0;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = uVar6;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x9964d4;
                        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1193b2b /* "更新成功, ID: %d, 影响行数: %d" */, 0x26, 
                                        (undefined *)((int64_t)*(undefined **)0x20 + -0x48), 2, 2);
                        return 1;
                    }
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = in_XMM15_Qa;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = in_XMM15_Qb;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x9963c5;
                    uVar6 = runtime_convT64(*(undefined8 *)((int64_t)*(undefined **)0x20 + 8));
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = 0x1042b60;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar6;
                    iVar4 = *(int64_t *)(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108) + 8);
                    uVar6 = 0;
                    if (iVar4 != 0) {
                        uVar6 = *(undefined8 *)(iVar4 + 8);
                    }
                    uVar1 = *(undefined8 *)(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108) + 0x10);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = uVar6;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = uVar1;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x996435;
                    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x118d848 /* "更新失败, ID: %d, 错误: %v" */, 0x20, 
                                    (undefined *)((int64_t)*(undefined **)0x20 + -0x28), 2, 2);
                    return 0;
                }
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x9968ed;
                runtime_panicSliceAlen();
                uVar7 = extraout_RBX_00;
            } else {
                uVar7 = uVar8 - iVar9;
                auVar14._8_8_ = uVar7;
                auVar14._0_8_ = iVar4;
                if (uVar7 <= uVar8) {
                    if (iVar9 == uVar8 - uVar7) {
                        *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x138) = uVar8;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x996579;
                        cVar2 = runtime_memequal(((int64_t)-(uVar8 - uVar7) >> 0x3f & uVar7) + iVar4, iVar12);
                        uVar8 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x138);
                        iVar9 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x150);
                        iVar12 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128);
                        auVar14._8_8_ = extraout_RBX;
                        auVar14._0_8_ = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x120);
                    } else {
                        cVar2 = '\0';
                    }
                    goto code_r0x00996596;
                }
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x9968f5;
            runtime_panicSliceB(uVar7);
            in_RAX = extraout_RAX;
            arg4 = extraout_RCX_00;
            unaff_RBX = extraout_RBX_01;
        }
        *(int64_t *)(puVar10 + 0x58) = in_RAX;
        *(int64_t *)(puVar10 + 0x60) = unaff_RBX;
        *(int64_t *)(puVar10 + 0x68) = arg4;
        *(undefined8 *)(puVar10 + -8) = 0x99690a;
        runtime_morestack_noctxt_abi0();
        in_RAX = *(int64_t *)(puVar10 + 0x58);
        unaff_RBX = *(int64_t *)(puVar10 + 0x60);
        arg4 = *(int64_t *)(puVar10 + 0x68);
        *(undefined **)0x20 = (BADSPACEBASE *)puVar10;
        unaff_RBP = puVar11;
    } while( true );
}
