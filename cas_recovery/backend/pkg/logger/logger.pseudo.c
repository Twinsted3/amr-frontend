/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/pkg/logger.InitLogger | VA 0x887a60 | logger.go:11
   DWARF parameters and results: (no entries)
   DWARF locals: core go.uber.org/zap/zapcore.Core, encoderConfig go.uber.org/zap/zapcore.EncoderConfig, ~r0.data *uint8, ~r0.itab uintptr */
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Removing arg arg_288h because it doesn't fit into ProtoModel

void pkg_logger_InitLogger(void)
{
    uint64_t uVar1;
    undefined8 uVar2;
    uint64_t uVar3;
    int64_t *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000008;
    int64_t var_2c0h;
    int64_t var_2a8h;
    undefined auStack_230 [80];
    int64_t var_1e0h;
    int64_t var_1d8h;
    int64_t var_1d0h;
    int64_t var_1c8h;
    int64_t var_1c0h;
    int64_t var_1b8h;
    int64_t var_1b0h;
    int64_t var_1a8h;
    int64_t var_190h;
    int64_t var_188h;
    int64_t var_140h;
    int64_t var_108h;
    int64_t var_100h;
    int64_t var_80h;
    int64_t var_78h;
    int64_t var_70h;
    int64_t var_68h;
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
    
    while (auStack_230 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0x887e8a;
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_stack_00000008);
    }
    var_108h = *(int64_t *)0x2e7ea88;
    runtime_duffcopy_offset_728();
    var_80h = 0x2cd70c0;
    var_78h = 0x2cd70b0;
    var_70h = 0x2cd70c8;
    var_68h = 0x2cd70d0;
    var_1d0h = var_108h;
    runtime_duffcopy_offset_728();
    var_1b0h = 0x1169568;
    var_1a8h = 4;
    var_140h = 0x2cd70b8;
    var_1c0h = 0x116a62a;
    var_1b8h = 5;
    var_190h = 0x116f2d9;
    var_188h = 6;
    var_1d0h = 0x1168a54;
    var_1c8h = 3;
    var_108h = 0x1168a54;
    runtime_duffcopy_offset_728();
    if (var_48h == 0) {
        var_50h = 0x2e64bb0;
        var_48h = 1;
    }
    runtime_duffcopy_offset_728();
    var_30h = go_uber_org_zap_zapcore_newJSONEncoder(1);
    var_38h = *(int64_t *)0x3512080;
    uVar1 = (uint64_t)*(uint32_t *)0x2e6baf0;
    do {
        uVar3 = uVar1 & **(uint64_t **)0xfb8e50;
        if ((*(uint64_t **)0xfb8e50)[uVar3 * 3 + 1] == *(uint64_t *)0x2e6bae8) {
            uVar1 = (*(uint64_t **)0xfb8e50)[uVar3 * 3 + 2];
            goto code_r0x00887cce;
        }
        uVar1 = uVar1 + 1;
    } while ((*(uint64_t **)0xfb8e50)[uVar3 * 3 + 1] != 0);
    uVar1 = runtime_interfaceSwitch(0xfb8e50);
code_r0x00887cce:
    if (uVar1 == 0) {
        uVar1 = (uint64_t)*(uint32_t *)0x2e6baf0;
        do {
            uVar3 = uVar1 & **(uint64_t **)0xfb8e70;
            if ((*(uint64_t **)0xfb8e70)[uVar3 * 2 + 1] == *(uint64_t *)0x2e6bae8) {
                var_1e0h = (*(uint64_t **)0xfb8e70)[uVar3 * 2 + 2];
                var_1d8h = var_38h;
                goto code_r0x00887d21;
            }
            uVar1 = uVar1 + 1;
        } while ((*(uint64_t **)0xfb8e70)[uVar3 * 2 + 1] != 0);
        var_1e0h = runtime_typeAssert(0xfb8e70);
        var_1d8h = var_38h;
    } else {
        var_18h = 0x2e6bae0;
        var_10h = var_38h;
        var_1d8h = runtime_convT(0x10cae00, &var_18h);
        var_1e0h = 0x2e6f258;
    }
code_r0x00887d21:
    var_40h = runtime_newobject(0x10f38a0);
    *(undefined8 *)var_40h = 0x2e6bb20;
    *(undefined8 *)(var_40h + 8) = 0xf7af18;
    *(undefined8 *)(var_40h + 0x10) = 0x2e804b0;
    if (*(int32_t *)0x355db50 != 0) {
        var_40h = runtime_gcWriteBarrier2();
        *extraout_R11 = var_30h;
        extraout_R11[1] = var_1d8h;
    }
    *(int64_t *)(var_40h + 0x18) = var_30h;
    *(int64_t *)(var_40h + 0x20) = var_1e0h;
    *(int64_t *)(var_40h + 0x28) = var_1d8h;
    var_20h = runtime_newobject(0x10b1340);
    *(undefined8 *)var_20h = 0x887ea0;
    *(undefined *)(var_20h + 8) = 1;
    var_28h = 0x2e6bb40;
    uVar2 = go_uber_org_zap_New(0x2e747c0, var_40h, &var_28h, 1, 1);
    if (*(int32_t *)0x355db50 != 0) {
        uVar2 = runtime_gcWriteBarrier2();
        *extraout_R11_00 = uVar2;
        extraout_R11_00[1] = *(undefined8 *)0x3512068;
    }
    *(undefined8 *)0x3512068 = uVar2;
    return;
}
