/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/biz/controller.MonitorTrafficPushHandler | VA 0xe838a0 | monitor_traffic_controller.go:19
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &req *CAS-Backend/biz/controller.MonitorTrafficPushRequest, vid string, canonical string, pkg CAS-Backend/pkg/diapdu.MonitorTaskStatusPackage, ~r0.data *uint8, ~r0.itab uintptr, err error */
// WARNING: Variable defined which should be unmapped: var_8h

void __stdcall biz_controller_MonitorTrafficPushHandler(int64_t arg_8h, int64_t arg_b8h)
{
    int64_t in_RAX;
    undefined8 *puVar1;
    undefined8 uVar2;
    uint64_t uVar3;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 extraout_RCX_01;
    int64_t iVar4;
    uint64_t uVar5;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    int64_t *extraout_R11_02;
    undefined8 *extraout_R11_03;
    int64_t *extraout_R11_04;
    int64_t unaff_R14;
    undefined auVar6 [16];
    undefined auVar7 [16];
    int64_t var_f0h;
    int64_t var_c0h;
    int64_t var_b8h;
    int64_t var_b0h;
    int64_t var_a8h;
    int64_t var_a0h;
    undefined auStack_60 [32];
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (auStack_60 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe83d71;
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(0x10f73e0);
    uVar3 = 0;
    iVar4 = *(int64_t *)0xfb77e8;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar3 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar5 = uVar3 & **(uint64_t **)0xfbb330;
            if ((*(uint64_t **)0xfbb330)[uVar5 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar3 = (*(uint64_t **)0xfbb330)[uVar5 * 2 + 2];
                goto code_r0x00e83905;
            }
            uVar3 = uVar3 + 1;
        } while ((*(uint64_t **)0xfbb330)[uVar5 * 2 + 1] != 0);
        var_38h = *(int64_t *)0xfb77e8;
        uVar3 = runtime_typeAssert(0xfbb330);
        iVar4 = var_38h;
    }
code_r0x00e83905:
    auVar6 = (**(code **)(uVar3 + 0x18))(iVar4, *(undefined8 *)(in_RAX + 0x20), 0x10267a0, var_10h);
    if (auVar6._0_8_ != 0) {
        var_28h = runtime_makemap_small();
        auVar7 = runtime_mapassign_faststr(0x10a4880, var_28h, 0x1172d0d /* "success" */, 7);
        puVar1 = auVar7._0_8_;
        *puVar1 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier1(puVar1, auVar7._8_8_, puVar1[1]);
            *extraout_R11_03 = extraout_RCX_01;
        }
        puVar1[1] = 0xf7a720;
        (**(code **)(auVar6._0_8_ + 0x18))(auVar6._8_8_);
        var_30h = runtime_convTstring();
        puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_28h, 0x1172cf1 /* "message" */, 7);
        *puVar1 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_04 = var_30h;
            extraout_R11_04[1] = puVar1[1];
        }
        puVar1[1] = var_30h;
        var_20h = 0x10a4880;
        var_18h = var_28h;
        uVar2 = runtime_convT(0x10cbee0, &var_20h);
        gin_gonic_gin___Context__Render(in_RAX, 400, 0x2e6f230, uVar2);
        return;
    }
    iVar4 = *(int64_t *)(var_10h + 8);
    uVar2 = *(undefined8 *)var_10h;
    if ((iVar4 == 0) && (*(int64_t *)(var_10h + 0x18) != 0)) {
        uVar2 = *(undefined8 *)(var_10h + 0x10);
        iVar4 = *(int64_t *)(var_10h + 0x18);
    }
    if (iVar4 != 0) {
        auVar6 = pkg_diapdu_ResolveCanonicalVehicleID(uVar2, iVar4);
        var_40h = auVar6._0_8_;
        var_a8h = *(int64_t *)(var_10h + 0x28);
        auVar7 = runtime_duffcopy_offset_812();
        pkg_diapdu_HandleMonitorPush(auVar7._0_8_, auVar7._8_8_, &var_a8h);
        var_28h = runtime_makemap_small();
        auVar7 = runtime_mapassign_faststr(0x10a4880, var_28h, 0x1172d0d /* "success" */, 7);
        puVar1 = auVar7._0_8_;
        *puVar1 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier1(puVar1, auVar7._8_8_, puVar1[1]);
            *extraout_R11_01 = extraout_RCX_00;
        }
        puVar1[1] = 0xf7a728;
        var_30h = runtime_convTstring(var_40h, auVar6._8_8_);
        puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_28h, 0x1177ff6 /* "canonical_id" */, 0xc);
        *puVar1 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_02 = var_30h;
            extraout_R11_02[1] = puVar1[1];
        }
        puVar1[1] = var_30h;
        var_20h = 0x10a4880;
        var_18h = var_28h;
        uVar2 = runtime_convT(0x10cbee0, &var_20h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
        return;
    }
    var_28h = runtime_makemap_small();
    puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_28h, 0x1172d0d /* "success" */, 7);
    *puVar1 = 0x1042d20;
    if (*(int32_t *)0x355db50 != 0) {
        uVar2 = puVar1[1];
        puVar1 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11 = uVar2;
    }
    puVar1[1] = 0xf7a720;
    auVar6 = runtime_mapassign_faststr(0x10a4880, var_28h, 0x1172cf1 /* "message" */, 7);
    puVar1 = auVar6._0_8_;
    *puVar1 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar1 = (undefined8 *)runtime_gcWriteBarrier1(puVar1, auVar6._8_8_, puVar1[1]);
        *extraout_R11_00 = extraout_RCX;
    }
    puVar1[1] = 0x2e68b80 /* "vehicle_id 或 monitor_target 必填其一" */;
    var_20h = 0x10a4880;
    var_18h = var_28h;
    uVar2 = runtime_convT(0x10cbee0, &var_20h);
    gin_gonic_gin___Context__Render(in_RAX, 400, 0x2e6f230, uVar2);
    return;
}
