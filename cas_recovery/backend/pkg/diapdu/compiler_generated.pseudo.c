/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/pkg/diapdu.init | VA 0xe23320 | compiler_generated.go:1
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
void pkg_diapdu_init(void)
{
    undefined8 uVar1;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000008;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_stack_00000008);
    }
    uVar1 = runtime_makemap_small();
    if (*(int32_t *)0x355db50 != 0) {
        uVar1 = runtime_gcWriteBarrier2();
        *extraout_R11 = uVar1;
        extraout_R11[1] = *(undefined8 *)0x3515e38;
    }
    *(undefined8 *)0x3515e38 = uVar1;
    uVar1 = runtime_makemap_small();
    if (*(int32_t *)0x355db50 != 0) {
        uVar1 = runtime_gcWriteBarrier2();
        *extraout_R11_00 = uVar1;
        extraout_R11_00[1] = *(undefined8 *)0x3515e58;
    }
    *(undefined8 *)0x3515e58 = uVar1;
    return;
}
