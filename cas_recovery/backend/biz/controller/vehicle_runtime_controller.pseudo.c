/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/biz/controller.VehicleRuntimePushHandler | VA 0xe90480 | vehicle_runtime_controller.go:16
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &push *CAS-Backend/pkg/diapdu.VehicleRuntimePush, body []uint8, err error, canonical string */
// WARNING: Variable defined which should be unmapped: var_70h
// WARNING: Variable defined which should be unmapped: var_80h

void __stdcall biz_controller_VehicleRuntimePushHandler(int64_t arg_8h, int64_t arg_80h)
{
    int64_t in_RAX;
    undefined8 *puVar1;
    undefined8 uVar2;
    int64_t iVar3;
    uint64_t uVar4;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 extraout_RCX_01;
    undefined8 extraout_RCX_02;
    uint64_t uVar5;
    undefined8 extraout_RBX;
    undefined8 extraout_RSI;
    int64_t extraout_RDI;
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
    int64_t unaff_R14;
    undefined auVar6 [16];
    int64_t in_stack_ffffffffffffff58;
    int64_t in_stack_ffffffffffffff60;
    int64_t in_stack_ffffffffffffff68;
    int64_t in_stack_ffffffffffffff70;
    int64_t in_stack_ffffffffffffff78;
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
    
    while (&var_28h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    iVar3 = *(int64_t *)(*(int64_t *)(in_RAX + 0x20) + 0x40);
    uVar2 = *(undefined8 *)(*(int64_t *)(in_RAX + 0x20) + 0x48);
    uVar4 = 0;
    if (iVar3 != 0) {
        uVar4 = (uint64_t)*(uint32_t *)(iVar3 + 0x10);
        do {
            uVar5 = uVar4 & **(uint64_t **)0xfbb530;
            if ((*(uint64_t **)0xfbb530)[uVar5 * 2 + 1] == *(uint64_t *)(iVar3 + 8)) {
                uVar4 = (*(uint64_t **)0xfbb530)[uVar5 * 2 + 2];
                goto code_r0x00e904c9;
            }
            uVar4 = uVar4 + 1;
        } while ((*(uint64_t **)0xfbb530)[uVar5 * 2 + 1] != 0);
        uVar4 = runtime_typeAssert(0xfbb530, *(uint64_t *)(iVar3 + 8));
    }
code_r0x00e904c9:
    io_ReadAll(uVar4, uVar2);
    if (extraout_RDI != 0) {
        var_28h = runtime_makemap_small();
        auVar6 = runtime_mapassign_faststr(0x10a4880, var_28h, 0x1172d0d /* "success" */, 7);
        puVar1 = auVar6._0_8_;
        *puVar1 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier1(puVar1, auVar6._8_8_, puVar1[1]);
            *extraout_R11 = extraout_RCX;
        }
        puVar1[1] = 0xf7a720;
        (**(code **)(extraout_RDI + 0x18))(extraout_RSI);
        uVar2 = runtime_convTstring(in_stack_ffffffffffffff58, in_stack_ffffffffffffff60, var_80h);
        puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_28h, 0x1172cf1 /* "message" */, 7);
        *puVar1 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_00 = uVar2;
            extraout_R11_00[1] = puVar1[1];
        }
        puVar1[1] = uVar2;
        var_20h = 0x10a4880;
        var_18h = var_28h;
        uVar2 = runtime_convT(in_stack_ffffffffffffff58, in_stack_ffffffffffffff60);
        gin_gonic_gin___Context__Render(in_RAX, 400, 0x2e6f230, uVar2);
        return;
    }
    var_10h = runtime_newobject(in_stack_ffffffffffffff58);
    iVar3 = encoding_json_Unmarshal(in_stack_ffffffffffffff58, in_stack_ffffffffffffff60, in_stack_ffffffffffffff68, 
                         in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, var_70h);
    if (iVar3 != 0) {
        var_28h = runtime_makemap_small();
        auVar6 = runtime_mapassign_faststr(0x10a4880, var_28h, 0x1172d0d /* "success" */, 7);
        puVar1 = auVar6._0_8_;
        *puVar1 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier1(puVar1, auVar6._8_8_, puVar1[1]);
            *extraout_R11_07 = extraout_RCX_02;
        }
        puVar1[1] = 0xf7a720;
        (**(code **)(iVar3 + 0x18))(extraout_RBX);
        uVar2 = runtime_convTstring(in_stack_ffffffffffffff58, in_stack_ffffffffffffff60, iVar3);
        puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_28h, 0x1172cf1 /* "message" */, 7);
        *puVar1 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_08 = uVar2;
            extraout_R11_08[1] = puVar1[1];
        }
        puVar1[1] = uVar2;
        var_20h = 0x10a4880;
        var_18h = var_28h;
        uVar2 = runtime_convT(in_stack_ffffffffffffff58, in_stack_ffffffffffffff60);
        gin_gonic_gin___Context__Render(in_RAX, 400, 0x2e6f230, uVar2);
        return;
    }
    if (*(int64_t *)(var_10h + 8) != 0) {
        pkg_diapdu_HandleVehicleRuntimePush();
        var_28h = runtime_makemap_small();
        puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_28h, 0x1172d0d /* "success" */, 7);
        *puVar1 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            uVar2 = puVar1[1];
            puVar1 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_03 = uVar2;
        }
        puVar1[1] = 0xf7a728;
        auVar6 = runtime_mapassign_faststr(0x10a4880, var_28h, 0x1174363 /* "accepted" */, 8);
        puVar1 = auVar6._0_8_;
        *puVar1 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier1(puVar1, auVar6._8_8_, puVar1[1]);
            *extraout_R11_04 = extraout_RCX_01;
        }
        puVar1[1] = 0xf7a728;
        uVar2 = runtime_convTstring(in_stack_ffffffffffffff58, in_stack_ffffffffffffff60, var_80h);
        puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_28h, 0x1176360 /* "vehicle_id" */, 10);
        *puVar1 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_05 = uVar2;
            extraout_R11_05[1] = puVar1[1];
        }
        puVar1[1] = uVar2;
        uVar2 = runtime_convTstring(in_stack_ffffffffffffff58, in_stack_ffffffffffffff60, var_80h);
        puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_28h, 0x1177ff6 /* "canonical_id" */, 0xc);
        *puVar1 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_06 = uVar2;
            extraout_R11_06[1] = puVar1[1];
        }
        puVar1[1] = uVar2;
        var_20h = 0x10a4880;
        var_18h = var_28h;
        uVar2 = runtime_convT(in_stack_ffffffffffffff58, in_stack_ffffffffffffff60);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
        return;
    }
    var_28h = runtime_makemap_small();
    puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_28h, 0x1172d0d /* "success" */, 7);
    *puVar1 = 0x1042d20;
    if (*(int32_t *)0x355db50 != 0) {
        uVar2 = puVar1[1];
        puVar1 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11_01 = uVar2;
    }
    puVar1[1] = 0xf7a720;
    auVar6 = runtime_mapassign_faststr(0x10a4880, var_28h, 0x1172cf1 /* "message" */, 7);
    puVar1 = auVar6._0_8_;
    *puVar1 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar1 = (undefined8 *)runtime_gcWriteBarrier1(puVar1, auVar6._8_8_, puVar1[1]);
        *extraout_R11_02 = extraout_RCX_00;
    }
    puVar1[1] = 0x2e68fd0 /* "vehicle_id 必填" */;
    var_20h = 0x10a4880;
    var_18h = var_28h;
    uVar2 = runtime_convT(in_stack_ffffffffffffff58, in_stack_ffffffffffffff60);
    gin_gonic_gin___Context__Render(in_RAX, 400, 0x2e6f230, uVar2);
    return;
}
