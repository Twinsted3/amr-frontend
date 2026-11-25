/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/biz/controller.GetAllMapHandler | VA 0xe7dc40 | map_controller.go:29
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: page1 int, size1 int, success bool, num int64, page string, size string, search1 string, ms []CAS-Backend/biz/dao.Map, maps []CAS-Backend/biz/controller.MapRequest */
// WARNING: Variable defined which should be unmapped: var_118h
// WARNING: Variable defined which should be unmapped: var_8h

void __stdcall biz_controller_GetAllMapHandler(int64_t arg_8h)
{
    char cVar1;
    undefined8 in_RAX;
    undefined8 uVar2;
    undefined8 uVar3;
    uint64_t extraout_RAX;
    int64_t iVar4;
    uint64_t uVar5;
    undefined8 *puVar6;
    int64_t extraout_RCX;
    undefined8 extraout_RCX_00;
    int64_t iVar7;
    int64_t extraout_RCX_01;
    int64_t iVar8;
    int64_t extraout_RCX_02;
    undefined8 extraout_RCX_03;
    undefined8 extraout_RBX;
    undefined8 uVar9;
    undefined8 extraout_RBX_00;
    undefined8 extraout_RSI;
    int64_t extraout_RDI;
    int64_t extraout_R8;
    int64_t extraout_R8_00;
    int64_t extraout_R9;
    int64_t extraout_R9_00;
    uint64_t uVar10;
    int64_t iVar11;
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
    undefined auVar12 [16];
    undefined auVar13 [16];
    undefined auVar14 [16];
    int64_t var_1b8h;
    int64_t in_stack_fffffffffffffe58;
    int64_t in_stack_fffffffffffffe60;
    int64_t in_stack_fffffffffffffe68;
    int64_t in_stack_fffffffffffffe70;
    int64_t in_stack_fffffffffffffe78;
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
    
    while (&var_128h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe7e374;
        runtime_morestack_noctxt_abi0();
    }
    auVar12 = gin_gonic_gin___Context__DefaultQuery();
    var_88h = auVar12._0_8_;
    auVar13 = gin_gonic_gin___Context__DefaultQuery(in_RAX, 0x1169694 /* "size" */, 4, 0x2e64d28, 1);
    var_108h = auVar13._0_8_;
    auVar14 = gin_gonic_gin___Context__Query(in_RAX, 0x116f489, 6);
    var_100h = auVar14._0_8_;
    uVar2 = strconv_Atoi(var_88h, auVar12._8_8_);
    uVar3 = strconv_Atoi(var_108h, auVar13._8_8_);
    cVar1 = biz_service_SlAllMap(uVar2, uVar3, var_100h, auVar14._8_8_);
    if (cVar1 == '\0') {
        var_20h = runtime_makemap_small();
        puVar6 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_20h, 0x116f48f /* "sucess" */, 6);
        *puVar6 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            uVar2 = puVar6[1];
            puVar6 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11 = uVar2;
        }
        puVar6[1] = 0xf7a720;
        puVar6 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_20h, 0x1172cf1 /* "message" */, 7);
        *puVar6 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar6 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_00 = extraout_RSI;
        }
        puVar6[1] = 0x2e68a20 /* "地图获取失败" */;
        auVar12 = runtime_mapassign_faststr(0x10a4880, var_20h, 0x116a5c1 /* "error" */, 5);
        puVar6 = auVar12._0_8_;
        *puVar6 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar6 = (undefined8 *)runtime_gcWriteBarrier1(puVar6, auVar12._8_8_, puVar6[1]);
            *extraout_R11_01 = extraout_RCX_00;
        }
        puVar6[1] = 0x2e68a30 /* "内部错误" */;
        var_18h = 0x10a4880;
        var_10h = var_20h;
        uVar2 = runtime_convT(0x10cbee0, &var_18h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
    } else {
        var_120h = 0;
        iVar4 = 0;
        var_128h = 0;
        iVar8 = extraout_RCX;
        iVar7 = extraout_RDI;
        while (0 < iVar7) {
            var_110h = iVar7;
            var_28h = iVar8;
            runtime_duffcopy_offset_826();
            runtime_duffzero_offset_331();
            var_f0h = var_78h;
            var_e8h = var_70h;
            var_e0h = var_68h;
            var_d8h = var_60h;
            var_d0h = var_58h;
            var_c8h = var_50h;
            var_c0h = var_48h;
            var_b8h = var_40h;
            var_b0h = var_38h;
            var_a8h = var_30h;
            uVar10 = extraout_R9_00 + 1;
            uVar5 = extraout_RAX;
            iVar7 = extraout_RCX_02;
            uVar9 = extraout_RBX_00;
            iVar8 = extraout_R8_00;
            if (extraout_RAX < uVar10) {
                iVar4 = runtime_growslice(in_stack_fffffffffffffe58, in_stack_fffffffffffffe60, in_stack_fffffffffffffe68, 
                                     in_stack_fffffffffffffe70, in_stack_fffffffffffffe78, var_118h);
                iVar7 = var_28h;
                uVar9 = extraout_RBX;
                iVar8 = var_110h;
            }
            iVar11 = uVar10 * 0x68;
            if (*(int32_t *)0x355db50 != 0) {
                var_118h = iVar11;
                var_f8h = iVar4;
                runtime_wbMove(0x110e5c0, iVar11 + iVar4 + -0x68, &var_f0h);
                iVar7 = var_28h;
                iVar4 = var_f8h;
                uVar9 = extraout_RBX;
                iVar8 = var_110h;
                iVar11 = var_118h;
            }
            *(int64_t *)(iVar11 + -0x68 + iVar4) = var_f0h;
            var_120h = runtime_duffcopy_offset_812(uVar5, uVar9, iVar7, iVar11 + iVar4 + -0x60, &var_e8h, iVar8, uVar10);
            iVar8 = extraout_RCX_01 + 0x50;
            var_128h = extraout_R9;
            iVar7 = extraout_R8 + -1;
        }
        var_80h = iVar4;
        var_20h = runtime_makemap_small();
        puVar6 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_20h, 0x116f48f /* "sucess" */, 6);
        *puVar6 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            uVar9 = puVar6[1];
            puVar6 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_02 = uVar9;
        }
        puVar6[1] = 0xf7a728;
        auVar12 = runtime_mapassign_faststr(0x10a4880, var_20h, 0x1172cf1 /* "message" */, 7);
        puVar6 = auVar12._0_8_;
        *puVar6 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar6 = (undefined8 *)runtime_gcWriteBarrier1(puVar6, auVar12._8_8_, puVar6[1]);
            *extraout_R11_03 = extraout_RCX_03;
        }
        puVar6[1] = 0x2e68a10 /* "地图获取成功" */;
        var_28h = runtime_convT64(extraout_RBX);
        puVar6 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_20h, 0x116a760 /* "total" */, 5);
        *puVar6 = 0x1042ae0;
        if (*(int32_t *)0x355db50 != 0) {
            puVar6 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_04 = var_28h;
            extraout_R11_04[1] = puVar6[1];
        }
        puVar6[1] = var_28h;
        var_28h = runtime_convT64(uVar2);
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
        var_28h = runtime_convTslice(var_80h, var_128h, var_120h);
        puVar6 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_20h, 0x1169698 /* "data" */, 4);
        *puVar6 = 0x1037880;
        if (*(int32_t *)0x355db50 != 0) {
            puVar6 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_07 = var_28h;
            extraout_R11_07[1] = puVar6[1];
        }
        puVar6[1] = var_28h;
        var_18h = 0x10a4880;
        var_10h = var_20h;
        uVar2 = runtime_convT(0x10cbee0, &var_18h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
    }
    return;
}

/* CAS-Backend/biz/controller.UpdateMapHandler | VA 0xe7e380 | map_controller.go:78
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &ma *CAS-Backend/biz/controller.MapRequest, success bool, m CAS-Backend/biz/dao.Map, ~r0.data *uint8, ~r0.itab uintptr, err error */
// WARNING: Variable defined which should be unmapped: var_8h

void __stdcall biz_controller_UpdateMapHandler(int64_t arg_8h, int64_t arg_e0h)
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
    int64_t var_128h;
    int64_t in_stack_fffffffffffffee8;
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
    
    while (&var_98h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe7e811;
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(in_stack_fffffffffffffee8);
    uVar4 = 0;
    iVar5 = *(int64_t *)0xfb77e8;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar4 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar6 = uVar4 & **(uint64_t **)0xfbb1f0;
            if ((*(uint64_t **)0xfbb1f0)[uVar6 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar4 = (*(uint64_t **)0xfbb1f0)[uVar6 * 2 + 2];
                goto code_r0x00e7e3e5;
            }
            uVar4 = uVar4 + 1;
        } while ((*(uint64_t **)0xfbb1f0)[uVar6 * 2 + 1] != 0);
        var_50h = *(int64_t *)0xfb77e8;
        uVar4 = runtime_typeAssert(0xfbb1f0);
        iVar5 = var_50h;
    }
code_r0x00e7e3e5:
    auVar7 = (**(code **)(uVar4 + 0x18))(iVar5, *(undefined8 *)(in_RAX + 0x20), 0x10265e0, var_10h);
    if (auVar7._0_8_ == 0) {
        var_38h = runtime_convT(0x110e5c0, var_10h);
        var_40h = 0x110e5c0;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_40h, 1, 1);
        runtime_duffzero_offset_336();
        var_a0h = *(int64_t *)var_10h;
        var_98h = *(int64_t *)(var_10h + 8);
        var_90h = *(int64_t *)(var_10h + 0x10);
        var_88h = *(int64_t *)(var_10h + 0x18);
        var_80h = *(int64_t *)(var_10h + 0x20);
        var_78h = *(int64_t *)(var_10h + 0x28);
        var_70h = *(int64_t *)(var_10h + 0x30);
        var_68h = *(int64_t *)(var_10h + 0x38);
        var_60h = *(int64_t *)(var_10h + 0x40);
        var_58h = *(int64_t *)(var_10h + 0x48);
        runtime_duffcopy_offset_826(*(undefined8 *)(var_10h + 0x50), *(undefined8 *)(var_10h + 0x58), 
                        *(undefined8 *)(var_10h + 0x60), &stack0xfffffffffffffee8, &var_a0h);
        cVar1 = biz_dao_Update_map();
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
            puVar2[1] = 0x2e68a50 /* "地图更新失败" */;
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
            puVar2[1] = 0x2e68a40 /* "地图更新成功" */;
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
    gin_gonic_gin___Context__AbortWithError(in_RAX, 400, auVar7._0_8_, auVar7._8_8_);
    return;
}

/* CAS-Backend/biz/controller.GetMapHandler | VA 0xe7e820 | map_controller.go:112
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: id int, success bool, idParam string, err error, m CAS-Backend/biz/dao.Map, file *os.File, fileInfo io/fs.FileInfo */
// WARNING: Removing unreachable block (ram,0x00e7e91d)
// WARNING: Removing unreachable block (ram,0x00e7ed83)
// WARNING: Removing unreachable block (ram,0x00e7edbe)
// WARNING: Removing unreachable block (ram,0x00e7edca)
// WARNING: Removing unreachable block (ram,0x00e7ee08)
// WARNING: Removing unreachable block (ram,0x00e7ee14)
// WARNING: Removing unreachable block (ram,0x00e7e9be)
// WARNING: Removing unreachable block (ram,0x00e7e9e9)
// WARNING: Removing unreachable block (ram,0x00e7ea24)
// WARNING: Removing unreachable block (ram,0x00e7ea30)
// WARNING: Removing unreachable block (ram,0x00e7ea93)
// WARNING: Removing unreachable block (ram,0x00e7ecc5)
// WARNING: Removing unreachable block (ram,0x00e7ed02)
// WARNING: Removing unreachable block (ram,0x00e7ed0e)
// WARNING: Removing unreachable block (ram,0x00e7ead2)
// WARNING: Removing unreachable block (ram,0x00e7ecad)
// WARNING: Removing unreachable block (ram,0x00e7eede)
// WARNING: Removing unreachable block (ram,0x00e7ef4f)
// WARNING: Removing unreachable block (ram,0x00e7eef2)
// WARNING: Removing unreachable block (ram,0x00e7eefb)
// WARNING: Removing unreachable block (ram,0x00e7ee91)
// WARNING: Removing unreachable block (ram,0x00e7ee70)
// WARNING: Removing unreachable block (ram,0x00e7ee74)
// WARNING: Removing unreachable block (ram,0x00e7ee88)
// WARNING: Variable defined which should be unmapped: var_178h
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Detected overlap for variable var_120h
// WARNING: [rz-ghidra] Detected overlap for variable var_49h

void __stdcall biz_controller_GetMapHandler(int64_t arg_8h, int64_t arg_d8h)
{
    int64_t iVar1;
    undefined8 *puVar2;
    undefined8 extraout_RCX;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    int64_t var_190h;
    int64_t in_stack_fffffffffffffe80;
    int64_t var_178h;
    int64_t in_stack_fffffffffffffe90;
    int64_t in_stack_fffffffffffffe98;
    int64_t in_stack_fffffffffffffea0;
    int64_t in_stack_fffffffffffffec0;
    int64_t var_121h;
    int64_t var_118h;
    int64_t var_110h;
    int64_t var_108h;
    int64_t var_100h;
    int64_t var_f8h;
    int64_t var_f0h;
    int64_t var_e8h;
    int64_t var_e0h;
    int64_t var_b0h;
    int64_t var_a8h;
    int64_t var_a0h;
    int64_t var_98h;
    int64_t var_90h;
    int64_t var_88h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (&var_100h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe7ef71;
        runtime_morestack_noctxt_abi0();
    }
    gin_gonic_gin___Context__Query(in_stack_fffffffffffffe80, var_178h, in_stack_fffffffffffffe90);
    strconv_Atoi(in_stack_fffffffffffffe80, var_178h, in_stack_fffffffffffffea0);
    iVar1 = runtime_makemap_small();
    var_18h = iVar1;
    puVar2 = (undefined8 *)
             runtime_mapassign_faststr(in_stack_fffffffffffffe80, var_178h, in_stack_fffffffffffffe90, in_stack_fffffffffffffe98, 
                          in_stack_fffffffffffffec0);
    *puVar2 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, iVar1, puVar2[1]);
        *extraout_R11 = extraout_RCX;
    }
    puVar2[1] = 0x2e68a60 /* "无效的mapID" */;
    var_38h = 0x10a4880;
    var_30h = var_18h;
    runtime_convT(in_stack_fffffffffffffe80, var_178h);
    gin_gonic_gin___Context__Render(in_stack_fffffffffffffe80, var_178h, in_stack_fffffffffffffe90, in_stack_fffffffffffffe98);
    return;
}

/* CAS-Backend/biz/controller.GetMapHandler.deferwrap1 | VA 0xe7ef80 | map_controller.go:132
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_10h

void __stdcall
biz_controller_GetMapHandler_deferwrap1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int64_t *piVar1;
    int64_t extraout_RDX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000048;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, arg_8h);
        arg3 = extraout_RDX;
    }
    piVar1 = *(int64_t **)(unaff_R14 + 0x20);
    if ((piVar1 != (int64_t *)0x0) && ((int64_t *)*piVar1 == &arg_8h)) {
        *piVar1 = (int64_t)&var_10h;
    }
    if (*(int64_t *)(arg3 + 8) != 0) {
        os___file__close(var_10h, in_stack_00000048);
    }
    return;
}

/* CAS-Backend/biz/controller.DeleteMapHandler | VA 0xe7efe0 | map_controller.go:162
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &ma *CAS-Backend/biz/controller.MapJieshou, id int, sucess bool, ~r0.data *uint8, ~r0.itab uintptr, err error */
// WARNING: Variable defined which should be unmapped: var_60h
// WARNING: Variable defined which should be unmapped: var_48h
// WARNING: [rz-ghidra] Detected overlap for variable var_49h

void __stdcall biz_controller_DeleteMapHandler(int64_t arg_8h, int64_t arg_50h)
{
    char cVar1;
    int64_t in_RAX;
    undefined8 uVar2;
    int64_t iVar3;
    undefined8 *puVar4;
    uint64_t uVar5;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    uint64_t uVar6;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t unaff_R14;
    undefined auVar7 [16];
    int64_t in_stack_ffffffffffffff78;
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
    
    while (&stack0xfffffffffffffff8 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(in_stack_ffffffffffffff78);
    uVar2 = *(undefined8 *)0xfb77e8;
    uVar5 = 0;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar5 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar6 = uVar5 & **(uint64_t **)0xfbb230;
            if ((*(uint64_t **)0xfbb230)[uVar6 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar5 = (*(uint64_t **)0xfbb230)[uVar6 * 2 + 2];
                goto code_r0x00e7f03c;
            }
            uVar5 = uVar5 + 1;
        } while ((*(uint64_t **)0xfbb230)[uVar6 * 2 + 1] != 0);
        uVar5 = runtime_typeAssert(in_stack_ffffffffffffff78, in_stack_ffffffffffffff80, in_stack_ffffffffffffff98, var_60h);
    }
code_r0x00e7f03c:
    auVar7 = (**(code **)(uVar5 + 0x18))(uVar2, *(undefined8 *)(in_RAX + 0x20), 0x1026760, var_10h);
    if (auVar7._0_8_ == 0) {
        var_38h = runtime_convTstring(in_stack_ffffffffffffff78, in_stack_ffffffffffffff80, var_60h);
        var_40h = 0x1042920;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_40h, 1, 1);
        uVar2 = strconv_Atoi(in_stack_ffffffffffffff78, in_stack_ffffffffffffff80, in_stack_ffffffffffffff98);
        cVar1 = biz_dao_Delete_map(uVar2, *(undefined8 *)(var_10h + 0x18), *(undefined8 *)(var_10h + 0x20));
        if (cVar1 == '\0') {
            iVar3 = runtime_makemap_small();
            puVar4 = (undefined8 *)
                     runtime_mapassign_faststr(in_stack_ffffffffffffff78, in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, 
                                  in_stack_ffffffffffffff90, iVar3);
            *puVar4 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                puVar4 = (undefined8 *)runtime_gcWriteBarrier1(puVar4, iVar3, puVar4[1]);
                *extraout_R11_00 = extraout_RCX_00;
            }
            puVar4[1] = 0x2e64ac0;
            var_20h = 0x10a4880;
            var_18h = iVar3;
            runtime_convT(in_stack_ffffffffffffff78, in_stack_ffffffffffffff80);
            gin_gonic_gin___Context__Render(in_stack_ffffffffffffff78, in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, 
                         in_stack_ffffffffffffff90);
        } else {
            iVar3 = runtime_makemap_small();
            puVar4 = (undefined8 *)
                     runtime_mapassign_faststr(in_stack_ffffffffffffff78, in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, 
                                  in_stack_ffffffffffffff90, iVar3);
            *puVar4 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                puVar4 = (undefined8 *)runtime_gcWriteBarrier1(puVar4, iVar3, puVar4[1]);
                *extraout_R11 = extraout_RCX;
            }
            puVar4[1] = 0x2e67830;
            var_20h = 0x10a4880;
            var_18h = iVar3;
            runtime_convT(in_stack_ffffffffffffff78, in_stack_ffffffffffffff80);
            gin_gonic_gin___Context__Render(in_stack_ffffffffffffff78, in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, 
                         in_stack_ffffffffffffff90);
        }
        return;
    }
    var_30h = 0x1042920;
    var_28h = 0x2e687d0 /* "注册解析错误" */;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_30h, 1, 1);
    gin_gonic_gin___Context__AbortWithError(in_RAX, 400, auVar7._0_8_, auVar7._8_8_);
    return;
}

/* CAS-Backend/biz/controller.nextSequentialMapVersion | VA 0xe7f300 | map_controller.go:193
   DWARF parameters and results: current string, ~r0 string
   DWARF locals: n int, t string, u string, err error */
// WARNING: [rz-ghidra] Detected overlap for variable var_60h

undefined8 __stdcall biz_controller_nextSequentialMapVersion(int64_t arg_8h, int64_t arg_10h)
{
    char *pcVar1;
    int64_t iVar2;
    undefined8 uVar3;
    int64_t unaff_RBX;
    int64_t unaff_R14;
    int64_t in_stack_00000078;
    int64_t in_stack_ffffffffffffffc0;
    int64_t in_stack_ffffffffffffffc8;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    strings_TrimSpace(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8);
    if (unaff_RBX == 0) {
        return 0x1168510 /* "V1" */;
    }
    pcVar1 = (char *)strings_ToUpper(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_00000078);
    if ((unaff_RBX < 2) || (*pcVar1 != 'V')) {
        return 0x116859c /* "V2" */;
    }
    strings_TrimSpace(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8);
    iVar2 = strconv_Atoi(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_ffffffffffffffe0);
    if ((unaff_RBX == 1) && (0 < iVar2)) {
        runtime_convT64(in_stack_ffffffffffffffc0);
        uVar3 = fmt_Sprintf(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, 
                             in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0);
        return uVar3;
    }
    return 0x116859c /* "V2" */;
}

/* CAS-Backend/biz/controller.normalizeMapVersion | VA 0xe7f400 | map_controller.go:210
   DWARF parameters and results: v string, ~r0 string
   DWARF locals: u string, n int, err error */
// WARNING: [rz-ghidra] Detected overlap for variable var_60h

undefined8 __stdcall biz_controller_normalizeMapVersion(int64_t arg_8h, int64_t arg_10h)
{
    char *pcVar1;
    int64_t iVar2;
    undefined8 uVar3;
    int64_t unaff_RBX;
    int64_t unaff_R14;
    int64_t in_stack_00000078;
    int64_t in_stack_ffffffffffffffc0;
    int64_t in_stack_ffffffffffffffc8;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    strings_TrimSpace(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8);
    if (unaff_RBX != 0) {
        pcVar1 = (char *)strings_ToUpper(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_00000078);
        if ((1 < unaff_RBX) && (*pcVar1 == 'V')) {
            strings_TrimSpace(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8);
            iVar2 = strconv_Atoi(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_ffffffffffffffe0);
            if ((unaff_RBX == 1) && (0 < iVar2)) {
                runtime_convT64(in_stack_ffffffffffffffc0);
                uVar3 = fmt_Sprintf(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, 
                                     in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0);
                return uVar3;
            }
        }
        return 0x1168510 /* "V1" */;
    }
    return 0x1168510 /* "V1" */;
}

/* CAS-Backend/biz/controller.Jieshoutuisong | VA 0xe7f4e0 | map_controller.go:224
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: file *mime/multipart.FileHeader, &m *CAS-Backend/biz/dao.Map, err error, uploadDir string, filename string, dst string, mapName string, versionIn string, newVer string, ~r0.ptr *uint8, ~r0.len int, ok bool, existing CAS-Backend/biz/dao.Map, res *gorm.io/gorm.DB */
// WARNING: Removing unreachable block (ram,0x00e80076)
// WARNING: [rz-ghidra] Detected overlap for variable var_49h

void __stdcall biz_controller_Jieshoutuisong(int64_t arg_8h, int64_t arg_1a8h)
{
    uint64_t uVar1;
    code *pcVar2;
    char cVar3;
    uint8_t uVar4;
    undefined8 in_RAX;
    undefined8 extraout_RAX;
    undefined8 uVar5;
    undefined8 *puVar6;
    uint64_t uVar7;
    undefined8 extraout_RAX_00;
    int64_t iVar8;
    undefined8 uVar9;
    undefined8 uVar10;
    int64_t iVar11;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    int64_t extraout_RCX_01;
    undefined8 extraout_RCX_02;
    undefined8 extraout_RCX_03;
    undefined8 extraout_RCX_04;
    undefined8 extraout_RCX_05;
    int64_t extraout_RBX;
    undefined8 extraout_RBX_00;
    undefined8 extraout_RBX_01;
    undefined8 extraout_RBX_02;
    int64_t extraout_RBX_03;
    undefined *puVar12;
    undefined *unaff_RBP;
    undefined *puVar13;
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
    undefined8 *extraout_R11_08;
    undefined8 *extraout_R11_09;
    undefined8 *extraout_R11_10;
    undefined8 *extraout_R11_11;
    undefined8 *extraout_R11_12;
    undefined8 *extraout_R11_13;
    int64_t unaff_R14;
    bool bVar14;
    undefined8 in_XMM15_Qa;
    undefined8 in_XMM15_Qb;
    undefined auVar15 [16];
    int64_t var_2b8h;
    int64_t var_2a0h;
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
    int64_t var_188h;
    int64_t var_180h;
    int64_t var_178h;
    int64_t var_170h;
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
    
    do {
        puVar12 = (undefined *)*(undefined **)0x20;
        puVar13 = unaff_RBP;
        if (*(undefined **)(unaff_R14 + 0x10) < (undefined *)((int64_t)*(undefined **)0x20 + -0x228)) {
            puVar13 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            puVar12 = (undefined *)((int64_t)*(undefined **)0x20 + -0x2a8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f516;
            gin_gonic_gin___Context__FormFile();
            if (extraout_RBX != 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x140) = extraout_RCX;
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x200) = extraout_RBX;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f534;
                uVar5 = runtime_makemap_small();
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x100) = uVar5;
                pcVar2 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x200) + 0x18);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f552;
                (*pcVar2)(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x140));
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f557;
                uVar5 = runtime_convTstring(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x280));
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = uVar5;
                uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x100);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f57f;
                puVar6 = (undefined8 *)
                         runtime_mapassign_faststr(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                      *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                                      *(int64_t *)((int64_t)*(undefined **)0x20 + -0x298), 
                                      *(int64_t *)((int64_t)*(undefined **)0x20 + -0x290), 
                                      *(int64_t *)((int64_t)*(undefined **)0x20 + -0x268));
                *puVar6 = 0x1042920;
                if (*(int32_t *)0x355db50 == 0) {
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108);
                } else {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f5a5;
                    puVar6 = (undefined8 *)runtime_gcWriteBarrier2(puVar6, uVar5);
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108);
                    *extraout_R11 = uVar5;
                    extraout_R11[1] = puVar6[1];
                }
                puVar6[1] = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0x10a4880;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x100);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f5ef;
                runtime_convT(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0));
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f60b;
                gin_gonic_gin___Context__Render(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x298), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x290));
                return;
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a8) = extraout_RAX;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x88) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x80) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f634;
            uVar5 = runtime_convTstring(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x280));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x88) = 0x1042920;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x80) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f66e;
            fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, (undefined *)((int64_t)*(undefined **)0x20 + -0x88), 1
                            , 1);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1d0) = *(undefined8 *)0xfb5df0;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x228) = *(undefined8 *)0xfb5df8;
            uVar5 = **(undefined8 **)((int64_t)*(undefined **)0x20 + -0x1a8);
            uVar10 = (*(undefined8 **)((int64_t)*(undefined **)0x20 + -0x1a8))[1];
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f6a5;
            auVar15 = internal_filepathlite_Base(uVar5, uVar10);
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x1e0) = auVar15._0_8_;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x238) = auVar15._8_8_;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa8) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa0) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x98) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x90) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa0) =
                 *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x228);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa8) =
                 *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1d0);
            *(undefined (*) [16])((int64_t)*(undefined **)0x20 + -0x98) = auVar15;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f709;
            auVar15 = path_filepath_join((undefined *)((int64_t)*(undefined **)0x20 + -0xa8), 2);
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x1e8) = auVar15._0_8_;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x240) = auVar15._8_8_;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f731;
            auVar15 = gin_gonic_gin___Context__SaveUploadedFile(*(undefined8 *)((int64_t)*(undefined **)0x20 + 8), 
                                      *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a8), auVar15._0_8_, 
                                      auVar15._8_8_);
            uVar5 = auVar15._8_8_;
            if (auVar15._0_8_ != 0) {
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x208) = auVar15._0_8_;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x148) = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe8038a;
                uVar5 = runtime_makemap_small();
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x100) = uVar5;
                pcVar2 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x208) + 0x18);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe803a8;
                (*pcVar2)(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x148));
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe803c5;
                runtime_concatstring2(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x298), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x290), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x288));
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe803ca;
                uVar5 = runtime_convTstring(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x280));
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = uVar5;
                uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x100);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe803f2;
                puVar6 = (undefined8 *)
                         runtime_mapassign_faststr(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                      *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                                      *(int64_t *)((int64_t)*(undefined **)0x20 + -0x298), 
                                      *(int64_t *)((int64_t)*(undefined **)0x20 + -0x290), 
                                      *(int64_t *)((int64_t)*(undefined **)0x20 + -0x268));
                *puVar6 = 0x1042920;
                if (*(int32_t *)0x355db50 == 0) {
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108);
                } else {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe80414;
                    puVar6 = (undefined8 *)runtime_gcWriteBarrier2(puVar6, uVar5);
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108);
                    *extraout_R11_13 = uVar5;
                    extraout_R11_13[1] = puVar6[1];
                }
                puVar6[1] = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0x10a4880;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x100);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe8045e;
                runtime_convT(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0));
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe8047a;
                gin_gonic_gin___Context__Render(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x298), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x290));
                return;
            }
            uVar7 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x238);
            if ((int64_t)uVar7 < 5) {
                cVar3 = '\0';
            } else {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f76b;
                cVar3 = runtime_memequal(uVar7 + *(int64_t *)((int64_t)*(undefined **)0x20 + -0x1e0) + -5, 0x116a5c6 /* ".smap" */, 5);
                uVar7 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x238);
                uVar5 = extraout_RBX_00;
            }
            if ((cVar3 == '\0') || (uVar1 = uVar7 - 5, bVar14 = uVar1 <= uVar7, uVar7 = uVar1, bVar14)) {
                *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x248) = uVar7;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f792;
                time_Now();
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1f0) = extraout_RAX_00;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1f8) = extraout_RBX_01;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = extraout_RCX_00;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f7c5;
                gin_gonic_gin___Context__GetPostForm(*(undefined8 *)((int64_t)*(undefined **)0x20 + 8), 0x1172ac8 /* "version" */, 7);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f7ca;
                uVar5 = strings_TrimSpace(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0));
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1d8) = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x230) = extraout_RBX_02;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f7dc;
                biz_dao_InitDB();
                *(undefined **)((int64_t)*(undefined **)0x20 + -0x2b8) =
                     (undefined *)((int64_t)*(undefined **)0x20 + -8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f7f7;
                fcn.00478af0();
                uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f80d;
                biz_dao_GetMapByName(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1e0), 
                                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x248));
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b8) = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f82f;
                fcn.00478e5a();
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b8) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f852;
                cVar3 = fcn.00478e5a();
                uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b8);
                if (cVar3 == '\0') {
                    uVar10 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x230);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7ff0d;
                    uVar9 = biz_controller_normalizeMapVersion
                                      (*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                       *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0));
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8) = uVar9;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x220) = uVar10;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7ff29;
                    runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8));
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b8) = uVar5;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7ff4f;
                    uVar10 = fcn.00478af0();
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b8);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) =
                         *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1e0);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50) =
                         *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x248);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) =
                         *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1e8);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) =
                         *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x240);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) =
                         *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) =
                         *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x220);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) =
                         *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1f0);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) =
                         *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1f8);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) =
                         *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110);
                    if (*(int32_t *)0x355db50 != 0) {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = uVar10;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe80005;
                        runtime_wbMove(0x110c0c0, uVar10, (undefined *)((int64_t)*(undefined **)0x20 + -0x60));
                    }
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b8) = uVar5;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe8002f;
                    uVar5 = fcn.00478e5a();
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe8004c;
                    iVar11 = gorm___DB__Create(*(undefined8 *)0x3512040, 0x1072e40, uVar5);
                    iVar8 = *(int64_t *)(iVar11 + 8);
                    uVar5 = *(undefined8 *)(iVar11 + 0x10);
                    if (iVar8 != 0) {
                        *(int64_t *)((int64_t)*(undefined **)0x20 + -0x210) = iVar8;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe8) = in_XMM15_Qa;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe0) = in_XMM15_Qb;
                        uVar10 = *(undefined8 *)(iVar8 + 8);
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x150) = uVar5;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe8) = uVar10;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe0) = uVar5;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe800c5;
                        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x117b7a3 /* "插入失败: %v" */, 0x10, 
                                        (undefined *)((int64_t)*(undefined **)0x20 + -0xe8), 1);
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe800d7;
                        os_Remove(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1e8), 
                                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x240));
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe800dc;
                        uVar5 = runtime_makemap_small();
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x100) = uVar5;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe800ff;
                        puVar6 = (undefined8 *)
                                 runtime_mapassign_faststr(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                              *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                                              *(int64_t *)((int64_t)*(undefined **)0x20 + -0x298), 
                                              *(int64_t *)((int64_t)*(undefined **)0x20 + -0x290), 
                                              *(int64_t *)((int64_t)*(undefined **)0x20 + -0x268));
                        *puVar6 = 0x1042b60;
                        if (*(int32_t *)0x355db50 != 0) {
                            uVar10 = puVar6[1];
                            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe8011b;
                            puVar6 = (undefined8 *)runtime_gcWriteBarrier1(puVar6, uVar5, uVar10);
                            *extraout_R11_09 = extraout_RCX_04;
                        }
                        puVar6[1] = 0x2e64ac0;
                        pcVar2 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x210) + 0x18);
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe8013f;
                        (*pcVar2)(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x150));
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe80158;
                        runtime_concatstring2(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x298), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x290), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x288));
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe8015d;
                        uVar5 = runtime_convTstring(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x280));
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = uVar5;
                        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x100);
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe80185;
                        puVar6 = (undefined8 *)
                                 runtime_mapassign_faststr(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                              *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                                              *(int64_t *)((int64_t)*(undefined **)0x20 + -0x298), 
                                              *(int64_t *)((int64_t)*(undefined **)0x20 + -0x290), 
                                              *(int64_t *)((int64_t)*(undefined **)0x20 + -0x268));
                        *puVar6 = 0x1042920;
                        if (*(int32_t *)0x355db50 == 0) {
                            uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108);
                        } else {
                            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe801a7;
                            puVar6 = (undefined8 *)runtime_gcWriteBarrier2(puVar6, uVar5);
                            uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108);
                            *extraout_R11_10 = uVar5;
                            extraout_R11_10[1] = puVar6[1];
                        }
                        puVar6[1] = uVar5;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0x10a4880;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) =
                             *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x100);
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe801f1;
                        runtime_convT(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0));
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe8020d;
                        gin_gonic_gin___Context__Render(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x298), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x290));
                        return;
                    }
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = in_XMM15_Qa;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = in_XMM15_Qb;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe80231;
                    uVar5 = runtime_convTstring(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x280));
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0x1042920;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = uVar5;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe80278;
                    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11892dc, 0x1c, 
                                    (undefined *)((int64_t)*(undefined **)0x20 + -0xf8), 1, 1);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe8027d;
                    uVar5 = runtime_makemap_small();
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x100) = uVar5;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe802a5;
                    puVar6 = (undefined8 *)
                             runtime_mapassign_faststr(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                          *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                                          *(int64_t *)((int64_t)*(undefined **)0x20 + -0x298), 
                                          *(int64_t *)((int64_t)*(undefined **)0x20 + -0x290), 
                                          *(int64_t *)((int64_t)*(undefined **)0x20 + -0x268));
                    *puVar6 = 0x1042b60;
                    if (*(int32_t *)0x355db50 != 0) {
                        uVar10 = puVar6[1];
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe802c5;
                        puVar6 = (undefined8 *)runtime_gcWriteBarrier1(puVar6, uVar5);
                        *extraout_R11_11 = uVar10;
                    }
                    puVar6[1] = 0x2e67830;
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x100);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe802f3;
                    puVar6 = (undefined8 *)
                             runtime_mapassign_faststr(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                          *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                                          *(int64_t *)((int64_t)*(undefined **)0x20 + -0x298), 
                                          *(int64_t *)((int64_t)*(undefined **)0x20 + -0x290), 
                                          *(int64_t *)((int64_t)*(undefined **)0x20 + -0x268));
                    *puVar6 = 0x1042920;
                    if (*(int32_t *)0x355db50 != 0) {
                        uVar10 = puVar6[1];
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe8030f;
                        puVar6 = (undefined8 *)runtime_gcWriteBarrier1(puVar6, uVar5, uVar10);
                        *extraout_R11_12 = extraout_RCX_05;
                    }
                    puVar6[1] = 0x2e68aa0 /* "地图已保存" */;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0x10a4880;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) =
                         *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x100);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe80350;
                    runtime_convT(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0));
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe8036c;
                    gin_gonic_gin___Context__Render(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x298), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x290));
                    return;
                }
                iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x230);
                if (iVar8 == 0) {
                    iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x170);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f87d;
                    uVar5 = biz_controller_nextSequentialMapVersion
                                      (*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                       *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0));
                } else {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f88c;
                    uVar5 = biz_controller_normalizeMapVersion
                                      (*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                       *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0));
                }
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x218) = iVar8;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b0) = uVar5;
                if (*(int64_t *)((int64_t)*(undefined **)0x20 + -0x180) != 0) {
                    if (*(int64_t *)((int64_t)*(undefined **)0x20 + -0x240) ==
                        *(int64_t *)((int64_t)*(undefined **)0x20 + -0x180)) {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f8cf;
                        uVar4 = runtime_memequal(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x188), 
                                                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1e8));
                        uVar4 = uVar4 ^ 1;
                        iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x218);
                    } else {
                        uVar4 = 1;
                    }
                    if (uVar4 != 0) {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f905;
                        os_Remove(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x188), 
                                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x180));
                        iVar8 = extraout_RBX_03;
                    }
                }
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f911;
                uVar5 = runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8));
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f928;
                iVar8 = gorm___DB__getInstance(*(undefined8 *)0x3512040, iVar8);
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x1c8) = iVar8;
                iVar8 = *(int64_t *)(iVar8 + 0x20);
                *(undefined8 *)(iVar8 + 0x20) = 0x1072e40;
                if (*(int32_t *)0x355db50 == 0) {
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118);
                } else {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f957;
                    runtime_gcWriteBarrier2();
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118);
                    *extraout_R11_00 = uVar5;
                    extraout_R11_00[1] = *(undefined8 *)(extraout_RCX_01 + 0x28);
                    iVar8 = extraout_RCX_01;
                }
                *(undefined8 *)(iVar8 + 0x28) = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f97a;
                uVar5 = runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8));
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x120) = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f992;
                uVar5 = runtime_convT64(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8));
                puVar6 = *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x120);
                *puVar6 = 0x1042b60;
                if (*(int32_t *)0x355db50 != 0) {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f9b2;
                    uVar5 = runtime_gcWriteBarrier2();
                    *extraout_R11_01 = uVar5;
                    extraout_R11_01[1] = extraout_RDI[1];
                    puVar6 = extraout_RDI;
                }
                puVar6[1] = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f9e5;
                uVar5 = gorm___DB__Where(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1c8), 0x1042920, 0x2e67d60 /* "id = ?" */, 
                                        puVar6, 1, 1);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7f9f2;
                uVar5 = runtime_makemap_small();
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x100) = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fa0c;
                uVar5 = runtime_convTstring(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x280));
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = uVar5;
                uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x100);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fa34;
                puVar6 = (undefined8 *)
                         runtime_mapassign_faststr(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                      *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                                      *(int64_t *)((int64_t)*(undefined **)0x20 + -0x298), 
                                      *(int64_t *)((int64_t)*(undefined **)0x20 + -0x290), 
                                      *(int64_t *)((int64_t)*(undefined **)0x20 + -0x268));
                *puVar6 = 0x1042920;
                if (*(int32_t *)0x355db50 == 0) {
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108);
                } else {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fa56;
                    puVar6 = (undefined8 *)runtime_gcWriteBarrier2(puVar6, uVar5);
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108);
                    *extraout_R11_02 = uVar5;
                    extraout_R11_02[1] = puVar6[1];
                }
                puVar6[1] = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fa85;
                uVar5 = runtime_convTstring(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x280));
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = uVar5;
                uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x100);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7faad;
                puVar6 = (undefined8 *)
                         runtime_mapassign_faststr(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                      *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                                      *(int64_t *)((int64_t)*(undefined **)0x20 + -0x298), 
                                      *(int64_t *)((int64_t)*(undefined **)0x20 + -0x290), 
                                      *(int64_t *)((int64_t)*(undefined **)0x20 + -0x268));
                *puVar6 = 0x1042920;
                if (*(int32_t *)0x355db50 == 0) {
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108);
                } else {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fad1;
                    puVar6 = (undefined8 *)runtime_gcWriteBarrier2(puVar6, uVar5);
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108);
                    *extraout_R11_03 = uVar5;
                    extraout_R11_03[1] = puVar6[1];
                }
                puVar6[1] = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1f0);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1f8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fb2c;
                uVar5 = runtime_convT(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0));
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = uVar5;
                uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x100);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fb54;
                puVar6 = (undefined8 *)
                         runtime_mapassign_faststr(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                      *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                                      *(int64_t *)((int64_t)*(undefined **)0x20 + -0x298), 
                                      *(int64_t *)((int64_t)*(undefined **)0x20 + -0x290), 
                                      *(int64_t *)((int64_t)*(undefined **)0x20 + -0x268));
                *puVar6 = 0x11502e0;
                if (*(int32_t *)0x355db50 == 0) {
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108);
                } else {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fb76;
                    puVar6 = (undefined8 *)runtime_gcWriteBarrier2(puVar6, uVar5);
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108);
                    *extraout_R11_04 = uVar5;
                    extraout_R11_04[1] = puVar6[1];
                }
                puVar6[1] = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fba9;
                iVar8 = gorm___DB__Updates(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128), 0x107d4c0, 
                                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x100));
                if (*(int64_t *)(iVar8 + 8) != 0) {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = in_XMM15_Qa;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb0) = in_XMM15_Qb;
                    uVar5 = 0;
                    if (*(int64_t *)(iVar8 + 8) != 0) {
                        uVar5 = *(undefined8 *)(*(int64_t *)(iVar8 + 8) + 8);
                    }
                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x1c0) = iVar8;
                    uVar10 = *(undefined8 *)(iVar8 + 0x10);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = uVar5;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb0) = uVar10;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fc16;
                    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1182798 /* "地图更新失败: %v" */, 0x16, 
                                    (undefined *)((int64_t)*(undefined **)0x20 + -0xb8), 1, 1);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fc28;
                    os_Remove(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1e8), 
                                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x240));
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fc2d;
                    uVar5 = runtime_makemap_small();
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x100) = uVar5;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fc50;
                    puVar6 = (undefined8 *)
                             runtime_mapassign_faststr(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                          *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                                          *(int64_t *)((int64_t)*(undefined **)0x20 + -0x298), 
                                          *(int64_t *)((int64_t)*(undefined **)0x20 + -0x290), 
                                          *(int64_t *)((int64_t)*(undefined **)0x20 + -0x268));
                    *puVar6 = 0x1042b60;
                    if (*(int32_t *)0x355db50 != 0) {
                        uVar10 = puVar6[1];
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fc6c;
                        puVar6 = (undefined8 *)runtime_gcWriteBarrier1(puVar6, uVar5, uVar10);
                        *extraout_R11_05 = extraout_RCX_02;
                    }
                    puVar6[1] = 0x2e64ac0;
                    uVar5 = *(undefined8 *)(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x1c0) + 0x10);
                    pcVar2 = *(code **)(*(int64_t *)(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x1c0) + 8) + 0x18);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fc90;
                    (*pcVar2)(uVar5);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fca9;
                    runtime_concatstring2(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x298), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x290), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x288));
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fcae;
                    uVar5 = runtime_convTstring(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x280));
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = uVar5;
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x100);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fcd6;
                    puVar6 = (undefined8 *)
                             runtime_mapassign_faststr(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                          *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                                          *(int64_t *)((int64_t)*(undefined **)0x20 + -0x298), 
                                          *(int64_t *)((int64_t)*(undefined **)0x20 + -0x290), 
                                          *(int64_t *)((int64_t)*(undefined **)0x20 + -0x268));
                    *puVar6 = 0x1042920;
                    if (*(int32_t *)0x355db50 == 0) {
                        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108);
                    } else {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fcf8;
                        puVar6 = (undefined8 *)runtime_gcWriteBarrier2(puVar6, uVar5);
                        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108);
                        *extraout_R11_06 = uVar5;
                        extraout_R11_06[1] = puVar6[1];
                    }
                    puVar6[1] = uVar5;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0x10a4880;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) =
                         *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x100);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fd45;
                    runtime_convT(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0));
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fd65;
                    gin_gonic_gin___Context__Render(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x298), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x290));
                    return;
                }
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd0) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -200) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xc0) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fd92;
                uVar5 = runtime_convTstring(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x280));
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8) = 0x1042920;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd0) = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fdbe;
                uVar5 = runtime_convTstring(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x280));
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -200) = 0x1042920;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xc0) = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fe05;
                fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1191e22, 0x24, 
                                (undefined *)((int64_t)*(undefined **)0x20 + -0xd8), 2, 2);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fe0a;
                uVar5 = runtime_makemap_small();
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x100) = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fe2d;
                puVar6 = (undefined8 *)
                         runtime_mapassign_faststr(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                      *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                                      *(int64_t *)((int64_t)*(undefined **)0x20 + -0x298), 
                                      *(int64_t *)((int64_t)*(undefined **)0x20 + -0x290), 
                                      *(int64_t *)((int64_t)*(undefined **)0x20 + -0x268));
                *puVar6 = 0x1042b60;
                if (*(int32_t *)0x355db50 != 0) {
                    uVar10 = puVar6[1];
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fe4b;
                    puVar6 = (undefined8 *)runtime_gcWriteBarrier1(puVar6, uVar5);
                    *extraout_R11_07 = uVar10;
                }
                puVar6[1] = 0x2e67830;
                uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x100);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fe79;
                puVar6 = (undefined8 *)
                         runtime_mapassign_faststr(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                                      *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                                      *(int64_t *)((int64_t)*(undefined **)0x20 + -0x298), 
                                      *(int64_t *)((int64_t)*(undefined **)0x20 + -0x290), 
                                      *(int64_t *)((int64_t)*(undefined **)0x20 + -0x268));
                *puVar6 = 0x1042920;
                if (*(int32_t *)0x355db50 != 0) {
                    uVar10 = puVar6[1];
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fe95;
                    puVar6 = (undefined8 *)runtime_gcWriteBarrier1(puVar6, uVar5, uVar10);
                    *extraout_R11_08 = extraout_RCX_03;
                }
                puVar6[1] = 0x2e68a90 /* "地图已更新" */;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0x10a4880;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x100);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fed6;
                runtime_convT(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0));
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe7fef2;
                gin_gonic_gin___Context__Render(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x2a0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x298), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x290));
                return;
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x2b0) = 0xe8048e;
            in_RAX = runtime_panicSliceAlen(uVar1, uVar5, uVar1);
        }
        *(undefined8 *)(puVar12 + 8) = in_RAX;
        *(undefined8 *)(puVar12 + -8) = 0xe80499;
        runtime_morestack_noctxt_abi0();
        in_RAX = *(undefined8 *)(puVar12 + 8);
        *(undefined **)0x20 = (BADSPACEBASE *)puVar12;
        unaff_RBP = puVar13;
    } while( true );
}

/* CAS-Backend/biz/controller.QMapRHandler | VA 0xe804c0 | map_controller.go:357
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &ve *CAS-Backend/biz/controller.VehRequest, err error, response *CAS-Backend/pkg/agvcontrol.MapResponse, ~r0.data *uint8, ~r0.itab uintptr */
// WARNING: Variable defined which should be unmapped: var_98h
// WARNING: [rz-ghidra] Detected overlap for variable var_49h

void __stdcall biz_controller_QMapRHandler(int64_t arg_8h, int64_t arg_80h, int64_t arg_c0h)
{
    undefined8 uVar1;
    int64_t in_RAX;
    int64_t iVar2;
    undefined8 *puVar3;
    uint64_t uVar4;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 extraout_RSI;
    uint64_t uVar5;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    undefined8 *extraout_R11_03;
    int64_t *extraout_R11_04;
    int64_t unaff_R14;
    undefined auVar6 [16];
    int64_t in_stack_ffffffffffffff28;
    int64_t in_stack_ffffffffffffff30;
    int64_t in_stack_ffffffffffffff38;
    int64_t in_stack_ffffffffffffff40;
    int64_t in_stack_ffffffffffffff48;
    int64_t in_stack_ffffffffffffff50;
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
    
    while (&var_58h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(in_stack_ffffffffffffff28);
    uVar4 = 0;
    iVar2 = *(int64_t *)0xfb77e8;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar4 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar5 = uVar4 & **(uint64_t **)0xfbb250;
            if ((*(uint64_t **)0xfbb250)[uVar5 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar4 = (*(uint64_t **)0xfbb250)[uVar5 * 2 + 2];
                goto code_r0x00e80525;
            }
            uVar4 = uVar4 + 1;
        } while ((*(uint64_t **)0xfbb250)[uVar5 * 2 + 1] != 0);
        var_88h = *(int64_t *)0xfb77e8;
        uVar4 = runtime_typeAssert(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff48, 
                             in_stack_ffffffffffffff50);
        iVar2 = var_88h;
    }
code_r0x00e80525:
    auVar6 = (**(code **)(uVar4 + 0x18))(iVar2, *(undefined8 *)(in_RAX + 0x20), 0x10266e0, var_10h);
    if (auVar6._0_8_ == 0) {
        var_58h = runtime_convTstring(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff50);
        var_60h = 0x1042920;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_60h, 1, 1);
        var_90h = 0;
        var_30h = 0xe80a20;
        var_28h = (int64_t)&var_90h;
        auVar6 = pkg_agvcontrol_DoWithConn(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 0x4b04, &var_30h);
        var_68h = auVar6._8_8_;
        if (auVar6._0_8_ == 0) {
            var_78h = runtime_convTstring(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff50);
            var_80h = 0x1042920;
            fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_80h, 1, 1);
            iVar2 = runtime_makemap_small();
            var_18h = iVar2;
            puVar3 = (undefined8 *)
                     runtime_mapassign_faststr(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, 
                                  in_stack_ffffffffffffff40, var_98h);
            *puVar3 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                uVar1 = puVar3[1];
                puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, iVar2);
                *extraout_R11_02 = uVar1;
            }
            iVar2 = var_18h;
            puVar3[1] = 0x2e67830;
            puVar3 = (undefined8 *)
                     runtime_mapassign_faststr(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, 
                                  in_stack_ffffffffffffff40, var_98h);
            *puVar3 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, iVar2, puVar3[1]);
                *extraout_R11_03 = extraout_RCX_00;
            }
            puVar3[1] = 0x2e68ac0 /* "查询成功" */;
            var_20h = runtime_convTstring(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff50);
            iVar2 = var_18h;
            puVar3 = (undefined8 *)
                     runtime_mapassign_faststr(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, 
                                  in_stack_ffffffffffffff40, var_98h);
            *puVar3 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar3 = (undefined8 *)runtime_gcWriteBarrier2(puVar3, iVar2);
                *extraout_R11_04 = var_20h;
                extraout_R11_04[1] = puVar3[1];
            }
            puVar3[1] = var_20h;
            var_40h = 0x10a4880;
            var_38h = var_18h;
            runtime_convT(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30);
            gin_gonic_gin___Context__Render(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, 
                         in_stack_ffffffffffffff40);
        } else {
            var_70h = *(int64_t *)(auVar6._0_8_ + 8);
            fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x117b7b3 /* "查询失败: %v" */, 0x10, &var_70h, 1, 1);
            iVar2 = runtime_makemap_small();
            var_18h = iVar2;
            puVar3 = (undefined8 *)
                     runtime_mapassign_faststr(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, 
                                  in_stack_ffffffffffffff40, var_98h);
            *puVar3 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                uVar1 = puVar3[1];
                puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, iVar2);
                *extraout_R11 = uVar1;
            }
            iVar2 = var_18h;
            puVar3[1] = 0x2e64ac0;
            puVar3 = (undefined8 *)
                     runtime_mapassign_faststr(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, 
                                  in_stack_ffffffffffffff40, var_98h);
            *puVar3 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, iVar2);
                *extraout_R11_00 = extraout_RSI;
            }
            iVar2 = var_18h;
            puVar3[1] = 0x2e68ab0 /* "查询失败" */;
            puVar3 = (undefined8 *)
                     runtime_mapassign_faststr(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, 
                                  in_stack_ffffffffffffff40, var_98h);
            *puVar3 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, iVar2, puVar3[1]);
                *extraout_R11_01 = extraout_RCX;
            }
            puVar3[1] = 0x2e68400;
            var_40h = 0x10a4880;
            var_38h = var_18h;
            runtime_convT(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30);
            gin_gonic_gin___Context__Render(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, 
                         in_stack_ffffffffffffff40);
        }
        return;
    }
    var_50h = 0x1042920;
    var_48h = 0x2e687d0 /* "注册解析错误" */;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_50h, 1, 1);
    gin_gonic_gin___Context__AbortWithError(in_RAX, 400, auVar6._0_8_, auVar6._8_8_);
    return;
}

/* CAS-Backend/biz/controller.QMapRHandler.func1 | VA 0xe80a20 | map_controller.go:370
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: res *CAS-Backend/pkg/agvcontrol.MapResponse, &response **CAS-Backend/pkg/agvcontrol.MapResponse, e error */
int64_t __stdcall
biz_controller_QMapRHandler_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h,
          int64_t arg_18h)
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
    puVar1 = *(undefined8 **)(arg3 + 8);
    auVar3 = pkg_agvcontrol_SendSltMapRequest();
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

/* CAS-Backend/biz/controller.DownloadMapHandler | VA 0xe80ac0 | map_controller.go:403
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &dm *CAS-Backend/biz/controller.DownloadMapRequest, err error, ~r0.data *uint8, ~r0.itab uintptr, success bool */
// WARNING: [rz-ghidra] Detected overlap for variable var_99h

void __stdcall biz_controller_DownloadMapHandler(int64_t arg_8h, int64_t arg_80h)
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
    undefined auVar6 [16];
    char var_99h;
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
    
    while (&var_58h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(0x10d5c00);
    uVar3 = 0;
    iVar4 = *(int64_t *)0xfb77e8;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar3 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar5 = uVar3 & **(uint64_t **)0xfbb270;
            if ((*(uint64_t **)0xfbb270)[uVar5 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar3 = (*(uint64_t **)0xfbb270)[uVar5 * 2 + 2];
                goto code_r0x00e80b25;
            }
            uVar3 = uVar3 + 1;
        } while ((*(uint64_t **)0xfbb270)[uVar5 * 2 + 1] != 0);
        var_88h = *(int64_t *)0xfb77e8;
        uVar3 = runtime_typeAssert(0xfbb270);
        iVar4 = var_88h;
    }
code_r0x00e80b25:
    auVar6 = (**(code **)(uVar3 + 0x18))(iVar4, *(undefined8 *)(in_RAX + 0x20), 0x1026720, var_10h);
    var_90h = auVar6._8_8_;
    var_98h = auVar6._0_8_;
    if (var_98h == 0) {
        var_58h = runtime_convTstring(*(undefined8 *)(var_10h + 0x20), *(undefined8 *)(var_10h + 0x28));
        var_60h = 0x1042920;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x117cc91, 0x11, &var_60h, 1, 1);
        var_99h = '\0';
        var_30h = 0xe80f60;
        var_28h = var_10h;
        var_20h = (int64_t)&var_99h;
        auVar6 = pkg_agvcontrol_DoWithConn(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 0x4b07, &var_30h);
        var_68h = auVar6._8_8_;
        if (var_99h == '\0') {
            var_70h = 0;
            if (auVar6._0_8_ != 0) {
                var_70h = *(int64_t *)(auVar6._0_8_ + 8);
            }
            fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x117bad3 /* "下载失败: %v" */, 0x10, &var_70h, 1, 1);
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
            puVar1[1] = 0x2e68ad0 /* "下载失败" */;
            var_40h = 0x10a4880;
            var_38h = var_18h;
            uVar2 = runtime_convT(0x10cbee0, &var_40h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
        } else {
            var_80h = 0x1042920;
            var_78h = 0x2e68ae0 /* "下载成功" */;
            fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_80h, 1, 1);
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
            puVar1[1] = 0x2e68ae0 /* "下载成功" */;
            var_40h = 0x10a4880;
            var_38h = var_18h;
            uVar2 = runtime_convT(0x10cbee0, &var_40h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
        }
        return;
    }
    var_50h = 0x1042920;
    var_48h = 0x2e687d0 /* "注册解析错误" */;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_50h, 1, 1);
    gin_gonic_gin___Context__AbortWithError(in_RAX, 400, var_98h, var_90h);
    return;
}

/* CAS-Backend/biz/controller.DownloadMapHandler.func1 | VA 0xe80f60 | map_controller.go:415
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: ok bool, &dm *CAS-Backend/biz/controller.DownloadMapRequest, &success *bool, e error */
// WARNING: [rz-ghidra] Detected overlap for variable var_c4h
// WARNING: [rz-ghidra] Removing arg arg_3ch because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_d4h

undefined8 __stdcall
biz_controller_DownloadMapHandler_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h)
{
    undefined *puVar1;
    undefined uVar2;
    int64_t in_RAX;
    int64_t extraout_RDX;
    undefined8 unaff_RBX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000050;
    int64_t in_stack_000000a8;
    int64_t in_stack_000000c0;
    int64_t in_stack_000000f0;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
        arg3 = extraout_RDX;
    }
    puVar1 = *(undefined **)(arg3 + 0x10);
    uVar2 = pkg_agvcontrol_DownloadMapRequest(in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, 
                         in_stack_ffffffffffffffe8, in_stack_00000050, in_stack_000000a8, in_stack_000000c0, 
                         in_stack_000000f0);
    *puVar1 = uVar2;
    return unaff_RBX;
}

/* CAS-Backend/biz/controller.UploadMapHandler | VA 0xe80fe0 | map_controller.go:444
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &um *CAS-Backend/biz/controller.UploadMapRequest, err error, ~r0.data *uint8, ~r0.itab uintptr */
void __stdcall biz_controller_UploadMapHandler(int64_t arg_8h, int64_t arg_88h)
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
    int64_t in_stack_ffffffffffffff28;
    int64_t in_stack_ffffffffffffff30;
    int64_t in_stack_ffffffffffffff38;
    int64_t in_stack_ffffffffffffff40;
    int64_t in_stack_ffffffffffffff48;
    int64_t in_stack_ffffffffffffff50;
    int64_t in_stack_ffffffffffffff58;
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
    
    while (&var_58h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(in_stack_ffffffffffffff28);
    uVar4 = *(undefined8 *)0xfb77e8;
    uVar5 = 0;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar5 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar6 = uVar5 & **(uint64_t **)0xfbb290;
            if ((*(uint64_t **)0xfbb290)[uVar6 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar5 = (*(uint64_t **)0xfbb290)[uVar6 * 2 + 2];
                goto code_r0x00e81045;
            }
            uVar5 = uVar5 + 1;
        } while ((*(uint64_t **)0xfbb290)[uVar6 * 2 + 1] != 0);
        uVar5 = runtime_typeAssert(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff48, 
                             in_stack_ffffffffffffff50);
    }
code_r0x00e81045:
    auVar7 = (**(code **)(uVar5 + 0x18))(uVar4, *(undefined8 *)(in_RAX + 0x20), 0x10267e0, var_10h);
    if (auVar7._0_8_ != 0) {
        var_48h = 0x1042920;
        var_40h = 0x2e687d0 /* "注册解析错误" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_48h, 1, 1);
        gin_gonic_gin___Context__AbortWithError(in_RAX, 400, auVar7._0_8_, auVar7._8_8_);
        return;
    }
    var_50h = runtime_convTstring(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff50);
    var_58h = 0x1042920;
    fmt_Fprintf(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, 
                 in_stack_ffffffffffffff40, in_stack_ffffffffffffff48, in_stack_ffffffffffffff50, 
                 in_stack_ffffffffffffff58);
    var_60h = runtime_convTstring(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff50);
    var_68h = 0x1042920;
    fmt_Fprintf(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, 
                 in_stack_ffffffffffffff40, in_stack_ffffffffffffff48, in_stack_ffffffffffffff50, 
                 in_stack_ffffffffffffff58);
    var_28h = 0xe814c0;
    var_20h = var_10h;
    iVar1 = pkg_agvcontrol_DoWithConn(*(undefined8 *)var_10h, *(undefined8 *)(var_10h + 8), 0x4b07, &var_28h);
    uVar4 = *(undefined8 *)0x3512080;
    if (iVar1 == 0) {
        var_78h = 0x1042920;
        var_70h = 0x2e68af0 /* "上传成功" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_78h, 1, 1);
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
        puVar3[1] = 0x2e68af0 /* "上传成功" */;
        var_38h = 0x10a4880;
        var_30h = var_18h;
        uVar4 = runtime_convT(0x10cbee0, &var_38h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar4);
    } else {
        uVar2 = fmt_Fprintf(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, 
                             in_stack_ffffffffffffff40, in_stack_ffffffffffffff48, in_stack_ffffffffffffff50, 
                             in_stack_ffffffffffffff58);
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
        puVar3[1] = 0x2e68b00 /* "上传失败" */;
        var_38h = 0x10a4880;
        var_30h = var_18h;
        uVar4 = runtime_convT(0x10cbee0, &var_38h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar4);
    }
    return;
}

/* CAS-Backend/biz/controller.UploadMapHandler.func1 | VA 0xe814c0 | map_controller.go:456
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &um *CAS-Backend/biz/controller.UploadMapRequest */
// WARNING: [rz-ghidra] Detected overlap for variable var_1ach
// WARNING: [rz-ghidra] Detected overlap for variable var_1bfh
// WARNING: [rz-ghidra] Detected overlap for variable var_1beh
// WARNING: [rz-ghidra] Detected overlap for variable var_1bch
// WARNING: [rz-ghidra] Detected overlap for variable var_1b8h
// WARNING: [rz-ghidra] Detected overlap for variable var_1b6h
// WARNING: [rz-ghidra] Detected overlap for variable var_1ceh
// WARNING: [rz-ghidra] Detected overlap for variable var_1cch
// WARNING: [rz-ghidra] Detected overlap for variable var_1c8h
// WARNING: [rz-ghidra] Detected overlap for variable var_1c6h
// WARNING: [rz-ghidra] Detected overlap for variable var_1c2h
// WARNING: [rz-ghidra] Detected overlap for variable var_1b2h

void __stdcall
biz_controller_UploadMapHandler_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h)
{
    int64_t in_RAX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000078;
    int64_t in_stack_000000f0;
    int64_t in_stack_000001a0;
    int64_t in_stack_000001c0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
    }
    pkg_agvcontrol_SendUploadMapCommand(in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, in_stack_ffffffffffffffe8, 
                 in_stack_fffffffffffffff0, in_stack_00000078, in_stack_000000f0, in_stack_000001a0, in_stack_000001c0);
    return;
}

/* CAS-Backend/biz/controller.LoadMapHandler | VA 0xe81520 | map_controller.go:475
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &um *CAS-Backend/biz/controller.UploadMapRequest, err error, ~r0.data *uint8, ~r0.itab uintptr, success bool, info CAS-Backend/pkg/diapdu.ActiveMapInfo, err1 error */
// WARNING: Removing unreachable block (ram,0x00e8182e)
// WARNING: [rz-ghidra] Detected overlap for variable var_111h

void __stdcall biz_controller_LoadMapHandler(int64_t arg_8h, int64_t arg_c8h, int64_t arg_110h)
{
    int64_t in_RAX;
    undefined8 uVar1;
    undefined8 *puVar2;
    undefined8 uVar3;
    uint64_t uVar4;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    int64_t extraout_RCX_01;
    undefined8 extraout_RCX_02;
    int64_t iVar5;
    int64_t extraout_RBX;
    int64_t extraout_RSI;
    int64_t extraout_RDI;
    uint64_t uVar6;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    int64_t *extraout_R11_02;
    int64_t *extraout_R11_03;
    undefined8 *extraout_R11_04;
    undefined8 *extraout_R11_05;
    int64_t *extraout_R11_06;
    int64_t unaff_R14;
    undefined auVar7 [16];
    int64_t in_stack_fffffffffffffeb0;
    int64_t in_stack_fffffffffffffeb8;
    int64_t in_stack_fffffffffffffec0;
    int64_t in_stack_fffffffffffffec8;
    int64_t in_stack_fffffffffffffed0;
    int64_t in_stack_fffffffffffffed8;
    int64_t in_stack_fffffffffffffee0;
    char var_111h;
    int64_t var_110h;
    int64_t var_108h;
    int64_t var_100h;
    int64_t var_f8h;
    int64_t var_f0h;
    int64_t var_e8h;
    int64_t var_e0h;
    undefined4 uStack_d8;
    undefined4 uStack_d4;
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
    
    while (&var_d0h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(in_stack_fffffffffffffeb0);
    uVar4 = 0;
    iVar5 = *(int64_t *)0xfb77e8;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar4 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar6 = uVar4 & **(uint64_t **)0xfbb2b0;
            if ((*(uint64_t **)0xfbb2b0)[uVar6 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar4 = (*(uint64_t **)0xfbb2b0)[uVar6 * 2 + 2];
                goto code_r0x00e81585;
            }
            uVar4 = uVar4 + 1;
        } while ((*(uint64_t **)0xfbb2b0)[uVar6 * 2 + 1] != 0);
        var_c8h = *(int64_t *)0xfb77e8;
        uVar4 = runtime_typeAssert(in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, in_stack_fffffffffffffed0, 
                             in_stack_fffffffffffffed8);
        iVar5 = var_c8h;
    }
code_r0x00e81585:
    auVar7 = (**(code **)(uVar4 + 0x18))(iVar5, *(undefined8 *)(in_RAX + 0x20), 0x10267e0, var_10h);
    var_100h = auVar7._8_8_;
    var_110h = auVar7._0_8_;
    if (var_110h != 0) {
        var_80h = 0x1042920;
        var_78h = 0x2e687d0 /* "注册解析错误" */;
        fmt_Fprintln(in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, in_stack_fffffffffffffec0, 
                     in_stack_fffffffffffffec8, in_stack_fffffffffffffed0);
        gin_gonic_gin___Context__AbortWithError(in_RAX, 400, var_110h, var_100h);
        return;
    }
    var_88h = runtime_convTstring(in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, in_stack_fffffffffffffed8);
    var_90h = 0x1042920;
    fmt_Fprintf(in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, in_stack_fffffffffffffec0, 
                 in_stack_fffffffffffffec8, in_stack_fffffffffffffed0, in_stack_fffffffffffffed8, 
                 in_stack_fffffffffffffee0);
    var_111h = '\0';
    var_60h = 0xe81ce0;
    var_58h = var_10h;
    var_50h = (int64_t)&var_111h;
    auVar7 = pkg_agvcontrol_DoWithConn(*(undefined8 *)var_10h, *(undefined8 *)(var_10h + 8), 0x4b05, &var_60h);
    uVar3 = *(undefined8 *)0x3512080;
    var_b8h = auVar7._8_8_;
    if (var_111h == '\0') {
        var_c0h = 0;
        if (auVar7._0_8_ != 0) {
            var_c0h = *(int64_t *)(auVar7._0_8_ + 8);
        }
        uVar1 = fmt_Fprintf(in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, in_stack_fffffffffffffec0, 
                             in_stack_fffffffffffffec8, in_stack_fffffffffffffed0, in_stack_fffffffffffffed8, 
                             in_stack_fffffffffffffee0);
        var_40h = runtime_makemap_small(uVar1, uVar3);
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_40h, 0x116968c /* "code" */, 4);
        *puVar2 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            uVar3 = puVar2[1];
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11 = uVar3;
        }
        puVar2[1] = 0x2e64ac0;
        auVar7 = runtime_mapassign_faststr(0x10a4880, var_40h, 0x1168a54 /* "msg" */, 3);
        puVar2 = auVar7._0_8_;
        *puVar2 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar7._8_8_, puVar2[1]);
            *extraout_R11_00 = extraout_RCX;
        }
        puVar2[1] = 0x2e68b20 /* "切换失败" */;
        var_70h = 0x10a4880;
        var_68h = var_40h;
        uVar3 = runtime_convT(0x10cbee0, &var_70h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
    } else {
        var_a0h = 0x1042920;
        var_98h = 0x2e68b10 /* "切换成功" */;
        fmt_Fprintln(in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, in_stack_fffffffffffffec0, 
                     in_stack_fffffffffffffec8, in_stack_fffffffffffffed0);
        auVar7 = pkg_diapdu_ReloadActiveMapFromLocalFile(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 
                                 *(undefined8 *)(var_10h + 0x20), *(undefined8 *)(var_10h + 0x28));
        uVar3 = *(undefined8 *)0x3512080;
        var_d0h = auVar7._8_8_;
        var_108h = auVar7._0_8_;
        if (var_108h != 0) {
            var_b0h = *(int64_t *)(var_108h + 8);
            var_a8h = var_d0h;
            uVar1 = fmt_Fprintf(in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, in_stack_fffffffffffffec0, 
                                 in_stack_fffffffffffffec8, in_stack_fffffffffffffed0, in_stack_fffffffffffffed8, 
                                 in_stack_fffffffffffffee0);
            var_40h = runtime_makemap_small(uVar1, uVar3);
            auVar7 = runtime_mapassign_faststr(0x10a4880, var_40h, 0x116968c /* "code" */, 4);
            puVar2 = auVar7._0_8_;
            *puVar2 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar7._8_8_, puVar2[1]);
                *extraout_R11_01 = extraout_RCX_00;
            }
            puVar2[1] = 0x2e67830;
            (**(code **)(var_108h + 0x18))(var_d0h);
            runtime_concatstring2(in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, in_stack_fffffffffffffec0, 
                         in_stack_fffffffffffffec8, in_stack_fffffffffffffed0);
            var_48h = runtime_convTstring(in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, in_stack_fffffffffffffed8);
            puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_40h, 0x1168a54 /* "msg" */, 3);
            *puVar2 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
                *extraout_R11_02 = var_48h;
                extraout_R11_02[1] = puVar2[1];
            }
            puVar2[1] = var_48h;
            var_48h = runtime_convTstring(in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, in_stack_fffffffffffffed8);
            puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_40h, 0x1172d06 /* "mapName" */, 7);
            *puVar2 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
                *extraout_R11_03 = var_48h;
                extraout_R11_03[1] = puVar2[1];
            }
            puVar2[1] = var_48h;
            var_70h = 0x10a4880;
            var_68h = var_40h;
            uVar3 = runtime_convT(0x10cbee0, &var_70h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
            return;
        }
        var_38h._0_1_ = pkg_diapdu_GetActiveMapInfo();
        var_f8h = CONCAT71(var_38h._1_7_, (undefined)var_38h);
        var_20h._0_4_ = (undefined4)extraout_RDI;
        var_20h._4_4_ = (undefined4)((uint64_t)extraout_RDI >> 0x20);
        var_18h._0_4_ = (undefined4)extraout_RSI;
        var_18h._4_4_ = (undefined4)((uint64_t)extraout_RSI >> 0x20);
        var_e0h._0_4_ = (undefined4)var_20h;
        var_e0h._4_4_ = var_20h._4_4_;
        uStack_d8 = (undefined4)var_18h;
        uStack_d4 = var_18h._4_4_;
        var_f0h = extraout_RBX;
        var_e8h = extraout_RCX_01;
        var_30h = extraout_RBX;
        var_28h = extraout_RCX_01;
        var_20h = extraout_RDI;
        var_18h = extraout_RSI;
        var_40h = runtime_makemap_small();
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_40h, 0x116968c /* "code" */, 4);
        *puVar2 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            uVar3 = puVar2[1];
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_04 = uVar3;
        }
        puVar2[1] = 0x2e67830;
        auVar7 = runtime_mapassign_faststr(0x10a4880, var_40h, 0x1168a54 /* "msg" */, 3);
        puVar2 = auVar7._0_8_;
        *puVar2 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar7._8_8_, puVar2[1]);
            *extraout_R11_05 = extraout_RCX_02;
        }
        puVar2[1] = 0x2e68b10 /* "切换成功" */;
        var_48h = runtime_convTstring(in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, in_stack_fffffffffffffed8);
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_40h, 0x1172d06 /* "mapName" */, 7);
        *puVar2 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_06 = var_48h;
            extraout_R11_06[1] = puVar2[1];
        }
        puVar2[1] = var_48h;
        var_70h = 0x10a4880;
        var_68h = var_40h;
        uVar3 = runtime_convT(0x10cbee0, &var_70h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
    }
    return;
}

/* CAS-Backend/biz/controller.LoadMapHandler.func1 | VA 0xe81ce0 | map_controller.go:487
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: ok bool, &um *CAS-Backend/biz/controller.UploadMapRequest, &success *bool, e error */
// WARNING: [rz-ghidra] Detected overlap for variable var_bch
// WARNING: [rz-ghidra] Removing arg arg_3ch because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_cch

undefined8 __stdcall
biz_controller_LoadMapHandler_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h)
{
    undefined *puVar1;
    undefined uVar2;
    int64_t in_RAX;
    int64_t extraout_RDX;
    undefined8 unaff_RBX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000048;
    int64_t in_stack_00000088;
    int64_t in_stack_000000a8;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
        arg3 = extraout_RDX;
    }
    puVar1 = *(undefined **)(arg3 + 0x10);
    uVar2 = pkg_agvcontrol_LoadMapRequest(in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, 
                         in_stack_ffffffffffffffe8, in_stack_00000048, in_stack_00000088, in_stack_000000a8);
    *puVar1 = uVar2;
    return unaff_RBX;
}

/* CAS-Backend/biz/controller.UploadLoadMapHandler | VA 0xe81d60 | map_controller.go:519
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &um *CAS-Backend/biz/controller.UploadMapRequest, err error, info CAS-Backend/pkg/diapdu.ActiveMapInfo, ~r0.data *uint8, ~r0.itab uintptr, err1 error */
// WARNING: Removing unreachable block (ram,0x00e820bf)

void __stdcall biz_controller_UploadLoadMapHandler(int64_t arg_8h, int64_t arg_d0h, int64_t arg_110h)
{
    int64_t in_RAX;
    undefined8 uVar1;
    undefined8 *puVar2;
    undefined8 uVar3;
    uint64_t uVar4;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    int64_t extraout_RCX_01;
    undefined8 extraout_RCX_02;
    int64_t iVar5;
    int64_t extraout_RBX;
    int64_t extraout_RSI;
    int64_t extraout_RDI;
    uint64_t uVar6;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    int64_t *extraout_R11_02;
    int64_t *extraout_R11_03;
    undefined8 *extraout_R11_04;
    undefined8 *extraout_R11_05;
    int64_t *extraout_R11_06;
    int64_t unaff_R14;
    undefined auVar7 [16];
    undefined auVar8 [16];
    int64_t in_stack_fffffffffffffeb0;
    int64_t in_stack_fffffffffffffeb8;
    int64_t in_stack_fffffffffffffec0;
    int64_t in_stack_fffffffffffffec8;
    int64_t in_stack_fffffffffffffed0;
    int64_t in_stack_fffffffffffffed8;
    int64_t in_stack_fffffffffffffee0;
    int64_t var_118h;
    int64_t var_110h;
    int64_t var_108h;
    int64_t var_100h;
    int64_t var_f8h;
    int64_t var_f0h;
    int64_t var_e8h;
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
    
    while (&var_d0h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(in_stack_fffffffffffffeb0);
    uVar4 = 0;
    iVar5 = *(int64_t *)0xfb77e8;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar4 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar6 = uVar4 & **(uint64_t **)0xfbb2d0;
            if ((*(uint64_t **)0xfbb2d0)[uVar6 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar4 = (*(uint64_t **)0xfbb2d0)[uVar6 * 2 + 2];
                goto code_r0x00e81dc5;
            }
            uVar4 = uVar4 + 1;
        } while ((*(uint64_t **)0xfbb2d0)[uVar6 * 2 + 1] != 0);
        var_d0h = *(int64_t *)0xfb77e8;
        uVar4 = runtime_typeAssert(in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, in_stack_fffffffffffffed0, 
                             in_stack_fffffffffffffed8);
        iVar5 = var_d0h;
    }
code_r0x00e81dc5:
    auVar7 = (**(code **)(uVar4 + 0x18))(iVar5, *(undefined8 *)(in_RAX + 0x20), 0x10267e0, var_10h);
    if (auVar7._0_8_ != 0) {
        var_78h = 0x1042920;
        var_70h = 0x2e687d0 /* "注册解析错误" */;
        fmt_Fprintln(in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, in_stack_fffffffffffffec0, 
                     in_stack_fffffffffffffec8, in_stack_fffffffffffffed0);
        gin_gonic_gin___Context__AbortWithError(in_RAX, 400, auVar7._0_8_, auVar7._8_8_);
        return;
    }
    var_80h = runtime_convTstring(in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, in_stack_fffffffffffffed8);
    var_88h = 0x1042920;
    fmt_Fprintf(in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, in_stack_fffffffffffffec0, 
                 in_stack_fffffffffffffec8, in_stack_fffffffffffffed0, in_stack_fffffffffffffed8, 
                 in_stack_fffffffffffffee0);
    var_90h = runtime_convTstring(in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, in_stack_fffffffffffffed8);
    var_98h = 0x1042920;
    fmt_Fprintf(in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, in_stack_fffffffffffffec0, 
                 in_stack_fffffffffffffec8, in_stack_fffffffffffffed0, in_stack_fffffffffffffed8, 
                 in_stack_fffffffffffffee0);
    var_58h = 0xe82560;
    var_50h = var_10h;
    auVar7 = pkg_agvcontrol_DoWithConn(*(undefined8 *)var_10h, *(undefined8 *)(var_10h + 8), 0x4b05, &var_58h);
    uVar3 = *(undefined8 *)0x3512080;
    var_a0h = auVar7._8_8_;
    if (auVar7._0_8_ == 0) {
        var_b8h = 0x1042920;
        var_b0h = 0x2e68b40 /* "上传并切换成功" */;
        fmt_Fprintln(in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, in_stack_fffffffffffffec0, 
                     in_stack_fffffffffffffec8, in_stack_fffffffffffffed0);
        auVar7 = pkg_diapdu_ReloadActiveMapFromLocalFile(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 
                                 *(undefined8 *)(var_10h + 0x20), *(undefined8 *)(var_10h + 0x28));
        uVar3 = *(undefined8 *)0x3512080;
        iVar5 = auVar7._0_8_;
        if (iVar5 == 0) {
            var_38h._0_1_ = pkg_diapdu_GetActiveMapInfo();
            var_30h = extraout_RBX;
            var_28h = extraout_RCX_01;
            var_20h = extraout_RDI;
            var_18h = extraout_RSI;
            var_40h = runtime_makemap_small();
            puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_40h, 0x116968c /* "code" */, 4);
            *puVar2 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                uVar3 = puVar2[1];
                puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11_04 = uVar3;
            }
            puVar2[1] = 0x2e67830;
            auVar7 = runtime_mapassign_faststr(0x10a4880, var_40h, 0x1168a54 /* "msg" */, 3);
            puVar2 = auVar7._0_8_;
            *puVar2 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar7._8_8_, puVar2[1]);
                *extraout_R11_05 = extraout_RCX_02;
            }
            puVar2[1] = 0x2e68b40 /* "上传并切换成功" */;
            var_48h = runtime_convTstring(in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, in_stack_fffffffffffffed8);
            puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_40h, 0x1172d06 /* "mapName" */, 7);
            *puVar2 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
                *extraout_R11_06 = var_48h;
                extraout_R11_06[1] = puVar2[1];
            }
            puVar2[1] = var_48h;
            var_68h = 0x10a4880;
            var_60h = var_40h;
            uVar3 = runtime_convT(0x10cbee0, &var_68h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
            return;
        }
        var_c8h = *(int64_t *)(iVar5 + 8);
        var_c0h = auVar7._8_8_;
        uVar1 = fmt_Fprintf(in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, in_stack_fffffffffffffec0, 
                             in_stack_fffffffffffffec8, in_stack_fffffffffffffed0, in_stack_fffffffffffffed8, 
                             in_stack_fffffffffffffee0);
        var_40h = runtime_makemap_small(uVar1, uVar3);
        auVar8 = runtime_mapassign_faststr(0x10a4880, var_40h, 0x116968c /* "code" */, 4);
        puVar2 = auVar8._0_8_;
        *puVar2 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar8._8_8_, puVar2[1]);
            *extraout_R11_01 = extraout_RCX_00;
        }
        puVar2[1] = 0x2e67830;
        (**(code **)(iVar5 + 0x18))(auVar7._8_8_);
        runtime_concatstring2(in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, in_stack_fffffffffffffec0, 
                     in_stack_fffffffffffffec8, in_stack_fffffffffffffed0);
        var_48h = runtime_convTstring(in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, in_stack_fffffffffffffed8);
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_40h, 0x1168a54 /* "msg" */, 3);
        *puVar2 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_02 = var_48h;
            extraout_R11_02[1] = puVar2[1];
        }
        puVar2[1] = var_48h;
        var_48h = runtime_convTstring(in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, in_stack_fffffffffffffed8);
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_40h, 0x1172d06 /* "mapName" */, 7);
        *puVar2 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_03 = var_48h;
            extraout_R11_03[1] = puVar2[1];
        }
        puVar2[1] = var_48h;
        var_68h = 0x10a4880;
        var_60h = var_40h;
        uVar3 = runtime_convT(0x10cbee0, &var_68h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
        return;
    }
    var_a8h = *(int64_t *)(auVar7._0_8_ + 8);
    uVar1 = fmt_Fprintf(in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, in_stack_fffffffffffffec0, 
                         in_stack_fffffffffffffec8, in_stack_fffffffffffffed0, in_stack_fffffffffffffed8, 
                         in_stack_fffffffffffffee0);
    var_40h = runtime_makemap_small(uVar1, uVar3);
    puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_40h, 0x116968c /* "code" */, 4);
    *puVar2 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        uVar3 = puVar2[1];
        puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11 = uVar3;
    }
    puVar2[1] = 0x2e64ac0;
    auVar7 = runtime_mapassign_faststr(0x10a4880, var_40h, 0x1168a54 /* "msg" */, 3);
    puVar2 = auVar7._0_8_;
    *puVar2 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar7._8_8_, puVar2[1]);
        *extraout_R11_00 = extraout_RCX;
    }
    puVar2[1] = 0x2e68b30 /* "上传并切换失败" */;
    var_68h = 0x10a4880;
    var_60h = var_40h;
    uVar3 = runtime_convT(0x10cbee0, &var_68h);
    gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
    return;
}

/* CAS-Backend/biz/controller.UploadLoadMapHandler.func1 | VA 0xe82560 | map_controller.go:531
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &um *CAS-Backend/biz/controller.UploadMapRequest */
// WARNING: [rz-ghidra] Detected overlap for variable var_1ach
// WARNING: [rz-ghidra] Detected overlap for variable var_1bfh
// WARNING: [rz-ghidra] Detected overlap for variable var_1beh
// WARNING: [rz-ghidra] Detected overlap for variable var_1bch
// WARNING: [rz-ghidra] Detected overlap for variable var_1b8h
// WARNING: [rz-ghidra] Detected overlap for variable var_1b6h
// WARNING: [rz-ghidra] Detected overlap for variable var_1ceh
// WARNING: [rz-ghidra] Detected overlap for variable var_1cch
// WARNING: [rz-ghidra] Detected overlap for variable var_1c8h
// WARNING: [rz-ghidra] Detected overlap for variable var_1c6h
// WARNING: [rz-ghidra] Detected overlap for variable var_1c2h
// WARNING: [rz-ghidra] Detected overlap for variable var_1b2h

void __stdcall
biz_controller_UploadLoadMapHandler_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h)
{
    int64_t in_RAX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000040;
    int64_t in_stack_00000078;
    int64_t in_stack_000000f0;
    int64_t in_stack_00000190;
    int64_t in_stack_000001a0;
    int64_t in_stack_000001c0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
    }
    pkg_agvcontrol_SendUploadAndLoadMapCommand(in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, in_stack_ffffffffffffffe8, 
                 in_stack_fffffffffffffff0, in_stack_00000040, in_stack_00000078, in_stack_000000f0, in_stack_00000190, 
                 in_stack_000001a0, in_stack_000001c0);
    return;
}

/* CAS-Backend/biz/controller.DelVehMapHandler | VA 0xe825c0 | map_controller.go:561
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &um *CAS-Backend/biz/controller.UploadMapRequest, err error, ~r0.data *uint8, ~r0.itab uintptr, success bool */
// WARNING: [rz-ghidra] Detected overlap for variable var_99h

void __stdcall biz_controller_DelVehMapHandler(int64_t arg_8h, int64_t arg_80h)
{
    int64_t in_RAX;
    undefined8 uVar1;
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
    int64_t in_stack_ffffffffffffff28;
    int64_t in_stack_ffffffffffffff30;
    int64_t in_stack_ffffffffffffff38;
    int64_t in_stack_ffffffffffffff40;
    int64_t in_stack_ffffffffffffff48;
    int64_t in_stack_ffffffffffffff50;
    int64_t in_stack_ffffffffffffff58;
    char var_99h;
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
    
    while (&var_58h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(in_stack_ffffffffffffff28);
    uVar4 = 0;
    iVar5 = *(int64_t *)0xfb77e8;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar4 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar6 = uVar4 & **(uint64_t **)0xfbb2f0;
            if ((*(uint64_t **)0xfbb2f0)[uVar6 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar4 = (*(uint64_t **)0xfbb2f0)[uVar6 * 2 + 2];
                goto code_r0x00e82625;
            }
            uVar4 = uVar4 + 1;
        } while ((*(uint64_t **)0xfbb2f0)[uVar6 * 2 + 1] != 0);
        var_88h = *(int64_t *)0xfb77e8;
        uVar4 = runtime_typeAssert(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff48, 
                             in_stack_ffffffffffffff50);
        iVar5 = var_88h;
    }
code_r0x00e82625:
    auVar7 = (**(code **)(uVar4 + 0x18))(iVar5, *(undefined8 *)(in_RAX + 0x20), 0x10267e0, var_10h);
    var_90h = auVar7._8_8_;
    var_98h = auVar7._0_8_;
    if (var_98h == 0) {
        var_58h = runtime_convTstring(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff50);
        var_60h = 0x1042920;
        fmt_Fprintf(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, 
                     in_stack_ffffffffffffff40, in_stack_ffffffffffffff48, in_stack_ffffffffffffff50, 
                     in_stack_ffffffffffffff58);
        var_99h = '\0';
        var_30h = 0xe82a60;
        var_28h = var_10h;
        var_20h = (int64_t)&var_99h;
        auVar7 = pkg_agvcontrol_DoWithConn(*(undefined8 *)var_10h, *(undefined8 *)(var_10h + 8), 0x4b07, &var_30h);
        uVar3 = *(undefined8 *)0x3512080;
        var_78h = auVar7._8_8_;
        if (var_99h == '\0') {
            var_80h = 0;
            if (auVar7._0_8_ != 0) {
                var_80h = *(int64_t *)(auVar7._0_8_ + 8);
            }
            uVar1 = fmt_Fprintf(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, 
                                 in_stack_ffffffffffffff40, in_stack_ffffffffffffff48, in_stack_ffffffffffffff50, 
                                 in_stack_ffffffffffffff58);
            var_18h = runtime_makemap_small(uVar1, uVar3);
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
            puVar2[1] = 0x2e68b60 /* "删除失败" */;
            var_40h = 0x10a4880;
            var_38h = var_18h;
            uVar3 = runtime_convT(0x10cbee0, &var_40h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
        } else {
            var_70h = 0x1042920;
            var_68h = 0x2e68b50 /* "删除成功" */;
            uVar1 = fmt_Fprintln(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, 
                                 in_stack_ffffffffffffff40, in_stack_ffffffffffffff48);
            var_18h = runtime_makemap_small(uVar1, uVar3);
            puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
            *puVar2 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                uVar3 = puVar2[1];
                puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11_01 = uVar3;
            }
            puVar2[1] = 0x2e67830;
            auVar7 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
            puVar2 = auVar7._0_8_;
            *puVar2 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar7._8_8_, puVar2[1]);
                *extraout_R11_02 = extraout_RCX_00;
            }
            puVar2[1] = 0x2e68b50 /* "删除成功" */;
            var_40h = 0x10a4880;
            var_38h = var_18h;
            uVar3 = runtime_convT(0x10cbee0, &var_40h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
        }
        return;
    }
    var_50h = 0x1042920;
    var_48h = 0x2e687d0 /* "注册解析错误" */;
    fmt_Fprintln(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, 
                 in_stack_ffffffffffffff40, in_stack_ffffffffffffff48);
    gin_gonic_gin___Context__AbortWithError(in_RAX, 400, var_98h, var_90h);
    return;
}

/* CAS-Backend/biz/controller.DelVehMapHandler.func1 | VA 0xe82a60 | map_controller.go:573
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: ok bool, &um *CAS-Backend/biz/controller.UploadMapRequest, &success *bool, e error */
// WARNING: [rz-ghidra] Detected overlap for variable var_bch
// WARNING: [rz-ghidra] Removing arg arg_3ch because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_cch

undefined8 __stdcall
biz_controller_DelVehMapHandler_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h)
{
    undefined *puVar1;
    undefined uVar2;
    int64_t in_RAX;
    int64_t extraout_RDX;
    undefined8 unaff_RBX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000048;
    int64_t in_stack_00000088;
    int64_t in_stack_000000a8;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
        arg3 = extraout_RDX;
    }
    puVar1 = *(undefined **)(arg3 + 0x10);
    uVar2 = pkg_agvcontrol_DelMapRequest(in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, 
                         in_stack_ffffffffffffffe8, in_stack_00000048, in_stack_00000088, in_stack_000000a8);
    *puVar1 = uVar2;
    return unaff_RBX;
}

/* CAS-Backend/biz/controller.QMapHandler | VA 0xe82ae0 | map_controller.go:595
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &ve *CAS-Backend/biz/controller.VehRequest, err error, response *CAS-Backend/pkg/agvcontrol.MapResponse, ~r0.data *uint8, ~r0.itab uintptr */
void __stdcall biz_controller_QMapHandler(int64_t arg_8h, int64_t arg_80h, int64_t arg_c0h)
{
    int64_t in_RAX;
    undefined8 uVar1;
    undefined8 *puVar2;
    undefined8 uVar3;
    uint64_t uVar4;
    undefined8 extraout_RCX;
    int64_t iVar5;
    undefined8 extraout_RSI;
    uint64_t uVar6;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    undefined8 *extraout_R11_03;
    int64_t *extraout_R11_04;
    int64_t unaff_R14;
    undefined auVar7 [16];
    int64_t in_stack_ffffffffffffff28;
    int64_t in_stack_ffffffffffffff30;
    int64_t in_stack_ffffffffffffff38;
    int64_t in_stack_ffffffffffffff40;
    int64_t in_stack_ffffffffffffff48;
    int64_t in_stack_ffffffffffffff50;
    int64_t in_stack_ffffffffffffff58;
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
    
    while (&var_58h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(in_stack_ffffffffffffff28);
    uVar4 = 0;
    iVar5 = *(int64_t *)0xfb77e8;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar4 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar6 = uVar4 & **(uint64_t **)0xfbb310;
            if ((*(uint64_t **)0xfbb310)[uVar6 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar4 = (*(uint64_t **)0xfbb310)[uVar6 * 2 + 2];
                goto code_r0x00e82b45;
            }
            uVar4 = uVar4 + 1;
        } while ((*(uint64_t **)0xfbb310)[uVar6 * 2 + 1] != 0);
        var_88h = *(int64_t *)0xfb77e8;
        uVar4 = runtime_typeAssert(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff48, 
                             in_stack_ffffffffffffff50);
        iVar5 = var_88h;
    }
code_r0x00e82b45:
    auVar7 = (**(code **)(uVar4 + 0x18))(iVar5, *(undefined8 *)(in_RAX + 0x20), 0x10266e0, var_10h);
    if (auVar7._0_8_ == 0) {
        var_58h = runtime_convTstring(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff50);
        var_60h = 0x1042920;
        fmt_Fprintln(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, 
                     in_stack_ffffffffffffff40, in_stack_ffffffffffffff48);
        var_90h = 0;
        var_30h = 0xe83040;
        var_28h = (int64_t)&var_90h;
        auVar7 = pkg_agvcontrol_DoWithConn(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 0x4b04, &var_30h);
        uVar3 = *(undefined8 *)0x3512080;
        var_68h = auVar7._8_8_;
        if (auVar7._0_8_ == 0) {
            var_78h = runtime_convTslice(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff38);
            uVar3 = *(undefined8 *)0x3512080;
            var_80h = 0x1038980;
            uVar1 = fmt_Fprintln(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, 
                                 in_stack_ffffffffffffff40, in_stack_ffffffffffffff48);
            var_18h = runtime_makemap_small(uVar1, uVar3);
            puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
            *puVar2 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                uVar3 = puVar2[1];
                puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11_02 = uVar3;
            }
            puVar2[1] = 0x2e67830;
            puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
            *puVar2 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                uVar3 = puVar2[1];
                puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11_03 = uVar3;
            }
            puVar2[1] = 0x2e68ac0 /* "查询成功" */;
            var_20h = runtime_convTslice(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff38);
            puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1169698 /* "data" */, 4);
            *puVar2 = 0x1038980;
            if (*(int32_t *)0x355db50 != 0) {
                puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
                *extraout_R11_04 = var_20h;
                extraout_R11_04[1] = puVar2[1];
            }
            puVar2[1] = var_20h;
            var_40h = 0x10a4880;
            var_38h = var_18h;
            uVar3 = runtime_convT(0x10cbee0, &var_40h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
        } else {
            var_70h = *(int64_t *)(auVar7._0_8_ + 8);
            uVar1 = fmt_Fprintf(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, 
                                 in_stack_ffffffffffffff40, in_stack_ffffffffffffff48, in_stack_ffffffffffffff50, 
                                 in_stack_ffffffffffffff58);
            var_18h = runtime_makemap_small(uVar1, uVar3);
            puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
            *puVar2 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                uVar3 = puVar2[1];
                puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11 = uVar3;
            }
            puVar2[1] = 0x2e64ac0;
            puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
            *puVar2 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11_00 = extraout_RSI;
            }
            puVar2[1] = 0x2e68ab0 /* "查询失败" */;
            auVar7 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1169698 /* "data" */, 4);
            puVar2 = auVar7._0_8_;
            *puVar2 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar7._8_8_, puVar2[1]);
                *extraout_R11_01 = extraout_RCX;
            }
            puVar2[1] = 0x2e68400;
            var_40h = 0x10a4880;
            var_38h = var_18h;
            uVar3 = runtime_convT(0x10cbee0, &var_40h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
        }
        return;
    }
    var_50h = 0x1042920;
    var_48h = 0x2e687d0 /* "注册解析错误" */;
    fmt_Fprintln(in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, 
                 in_stack_ffffffffffffff40, in_stack_ffffffffffffff48);
    gin_gonic_gin___Context__AbortWithError(in_RAX, 400, auVar7._0_8_, auVar7._8_8_);
    return;
}

/* CAS-Backend/biz/controller.QMapHandler.func1 | VA 0xe83040 | map_controller.go:607
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: res *CAS-Backend/pkg/agvcontrol.MapResponse, &response **CAS-Backend/pkg/agvcontrol.MapResponse, e error */
int64_t __stdcall
biz_controller_QMapHandler_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h,
          int64_t arg_18h)
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
    puVar1 = *(undefined8 **)(arg3 + 8);
    auVar3 = pkg_agvcontrol_SendSltMapRequest();
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

/* CAS-Backend/biz/controller.GetOverviewMapHandler | VA 0xe830e0 | map_controller.go:635
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &doc *map[string]interface {}, raw []uint8, err error, info CAS-Backend/pkg/diapdu.ActiveMapInfo */
void __stdcall biz_controller_GetOverviewMapHandler(int64_t arg_8h, int64_t arg_90h, int64_t arg_98h)
{
    undefined8 in_RAX;
    undefined8 extraout_RAX;
    undefined8 *puVar1;
    undefined8 uVar2;
    int64_t extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 extraout_RCX_01;
    undefined8 extraout_RCX_02;
    undefined8 extraout_RCX_03;
    undefined8 extraout_RCX_04;
    int64_t extraout_RBX;
    undefined8 extraout_RBX_00;
    int64_t extraout_RSI;
    int64_t extraout_RSI_00;
    int64_t extraout_RDI;
    int64_t extraout_RDI_00;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t *extraout_R11_01;
    undefined8 *extraout_R11_02;
    int64_t *extraout_R11_03;
    undefined8 *extraout_R11_04;
    undefined8 *extraout_R11_05;
    int64_t *extraout_R11_06;
    int64_t *extraout_R11_07;
    int64_t *extraout_R11_08;
    undefined8 *extraout_R11_09;
    undefined8 *extraout_R11_10;
    undefined8 *extraout_R11_11;
    int64_t *extraout_R11_12;
    int64_t unaff_R14;
    undefined auVar3 [16];
    undefined auVar4 [16];
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
    
    while (&var_68h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_48h._0_1_ = pkg_diapdu_GetActiveMapInfo();
    var_40h = extraout_RBX;
    var_38h = extraout_RCX;
    var_30h = extraout_RDI;
    var_28h = extraout_RSI;
    if ((char)var_48h == '\0') {
        var_50h = runtime_makemap_small();
        puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_50h, 0x1172d0d /* "success" */, 7);
        *puVar1 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            uVar2 = puVar1[1];
            puVar1 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_09 = uVar2;
        }
        puVar1[1] = 0xf7a720;
        puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_50h, 0x116a765 /* "ready" */, 5);
        *puVar1 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            uVar2 = puVar1[1];
            puVar1 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_10 = uVar2;
        }
        puVar1[1] = 0xf7a720;
        auVar3 = runtime_mapassign_faststr(0x10a4880, var_50h, 0x1172cf1 /* "message" */, 7);
        puVar1 = auVar3._0_8_;
        *puVar1 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier1(puVar1, auVar3._8_8_, puVar1[1]);
            *extraout_R11_11 = extraout_RCX_04;
        }
        puVar1[1] = 0x2e68b70 /* "车辆地图尚未就绪，请确认 diaodu 已连接车辆且本地 smap 文件存在" */;
        var_58h = runtime_convTstring(extraout_RBX, extraout_RCX);
        puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_50h, 0x1172d06 /* "mapName" */, 7);
        *puVar1 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_12 = var_58h;
            extraout_R11_12[1] = puVar1[1];
        }
        puVar1[1] = var_58h;
        var_20h = 0x10a4880;
        var_18h = var_50h;
        uVar2 = runtime_convT(0x10cbee0, &var_20h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
        return;
    }
    pkg_diapdu_ReadActiveMapFile();
    if (extraout_RDI_00 != 0) {
        var_68h = extraout_RSI_00;
        var_50h = runtime_makemap_small();
        puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_50h, 0x1172d0d /* "success" */, 7);
        *puVar1 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            uVar2 = puVar1[1];
            puVar1 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11 = uVar2;
        }
        puVar1[1] = 0xf7a720;
        auVar3 = runtime_mapassign_faststr(0x10a4880, var_50h, 0x116a765 /* "ready" */, 5);
        puVar1 = auVar3._0_8_;
        *puVar1 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier1(puVar1, auVar3._8_8_, puVar1[1]);
            *extraout_R11_00 = extraout_RCX_01;
        }
        puVar1[1] = 0xf7a720;
        (**(code **)(extraout_RDI_00 + 0x18))(var_68h);
        var_58h = runtime_convTstring();
        puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_50h, 0x1172cf1 /* "message" */, 7);
        *puVar1 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_01 = var_58h;
            extraout_R11_01[1] = puVar1[1];
        }
        puVar1[1] = var_58h;
        var_20h = 0x10a4880;
        var_18h = var_50h;
        uVar2 = runtime_convT(0x10cbee0, &var_20h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
        return;
    }
    var_10h = runtime_newobject(0x107d4c0);
    auVar3 = encoding_json_Unmarshal(extraout_RAX, extraout_RBX_00, extraout_RCX_00, 0x1034aa0, var_10h);
    if (auVar3._0_8_ == 0) {
        var_50h = runtime_makemap_small();
        puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_50h, 0x1172d0d /* "success" */, 7);
        *puVar1 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            uVar2 = puVar1[1];
            puVar1 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_04 = uVar2;
        }
        puVar1[1] = 0xf7a728;
        auVar3 = runtime_mapassign_faststr(0x10a4880, var_50h, 0x116a765 /* "ready" */, 5);
        puVar1 = auVar3._0_8_;
        *puVar1 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier1(puVar1, auVar3._8_8_, puVar1[1]);
            *extraout_R11_05 = extraout_RCX_03;
        }
        puVar1[1] = 0xf7a728;
        var_58h = runtime_convTstring(extraout_RBX, extraout_RCX);
        puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_50h, 0x1172d06 /* "mapName" */, 7);
        *puVar1 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_06 = var_58h;
            extraout_R11_06[1] = puVar1[1];
        }
        puVar1[1] = var_58h;
        var_58h = runtime_convTstring(extraout_RDI, extraout_RSI);
        puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_50h, 0x1172d14 /* "mapPath" */, 7);
        *puVar1 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_07 = var_58h;
            extraout_R11_07[1] = puVar1[1];
        }
        puVar1[1] = var_58h;
        var_60h = *(int64_t *)var_10h;
        puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_50h, 0x1169698 /* "data" */, 4);
        *puVar1 = 0x107d4c0;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_08 = var_60h;
            extraout_R11_08[1] = puVar1[1];
        }
        puVar1[1] = var_60h;
        var_20h = 0x10a4880;
        var_18h = var_50h;
        uVar2 = runtime_convT(0x10cbee0, &var_20h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
        return;
    }
    var_50h = runtime_makemap_small();
    auVar4 = runtime_mapassign_faststr(0x10a4880, var_50h, 0x1172d0d /* "success" */, 7);
    puVar1 = auVar4._0_8_;
    *puVar1 = 0x1042d20;
    if (*(int32_t *)0x355db50 != 0) {
        puVar1 = (undefined8 *)runtime_gcWriteBarrier1(puVar1, auVar4._8_8_, puVar1[1]);
        *extraout_R11_02 = extraout_RCX_02;
    }
    puVar1[1] = 0xf7a720;
    auVar3 = (**(code **)(auVar3._0_8_ + 0x18))(auVar3._8_8_);
    runtime_concatstring2(0, 0x1186f5a, 0x1a, auVar3._0_8_, auVar3._8_8_);
    var_58h = runtime_convTstring();
    puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_50h, 0x1172cf1 /* "message" */, 7);
    *puVar1 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar1 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_03 = var_58h;
        extraout_R11_03[1] = puVar1[1];
    }
    puVar1[1] = var_58h;
    var_20h = 0x10a4880;
    var_18h = var_50h;
    uVar2 = runtime_convT(0x10cbee0, &var_20h);
    gin_gonic_gin___Context__Render(in_RAX, 500, 0x2e6f230, uVar2);
    return;
}
