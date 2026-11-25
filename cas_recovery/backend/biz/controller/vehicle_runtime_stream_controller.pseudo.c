/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/biz/controller.init.func1 | VA 0xe76520 | vehicle_runtime_stream_controller.go:13
   DWARF parameters and results: r *net/http.Request, ~r0 bool
   DWARF locals: (no entries) */
undefined8 biz_controller_init_func1(void)
{
    return 1;
}

/* CAS-Backend/biz/controller.VehicleRuntimeWSHandler | VA 0xe90ac0 | vehicle_runtime_stream_controller.go:18
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: lastSentAt time.Time, ws *github.com/gorilla/websocket.Conn, writeSnap func(*CAS-Backend/pkg/diapdu.VehicleRuntimeSnap) bool, done chan struct {}, ticker *time.Ticker, vehicleID string, err error, snap *CAS-Backend/pkg/diapdu.VehicleRuntimeSnap, ok bool */
// WARNING: [rz-ghidra] Detected overlap for variable var_f0h

void __stdcall biz_controller_VehicleRuntimeWSHandler(int64_t arg_8h, int64_t arg_60h, int64_t arg_70h, int64_t arg_78h)
{
    char cVar1;
    int64_t in_RAX;
    undefined8 uVar2;
    undefined8 *puVar3;
    int64_t iVar4;
    int64_t iVar5;
    uint64_t uVar6;
    undefined8 extraout_RCX;
    int64_t iVar7;
    char extraout_BL;
    char extraout_BL_00;
    int64_t iVar8;
    uint64_t uVar9;
    undefined8 *extraout_R11;
    int64_t *extraout_R11_00;
    int64_t unaff_R14;
    undefined auVar10 [16];
    int64_t var_f1h;
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
    int64_t var_68h;
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
    
    while (&var_a8h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_f1h._0_1_ = 0;
    auVar10 = gin_gonic_gin___Context__Query();
    var_e8h = auVar10._8_8_;
    var_b8h = auVar10._0_8_;
    if (var_e8h == 0) {
        var_80h = runtime_makemap_small();
        auVar10 = runtime_mapassign_faststr(0x10a4880, var_80h, 0x116a5c1 /* "error" */, 5);
        puVar3 = auVar10._0_8_;
        *puVar3 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, auVar10._8_8_, puVar3[1]);
            *extraout_R11 = extraout_RCX;
        }
        puVar3[1] = 0x2e68fe0 /* "vehicleId is required" */;
        var_28h = 0x10a4880;
        var_20h = var_80h;
        uVar2 = runtime_convT(0x10cbee0, &var_28h);
        gin_gonic_gin___Context__Render(in_RAX, 400, 0x2e6f230, uVar2);
        return;
    }
    iVar4 = *(int64_t *)(in_RAX + 0x28);
    iVar7 = *(int64_t *)(in_RAX + 0x30);
    uVar6 = 0;
    if (iVar4 != 0) {
        uVar6 = (uint64_t)*(uint32_t *)(iVar4 + 0x10);
        do {
            uVar9 = uVar6 & **(uint64_t **)0xfbb550;
            if ((*(uint64_t **)0xfbb550)[uVar9 * 2 + 1] == *(uint64_t *)(iVar4 + 8)) {
                uVar6 = (*(uint64_t **)0xfbb550)[uVar9 * 2 + 2];
                goto code_r0x00e90bf1;
            }
            uVar6 = uVar6 + 1;
        } while ((*(uint64_t **)0xfbb550)[uVar9 * 2 + 1] != 0);
        var_90h = iVar7;
        uVar6 = runtime_typeAssert(0xfbb550, *(uint64_t *)(iVar4 + 8));
        auVar10._8_8_ = var_e8h;
        auVar10._0_8_ = var_b8h;
        iVar7 = var_90h;
    }
code_r0x00e90bf1:
    var_e8h = auVar10._8_8_;
    var_b8h = auVar10._0_8_;
    auVar10 = gorilla_websocket___Upgrader__Upgrade(0xfd5440, uVar6, iVar7, *(undefined8 *)(in_RAX + 0x20), 0);
    var_c0h = auVar10._0_8_;
    if (auVar10._8_8_ != 0) {
        return;
    }
    var_38h = 0xe915a0;
    var_18h = (int64_t)&var_38h;
    var_f1h._0_1_ = 1;
    var_48h = 0xe910c0;
    var_40h = var_c0h;
    var_30h = var_c0h;
    pkg_diapdu___VehicleRuntimeHub__FreshByQuery(*(undefined8 *)0xfb4b70, var_b8h, var_e8h);
    if (extraout_BL != '\0') {
        (*(code *)var_48h)();
    }
    var_98h = runtime_makechan(0x10465a0, 0);
    puVar3 = (undefined8 *)runtime_newobject(0x10ced20);
    *puVar3 = 0xe90fe0;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_00 = var_98h;
        extraout_R11_00[1] = var_c0h;
    }
    puVar3[1] = var_98h;
    puVar3[2] = var_c0h;
    runtime_newproc();
    var_b0h = time_NewTicker(20000000);
    var_58h = 0xe90f80;
    var_10h = (int64_t)&var_58h;
    var_f1h._0_1_ = 3;
    iVar4 = 0;
    iVar7 = 0;
    iVar8 = 0;
    var_50h = var_b0h;
    do {
        do {
            var_78h = *(int64_t *)var_b0h;
            var_68h = var_98h;
            var_e0h = iVar7;
            var_d8h = iVar4;
            var_a0h = iVar8;
            iVar4 = runtime_selectgo(&var_78h, (int64_t)&var_f1h + 1, 0, 0, 2, 1);
            if (iVar4 != 0) {
                var_f1h._0_1_ = 1;
                (**(code **)var_10h)();
                var_f1h._0_1_ = 0;
                (**(code **)var_18h)();
                return;
            }
            iVar5 = pkg_diapdu___VehicleRuntimeHub__FreshByQuery(*(undefined8 *)0xfb4b70, var_b8h, var_e8h);
            iVar4 = var_d8h;
            iVar7 = var_e0h;
            iVar8 = var_a0h;
        } while (((extraout_BL_00 == '\0') || (iVar5 == 0)) ||
                (var_a8h = iVar5,
                cVar1 = time_Time_After(*(undefined8 *)(iVar5 + 0xe8), *(undefined8 *)(iVar5 + 0xf0), 
                                        *(undefined8 *)(iVar5 + 0xf8), var_e0h, var_d8h, var_a0h), iVar4 = var_d8h,
                iVar7 = var_e0h, iVar8 = var_a0h, cVar1 == '\0'));
        var_88h = *(int64_t *)(var_a8h + 0xf8);
        var_c8h = *(int64_t *)(var_a8h + 0xe8);
        var_d0h = *(int64_t *)(var_a8h + 0xf0);
        cVar1 = (*(code *)var_48h)();
        iVar4 = var_d0h;
        iVar7 = var_c8h;
        iVar8 = var_88h;
    } while (cVar1 != '\0');
    var_f1h._0_1_ = 1;
    (**(code **)var_10h)();
    var_f1h._0_1_ = 0;
    (**(code **)var_18h)();
    return;
}

/* CAS-Backend/biz/controller.VehicleRuntimeWSHandler.deferwrap1 | VA 0xe915a0 | vehicle_runtime_stream_controller.go:28
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
void __stdcall
biz_controller_VehicleRuntimeWSHandler_deferwrap1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int64_t *piVar1;
    int64_t extraout_RDX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, arg_8h);
        arg3 = extraout_RDX;
    }
    piVar1 = *(int64_t **)(unaff_R14 + 0x20);
    if ((piVar1 != (int64_t *)0x0) && ((int64_t *)*piVar1 == &arg_8h)) {
        *piVar1 = (int64_t)&var_10h;
    }
    (**(code **)(**(int64_t **)(arg3 + 8) + 0x18))((*(int64_t **)(arg3 + 8))[1]);
    return;
}

/* CAS-Backend/biz/controller.VehicleRuntimeWSHandler.func1 | VA 0xe910c0 | vehicle_runtime_stream_controller.go:30
   DWARF parameters and results: snap *CAS-Backend/pkg/diapdu.VehicleRuntimeSnap, ~r0 bool
   DWARF locals: ws *github.com/gorilla/websocket.Conn, frame github.com/gin-gonic/gin.H */
bool __stdcall
biz_controller_VehicleRuntimeWSHandler_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_38h,
          int64_t arg_58h)
{
    uint8_t uVar1;
    uint64_t uVar2;
    undefined8 *in_RAX;
    undefined8 uVar3;
    undefined8 uVar4;
    undefined8 *puVar5;
    undefined8 extraout_RAX;
    int64_t iVar6;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 extraout_RCX_01;
    int64_t iVar7;
    int64_t extraout_RDX;
    undefined8 extraout_RBX;
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
    undefined auVar8 [16];
    int64_t unaff_retaddr;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, (int64_t)in_RAX);
        arg3 = extraout_RDX;
    }
    iVar6 = *(int64_t *)(arg3 + 8);
    if (in_RAX == (undefined8 *)0x0) {
        return false;
    }
    uVar3 = runtime_makemap(0x10a4880, 9, 0);
    uVar4 = runtime_convTstring(in_RAX[2], in_RAX[3]);
    puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, uVar3, 0x117548f /* "vehicleId" */, 9);
    *puVar5 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11 = uVar4;
        extraout_R11[1] = puVar5[1];
    }
    puVar5[1] = uVar4;
    uVar4 = runtime_convTstring(*in_RAX, in_RAX[1]);
    puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, uVar3, 0x116f4a7 /* "pushId" */, 6);
    *puVar5 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_00 = uVar4;
        extraout_R11_00[1] = puVar5[1];
    }
    puVar5[1] = uVar4;
    uVar4 = runtime_convT64(in_RAX[4]);
    puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, uVar3, 0x116850d /* "x" */, 1);
    *puVar5 = 0x1042ce0;
    if (*(int32_t *)0x355db50 != 0) {
        puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_01 = uVar4;
        extraout_R11_01[1] = puVar5[1];
    }
    puVar5[1] = uVar4;
    uVar4 = runtime_convT64(in_RAX[5]);
    puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, uVar3, 0x2e65028, 1);
    *puVar5 = 0x1042ce0;
    if (*(int32_t *)0x355db50 != 0) {
        puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_02 = uVar4;
        extraout_R11_02[1] = puVar5[1];
    }
    puVar5[1] = uVar4;
    uVar4 = runtime_convT64(in_RAX[6]);
    puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, uVar3, 0x116a76a /* "angle" */, 5);
    *puVar5 = 0x1042ce0;
    if (*(int32_t *)0x355db50 != 0) {
        puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_03 = uVar4;
        extraout_R11_03[1] = puVar5[1];
    }
    puVar5[1] = uVar4;
    uVar1 = *(uint8_t *)(in_RAX + 0x17);
    auVar8 = runtime_mapassign_faststr(0x10a4880, uVar3, 0x1172d30 /* "blocked" */, 7);
    puVar5 = auVar8._0_8_;
    *puVar5 = 0x1042d20;
    if (*(int32_t *)0x355db50 != 0) {
        puVar5 = (undefined8 *)runtime_gcWriteBarrier1(puVar5, auVar8._8_8_, puVar5[1]);
        *extraout_R11_04 = extraout_RCX;
    }
    puVar5[1] = (uint64_t)uVar1 * 8 + 0xf7a720;
    uVar4 = runtime_convT64(in_RAX[0x18]);
    puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, uVar3, 0x1172d37 /* "block_x" */, 7);
    *puVar5 = 0x1042ce0;
    if (*(int32_t *)0x355db50 != 0) {
        puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_05 = uVar4;
        extraout_R11_05[1] = puVar5[1];
    }
    puVar5[1] = uVar4;
    uVar4 = runtime_convT64(in_RAX[0x19]);
    puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, uVar3, 0x1172d3e /* "block_y" */, 7);
    *puVar5 = 0x1042ce0;
    if (*(int32_t *)0x355db50 != 0) {
        puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_06 = uVar4;
        extraout_R11_06[1] = puVar5[1];
    }
    puVar5[1] = uVar4;
    uVar2 = in_RAX[0x1d];
    if ((int64_t)uVar2 < 0) {
        iVar7 = ((uVar2 & 0x7fffffffffffffff) >> 0x1e) + 0xdd7b17f80;
    } else {
        iVar7 = in_RAX[0x1e];
    }
    uVar4 = runtime_convT64(iVar7 * 1000 + (uint64_t)(int64_t)(int32_t)((uint32_t)uVar2 & 0x3fffffff) / 1000000 +
                            -0x3883122cd800);
    puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, uVar3, 0x116851a /* "ts" */, 2);
    *puVar5 = 0x1042ae0;
    if (*(int32_t *)0x355db50 != 0) {
        puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_07 = uVar4;
        extraout_R11_07[1] = puVar5[1];
    }
    puVar5[1] = uVar4;
    time_Now();
    time_Time_Add();
    *(undefined8 *)(iVar6 + 0x60) = extraout_RAX;
    *(undefined8 *)(iVar6 + 0x68) = extraout_RBX;
    uVar4 = extraout_RCX_00;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier2();
        *extraout_R11_08 = extraout_RCX_01;
        extraout_R11_08[1] = *(undefined8 *)(iVar6 + 0x70);
        uVar4 = extraout_RCX_01;
    }
    *(undefined8 *)(iVar6 + 0x70) = uVar4;
    iVar6 = gorilla_websocket___Conn__WriteJSON(iVar6, 0x10a4880, uVar3);
    return iVar6 == 0;
}

/* CAS-Backend/biz/controller.VehicleRuntimeWSHandler.func2 | VA 0xe90fe0 | vehicle_runtime_stream_controller.go:55
   DWARF parameters and results: (no entries)
   DWARF locals: done chan struct {}, ws *github.com/gorilla/websocket.Conn, err error */
// WARNING: [rz-ghidra] Detected overlap for variable var_28h

void __stdcall
biz_controller_VehicleRuntimeWSHandler_func2(undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3)
{
    int64_t extraout_RDX;
    int64_t in_RSI;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000008;
    int64_t in_stack_ffffffffffffffc8;
    int64_t var_29h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_stack_00000008);
        arg3 = extraout_RDX;
    }
    var_18h = *(int64_t *)(arg3 + 8);
    var_20h = 0xe91060;
    var_10h = (int64_t)&var_20h;
    while( true ) {
        gorilla_websocket___Conn__ReadMessage(in_stack_ffffffffffffffc8);
        if (in_RSI != 0) break;
        in_RSI = 0;
    }
    (**(code **)var_10h)();
    return;
}

/* CAS-Backend/biz/controller.VehicleRuntimeWSHandler.func2.deferwrap1 | VA 0xe91060 | vehicle_runtime_stream_controller.go:56
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_10h

void __stdcall
biz_controller_VehicleRuntimeWSHandler_func2_deferwrap1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int64_t *piVar1;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, arg_8h);
    }
    piVar1 = *(int64_t **)(unaff_R14 + 0x20);
    if ((piVar1 != (int64_t *)0x0) && ((int64_t *)*piVar1 == &arg_8h)) {
        *piVar1 = (int64_t)&var_10h;
    }
    runtime_closechan(var_10h);
    return;
}

/* CAS-Backend/biz/controller.VehicleRuntimeWSHandler.deferwrap2 | VA 0xe90f80 | vehicle_runtime_stream_controller.go:66
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_10h

void __stdcall
biz_controller_VehicleRuntimeWSHandler_deferwrap2
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int64_t *piVar1;
    int64_t extraout_RDX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, arg_8h);
        arg3 = extraout_RDX;
    }
    piVar1 = *(int64_t **)(unaff_R14 + 0x20);
    if ((piVar1 != (int64_t *)0x0) && ((int64_t *)*piVar1 == &arg_8h)) {
        *piVar1 = (int64_t)&var_10h;
    }
    if (*(char *)(*(int64_t *)(arg3 + 8) + 8) != '\0') {
        time_stopTimer(var_10h);
    }
    return;
}
