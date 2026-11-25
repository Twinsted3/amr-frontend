/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/biz/controller.NewVehHandler | VA 0xe8f0a0 | vehicle_controller.go:24
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &ve *CAS-Backend/biz/controller.VehRequest, success bool, v CAS-Backend/biz/dao.Vehicle, ~r0.data *uint8, ~r0.itab uintptr, err error */
// WARNING: Variable defined which should be unmapped: var_148h
// WARNING: Variable defined which should be unmapped: var_8h

void __stdcall biz_controller_NewVehHandler(int64_t arg_8h, int64_t arg_118h)
{
    char cVar1;
    int64_t in_RAX;
    undefined8 uVar2;
    undefined8 *puVar3;
    undefined8 uVar4;
    uint64_t uVar5;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    int64_t iVar6;
    uint64_t uVar7;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    int64_t unaff_R14;
    undefined auVar8 [16];
    int64_t var_160h;
    int64_t in_stack_fffffffffffffeb0;
    int64_t var_148h;
    int64_t in_stack_fffffffffffffec0;
    int64_t in_stack_fffffffffffffec8;
    int64_t in_stack_fffffffffffffed0;
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
    
    while (&var_d0h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe8f571;
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(in_stack_fffffffffffffeb0);
    uVar5 = 0;
    iVar6 = *(int64_t *)0xfb77e8;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar5 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar7 = uVar5 & **(uint64_t **)0xfbb4f0;
            if ((*(uint64_t **)0xfbb4f0)[uVar7 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar5 = (*(uint64_t **)0xfbb4f0)[uVar7 * 2 + 2];
                goto code_r0x00e8f105;
            }
            uVar5 = uVar5 + 1;
        } while ((*(uint64_t **)0xfbb4f0)[uVar7 * 2 + 1] != 0);
        var_50h = *(int64_t *)0xfb77e8;
        uVar5 = runtime_typeAssert(0xfbb4f0);
        iVar6 = var_50h;
    }
code_r0x00e8f105:
    auVar8 = (**(code **)(uVar5 + 0x18))(iVar6, *(undefined8 *)(in_RAX + 0x20), 0x10266e0, var_10h);
    var_d0h = auVar8._8_8_;
    if (auVar8._0_8_ == 0) {
        var_38h = runtime_convT(in_stack_fffffffffffffeb0, var_148h);
        uVar4 = *(undefined8 *)0x3512080;
        var_40h = 0x111e640;
        uVar2 = fmt_Fprintln(in_stack_fffffffffffffeb0, var_148h, in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, 
                             in_stack_fffffffffffffed0);
        runtime_duffzero_offset_326(uVar2, uVar4);
        iVar6 = *(int64_t *)var_10h;
        var_c0h = *(int64_t *)(var_10h + 8);
        var_b8h = *(int64_t *)(var_10h + 0x10);
        var_b0h = *(int64_t *)(var_10h + 0x18);
        var_a8h = *(int64_t *)(var_10h + 0x20);
        var_a0h = *(int64_t *)(var_10h + 0x28);
        var_98h = *(int64_t *)(var_10h + 0x30);
        var_90h = *(int64_t *)(var_10h + 0x38);
        var_88h = *(int64_t *)(var_10h + 0x40);
        var_80h = *(int64_t *)(var_10h + 0x48);
        var_78h = *(int64_t *)(var_10h + 0x50);
        var_70h = *(int64_t *)(var_10h + 0x58);
        var_68h = *(int64_t *)(var_10h + 0x60);
        var_60h = *(int64_t *)(var_10h + 0x68);
        var_58h = *(int64_t *)(var_10h + 0x70);
        var_c8h = iVar6;
        runtime_duffcopy_offset_798();
        cVar1 = biz_service_AddVeh();
        if (cVar1 == '\0') {
            var_48h = runtime_makemap_small();
            puVar3 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_48h, 0x116968c /* "code" */, 4);
            *puVar3 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                uVar4 = puVar3[1];
                puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11_01 = uVar4;
            }
            puVar3[1] = 0x2e64ac0;
            auVar8 = runtime_mapassign_faststr(0x10a4880, var_48h, 0x1168a54 /* "msg" */, 3);
            puVar3 = auVar8._0_8_;
            *puVar3 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, auVar8._8_8_, puVar3[1]);
                *extraout_R11_02 = extraout_RCX_00;
            }
            puVar3[1] = 0x2e68f80 /* "车辆添加失败" */;
            var_20h = 0x10a4880;
            var_18h = var_48h;
            uVar4 = runtime_convT(iVar6, var_148h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar4);
        } else {
            var_48h = runtime_makemap_small();
            puVar3 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_48h, 0x116968c /* "code" */, 4);
            *puVar3 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                uVar4 = puVar3[1];
                puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11 = uVar4;
            }
            puVar3[1] = 0x2e67830;
            auVar8 = runtime_mapassign_faststr(0x10a4880, var_48h, 0x1168a54 /* "msg" */, 3);
            puVar3 = auVar8._0_8_;
            *puVar3 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, auVar8._8_8_, puVar3[1]);
                *extraout_R11_00 = extraout_RCX;
            }
            puVar3[1] = 0x2e68f70 /* "车辆添加成功" */;
            var_20h = 0x10a4880;
            var_18h = var_48h;
            uVar4 = runtime_convT(iVar6, var_148h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar4);
        }
        return;
    }
    var_30h = 0x1042920;
    var_28h = 0x2e687d0 /* "注册解析错误" */;
    fmt_Fprintln(in_stack_fffffffffffffeb0, var_148h, in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, 
                 in_stack_fffffffffffffed0);
    gin_gonic_gin___Context__AbortWithError(in_RAX, 400, auVar8._0_8_, var_d0h);
    return;
}

/* CAS-Backend/biz/controller.GetAllVehHandler | VA 0xe8f580 | vehicle_controller.go:62
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: success bool, num int64, page1 int, size1 int, port1 int, page string, size string, search1 string, ip string, port string, vs []CAS-Backend/biz/dao.Vehicle, ves []CAS-Backend/biz/controller.VehRequest */
// WARNING: Variable defined which should be unmapped: var_170h
// WARNING: Variable defined which should be unmapped: var_8h

void __stdcall biz_controller_GetAllVehHandler(int64_t arg_8h)
{
    uint64_t uVar1;
    char cVar2;
    undefined8 in_RAX;
    undefined8 uVar3;
    undefined8 uVar4;
    uint64_t extraout_RAX;
    int64_t iVar5;
    uint64_t uVar6;
    undefined8 *puVar7;
    int64_t *extraout_RCX;
    undefined8 extraout_RCX_00;
    int64_t iVar8;
    int64_t extraout_RCX_01;
    int64_t *piVar9;
    int64_t extraout_RCX_02;
    undefined8 extraout_RCX_03;
    int64_t extraout_RBX;
    int64_t iVar10;
    int64_t extraout_RBX_00;
    undefined8 extraout_RSI;
    int64_t extraout_RDI;
    int64_t iVar11;
    int64_t extraout_R9;
    int64_t extraout_R9_00;
    int64_t extraout_R10;
    int64_t iVar12;
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
    undefined auVar13 [16];
    undefined auVar14 [16];
    undefined auVar15 [16];
    int64_t var_210h;
    int64_t in_stack_fffffffffffffe00;
    int64_t in_stack_fffffffffffffe08;
    int64_t in_stack_fffffffffffffe10;
    int64_t in_stack_fffffffffffffe18;
    int64_t in_stack_fffffffffffffe20;
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
    
    while (&var_180h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe8fda6;
        runtime_morestack_noctxt_abi0();
    }
    auVar13 = gin_gonic_gin___Context__DefaultQuery();
    var_178h = auVar13._8_8_;
    var_38h = auVar13._0_8_;
    auVar13 = gin_gonic_gin___Context__DefaultQuery(in_RAX, 0x1169694 /* "size" */, 4, 0x116859e /* "20" */, 2);
    var_d0h = auVar13._0_8_;
    auVar14 = gin_gonic_gin___Context__Query(in_RAX, 0x116f489, 6);
    var_c8h = auVar14._0_8_;
    auVar15 = gin_gonic_gin___Context__Query(in_RAX, 0x1168514, 2);
    var_168h = auVar15._8_8_;
    var_30h = auVar15._0_8_;
    auVar15 = gin_gonic_gin___Context__Query(in_RAX, 0x1169530, 4);
    var_40h = auVar15._0_8_;
    var_180h = strconv_Atoi(var_38h, var_178h);
    uVar3 = strconv_Atoi(var_d0h, auVar13._8_8_);
    uVar4 = strconv_Atoi(var_40h, auVar15._8_8_);
    cVar2 = biz_service_SlAllVeh(var_180h, uVar3, var_c8h, auVar14._8_8_, var_30h, var_168h, uVar4);
    if (cVar2 == '\0') {
        var_20h = runtime_makemap_small();
        puVar7 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_20h, 0x116f48f /* "sucess" */, 6);
        *puVar7 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            uVar3 = puVar7[1];
            puVar7 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11 = uVar3;
        }
        puVar7[1] = 0xf7a720;
        puVar7 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_20h, 0x1172cf1 /* "message" */, 7);
        *puVar7 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar7 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_00 = extraout_RSI;
        }
        puVar7[1] = 0x2e68fa0 /* "车辆获取失败" */;
        auVar13 = runtime_mapassign_faststr(0x10a4880, var_20h, 0x116a5c1 /* "error" */, 5);
        puVar7 = auVar13._0_8_;
        *puVar7 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar7 = (undefined8 *)runtime_gcWriteBarrier1(puVar7, auVar13._8_8_, puVar7[1]);
            *extraout_R11_01 = extraout_RCX_00;
        }
        puVar7[1] = 0x2e68a30 /* "内部错误" */;
        var_18h = 0x10a4880;
        var_10h = var_20h;
        uVar3 = runtime_convT(in_stack_fffffffffffffe00, in_stack_fffffffffffffe08);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
    } else {
        iVar5 = 0;
        piVar9 = extraout_RCX;
        iVar8 = extraout_RDI;
        var_170h = extraout_RBX;
        while (0 < iVar8) {
            var_148h = *piVar9;
            var_158h = iVar8;
            var_28h = (int64_t)piVar9;
            runtime_duffcopy_offset_798();
            runtime_duffzero_offset_326();
            var_b8h = var_148h;
            var_b0h = var_140h;
            var_a8h = var_138h;
            var_a0h = var_130h;
            var_98h = var_128h;
            var_90h = var_120h;
            var_88h = var_118h;
            var_80h = var_110h;
            var_78h = var_108h;
            var_70h = var_100h;
            var_68h = var_f8h;
            var_60h = var_f0h;
            var_58h = var_e8h;
            var_50h = var_e0h;
            var_48h = var_d8h;
            uVar1 = extraout_R10 + 1;
            uVar6 = extraout_RAX;
            iVar8 = extraout_RCX_02;
            iVar10 = extraout_RBX_00;
            iVar11 = extraout_R9_00;
            if (extraout_RAX < uVar1) {
                iVar5 = runtime_growslice(in_stack_fffffffffffffe00, in_stack_fffffffffffffe08, in_stack_fffffffffffffe10, 
                                     in_stack_fffffffffffffe18, in_stack_fffffffffffffe20, var_170h);
                iVar8 = var_28h;
                iVar10 = var_170h;
                iVar11 = var_158h;
            }
            iVar12 = uVar1 * 0x78;
            if (*(int32_t *)0x355db50 != 0) {
                var_160h = iVar12;
                var_c0h = iVar5;
                runtime_wbMove(0x111e640, iVar12 + iVar5 + -0x78, &var_b8h);
                iVar8 = var_28h;
                iVar5 = var_c0h;
                iVar10 = var_170h;
                iVar11 = var_158h;
                iVar12 = var_160h;
            }
            *(int64_t *)(iVar12 + -0x78 + iVar5) = var_b8h;
            runtime_duffcopy_offset_798(uVar6, iVar10, iVar8, iVar12 + iVar5 + -0x70, &var_b0h, uVar1, iVar11);
            piVar9 = (int64_t *)(extraout_RCX_01 + 0x78);
            iVar8 = extraout_R9 + -1;
        }
        var_150h = iVar5;
        var_20h = runtime_makemap_small();
        puVar7 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_20h, 0x116f48f /* "sucess" */, 6);
        *puVar7 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            uVar3 = puVar7[1];
            puVar7 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_02 = uVar3;
        }
        puVar7[1] = 0xf7a728;
        auVar13 = runtime_mapassign_faststr(0x10a4880, var_20h, 0x1172cf1 /* "message" */, 7);
        puVar7 = auVar13._0_8_;
        *puVar7 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar7 = (undefined8 *)runtime_gcWriteBarrier1(puVar7, auVar13._8_8_, puVar7[1]);
            *extraout_R11_03 = extraout_RCX_03;
        }
        puVar7[1] = 0x2e68f90 /* "车辆获取成功" */;
        var_28h = runtime_convT64(in_stack_fffffffffffffe00);
        puVar7 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_20h, 0x116a760 /* "total" */, 5);
        *puVar7 = 0x1042ae0;
        if (*(int32_t *)0x355db50 != 0) {
            puVar7 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_04 = var_28h;
            extraout_R11_04[1] = puVar7[1];
        }
        puVar7[1] = var_28h;
        var_28h = runtime_convT64(in_stack_fffffffffffffe00);
        puVar7 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_20h, 0x1169690 /* "page" */, 4);
        *puVar7 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            puVar7 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_05 = var_28h;
            extraout_R11_05[1] = puVar7[1];
        }
        puVar7[1] = var_28h;
        var_28h = runtime_convT64(in_stack_fffffffffffffe00);
        puVar7 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_20h, 0x1169694 /* "size" */, 4);
        *puVar7 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            puVar7 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_06 = var_28h;
            extraout_R11_06[1] = puVar7[1];
        }
        puVar7[1] = var_28h;
        var_28h = runtime_convTslice(in_stack_fffffffffffffe00, in_stack_fffffffffffffe08, in_stack_fffffffffffffe10);
        puVar7 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_20h, 0x1169698 /* "data" */, 4);
        *puVar7 = 0x1037940;
        if (*(int32_t *)0x355db50 != 0) {
            puVar7 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_07 = var_28h;
            extraout_R11_07[1] = puVar7[1];
        }
        puVar7[1] = var_28h;
        var_18h = 0x10a4880;
        var_10h = var_20h;
        uVar3 = runtime_convT(in_stack_fffffffffffffe00, in_stack_fffffffffffffe08);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
    }
    return;
}

/* CAS-Backend/biz/controller.DeleteVehHandler | VA 0xe8fdc0 | vehicle_controller.go:117
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: sucess bool, id string */
// WARNING: Variable defined which should be unmapped: var_40h

void __stdcall biz_controller_DeleteVehHandler(int64_t arg_8h)
{
    char cVar1;
    undefined8 in_RAX;
    undefined8 uVar2;
    undefined8 *puVar3;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t unaff_R14;
    undefined auVar4 [16];
    int64_t in_stack_ffffffffffffff98;
    int64_t in_stack_ffffffffffffffa0;
    int64_t in_stack_ffffffffffffffa8;
    int64_t in_stack_ffffffffffffffb0;
    int64_t in_stack_ffffffffffffffb8;
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
    auVar4 = gin_gonic_gin___Context__Query();
    runtime_convTstring(in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0, auVar4._8_8_);
    fmt_Fprintln(in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0, in_stack_ffffffffffffffa8, 
                 in_stack_ffffffffffffffb0, in_stack_ffffffffffffffb8);
    cVar1 = biz_service_DelVeh(auVar4._0_8_, auVar4._8_8_);
    if (cVar1 == '\0') {
        uVar2 = runtime_makemap_small();
        auVar4 = runtime_mapassign_faststr(0x10a4880, uVar2, 0x116968c /* "code" */, 4);
        puVar3 = auVar4._0_8_;
        *puVar3 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, auVar4._8_8_, puVar3[1]);
            *extraout_R11_00 = extraout_RCX_00;
        }
        puVar3[1] = 0x2e64ac0;
        uVar2 = runtime_convT(in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
    } else {
        uVar2 = runtime_makemap_small();
        auVar4 = runtime_mapassign_faststr(0x10a4880, uVar2, 0x116968c /* "code" */, 4);
        puVar3 = auVar4._0_8_;
        *puVar3 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, auVar4._8_8_, puVar3[1]);
            *extraout_R11 = extraout_RCX;
        }
        puVar3[1] = 0x2e67830;
        uVar2 = runtime_convT(in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
    }
    return;
}

/* CAS-Backend/biz/controller.UpdateVehHandler | VA 0xe8ffa0 | vehicle_controller.go:139
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &v *CAS-Backend/biz/controller.VehRequest, success bool, ve CAS-Backend/biz/dao.Vehicle, ~r0.data *uint8, ~r0.itab uintptr, err error */
// WARNING: Variable defined which should be unmapped: var_148h
// WARNING: Variable defined which should be unmapped: var_8h

void __stdcall biz_controller_UpdateVehHandler(int64_t arg_8h, int64_t arg_118h)
{
    char cVar1;
    int64_t in_RAX;
    undefined8 uVar2;
    undefined8 *puVar3;
    undefined8 uVar4;
    uint64_t uVar5;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    int64_t iVar6;
    uint64_t uVar7;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    int64_t unaff_R14;
    undefined auVar8 [16];
    int64_t var_160h;
    int64_t in_stack_fffffffffffffeb0;
    int64_t var_148h;
    int64_t in_stack_fffffffffffffec0;
    int64_t in_stack_fffffffffffffec8;
    int64_t in_stack_fffffffffffffed0;
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
    
    while (&var_d0h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe90471;
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(in_stack_fffffffffffffeb0);
    uVar5 = 0;
    iVar6 = *(int64_t *)0xfb77e8;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar5 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar7 = uVar5 & **(uint64_t **)0xfbb510;
            if ((*(uint64_t **)0xfbb510)[uVar7 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar5 = (*(uint64_t **)0xfbb510)[uVar7 * 2 + 2];
                goto code_r0x00e90005;
            }
            uVar5 = uVar5 + 1;
        } while ((*(uint64_t **)0xfbb510)[uVar7 * 2 + 1] != 0);
        var_50h = *(int64_t *)0xfb77e8;
        uVar5 = runtime_typeAssert(0xfbb510);
        iVar6 = var_50h;
    }
code_r0x00e90005:
    auVar8 = (**(code **)(uVar5 + 0x18))(iVar6, *(undefined8 *)(in_RAX + 0x20), 0x10266e0, var_10h);
    var_d0h = auVar8._8_8_;
    if (auVar8._0_8_ == 0) {
        var_38h = runtime_convT(in_stack_fffffffffffffeb0, var_148h);
        uVar4 = *(undefined8 *)0x3512080;
        var_40h = 0x111e640;
        uVar2 = fmt_Fprintln(in_stack_fffffffffffffeb0, var_148h, in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, 
                             in_stack_fffffffffffffed0);
        runtime_duffzero_offset_326(uVar2, uVar4);
        iVar6 = *(int64_t *)var_10h;
        var_c0h = *(int64_t *)(var_10h + 8);
        var_b8h = *(int64_t *)(var_10h + 0x10);
        var_b0h = *(int64_t *)(var_10h + 0x18);
        var_a0h = *(int64_t *)(var_10h + 0x28);
        var_98h = *(int64_t *)(var_10h + 0x30);
        var_90h = *(int64_t *)(var_10h + 0x38);
        var_88h = *(int64_t *)(var_10h + 0x40);
        var_80h = *(int64_t *)(var_10h + 0x48);
        var_78h = *(int64_t *)(var_10h + 0x50);
        var_70h = *(int64_t *)(var_10h + 0x58);
        var_68h = *(int64_t *)(var_10h + 0x60);
        var_60h = *(int64_t *)(var_10h + 0x68);
        var_58h = *(int64_t *)(var_10h + 0x70);
        var_a8h = *(int64_t *)(var_10h + 0x20);
        var_c8h = iVar6;
        runtime_duffcopy_offset_798();
        cVar1 = biz_service_UpdateVeh();
        if (cVar1 == '\0') {
            var_48h = runtime_makemap_small();
            puVar3 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_48h, 0x116968c /* "code" */, 4);
            *puVar3 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                uVar4 = puVar3[1];
                puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11_01 = uVar4;
            }
            puVar3[1] = 0x2e64ac0;
            auVar8 = runtime_mapassign_faststr(0x10a4880, var_48h, 0x1168a54 /* "msg" */, 3);
            puVar3 = auVar8._0_8_;
            *puVar3 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, auVar8._8_8_, puVar3[1]);
                *extraout_R11_02 = extraout_RCX_00;
            }
            puVar3[1] = 0x2e68fc0 /* "车辆更新失败" */;
            var_20h = 0x10a4880;
            var_18h = var_48h;
            uVar4 = runtime_convT(iVar6, var_148h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar4);
        } else {
            var_48h = runtime_makemap_small();
            puVar3 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_48h, 0x116968c /* "code" */, 4);
            *puVar3 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                uVar4 = puVar3[1];
                puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11 = uVar4;
            }
            puVar3[1] = 0x2e67830;
            auVar8 = runtime_mapassign_faststr(0x10a4880, var_48h, 0x1168a54 /* "msg" */, 3);
            puVar3 = auVar8._0_8_;
            *puVar3 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, auVar8._8_8_, puVar3[1]);
                *extraout_R11_00 = extraout_RCX;
            }
            puVar3[1] = 0x2e68fb0 /* "车辆更新成功" */;
            var_20h = 0x10a4880;
            var_18h = var_48h;
            uVar4 = runtime_convT(iVar6, var_148h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar4);
        }
        return;
    }
    var_30h = 0x1042920;
    var_28h = 0x2e687d0 /* "注册解析错误" */;
    fmt_Fprintln(in_stack_fffffffffffffeb0, var_148h, in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, 
                 in_stack_fffffffffffffed0);
    gin_gonic_gin___Context__AbortWithError(in_RAX, 400, auVar8._0_8_, var_d0h);
    return;
}
