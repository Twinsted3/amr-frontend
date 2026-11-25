/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/pkg/agvcontrol.DoWithConn | VA 0xe13600 | conn_pool.go:29
   DWARF parameters and results: host string, port int, fn func(net.Conn) error, ~r0 error
   DWARF locals: client *CAS-Backend/pkg/agvcontrol.AGVClient, ok bool, key string, ~r0.ptr *uint8, ~r0.len int */
// WARNING: Variable defined which should be unmapped: var_48h
// WARNING: Variable defined which should be unmapped: var_30h
// WARNING: [rz-ghidra] Detected overlap for variable var_50h

void __stdcall
pkg_agvcontrol_DoWithConn
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_48h)
{
    int32_t iVar1;
    int32_t *piVar2;
    undefined8 in_RAX;
    int64_t *piVar3;
    int64_t iVar4;
    char extraout_BL;
    undefined8 unaff_RBX;
    int64_t arg_30h;
    undefined8 *extraout_R11;
    int64_t *extraout_R11_00;
    int64_t unaff_R14;
    undefined auVar5 [16];
    int64_t in_stack_ffffffffffffff90;
    int64_t in_stack_ffffffffffffff98;
    int64_t in_stack_ffffffffffffffb0;
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
    var_20h = runtime_convTstring();
    var_28h = 0x1042920;
    var_10h = runtime_convT64(arg4);
    var_18h = 0x1042b60;
    auVar5 = fmt_Sprintf(0x116a72e /* "%s:%d" */, 5, &var_28h, 2, 2);
    piVar2 = *(int32_t **)0xfb4c68;
    arg_30h = auVar5._8_8_;
    LOCK();
    iVar1 = **(int32_t **)0xfb4c68;
    if (iVar1 == 0) {
        **(int32_t **)0xfb4c68 = 1;
    }
    UNLOCK();
    if (iVar1 != 0) {
        sync___Mutex__lockSlow(piVar2);
    }
    piVar3 = (int64_t *)runtime_mapaccess2_faststr(0x1081720, *(undefined8 *)(*(int32_t **)0xfb4c68 + 2), auVar5._0_8_, arg_30h);
    iVar4 = *piVar3;
    if (extraout_BL == '\0') {
        iVar4 = runtime_newobject(in_stack_ffffffffffffff90);
        *(undefined8 *)(iVar4 + 0x20) = unaff_RBX;
        if (*(int32_t *)0x355db50 != 0) {
            iVar4 = runtime_gcWriteBarrier1();
            *extraout_R11 = in_RAX;
        }
        *(undefined8 *)(iVar4 + 0x18) = in_RAX;
        *(int64_t *)(iVar4 + 0x28) = arg4;
        piVar3 = (int64_t *)
                 runtime_mapassign_faststr(0x1081720, *(undefined8 *)(*(int32_t **)0xfb4c68 + 2), auVar5._0_8_, arg_30h);
        if (*(int32_t *)0x355db50 != 0) {
            piVar3 = (int64_t *)runtime_gcWriteBarrier2();
            *extraout_R11_00 = iVar4;
            extraout_R11_00[1] = *piVar3;
        }
        *piVar3 = iVar4;
    }
    LOCK();
    iVar1 = **(int32_t **)0xfb4c68;
    **(int32_t **)0xfb4c68 = **(int32_t **)0xfb4c68 + -1;
    UNLOCK();
    if (iVar1 != 1) {
        sync___Mutex__unlockSlow(in_stack_ffffffffffffff90, in_stack_ffffffffffffff98, arg_30h);
        var_30h = iVar4;
    }
    pkg_agvcontrol___AGVClient__Run
              (in_stack_ffffffffffffff90, in_stack_ffffffffffffff98, in_stack_ffffffffffffffb0, var_30h);
    return;
}
