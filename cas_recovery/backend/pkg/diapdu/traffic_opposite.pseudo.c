/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/pkg/diapdu.splitUndirectedKey | VA 0xe3ce20 | traffic_opposite.go:16
   DWARF parameters and results: k string, ~r0 string, ~r1 string
   DWARF locals: i int */
undefined8 __stdcall pkg_diapdu_splitUndirectedKey(int64_t arg_8h, int64_t arg_10h, int64_t arg_38h, int64_t arg_40h)
{
    int64_t iVar1;
    int64_t in_RAX;
    int64_t unaff_RBX;
    int64_t *piVar2;
    undefined *unaff_RBP;
    undefined *puVar3;
    int64_t unaff_R14;
    int64_t in_GS_OFFSET;
    undefined auVar4 [16];
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    do {
        auVar4._8_8_ = unaff_RBX;
        auVar4._0_8_ = in_RAX;
        piVar2 = (int64_t *)*(undefined **)0x20;
        puVar3 = unaff_RBP;
        if (*(undefined **)(unaff_R14 + 0x10) < *(undefined **)0x20) {
            puVar3 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            piVar2 = (int64_t *)((int64_t)*(undefined **)0x20 + -0x28);
            *(int64_t *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x28) = in_RAX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x20) = unaff_RBX;
            *(undefined *)((int64_t)*(undefined **)0x20 + -0x18) = 0x7c;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = 0xe3ce51;
            internal_bytealg_IndexByteString_abi0();
            unaff_R14 = **(int64_t **)(in_GS_OFFSET + *(int64_t *)0x355d810);
            iVar1 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x10);
            if ((iVar1 < 1) || ((int64_t)(*(uint64_t *)((int64_t)*(undefined **)0x20 + 0x10) - 1) <= iVar1)) {
                return *(undefined8 *)((int64_t)*(undefined **)0x20 + 8);
            }
            if (iVar1 + 1U <= *(uint64_t *)((int64_t)*(undefined **)0x20 + 0x10)) {
                return *(undefined8 *)((int64_t)*(undefined **)0x20 + 8);
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = 0xe3ced6;
            auVar4 = runtime_panicSliceB(iVar1 + 1U);
        }
        *(undefined (*) [16])(piVar2 + 1) = auVar4;
        piVar2[-1] = 0xe3cee6;
        runtime_morestack_noctxt_abi0(*piVar2, piVar2[1]);
        in_RAX = piVar2[1];
        unaff_RBX = piVar2[2];
        *(int64_t **)0x20 = (BADSPACEBASE *)piVar2;
        unaff_RBP = puVar3;
    } while( true );
}

/* CAS-Backend/pkg/diapdu.oppositeConflictEdges | VA 0xe3cf00 | traffic_opposite.go:25
   DWARF parameters and results: pathA []string, pathB []string, ~r0 map[string]struct {}
   DWARF locals: out map[string]struct {}, ~r0.ptr *uint8, ~r0.len int, i int, ue string, aFrom string, aTo string, j int, .autotmp_18 struct {} */
undefined  [16] __stdcall
pkg_diapdu_oppositeConflictEdges
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, int64_t arg5, undefined8 placeholder_5,
          int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
          int64_t arg_148h)
{
    undefined8 uVar1;
    undefined8 uVar2;
    char cVar3;
    int64_t in_RAX;
    int64_t iVar4;
    undefined8 uVar5;
    int64_t extraout_RAX;
    uint64_t uVar6;
    int64_t extraout_RCX;
    int64_t in_RDX;
    int64_t extraout_RDX;
    int64_t unaff_RBX;
    int64_t iVar7;
    int64_t extraout_RBX;
    int64_t *piVar8;
    undefined *unaff_RBP;
    undefined *puVar9;
    int64_t extraout_RSI;
    int64_t iVar10;
    int64_t extraout_RDI;
    uint64_t uVar11;
    int64_t iVar12;
    uint64_t extraout_R8;
    int64_t extraout_R8_00;
    undefined8 uVar13;
    undefined8 uVar14;
    int64_t unaff_R14;
    undefined auVar15 [16];
    undefined auVar16 [16];
    int64_t var_110h;
    int64_t var_108h;
    int64_t var_100h;
    int64_t var_f8h;
    int64_t var_f0h;
    int64_t var_e8h;
    int64_t var_e0h;
    int64_t var_c0h;
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
        piVar8 = (int64_t *)*(undefined **)0x20;
        puVar9 = unaff_RBP;
        if (*(undefined **)(unaff_R14 + 0x10) < (undefined *)((int64_t)*(undefined **)0x20 + -0x98)) {
            puVar9 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            piVar8 = (int64_t *)((int64_t)*(undefined **)0x20 + -0x118);
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x28) = arg2;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x20) = arg1;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x120) = 0xe3cf45;
            auVar15._0_8_ = runtime_makemap_small();
            uVar6 = *(uint64_t *)((int64_t)*(undefined **)0x20 + 0x10);
            if (((int64_t)uVar6 < 2) || (in_RDX = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x28), in_RDX < 2)) {
                auVar15._8_8_ = in_RDX;
                return auVar15;
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = auVar15._0_8_;
            iVar4 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
            iVar12 = 0;
            while( true ) {
                if ((int64_t)(uVar6 - 1) <= iVar12) {
                    auVar16._8_8_ = in_RDX;
                    auVar16._0_8_ = auVar15._0_8_;
                    return auVar16;
                }
                iVar7 = iVar12 * 0x10;
                uVar11 = iVar12 + 1;
                auVar15._0_8_ = *(undefined8 *)(iVar7 + iVar4);
                uVar5 = *(undefined8 *)(iVar7 + 8 + iVar4);
                if (uVar6 <= uVar11) break;
                *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x50) = uVar11;
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x58) = iVar7;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = auVar15._0_8_;
                iVar12 = uVar11 * 0x10;
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x60) = iVar12;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = *(undefined8 *)(iVar12 + iVar4);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x90) = *(undefined8 *)(iVar12 + 8 + iVar4);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x120) = 0xe3d027;
                iVar4 = runtime_cmpstring(auVar15._0_8_, uVar5);
                if (iVar4 < 0) {
                    auVar15._0_8_ = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x120) = 0xe3d05f;
                    uVar5 = runtime_concatstring3(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8));
                } else {
                    auVar15._0_8_ = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x120) = 0xe3d095;
                    uVar5 = runtime_concatstring3(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8));
                }
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa0) = auVar15._0_8_;
                iVar4 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
                iVar12 = *(int64_t *)(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x58) + 8 + iVar4);
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80) = iVar12;
                uVar5 = *(undefined8 *)(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x58) + iVar4);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar5;
                uVar14 = *(undefined8 *)(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x60) + iVar4);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = uVar14;
                uVar13 = *(undefined8 *)(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x60) + 8 + iVar4);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x88) = uVar13;
                iVar4 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x20);
                uVar6 = *(uint64_t *)((int64_t)*(undefined **)0x20 + 0x28);
                iVar7 = 0;
                while (iVar7 < (int64_t)(uVar6 - 1)) {
                    iVar10 = iVar7 * 0x10;
                    uVar11 = iVar7 + 1;
                    uVar1 = *(undefined8 *)(iVar4 + iVar10);
                    uVar2 = *(undefined8 *)(iVar4 + 8 + iVar10);
                    if (uVar6 <= uVar11) {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x120) = 0xe3d37f;
                        runtime_panicIndex(uVar11, auVar15._0_8_, uVar6, iVar10, uVar5, iVar12, uVar13, uVar14);
                        uVar11 = extraout_R8;
                        goto code_r0x00e3d37f;
                    }
                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x58) = iVar10;
                    *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x60) = uVar11;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = uVar2;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = uVar1;
                    iVar12 = uVar11 * 0x10;
                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x68) = iVar12;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = *(undefined8 *)(iVar12 + iVar4);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x98) = *(undefined8 *)(iVar12 + 8 + iVar4);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x120) = 0xe3d1c9;
                    iVar4 = runtime_cmpstring(uVar1, uVar2);
                    if (iVar4 < 0) {
                        iVar4 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x18);
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x120) = 0xe3d205;
                        auVar15._0_8_ =
                             runtime_concatstring3(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                                          *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                                          *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                                          *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                                          *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                                          *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                                          *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8));
                    } else {
                        iVar4 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x38);
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x120) = 0xe3d23d;
                        auVar15._0_8_ =
                             runtime_concatstring3(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                                          *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                                          *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                                          *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                                          *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                                          *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                                          *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8));
                    }
                    if (iVar4 == *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0)) {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x120) = 0xe3d25b;
                        cVar3 = runtime_memequal(auVar15._0_8_, *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48), 
                                                iVar4);
                        if (cVar3 == '\0') goto code_r0x00e3d35a;
                        iVar4 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x20);
                        auVar15._0_8_ = *(undefined8 *)(iVar4 + *(int64_t *)((int64_t)*(undefined **)0x20 + -0x58));
                        if (*(int64_t *)(iVar4 + 8 + *(int64_t *)((int64_t)*(undefined **)0x20 + -0x58)) ==
                            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88)) {
                            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x120) = 0xe3d29f;
                            cVar3 = runtime_memequal(auVar15._0_8_, *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28)
                                                   );
                            iVar4 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x20);
                        } else {
                            cVar3 = '\0';
                        }
                        if (cVar3 == '\0') {
                            iVar12 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80);
                        } else {
                            auVar15._0_8_ = *(undefined8 *)(iVar4 + *(int64_t *)((int64_t)*(undefined **)0x20 + -0x68));
                            iVar12 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80);
                            if (*(int64_t *)(iVar4 + 8 + *(int64_t *)((int64_t)*(undefined **)0x20 + -0x68)) == iVar12)
                            {
                                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x120) = 0xe3d2e6;
                                cVar3 = runtime_memequal(auVar15._0_8_, 
                                                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20));
                                iVar4 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x20);
                                iVar12 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80);
                            } else {
                                cVar3 = '\0';
                            }
                            if (cVar3 != '\0') {
                                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x120) = 0xe3d329;
                                runtime_mapassign_faststr(0x107d5e0, *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40), 
                                                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48), 
                                                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa0), iVar4);
                                iVar12 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80);
                            }
                        }
                    } else {
code_r0x00e3d35a:
                        iVar12 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80);
                    }
                    uVar6 = *(uint64_t *)((int64_t)*(undefined **)0x20 + 0x28);
                    auVar15._0_8_ = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa0);
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
                    uVar13 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x88);
                    uVar14 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28);
                    iVar4 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x20);
                    iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x60);
                }
                uVar6 = *(uint64_t *)((int64_t)*(undefined **)0x20 + 0x10);
                iVar12 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x50);
                auVar15._0_8_ = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40);
                in_RDX = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x28);
                iVar4 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
            }
code_r0x00e3d37f:
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x120) = 0xe3d387;
            runtime_panicIndex(uVar11);
            in_RAX = extraout_RAX;
            arg4 = extraout_RCX;
            unaff_RBX = extraout_RBX;
            arg2 = extraout_RSI;
            arg1 = extraout_RDI;
            arg5 = extraout_R8_00;
        }
        piVar8[1] = in_RAX;
        piVar8[2] = unaff_RBX;
        piVar8[3] = arg4;
        piVar8[4] = arg1;
        piVar8[5] = arg2;
        piVar8[6] = arg5;
        piVar8[-1] = 0xe3d3ab;
        runtime_morestack_noctxt_abi0(*piVar8, piVar8[1]);
        in_RAX = piVar8[1];
        unaff_RBX = piVar8[2];
        arg4 = piVar8[3];
        arg1 = piVar8[4];
        arg2 = piVar8[5];
        arg5 = piVar8[6];
        in_RDX = extraout_RDX;
        *(int64_t **)0x20 = (BADSPACEBASE *)piVar8;
        unaff_RBP = puVar9;
    } while( true );
}

/* CAS-Backend/pkg/diapdu.conflictZoneEndpoints | VA 0xe3d3e0 | traffic_opposite.go:45
   DWARF parameters and results: conflict map[string]struct {}, ~r0 [2]string
   DWARF locals: deg map[string]int, ends []string, ue string, a string, b string, n string */
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Removing arg arg_240h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_8ch

void __stdcall
pkg_diapdu_conflictZoneEndpoints
          (int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_a0h,
          int64_t arg_1b0h, int64_t arg_1b8h)
{
    int64_t iVar1;
    undefined8 uVar2;
    undefined4 uVar3;
    int64_t *in_RAX;
    undefined8 uVar4;
    int64_t *piVar5;
    int64_t extraout_RAX;
    int64_t extraout_RAX_00;
    int64_t extraout_RCX;
    int64_t extraout_RCX_00;
    uint64_t uVar6;
    uint64_t extraout_RCX_01;
    uint64_t extraout_RCX_02;
    uint64_t uVar7;
    int64_t iVar8;
    uint64_t extraout_RBX;
    uint64_t extraout_RBX_00;
    int64_t extraout_RDI;
    int64_t extraout_RDI_00;
    int64_t iVar9;
    int64_t extraout_RDI_01;
    int64_t extraout_RDI_02;
    undefined8 extraout_R10;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    undefined8 in_XMM15_Qb;
    int64_t unaff_retaddr;
    int64_t var_220h;
    int64_t in_stack_fffffffffffffdf0;
    int64_t in_stack_fffffffffffffdf8;
    int64_t in_stack_fffffffffffffe20;
    int64_t in_stack_fffffffffffffe28;
    int64_t var_1d0h;
    int64_t var_1c8h;
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
    int64_t var_98h;
    undefined4 uStack_90;
    undefined4 var_8ch;
    int64_t var_88h;
    int64_t var_78h;
    int64_t var_68h;
    int64_t *piStack_60;
    int64_t var_8h;
    
    while (uStack_90 = (undefined4)in_XMM15_Qb, &var_190h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe3d830;
        runtime_morestack_noctxt_abi0(unaff_retaddr, arg_8h);
    }
    if (in_RAX == (int64_t *)0x0) {
        iVar8 = 0;
    } else {
        iVar8 = *in_RAX;
    }
    if (iVar8 == 0) {
        return;
    }
    runtime_duffzero_offset_290();
    var_88h = (int64_t)&var_168h;
    uVar3 = runtime_rand32();
    _uStack_90 = CONCAT44(uVar3, uStack_90);
    runtime_duffzero_offset_331();
    runtime_mapiterinit(0x107d5e0, in_RAX, &var_68h);
    iVar8 = extraout_RCX;
    iVar9 = extraout_RDI;
    while (var_68h != 0) {
        iVar1 = *(int64_t *)(var_68h + 8);
        uVar4 = pkg_diapdu_splitUndirectedKey
                          (in_stack_fffffffffffffdf0, in_stack_fffffffffffffdf8, in_stack_fffffffffffffe20, 
                           in_stack_fffffffffffffe28);
        if ((iVar1 != 0) && (iVar9 != 0)) {
            var_180h = iVar8;
            piVar5 = (int64_t *)runtime_mapassign_faststr(0x107da00, &var_98h, uVar4, iVar1);
            *piVar5 = *piVar5 + 1;
            piVar5 = (int64_t *)runtime_mapassign_faststr(0x107da00, &var_98h, var_180h, iVar9);
            *piVar5 = *piVar5 + 1;
        }
        runtime_mapiternext(&var_68h);
        iVar8 = extraout_RCX_00;
        iVar9 = extraout_RDI_00;
    }
    runtime_duffzero_offset_331();
    runtime_mapiterinit(0x107da00, &var_98h, &var_68h);
    uVar6 = 0;
    uVar7 = 0;
    var_170h = 0;
    while (var_68h != 0) {
        uVar4 = *(undefined8 *)var_68h;
        uVar2 = *(undefined8 *)(var_68h + 8);
        if (*piStack_60 == 1) {
            uVar7 = uVar7 + 1;
            if (uVar6 < uVar7) {
                runtime_growslice();
                var_170h = extraout_RAX;
                uVar6 = extraout_RCX_01;
                uVar7 = extraout_RBX;
            }
            iVar8 = (uVar7 - 1) * 0x10;
            *(undefined8 *)(var_170h + 8 + iVar8) = uVar2;
            if (*(int32_t *)0x355db50 != 0) {
                runtime_gcWriteBarrier2();
                *extraout_R11 = extraout_R10;
                extraout_R11[1] = *(undefined8 *)(extraout_RAX_00 + iVar8);
                var_170h = extraout_RAX_00;
                uVar6 = extraout_RCX_02;
                uVar7 = extraout_RBX_00;
                uVar4 = extraout_R10;
            }
            *(undefined8 *)(var_170h + iVar8) = uVar4;
        }
        var_190h = var_170h;
        runtime_mapiternext(&var_68h);
        var_170h = var_190h;
    }
    sort_stringsImpl(var_170h, uVar7);
    if (1 < (int64_t)uVar7) {
        return;
    }
    runtime_duffzero_offset_331();
    runtime_mapiterinit(0x107d5e0, in_RAX, &var_68h);
    iVar8 = extraout_RDI_01;
    while( true ) {
        if (var_68h == 0) {
            return;
        }
        iVar9 = *(int64_t *)(var_68h + 8);
        var_178h = pkg_diapdu_splitUndirectedKey
                             (in_stack_fffffffffffffdf0, in_stack_fffffffffffffdf8, in_stack_fffffffffffffe20, 
                              in_stack_fffffffffffffe28);
        if ((iVar9 != 0) && (iVar8 != 0)) break;
        runtime_mapiternext(&var_68h);
        iVar8 = extraout_RDI_02;
    }
    iVar8 = runtime_cmpstring();
    if (-1 < iVar8) {
        return;
    }
    return;
}

/* CAS-Backend/pkg/diapdu.winnerClearedOppositeZone | VA 0xe3d840 | traffic_opposite.go:112
   DWARF parameters and results: s CAS-Backend/pkg/diapdu.runSnapEx, conflict map[string]struct {}, ~r0 bool
   DWARF locals: maxIdx int, .autotmp_18 struct {} */
bool __stdcall pkg_diapdu_winnerClearedOppositeZone(int64_t arg_38h, int64_t arg_58h, int64_t arg_60h, int64_t arg_70h)
{
    uint64_t uVar1;
    int64_t in_RAX;
    int64_t iVar2;
    undefined8 uVar3;
    uint64_t uVar4;
    char extraout_BL;
    int64_t iVar5;
    undefined8 uVar6;
    int64_t *piVar7;
    undefined *unaff_RBP;
    undefined *puVar8;
    int64_t iVar9;
    int64_t unaff_R14;
    int64_t var_90h;
    int64_t var_70h;
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
        piVar7 = (int64_t *)*(undefined **)0x20;
        puVar8 = unaff_RBP;
        if (*(undefined **)(unaff_R14 + 0x10) < (undefined *)((int64_t)*(undefined **)0x20 + -0x48)) {
            puVar8 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            piVar7 = (int64_t *)((int64_t)*(undefined **)0x20 + -200);
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x70) = in_RAX;
            iVar2 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x58);
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x20) = iVar2;
            uVar4 = *(uint64_t *)((int64_t)*(undefined **)0x20 + 0x60);
            *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x50) = uVar4;
            iVar5 = 0;
            iVar9 = -1;
            while( true ) {
                if ((int64_t)(uVar4 - 1) <= iVar5) {
                    if (iVar9 < 0) {
                        return true;
                    }
                    return iVar9 < *(int64_t *)((int64_t)*(undefined **)0x20 + 0x38);
                }
                uVar1 = iVar5 + 1;
                uVar6 = *(undefined8 *)(iVar2 + iVar5 * 0x10);
                if (uVar4 <= uVar1) break;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = *(undefined8 *)(iVar2 + 8 + iVar5 * 0x10);
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x28) = iVar5;
                *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x30) = uVar1;
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x48) = iVar9;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = uVar6;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = *(undefined8 *)(iVar2 + uVar1 * 0x10);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = *(undefined8 *)(iVar2 + 8 + uVar1 * 0x10);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd0) = 0xe3d925;
                iVar2 = runtime_cmpstring(uVar6);
                if (iVar2 < 0) {
                    uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd0) = 0xe3d965;
                    uVar3 = runtime_concatstring3(*(int64_t *)((int64_t)*(undefined **)0x20 + -200), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xc0), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb8), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa8), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x98));
                } else {
                    uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd0) = 0xe3d99d;
                    uVar3 = runtime_concatstring3(*(int64_t *)((int64_t)*(undefined **)0x20 + -200), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xc0), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb8), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa8), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x98));
                }
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd0) = 0xe3d9b7;
                runtime_mapaccess2_faststr(0x107d5e0, *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x70), uVar3, uVar6);
                if (extraout_BL == '\0') {
                    iVar9 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x48);
                } else {
                    iVar9 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x28);
                }
                iVar2 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x20);
                uVar4 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x50);
                iVar5 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x30);
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd0) = 0xe3da05;
            in_RAX = runtime_panicIndex(uVar1);
        }
        piVar7[0xe] = in_RAX;
        piVar7[-1] = 0xe3da10;
        runtime_morestack_noctxt_abi0(*piVar7, piVar7[1]);
        in_RAX = piVar7[0xe];
        *(int64_t **)0x20 = (BADSPACEBASE *)piVar7;
        unaff_RBP = puVar8;
    } while( true );
}

/* CAS-Backend/pkg/diapdu.pickOppositeWinner | VA 0xe3da20 | traffic_opposite.go:129
   DWARF parameters and results: a CAS-Backend/pkg/diapdu.runSnapEx, b CAS-Backend/pkg/diapdu.runSnapEx, conflict map[string]struct {}, priA int, priB int, enterA int64, enterB int64, ~r0 string
   DWARF locals: onB bool, onA bool, .autotmp_39 struct {}, ~r0.ptr *uint8, ~r0.len int */
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Removing arg arg_2b8h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Removing arg arg_250h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Removing arg arg_288h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Removing arg arg_278h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_200h

int64_t __stdcall
pkg_diapdu_pickOppositeWinner
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h,
          int64_t placeholder_11, undefined8 placeholder_12, int64_t arg_40h, int64_t arg_70h, int64_t arg_78h,
          int64_t arg_80h, int64_t arg_88h, int64_t arg_90h, int64_t arg_98h, int64_t arg_a8h, int64_t arg_d8h,
          int64_t arg_e0h, int64_t arg_e8h, int64_t arg_f0h, int64_t arg_f8h)
{
    char cVar1;
    char cVar2;
    int64_t in_RAX;
    int64_t extraout_RAX;
    int64_t iVar3;
    int64_t extraout_RCX;
    int64_t iVar4;
    int64_t extraout_RCX_00;
    char extraout_BL;
    undefined4 extraout_EBX;
    int64_t unaff_RBX;
    int64_t extraout_RBX;
    int64_t iVar5;
    int64_t extraout_RBX_00;
    undefined4 uVar6;
    int64_t extraout_R8;
    int64_t iVar7;
    int64_t extraout_R8_00;
    char extraout_R9B;
    int64_t unaff_R14;
    undefined auVar8 [16];
    int64_t in_stack_00000030;
    int64_t var_250h;
    int64_t var_201h;
    int64_t var_1e0h;
    int64_t var_1c0h;
    int64_t var_1a0h;
    int64_t var_180h;
    int64_t var_160h;
    int64_t var_140h;
    int64_t var_120h;
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
    int64_t var_68h;
    int64_t var_48h;
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    arg_d8h = in_RAX;
    arg_e8h = placeholder_11;
    arg_e0h = unaff_RBX;
    arg_f8h = arg2;
    while (arg_f0h = arg1, &var_1c0h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe3e1a5;
        runtime_morestack_noctxt_abi0();
        arg1 = arg_f0h;
    }
    var_b0h = arg_8h;
    runtime_duffcopy_offset_812();
    if ((char)var_68h == '\0') {
        uVar6 = 0;
        iVar3 = extraout_RAX;
        iVar4 = extraout_RCX;
        iVar5 = extraout_RBX;
        iVar7 = extraout_R8;
    } else {
        var_10h = var_a0h;
        var_c0h = var_98h;
        var_30h = var_90h;
        var_e0h = var_88h;
        iVar3 = runtime_cmpstring();
        if (iVar3 < 0) {
            auVar8 = runtime_concatstring3(&var_120h, var_10h, var_c0h, 0x116850a /* "|" */, 1, var_30h, var_e0h);
        } else {
            auVar8 = runtime_concatstring3(&var_140h, var_30h, var_e0h, 0x116850a /* "|" */, 1, var_10h, var_c0h);
        }
        runtime_mapaccess2_faststr(0x107d5e0, arg_d8h, auVar8._0_8_, auVar8._8_8_);
        iVar3 = arg_d8h;
        iVar4 = arg_e8h;
        arg1 = arg_f0h;
        iVar5 = arg_e0h;
        iVar7 = arg_f8h;
        uVar6 = extraout_EBX;
    }
    var_b0h = arg_70h;
    runtime_duffcopy_offset_812(iVar3, iVar5, iVar4, &var_a8h, &arg_78h, iVar7, uVar6);
    if ((char)var_68h == '\0') {
        cVar1 = '\0';
        iVar3 = extraout_RCX_00;
        arg_e0h = extraout_RBX_00;
        iVar4 = extraout_R8_00;
        cVar2 = extraout_R9B;
    } else {
        var_18h = var_a0h;
        var_c8h = var_98h;
        var_38h = var_90h;
        var_e8h = var_88h;
        var_201h._0_1_ = extraout_R9B;
        iVar3 = runtime_cmpstring();
        if (iVar3 < 0) {
            auVar8 = runtime_concatstring3(&var_160h, var_18h, var_c8h, 0x116850a /* "|" */, 1, var_38h, var_e8h);
        } else {
            auVar8 = runtime_concatstring3(&var_180h, var_38h, var_e8h, 0x116850a /* "|" */, 1, var_18h, var_c8h);
        }
        runtime_mapaccess2_faststr(0x107d5e0, arg_d8h, auVar8._0_8_, auVar8._8_8_);
        iVar3 = arg_e8h;
        arg1 = arg_f0h;
        iVar4 = arg_f8h;
        cVar2 = (char)var_201h;
        cVar1 = extraout_BL;
    }
    if (cVar2 == '\0') {
        if (cVar1 == '\0') goto code_r0x00e3e130;
    } else if (cVar1 == '\0') {
        return arg_8h;
    }
    if (cVar2 == '\0') {
        return arg_70h;
    }
    if (cVar1 != '\0') {
        if ((((arg_20h == 0) || (in_stack_00000030 == 0)) || (arg_88h == 0)) || (arg_98h == 0)) {
            cVar2 = '\0';
        } else {
            var_f0h = arg_88h;
            var_40h = arg_80h;
            var_d8h = in_stack_00000030;
            var_d0h = arg_20h;
            var_f8h = arg_98h;
            var_48h = arg_90h;
            var_20h = arg_18h;
            var_28h = arg_28h;
            iVar3 = runtime_cmpstring();
            if (iVar3 < 0) {
                auVar8 = runtime_concatstring3(&var_1a0h, var_20h, var_d0h, 0x116850a /* "|" */, 1, var_28h, var_d8h);
            } else {
                auVar8 = runtime_concatstring3(&var_1c0h, var_28h, var_d8h, 0x116850a /* "|" */, 1, var_20h, var_d0h);
            }
            var_100h = auVar8._8_8_;
            var_b8h = auVar8._0_8_;
            iVar3 = runtime_cmpstring(var_40h, var_f0h, var_48h, var_f8h);
            if (iVar3 < 0) {
                auVar8 = runtime_concatstring3(&var_1e0h, var_40h, var_f0h, 0x116850a /* "|" */, 1, var_48h, var_f8h);
            } else {
                auVar8 = runtime_concatstring3((int64_t)&var_201h + 1, var_48h, var_f8h, 0x116850a /* "|" */, 1, var_40h, var_f0h);
            }
            if (var_100h == auVar8._8_8_) {
                cVar2 = runtime_memequal(var_b8h, auVar8._0_8_);
            } else {
                cVar2 = '\0';
            }
            if (cVar2 == '\0') {
                cVar2 = '\0';
            } else if (var_f8h == var_d0h) {
                cVar2 = runtime_memequal(var_20h, var_48h);
            } else {
                cVar2 = '\0';
            }
            arg1 = arg_f0h;
            iVar4 = arg_f8h;
            if (cVar2 == '\0') {
                cVar2 = '\0';
            } else if (var_d8h == var_f0h) {
                cVar2 = runtime_memequal(var_28h, var_40h);
                arg1 = arg_f0h;
                iVar4 = arg_f8h;
            } else {
                cVar2 = '\0';
            }
        }
        if (cVar2 != '\0') {
            if (*(double *)0x2e67848 + (double)arg_a8h < (double)arg_40h) {
                return arg_8h;
            }
            if (*(double *)0x2e67848 + (double)arg_40h < (double)arg_a8h) {
                return arg_70h;
            }
        }
        if ((0 < arg1) && (0 < iVar4)) {
            if (arg1 < iVar4) {
                return arg_8h;
            }
            if (iVar4 < arg1) {
                return arg_70h;
            }
        }
        if ((double)arg_a8h < (double)arg_40h) {
            return arg_8h;
        }
        if ((double)arg_a8h <= (double)arg_40h) {
            iVar3 = runtime_cmpstring(arg_8h, arg_10h, arg_70h, arg_78h);
            if (iVar3 < 0) {
                return arg_8h;
            }
            return arg_70h;
        }
        return arg_70h;
    }
code_r0x00e3e130:
    if (iVar3 < arg_e0h) {
        return arg_8h;
    }
    if (arg_e0h < iVar3) {
        return arg_70h;
    }
    return 0;
}

/* CAS-Backend/pkg/diapdu.vehicleExitedCurrentConflictWave | VA 0xe3e1e0 | traffic_opposite.go:193
   DWARF parameters and results: s CAS-Backend/pkg/diapdu.runSnapEx, conflict map[string]struct {}, ~r0 bool
   DWARF locals: minIdx int, maxIdx int, lastPassed int, .autotmp_36 struct {}, i int, ok bool, .autotmp_10 struct {} */
// WARNING: [rz-ghidra] Removing arg arg_278h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Removing arg arg_240h because it doesn't fit into ProtoModel

uint64_t __stdcall
pkg_diapdu_vehicleExitedCurrentConflictWave
          (int64_t arg_8h, int64_t arg_10h, int64_t arg_38h, int64_t arg_50h, int64_t arg_58h, int64_t arg_60h,
          int64_t arg_70h)
{
    undefined8 uVar1;
    undefined8 uVar2;
    undefined8 in_RAX;
    int64_t iVar3;
    uint64_t uVar4;
    int64_t iVar5;
    char cVar6;
    char extraout_BL;
    char extraout_BL_00;
    char extraout_BL_01;
    undefined *puVar7;
    undefined8 unaff_RBP;
    int64_t iVar8;
    int64_t iVar9;
    uint64_t extraout_R9;
    uint64_t uVar10;
    int64_t unaff_R14;
    undefined auVar11 [16];
    int64_t var_210h;
    int64_t var_1c8h;
    int64_t var_1a8h;
    int64_t var_190h;
    int64_t var_188h;
    int64_t var_168h;
    int64_t var_148h;
    int64_t var_128h;
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
    int64_t var_60h;
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    do {
        puVar7 = (undefined *)*(undefined **)0x20;
        if (*(undefined **)(unaff_R14 + 0x10) < (undefined *)((int64_t)*(undefined **)0x20 + -0x180)) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            puVar7 = (undefined *)((int64_t)*(undefined **)0x20 + -0x200);
            if (*(char *)((int64_t)*(undefined **)0x20 + 0x50) == '\0') {
                return 0;
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x70) = in_RAX;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa8) = *(undefined8 *)((int64_t)*(undefined **)0x20 + 8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -0x210) = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x208) = 0xe3e24f;
            runtime_duffcopy_offset_812();
            unaff_RBP = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x210);
            if (*(char *)((int64_t)*(undefined **)0x20 + -0x60) == '\0') {
                cVar6 = '\0';
            } else {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x98);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xc0) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x90);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x88);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x80);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x208) = 0xe3e2aa;
                iVar3 = runtime_cmpstring();
                if (iVar3 < 0) {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x208) = 0xe3e2e8;
                    auVar11 = runtime_concatstring3((undefined *)((int64_t)*(undefined **)0x20 + -0x128), 
                                              *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10), 
                                              *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xc0), 0x116850a /* "|" */, 1, 
                                              *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28), 
                                              *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8));
                } else {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x208) = 0xe3e325;
                    auVar11 = runtime_concatstring3((undefined *)((int64_t)*(undefined **)0x20 + -0x148), 
                                              *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28), 
                                              *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8), 0x116850a /* "|" */, 1, 
                                              *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10), 
                                              *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xc0));
                }
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x208) = 0xe3e33f;
                runtime_mapaccess2_faststr(0x107d5e0, *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x70), auVar11._0_8_, 
                                auVar11._8_8_);
                cVar6 = extraout_BL;
            }
            if (cVar6 != '\0') {
                return 0;
            }
            iVar3 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x58);
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x40) = iVar3;
            uVar4 = *(uint64_t *)((int64_t)*(undefined **)0x20 + 0x60);
            *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x108) = uVar4;
            iVar8 = -1;
            iVar9 = -1;
            iVar5 = 0;
            while (iVar5 < (int64_t)(uVar4 - 1)) {
                uVar10 = iVar5 + 1;
                uVar1 = *(undefined8 *)(iVar5 * 0x10 + iVar3);
                if (uVar4 <= uVar10) goto code_r0x00e3e6aa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -200) = *(undefined8 *)(iVar5 * 0x10 + 8 + iVar3);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = uVar1;
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0) = iVar5;
                *(uint64_t *)((int64_t)*(undefined **)0x20 + -0xb8) = uVar10;
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8) = iVar9;
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100) = iVar8;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = *(undefined8 *)(uVar10 * 0x10 + iVar3);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe0) = *(undefined8 *)(uVar10 * 0x10 + 8 + iVar3);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x208) = 0xe3e427;
                iVar3 = runtime_cmpstring(uVar1);
                if (iVar3 < 0) {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x208) = 0xe3e465;
                    auVar11 = runtime_concatstring3((undefined *)((int64_t)*(undefined **)0x20 + -0x168), 
                                              *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18), 
                                              *(undefined8 *)((int64_t)*(undefined **)0x20 + -200), 0x116850a /* "|" */, 1, 
                                              *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30), 
                                              *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe0));
                } else {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x208) = 0xe3e49d;
                    auVar11 = runtime_concatstring3((undefined *)((int64_t)*(undefined **)0x20 + -0x188), 
                                              *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30), 
                                              *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe0), 0x116850a /* "|" */, 1, 
                                              *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18), 
                                              *(undefined8 *)((int64_t)*(undefined **)0x20 + -200));
                }
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x208) = 0xe3e4b7;
                runtime_mapaccess2_faststr(0x107d5e0, *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x70), auVar11._0_8_, 
                                auVar11._8_8_);
                if (extraout_BL_00 == '\0') {
                    iVar9 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8);
                    iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100);
                } else {
                    iVar9 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0);
                    iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100);
                    if (*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100) < 0) {
                        iVar8 = iVar9;
                    }
                }
                uVar4 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x108);
                iVar3 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x40);
                iVar5 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb8);
            }
            if (iVar8 < 0) {
                return 1;
            }
            if (iVar9 < *(int64_t *)((int64_t)*(undefined **)0x20 + 0x38)) {
                return 1;
            }
            iVar3 = 0;
            iVar5 = -1;
            while( true ) {
                uVar4 = *(uint64_t *)((int64_t)*(undefined **)0x20 + 0x60);
                if ((int64_t)(uVar4 - 1) <= iVar3) {
                    if (iVar5 < 0) {
                        uVar4 = 0;
                    } else {
                        uVar4 = CONCAT71((unkint7)((uint64_t)iVar3 >> 8), 
                                         iVar5 < *(int64_t *)((int64_t)*(undefined **)0x20 + 0x38));
                    }
                    return uVar4 & 0xffffffff;
                }
                iVar9 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x58);
                uVar10 = iVar3 + 1;
                uVar1 = *(undefined8 *)(iVar3 * 0x10 + iVar9);
                uVar2 = *(undefined8 *)(iVar3 * 0x10 + 8 + iVar9);
                if (uVar4 <= uVar10) break;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar1;
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0) = iVar3;
                *(uint64_t *)((int64_t)*(undefined **)0x20 + -0xb8) = uVar10;
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0) = iVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd0) = uVar2;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = *(undefined8 *)(uVar10 * 0x10 + iVar9);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe8) = *(undefined8 *)(uVar10 * 0x10 + 8 + iVar9);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x208) = 0xe3e5bb;
                iVar3 = runtime_cmpstring(uVar1);
                if (iVar3 < 0) {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x208) = 0xe3e5fb;
                    auVar11 = runtime_concatstring3((undefined *)((int64_t)*(undefined **)0x20 + -0x1a8), 
                                              *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20), 
                                              *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd0), 0x116850a /* "|" */, 1, 
                                              *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38), 
                                              *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe8));
                } else {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x208) = 0xe3e633;
                    auVar11 = runtime_concatstring3((undefined *)((int64_t)*(undefined **)0x20 + -0x1c8), 
                                              *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38), 
                                              *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe8), 0x116850a /* "|" */, 1, 
                                              *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20), 
                                              *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd0));
                }
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x208) = 0xe3e64d;
                runtime_mapaccess2_faststr(0x107d5e0, *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x70), auVar11._0_8_, 
                                auVar11._8_8_);
                if (extraout_BL_01 == '\0') {
                    iVar5 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0);
                } else {
                    iVar5 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0);
                    if (*(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0) <
                        *(int64_t *)((int64_t)*(undefined **)0x20 + 0x38)) {
                        iVar5 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0);
                    }
                }
                iVar3 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb8);
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x208) = 0xe3e6aa;
            runtime_panicIndex(uVar10, uVar2, uVar4);
            uVar10 = extraout_R9;
code_r0x00e3e6aa:
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x208) = 0xe3e6b2;
            in_RAX = runtime_panicIndex(uVar10);
        }
        *(undefined8 *)(puVar7 + 0x70) = in_RAX;
        *(undefined8 *)(puVar7 + -8) = 0xe3e6bd;
        runtime_morestack_noctxt_abi0();
        in_RAX = *(undefined8 *)(puVar7 + 0x70);
        *(undefined **)0x20 = (BADSPACEBASE *)puVar7;
    } while( true );
}

/* CAS-Backend/pkg/diapdu.nextConflictWaveEdgeIndex | VA 0xe3e6e0 | traffic_opposite.go:217
   DWARF parameters and results: s CAS-Backend/pkg/diapdu.runSnapEx, conflict map[string]struct {}, idx int, ok bool
   DWARF locals: i int, in bool, .autotmp_14 struct {}, .autotmp_6 struct {} */
int64_t __stdcall
pkg_diapdu_nextConflictWaveEdgeIndex
          (int64_t arg_38h, int64_t arg_50h, int64_t arg_60h, int64_t arg_70h, int64_t arg_110h, int64_t arg_118h)
{
    uint64_t uVar1;
    uint64_t uVar2;
    int64_t iVar3;
    undefined8 uVar4;
    undefined8 uVar5;
    int64_t *in_RAX;
    int64_t iVar6;
    char extraout_BL;
    undefined *puVar7;
    undefined *unaff_RBP;
    undefined *puVar8;
    int64_t unaff_R14;
    undefined auVar9 [16];
    int64_t var_78h;
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    do {
        puVar7 = (undefined *)*(undefined **)0x20;
        puVar8 = unaff_RBP;
        if (*(undefined **)(unaff_R14 + 0x10) < (undefined *)((int64_t)*(undefined **)0x20 + -0x30)) {
            puVar8 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            puVar7 = (undefined *)((int64_t)*(undefined **)0x20 + -0xb0);
            if ((*(char *)((int64_t)*(undefined **)0x20 + 0x50) == '\0') ||
               (*(int64_t *)((int64_t)*(undefined **)0x20 + 0x60) < 2)) {
                return -1;
            }
            if (in_RAX == (int64_t *)0x0) {
                iVar6 = 0;
            } else {
                iVar6 = *in_RAX;
            }
            if (iVar6 == 0) {
                return -1;
            }
            *(int64_t **)((int64_t)*(undefined **)0x20 + 0x70) = in_RAX;
            iVar6 = 0;
            while( true ) {
                uVar2 = *(uint64_t *)((int64_t)*(undefined **)0x20 + 0x60);
                if ((int64_t)(uVar2 - 1) <= iVar6) {
                    return -1;
                }
                iVar3 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x58);
                uVar1 = iVar6 + 1;
                uVar4 = *(undefined8 *)(iVar6 * 0x10 + iVar3);
                uVar5 = *(undefined8 *)(iVar6 * 0x10 + 8 + iVar3);
                if (uVar2 <= uVar1) break;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = uVar5;
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x20) = iVar6;
                *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x28) = uVar1;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = uVar4;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = *(undefined8 *)(iVar3 + uVar1 * 0x10);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = *(undefined8 *)(iVar3 + 8 + uVar1 * 0x10);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe3e7d0;
                iVar6 = runtime_cmpstring(uVar4);
                if (iVar6 < 0) {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe3e808;
                    auVar9 = runtime_concatstring3((undefined *)((int64_t)*(undefined **)0x20 + -0x58), 
                                             *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10), 
                                             *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30), 0x116850a /* "|" */, 1, 
                                             *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18), 
                                             *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38));
                } else {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe3e83d;
                    auVar9 = runtime_concatstring3((undefined *)((int64_t)*(undefined **)0x20 + -0x78), 
                                             *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18), 
                                             *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38), 0x116850a /* "|" */, 1, 
                                             *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10), 
                                             *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30));
                }
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe3e857;
                runtime_mapaccess2_faststr(0x107d5e0, *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x70), auVar9._0_8_, 
                                auVar9._8_8_);
                if ((extraout_BL != '\0') &&
                   (*(int64_t *)((int64_t)*(undefined **)0x20 + 0x38) <=
                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x20))) {
                    return *(int64_t *)((int64_t)*(undefined **)0x20 + -0x20);
                }
                iVar6 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x28);
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe3e8a5;
            in_RAX = (int64_t *)runtime_panicIndex(uVar1, uVar5, uVar2);
        }
        *(int64_t **)(puVar7 + 0x70) = in_RAX;
        *(undefined8 *)(puVar7 + -8) = 0xe3e8b0;
        runtime_morestack_noctxt_abi0();
        in_RAX = *(int64_t **)(puVar7 + 0x70);
        *(undefined **)0x20 = (BADSPACEBASE *)puVar7;
        unaff_RBP = puVar8;
    } while( true );
}

/* CAS-Backend/pkg/diapdu.effectiveDirectedEdgeOnConflict | VA 0xe3e8c0 | traffic_opposite.go:233
   DWARF parameters and results: s CAS-Backend/pkg/diapdu.runSnapEx, conflict map[string]struct {}, from string, to string, ok bool
   DWARF locals: idx int, .autotmp_22 struct {} */
undefined8 __stdcall
pkg_diapdu_effectiveDirectedEdgeOnConflict
          (int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
          int64_t arg_50h, int64_t arg_58h, int64_t arg_60h, int64_t arg_70h, int64_t arg_98h, int64_t arg_d8h,
          int64_t arg_150h)
{
    uint64_t uVar1;
    undefined8 uVar2;
    uint64_t uVar3;
    char cVar4;
    int64_t *in_RAX;
    int64_t iVar5;
    uint64_t uVar6;
    char extraout_BL;
    char extraout_BL_00;
    undefined *puVar7;
    undefined8 unaff_RBP;
    int64_t unaff_R14;
    undefined auVar8 [16];
    int64_t var_150h;
    int64_t var_138h;
    int64_t var_d0h;
    int64_t var_90h;
    int64_t var_88h;
    int64_t var_80h;
    int64_t var_78h;
    int64_t var_68h;
    int64_t var_60h;
    int64_t var_58h;
    int64_t var_38h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    do {
        puVar7 = (undefined *)*(undefined **)0x20;
        if (*(undefined **)(unaff_R14 + 0x10) < (undefined *)((int64_t)*(undefined **)0x20 + -0xc0)) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            puVar7 = (undefined *)((int64_t)*(undefined **)0x20 + -0x140);
            if (*(char *)((int64_t)*(undefined **)0x20 + 0x50) == '\0') {
                return 0;
            }
            if (in_RAX == (int64_t *)0x0) {
                iVar5 = 0;
            } else {
                iVar5 = *in_RAX;
            }
            if (iVar5 == 0) {
                return 0;
            }
            *(int64_t **)((int64_t)*(undefined **)0x20 + 0x70) = in_RAX;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x140) = *(undefined8 *)((int64_t)*(undefined **)0x20 + 8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -0x150) = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x148) = 0xe3e939;
            runtime_duffcopy_offset_812();
            uVar2 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x150);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x148) = 0xe3e945;
            cVar4 = pkg_diapdu_winnerClearedOppositeZone();
            if (cVar4 != '\0') {
                return 0;
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x80) = *(undefined8 *)((int64_t)*(undefined **)0x20 + 8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x150) = uVar2;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x148) = 0xe3e98f;
            runtime_duffcopy_offset_812();
            uVar2 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x150);
            if (*(char *)((int64_t)*(undefined **)0x20 + -0x38) != '\0') {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x88) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x90) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x148) = 0xe3e9eb;
                iVar5 = runtime_cmpstring();
                if (iVar5 < 0) {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x148) = 0xe3ea29;
                    auVar8 = runtime_concatstring3((undefined *)((int64_t)*(undefined **)0x20 + -0xb0), 
                                             *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10), 
                                             *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x88), 0x116850a /* "|" */, 1, 
                                             *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18), 
                                             *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x90));
                } else {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x148) = 0xe3ea65;
                    auVar8 = runtime_concatstring3((undefined *)((int64_t)*(undefined **)0x20 + -0xd0), 
                                             *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18), 
                                             *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x90), 0x116850a /* "|" */, 1, 
                                             *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10), 
                                             *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x88));
                }
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x148) = 0xe3ea7f;
                runtime_mapaccess2_faststr(0x107d5e0, *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x70), auVar8._0_8_, 
                                auVar8._8_8_);
                if (extraout_BL != '\0') {
                    return *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x18);
                }
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x140) = *(undefined8 *)((int64_t)*(undefined **)0x20 + 8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x150) = uVar2;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x148) = 0xe3eab0;
            runtime_duffcopy_offset_812();
            unaff_RBP = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x150);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x148) = 0xe3eac5;
            uVar6 = pkg_diapdu_nextConflictWaveEdgeIndex
                              (*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                               *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                               *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                               *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                               *(int64_t *)((int64_t)*(undefined **)0x20 + -0x38), 
                               *(int64_t *)((int64_t)*(undefined **)0x20 + -0x30));
            if (extraout_BL_00 == '\0') {
                return 0;
            }
            uVar1 = uVar6 + 1;
            uVar3 = *(uint64_t *)((int64_t)*(undefined **)0x20 + 0x60);
            if ((int64_t)uVar3 <= (int64_t)uVar1) {
                return 0;
            }
            if (uVar6 < uVar3) {
                uVar2 = *(undefined8 *)(*(int64_t *)((int64_t)*(undefined **)0x20 + 0x58) + 8 + uVar6 * 0x10);
                if (uVar1 < uVar3) {
                    return *(undefined8 *)(*(int64_t *)((int64_t)*(undefined **)0x20 + 0x58) + uVar6 * 0x10);
                }
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x148) = 0xe3eb9c;
                runtime_panicIndex(uVar1, uVar2);
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x148) = 0xe3eba5;
            in_RAX = (int64_t *)runtime_panicIndex();
        }
        *(int64_t **)(puVar7 + 0x70) = in_RAX;
        *(undefined8 *)(puVar7 + -8) = 0xe3ebb0;
        runtime_morestack_noctxt_abi0();
        in_RAX = *(int64_t **)(puVar7 + 0x70);
        *(undefined **)0x20 = (BADSPACEBASE *)puVar7;
    } while( true );
}

/* CAS-Backend/pkg/diapdu.vehiclesOppositeInConflict | VA 0xe3ebc0 | traffic_opposite.go:260
   DWARF parameters and results: sa CAS-Backend/pkg/diapdu.runSnapEx, sb CAS-Backend/pkg/diapdu.runSnapEx, conflict map[string]struct {}, ~r0 bool
   DWARF locals: okA bool, okB bool, epSet map[string]bool, aFrom string, aTo string, bFrom string, bTo string, aEntry string, bEntry string, eps [2]string, ~r0.ptr *uint8, ~r0.len int */
// WARNING: Variable defined which should be unmapped: var_258h
// WARNING: Variable defined which should be unmapped: var_250h
// WARNING: Variable defined which should be unmapped: var_248h
// WARNING: Variable defined which should be unmapped: var_110h
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Detected overlap for variable var_2ch
// WARNING: [rz-ghidra] Detected overlap for variable var_1e0h

undefined8 __stdcall
pkg_diapdu_vehiclesOppositeInConflict
          (int64_t arg_8h, int64_t arg_10h, int64_t arg_70h, int64_t arg_78h, int64_t arg_d8h, int64_t arg_120h,
          int64_t arg_168h)
{
    char cVar1;
    undefined4 uVar2;
    undefined8 in_RAX;
    int64_t iVar3;
    undefined *puVar4;
    char *pcVar5;
    int64_t extraout_RCX;
    int64_t extraout_RCX_00;
    int64_t extraout_RBX;
    int64_t extraout_RBX_00;
    int64_t extraout_RBX_01;
    int64_t extraout_RBX_02;
    char extraout_SIL;
    char extraout_SIL_00;
    char extraout_SIL_01;
    char extraout_SIL_02;
    int64_t extraout_RDI;
    int64_t iVar6;
    int64_t extraout_RDI_00;
    int64_t unaff_R14;
    undefined8 in_XMM15_Qb;
    undefined auVar7 [16];
    int64_t var_268h;
    int64_t var_258h;
    int64_t var_250h;
    int64_t var_248h;
    undefined4 in_stack_fffffffffffffdc0;
    undefined4 in_stack_fffffffffffffdc4;
    int64_t in_stack_fffffffffffffdc8;
    int64_t in_stack_fffffffffffffdd0;
    int64_t in_stack_fffffffffffffdf0;
    int64_t in_stack_fffffffffffffdf8;
    int64_t in_stack_fffffffffffffe00;
    int64_t in_stack_fffffffffffffe10;
    int64_t var_1e1h;
    undefined auStack_1d8 [16];
    int64_t in_stack_fffffffffffffe38;
    int64_t var_1c0h;
    int64_t var_1a0h;
    int64_t in_stack_fffffffffffffe78;
    int64_t var_180h;
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
    int64_t var_38h;
    undefined4 uStack_30;
    undefined4 var_2ch;
    int64_t var_28h;
    int64_t var_18h;
    int64_t var_8h;
    
    while (uStack_30 = (undefined4)in_XMM15_Qb, auStack_1d8 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe3f225;
        runtime_morestack_noctxt_abi0();
    }
    runtime_duffcopy_offset_812();
    iVar3 = extraout_RCX;
    iVar6 = extraout_RDI;
    cVar1 = extraout_SIL;
    var_d8h = pkg_diapdu_effectiveDirectedEdgeOnConflict
                        (arg_8h, var_250h, CONCAT44(var_248h._4_4_, (undefined4)var_248h), 
                         CONCAT44(in_stack_fffffffffffffdc4, in_stack_fffffffffffffdc0), in_stack_fffffffffffffdc8, 
                         in_stack_fffffffffffffdd0, in_stack_fffffffffffffdf0, in_stack_fffffffffffffdf8, 
                         in_stack_fffffffffffffe00, in_stack_fffffffffffffe10, in_stack_fffffffffffffe38, 
                         in_stack_fffffffffffffe78, var_110h);
    var_1e1h._0_1_ = cVar1;
    var_138h = iVar6;
    var_130h = extraout_RBX;
    var_e0h = iVar3;
    runtime_duffcopy_offset_812();
    iVar3 = extraout_RCX_00;
    iVar6 = extraout_RDI_00;
    cVar1 = extraout_SIL_00;
    var_e8h = pkg_diapdu_effectiveDirectedEdgeOnConflict
                        (arg_70h, var_250h, CONCAT44(var_248h._4_4_, (undefined4)var_248h), 
                         CONCAT44(in_stack_fffffffffffffdc4, in_stack_fffffffffffffdc0), in_stack_fffffffffffffdc8, 
                         in_stack_fffffffffffffdd0, in_stack_fffffffffffffdf0, in_stack_fffffffffffffdf8, 
                         in_stack_fffffffffffffe00, in_stack_fffffffffffffe10, in_stack_fffffffffffffe38, 
                         in_stack_fffffffffffffe78, var_110h);
    if (((char)var_1e1h == '\0') || (cVar1 == '\0')) {
        return 0;
    }
    var_148h = iVar6;
    var_140h = extraout_RBX_00;
    var_f0h = iVar3;
    if (extraout_RBX_00 == var_130h) {
        cVar1 = runtime_memequal(var_d8h, var_e8h, var_130h);
    } else {
        cVar1 = '\0';
    }
    if (cVar1 != '\0') {
        if (var_148h == var_138h) {
            cVar1 = runtime_memequal(var_e0h, var_f0h, var_138h);
        } else {
            cVar1 = '\0';
        }
        if (cVar1 != '\0') {
            return 0;
        }
    }
    if ((((var_130h != 0) && (var_138h != 0)) && (var_140h != 0)) && (var_148h != 0)) {
        iVar3 = runtime_cmpstring(var_d8h, var_130h, var_e0h, var_138h);
        if (iVar3 < 0) {
            auVar7 = runtime_concatstring3(&var_180h, var_d8h, var_130h, 0x116850a /* "|" */, 1, var_e0h, var_138h);
        } else {
            auVar7 = runtime_concatstring3(&var_1a0h, var_e0h, var_138h, 0x116850a /* "|" */, 1, var_d8h, var_130h);
        }
        var_150h = auVar7._8_8_;
        var_118h = auVar7._0_8_;
        iVar3 = runtime_cmpstring(var_e8h, var_140h, var_f0h, var_148h);
        if (iVar3 < 0) {
            auVar7 = runtime_concatstring3(&var_1c0h, var_e8h, var_140h, 0x116850a /* "|" */, 1, var_f0h, var_148h);
        } else {
            auVar7 = runtime_concatstring3((int64_t)&var_1e1h + 1, var_f0h, var_148h, 0x116850a /* "|" */, 1, var_e8h, var_140h);
        }
        if (var_150h == auVar7._8_8_) {
            cVar1 = runtime_memequal(var_118h, auVar7._0_8_);
        } else {
            cVar1 = '\0';
        }
        if (cVar1 == '\0') {
            cVar1 = '\0';
        } else if (var_148h == var_130h) {
            cVar1 = runtime_memequal(var_d8h, var_f0h);
        } else {
            cVar1 = '\0';
        }
        if (cVar1 == '\0') {
            cVar1 = '\0';
        } else if (var_140h == var_138h) {
            cVar1 = runtime_memequal(var_e0h, var_e8h);
        } else {
            cVar1 = '\0';
        }
        if (cVar1 != '\0') {
            return 1;
        }
    }
    pkg_diapdu_conflictZoneEndpoints(in_RAX);
    var_110h = arg_70h;
    var_108h = var_250h;
    var_100h._0_4_ = (undefined4)var_248h;
    var_100h._4_4_ = var_248h._4_4_;
    if ((var_250h == 0) || (CONCAT44(in_stack_fffffffffffffdc4, in_stack_fffffffffffffdc0) == 0)) {
        return 0;
    }
    var_f8h._0_4_ = in_stack_fffffffffffffdc0;
    var_f8h._4_4_ = in_stack_fffffffffffffdc4;
    runtime_duffzero_offset_313();
    var_28h = (int64_t)&var_d0h;
    uVar2 = runtime_rand32();
    _uStack_30 = CONCAT44(uVar2, uStack_30);
    puVar4 = (undefined *)runtime_mapassign_faststr(0x107d940, &var_38h, var_110h, var_108h);
    *puVar4 = 1;
    puVar4 = (undefined *)
             runtime_mapassign_faststr(0x107d940, &var_38h, CONCAT44(var_100h._4_4_, (undefined4)var_100h), 
                             CONCAT44(var_f8h._4_4_, (undefined4)var_f8h));
    *puVar4 = 1;
    runtime_duffcopy_offset_812();
    cVar1 = extraout_SIL_01;
    var_120h = pkg_diapdu_effectiveDirectedEdgeOnConflict
                         (arg_8h, var_250h, CONCAT44(var_248h._4_4_, (undefined4)var_248h), 
                          CONCAT44(in_stack_fffffffffffffdc4, in_stack_fffffffffffffdc0), in_stack_fffffffffffffdc8, 
                          in_stack_fffffffffffffdd0, in_stack_fffffffffffffdf0, in_stack_fffffffffffffdf8, 
                          in_stack_fffffffffffffe00, in_stack_fffffffffffffe10, in_stack_fffffffffffffe38, 
                          in_stack_fffffffffffffe78, var_110h);
    var_158h = extraout_RBX_01;
    if (cVar1 == '\0') {
        var_158h = 0;
        var_120h = 0;
    }
    runtime_duffcopy_offset_812();
    cVar1 = extraout_SIL_02;
    var_128h = pkg_diapdu_effectiveDirectedEdgeOnConflict
                         (arg_70h, var_250h, CONCAT44(var_248h._4_4_, (undefined4)var_248h), 
                          CONCAT44(in_stack_fffffffffffffdc4, in_stack_fffffffffffffdc0), in_stack_fffffffffffffdc8, 
                          in_stack_fffffffffffffdd0, in_stack_fffffffffffffdf0, in_stack_fffffffffffffdf8, 
                          in_stack_fffffffffffffe00, in_stack_fffffffffffffe10, in_stack_fffffffffffffe38, 
                          in_stack_fffffffffffffe78, var_110h);
    var_160h = extraout_RBX_02;
    if (cVar1 == '\0') {
        var_160h = 0;
        var_128h = 0;
    }
    if ((var_158h != 0) && (var_160h != 0)) {
        if (var_160h == var_158h) {
            cVar1 = runtime_memequal(var_120h, var_128h, var_158h);
        } else {
            cVar1 = '\0';
        }
        if (cVar1 == '\0') {
            pcVar5 = (char *)runtime_mapaccess1_faststr(0x107d940, &var_38h, var_120h, var_158h);
            if ((*pcVar5 != '\0') &&
               (pcVar5 = (char *)runtime_mapaccess1_faststr(0x107d940, &var_38h, var_128h, var_160h), *pcVar5 != '\0')) {
                return 1;
            }
            return 0;
        }
    }
    return 0;
}

/* CAS-Backend/pkg/diapdu.shouldPauseForOpposite | VA 0xe3f240 | traffic_opposite.go:289
   DWARF parameters and results: waiter CAS-Backend/pkg/diapdu.runSnapEx, winnerSnap CAS-Backend/pkg/diapdu.runSnapEx, conflict map[string]struct {}, ~r0 bool
   DWARF locals: nextIdx int, ok bool, entry string, .autotmp_26 struct {} */
// WARNING: [rz-ghidra] Removing arg arg_268h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Removing arg arg_220h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Removing arg arg_210h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_2ch
// WARNING: [rz-ghidra] Detected overlap for variable var_1e0h

undefined8 __stdcall
pkg_diapdu_shouldPauseForOpposite
          (int64_t arg_8h, int64_t arg_10h, int64_t arg_28h, int64_t arg_50h, int64_t arg_58h, int64_t arg_70h,
          int64_t arg_78h, int64_t arg_d8h, int64_t arg_100h, int64_t arg_1b8h, int64_t arg_1e0h)
{
    undefined8 uVar1;
    char cVar2;
    undefined8 in_RAX;
    int64_t iVar3;
    uint64_t uVar4;
    char extraout_BL;
    char extraout_BL_00;
    undefined *puVar5;
    undefined8 unaff_RBP;
    int64_t unaff_R14;
    undefined auVar6 [16];
    int64_t var_1b8h;
    int64_t var_1a0h;
    int64_t var_140h;
    int64_t var_138h;
    int64_t var_d0h;
    int64_t var_90h;
    int64_t var_88h;
    int64_t var_80h;
    int64_t var_78h;
    int64_t var_70h;
    int64_t var_68h;
    int64_t var_60h;
    int64_t var_58h;
    int64_t var_38h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    do {
        puVar5 = (undefined *)*(undefined **)0x20;
        if (*(undefined **)(unaff_R14 + 0x10) < (undefined *)((int64_t)*(undefined **)0x20 + -0x128)) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            puVar5 = (undefined *)((int64_t)*(undefined **)0x20 + -0x1a8);
            if ((*(char *)((int64_t)*(undefined **)0x20 + 0x50) == '\0') ||
               (*(char *)((int64_t)*(undefined **)0x20 + 0xb8) == '\0')) {
                return 0;
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + 0xd8) = in_RAX;
            if (*(int64_t *)((int64_t)*(undefined **)0x20 + 0x78) == *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10))
            {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b0) = 0xe3f2ac;
                cVar2 = runtime_memequal(*(undefined8 *)((int64_t)*(undefined **)0x20 + 8), 
                                        *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x70));
            } else {
                cVar2 = '\0';
            }
            if (cVar2 != '\0') {
                return 0;
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a8) = *(undefined8 *)((int64_t)*(undefined **)0x20 + 8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -0x1b8) = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b0) = 0xe3f2ef;
            runtime_duffcopy_offset_812();
            uVar1 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b0) = 0xe3f2f8;
            cVar2 = pkg_diapdu_winnerClearedOppositeZone();
            if (cVar2 != '\0') {
                return 0;
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a8) = *(undefined8 *)((int64_t)*(undefined **)0x20 + 8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8) = uVar1;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b0) = 0xe3f330;
            runtime_duffcopy_offset_812();
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x140) =
                 *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x70);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8) =
                 *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b0) = 0xe3f36f;
            runtime_duffcopy_offset_812();
            uVar1 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b0) = 0xe3f385;
            cVar2 = pkg_diapdu_vehiclesOppositeInConflict
                              (*(int64_t *)((int64_t)*(undefined **)0x20 + -0x1a8), 
                               *(int64_t *)((int64_t)*(undefined **)0x20 + -0x1a0), 
                               *(int64_t *)((int64_t)*(undefined **)0x20 + -0x140), 
                               *(int64_t *)((int64_t)*(undefined **)0x20 + -0x138), 
                               *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                               *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90), 
                               *(int64_t *)((int64_t)*(undefined **)0x20 + -0x48));
            if (cVar2 == '\0') {
                return 0;
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x80) = *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x70)
            ;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8) = uVar1;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b0) = 0xe3f3cf;
            runtime_duffcopy_offset_812();
            if (*(char *)((int64_t)*(undefined **)0x20 + -0x38) == '\0') {
                return 0;
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a8) =
                 *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x70);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8) =
                 *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b0) = 0xe3f40f;
            runtime_duffcopy_offset_812();
            uVar1 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b0) = 0xe3f425;
            cVar2 = pkg_diapdu_winnerClearedOppositeZone(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0xd8));
            if (cVar2 != '\0') {
                return 0;
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x80) = *(undefined8 *)((int64_t)*(undefined **)0x20 + 8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8) = uVar1;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b0) = 0xe3f46f;
            runtime_duffcopy_offset_812();
            uVar1 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8);
            if (*(char *)((int64_t)*(undefined **)0x20 + -0x38) != '\0') {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x88) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x90) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b0) = 0xe3f4cb;
                iVar3 = runtime_cmpstring();
                if (iVar3 < 0) {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b0) = 0xe3f509;
                    auVar6 = runtime_concatstring3((undefined *)((int64_t)*(undefined **)0x20 + -0xb0), 
                                             *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10), 
                                             *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x88), 0x116850a /* "|" */, 1, 
                                             *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18), 
                                             *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x90));
                } else {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b0) = 0xe3f545;
                    auVar6 = runtime_concatstring3((undefined *)((int64_t)*(undefined **)0x20 + -0xd0), 
                                             *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18), 
                                             *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x90), 0x116850a /* "|" */, 1, 
                                             *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10), 
                                             *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x88));
                }
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b0) = 0xe3f55f;
                runtime_mapaccess2_faststr(0x107d5e0, *(undefined8 *)((int64_t)*(undefined **)0x20 + 0xd8), auVar6._0_8_, 
                                auVar6._8_8_);
                if (extraout_BL != '\0') {
                    return 1;
                }
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a8) = *(undefined8 *)((int64_t)*(undefined **)0x20 + 8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8) = uVar1;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b0) = 0xe3f590;
            runtime_duffcopy_offset_812();
            unaff_RBP = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b0) = 0xe3f5a5;
            uVar4 = pkg_diapdu_nextConflictWaveEdgeIndex
                              (*(int64_t *)((int64_t)*(undefined **)0x20 + -0x178), 
                               *(int64_t *)((int64_t)*(undefined **)0x20 + -0x160), 
                               *(int64_t *)((int64_t)*(undefined **)0x20 + -0x150), 
                               *(int64_t *)((int64_t)*(undefined **)0x20 + -0x140), 
                               *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0), 
                               *(int64_t *)((int64_t)*(undefined **)0x20 + -0x98));
            if (extraout_BL_00 == '\0') {
                return 0;
            }
            if ((int64_t)*(uint64_t *)((int64_t)*(undefined **)0x20 + 0x60) <= (int64_t)uVar4) {
                return 0;
            }
            if (uVar4 < *(uint64_t *)((int64_t)*(undefined **)0x20 + 0x60)) {
                iVar3 = *(int64_t *)(*(int64_t *)((int64_t)*(undefined **)0x20 + 0x58) + 8 + uVar4 * 0x10);
                uVar1 = *(undefined8 *)(*(int64_t *)((int64_t)*(undefined **)0x20 + 0x58) + uVar4 * 0x10);
                if (iVar3 != 0) {
                    if (*(int64_t *)((int64_t)*(undefined **)0x20 + 0x30) == iVar3) {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b0) = 0xe3f5f6;
                        cVar2 = runtime_memequal(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x28), uVar1);
                    } else {
                        cVar2 = '\0';
                    }
                    if (cVar2 != '\0') {
                        return 1;
                    }
                }
                return 0;
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b0) = 0xe3f652;
            in_RAX = runtime_panicIndex();
        }
        *(undefined8 *)(puVar5 + 0xd8) = in_RAX;
        *(undefined8 *)(puVar5 + -8) = 0xe3f665;
        runtime_morestack_noctxt_abi0();
        in_RAX = *(undefined8 *)(puVar5 + 0xd8);
        *(undefined **)0x20 = (BADSPACEBASE *)puVar5;
    } while( true );
}

/* CAS-Backend/pkg/diapdu.findOppositeConflicts | VA 0xe3f680 | traffic_opposite.go:318
   DWARF parameters and results: snaps []CAS-Backend/pkg/diapdu.runSnapEx, ~r0 []CAS-Backend/pkg/diapdu.oppositeConflict
   DWARF locals: out []CAS-Backend/pkg/diapdu.oppositeConflict, i int, j int, edges map[string]struct {}, a CAS-Backend/pkg/diapdu.runSnapEx, b CAS-Backend/pkg/diapdu.runSnapEx */
int64_t __stdcall
pkg_diapdu_findOppositeConflicts(int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_60h)
{
    undefined8 uVar1;
    int64_t in_RAX;
    int64_t *piVar2;
    int64_t extraout_RAX;
    int64_t iVar3;
    int64_t extraout_RAX_00;
    int64_t iVar4;
    uint64_t extraout_RCX;
    uint64_t uVar5;
    int64_t extraout_RCX_00;
    int64_t iVar6;
    int64_t unaff_RBX;
    uint64_t uVar7;
    uint64_t uVar8;
    uint64_t extraout_RBX;
    int64_t extraout_RBX_00;
    undefined *puVar9;
    undefined8 unaff_RBP;
    undefined *puVar10;
    int64_t iVar11;
    uint64_t extraout_R9;
    undefined8 extraout_R11;
    int64_t unaff_R14;
    undefined8 in_XMM15_Qa;
    undefined8 in_XMM15_Qb;
    undefined auVar12 [16];
    int64_t var_1e0h;
    int64_t var_1d0h;
    int64_t var_1c8h;
    int64_t var_1c0h;
    int64_t var_1b8h;
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
    int64_t var_f8h;
    int64_t var_f0h;
    int64_t var_e8h;
    int64_t var_e0h;
    int64_t var_d8h;
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
    int64_t var_38h;
    int64_t var_28h;
    int64_t var_18h;
    int64_t var_8h;
    
    while (puVar9 = (undefined *)*(undefined **)0x20,
          (undefined *)((int64_t)*(undefined **)0x20 + -0x150) <= *(undefined **)(unaff_R14 + 0x10)) {
code_r0x00e3f9c6:
        *(int64_t *)(puVar9 + 8) = in_RAX;
        *(int64_t *)(puVar9 + 0x10) = unaff_RBX;
        *(int64_t *)(puVar9 + 0x18) = arg4;
        *(undefined8 *)(puVar9 + -8) = 0xe3f9da;
        runtime_morestack_noctxt_abi0();
        in_RAX = *(int64_t *)(puVar9 + 8);
        unaff_RBX = *(int64_t *)(puVar9 + 0x10);
        arg4 = *(int64_t *)(puVar9 + 0x18);
        *(undefined **)0x20 = (BADSPACEBASE *)puVar9;
    }
    puVar10 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
    puVar9 = (undefined *)((int64_t)*(undefined **)0x20 + -0x1d0);
    *(int64_t *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
    *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
    uVar5 = 0;
    uVar8 = 0;
    iVar3 = 0;
    iVar6 = 0;
    do {
        iVar4 = iVar6;
        if (unaff_RBX <= iVar4) {
            return iVar3;
        }
        *(int64_t *)((int64_t)*(undefined **)0x20 + -0x178) = iVar4;
        iVar6 = iVar4 + 1;
        *(int64_t *)((int64_t)*(undefined **)0x20 + -0x180) = iVar6;
        iVar11 = iVar6;
        while (iVar11 < unaff_RBX) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe0) = *(undefined8 *)(iVar4 * 0x68 + in_RAX);
            *(undefined **)((int64_t)*(undefined **)0x20 + -0x1e0) = puVar10;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1d8) = 0xe3f755;
            auVar12 = runtime_duffcopy_offset_812();
            uVar7 = auVar12._8_8_;
            unaff_RBP = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1e0);
            if (uVar7 <= extraout_R9) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1d8) = 0xe3f9c5;
                runtime_panicIndex(extraout_R9, uVar7, uVar7);
                in_RAX = extraout_RAX_00;
                arg4 = extraout_RCX_00;
                unaff_RBX = extraout_RBX_00;
                goto code_r0x00e3f9c6;
            }
            *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x188) = uVar5;
            *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x160) = extraout_R9;
            *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x168) = uVar8;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = extraout_R11;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x148) = *(undefined8 *)(extraout_R9 * 0x68 + auVar12._0_8_)
            ;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1e0) = unaff_RBP;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1d8) = 0xe3f7af;
            runtime_duffcopy_offset_812();
            puVar10 = *(undefined **)((int64_t)*(undefined **)0x20 + -0x1e0);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1d8) = 0xe3f7eb;
            piVar2 = (int64_t *)
                     pkg_diapdu_oppositeConflictEdges(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x90), 
                                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x88), 
                                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x80), 
                                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8), 
                                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0), 
                                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe8));
            if (piVar2 == (int64_t *)0x0) {
                iVar6 = 0;
            } else {
                iVar6 = *piVar2;
            }
            if (iVar6 == 0) {
                uVar8 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x168);
                uVar5 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x188);
                iVar3 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x78);
            } else {
                *(int64_t **)((int64_t)*(undefined **)0x20 + -0x150) = piVar2;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1d8) = 0xe3f825;
                pkg_diapdu_conflictZoneEndpoints();
                uVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x168) + 1;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1d0);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1c8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1c0);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe0);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x148);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x140);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x150);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
                *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x38) =
                     *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x18);
                *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x34) =
                     *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x14);
                *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x30) =
                     *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x10);
                *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x2c) =
                     *(undefined4 *)((int64_t)*(undefined **)0x20 + -0xc);
                uVar5 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x188);
                if (uVar5 < uVar8) {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1d8) = 0xe3f910;
                    runtime_growslice(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78), uVar8, uVar5, 1, 0x10f5d60);
                    iVar3 = extraout_RAX;
                    uVar5 = extraout_RCX;
                    uVar8 = extraout_RBX;
                } else {
                    iVar3 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x78);
                }
                iVar6 = uVar8 * 9;
                if (*(int32_t *)0x355db50 != 0) {
                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x158) = iVar3;
                    *(uint64_t *)((int64_t)*(undefined **)0x20 + -400) = uVar8;
                    *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x170) = uVar5;
                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x168) = iVar6;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1d8) = 0xe3f950;
                    runtime_wbMove(0x10f5d60, iVar3 + uVar8 * 0x48 + -0x48, 
                                    (undefined *)((int64_t)*(undefined **)0x20 + -0x70));
                    iVar3 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x158);
                    uVar5 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x170);
                    iVar6 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x168);
                    uVar8 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -400);
                }
                iVar4 = iVar3 + iVar6 * 8;
                iVar11 = iVar3 + iVar6 * 8;
                *(undefined8 *)(iVar3 + -0x48 + iVar6 * 8) = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70);
                uVar1 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60);
                *(undefined8 *)(iVar4 + -0x40) = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68);
                *(undefined8 *)(iVar4 + -0x38) = uVar1;
                uVar1 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50);
                *(undefined8 *)(iVar4 + -0x30) = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58);
                *(undefined8 *)(iVar4 + -0x28) = uVar1;
                uVar1 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40);
                *(undefined8 *)(iVar11 + -0x20) = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48);
                *(undefined8 *)(iVar11 + -0x18) = uVar1;
                uVar1 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30);
                *(undefined8 *)(iVar11 + -0x10) = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38);
                *(undefined8 *)(iVar11 + -8) = uVar1;
            }
            unaff_RBX = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10);
            in_RAX = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
            iVar4 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x178);
            iVar6 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x180);
            iVar11 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x160) + 1;
        }
    } while( true );
}

/* CAS-Backend/pkg/diapdu.(*DynamicTrafficController).pruneOppositeEnter | VA 0xe3fa00 | traffic_opposite.go:339
   DWARF parameters and results: dt *CAS-Backend/pkg/diapdu.DynamicTrafficController, snaps []CAS-Backend/pkg/diapdu.runSnapEx, conflicts []CAS-Backend/pkg/diapdu.oppositeConflict
   DWARF locals: snapByID map[string]CAS-Backend/pkg/diapdu.runSnapEx, ~r0.ptr *uint8, ~r0.len int, s CAS-Backend/pkg/diapdu.runSnapEx, c CAS-Backend/pkg/diapdu.oppositeConflict, m map[string]int64, pk string, vid string, ok bool */
// WARNING: Variable defined which should be unmapped: var_5f8h
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Removing arg arg_610h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Removing arg arg_278h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Removing arg arg_240h because it doesn't fit into ProtoModel

int64_t __stdcall
pkg_diapdu___DynamicTrafficController__pruneOppositeEnter
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, int64_t arg5, int64_t arg6,
          int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
          int64_t arg_38h, int64_t arg_e0h)
{
    int64_t iVar1;
    char cVar2;
    int64_t in_RAX;
    undefined8 uVar3;
    int64_t *piVar4;
    int64_t iVar5;
    int64_t extraout_RCX;
    undefined8 extraout_RCX_00;
    int64_t *unaff_RBX;
    undefined8 extraout_RBX;
    undefined8 extraout_RBX_00;
    int64_t *piVar6;
    int64_t unaff_R14;
    int64_t in_XMM15_Qa;
    undefined auVar7 [16];
    int64_t var_610h;
    int64_t var_5f8h;
    int64_t in_stack_fffffffffffffa30;
    int64_t in_stack_fffffffffffffa48;
    int64_t in_stack_fffffffffffffa50;
    int64_t in_stack_fffffffffffffa58;
    int64_t in_stack_fffffffffffffa68;
    int64_t var_590h;
    undefined auStack_580 [16];
    int64_t var_570h;
    int64_t var_550h;
    int64_t var_548h;
    int64_t var_540h;
    int64_t var_538h;
    int64_t var_530h;
    int64_t var_528h;
    int64_t var_520h;
    int64_t var_518h;
    int64_t var_510h;
    int64_t var_508h;
    int64_t var_500h;
    int64_t var_4f8h;
    int64_t var_4f0h;
    int64_t var_4e8h;
    int64_t var_4e0h;
    int64_t var_4d8h;
    int64_t iStack_4d0;
    int64_t var_4c8h;
    undefined4 uStack_4c0;
    undefined4 uStack_4bc;
    int64_t var_4b8h;
    int64_t var_4b0h;
    int64_t var_4a8h;
    int64_t var_4a0h;
    int64_t var_498h;
    int64_t var_490h;
    int64_t var_488h;
    int64_t var_480h;
    int64_t var_478h;
    int64_t var_470h;
    int64_t var_a0h;
    int64_t var_90h;
    int64_t var_80h;
    int64_t var_70h;
    int64_t var_68h;
    int64_t var_8h;
    
    while (auStack_580 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe3ff5b;
        runtime_morestack_noctxt_abi0();
    }
    if (*(int64_t *)(in_RAX + 0x30) == 0) {
        return in_RAX;
    }
    var_90h = in_XMM15_Qa;
    if (arg4 < 9) {
        runtime_duffzero_offset_14();
        var_90h = (int64_t)&var_470h;
        arg4 = extraout_RCX;
    }
    auVar7 = runtime_makemap(0x107d820, arg4, &var_a0h);
    while( true ) {
        var_510h = auVar7._0_8_;
        if (arg4 < 1) break;
        var_70h = *unaff_RBX;
        var_528h = arg4;
        var_498h = (int64_t)unaff_RBX;
        uVar3 = runtime_duffcopy_offset_812(var_510h, auVar7._8_8_, arg4, &var_68h, unaff_RBX + 1);
        piVar4 = (int64_t *)runtime_mapassign_faststr(0x107d820, uVar3, var_70h, var_68h);
        if (*(int32_t *)0x355db50 != 0) {
            var_4a0h = (int64_t)piVar4;
            runtime_wbMove(0x111d8c0, piVar4, &var_70h);
            piVar4 = (int64_t *)var_4a0h;
        }
        *piVar4 = var_70h;
        runtime_duffcopy_offset_812();
        auVar7._8_8_ = extraout_RBX;
        auVar7._0_8_ = var_510h;
        unaff_RBX = (int64_t *)(var_498h + 0x68);
        arg4 = var_528h + -1;
    }
    while (0 < arg5) {
        var_500h = *(int64_t *)arg2;
        var_538h = *(int64_t *)(arg2 + 8);
        var_4f0h = *(int64_t *)(arg2 + 0x10);
        var_540h = *(int64_t *)(arg2 + 0x18);
        var_4e0h = *(int64_t *)(arg2 + 0x20);
        var_4d8h = *(int64_t *)(arg2 + 0x28);
        iStack_4d0 = *(int64_t *)(arg2 + 0x30);
        var_4c8h._0_4_ = (undefined4)*(int64_t *)(arg2 + 0x38);
        var_4c8h._4_4_ = *(undefined4 *)(arg2 + 0x3c);
        uStack_4c0 = (undefined4)*(int64_t *)(arg2 + 0x40);
        uStack_4bc = *(undefined4 *)(arg2 + 0x44);
        var_528h = arg5;
        var_4f8h = var_538h;
        var_4e8h = var_540h;
        var_4b8h = var_4f0h;
        var_4b0h = var_500h;
        var_498h = arg2;
        iVar5 = runtime_cmpstring();
        if (iVar5 < 0) {
            auVar7 = runtime_concatstring3(&var_570h, var_4b0h, var_538h, 0x2e64cc0, 1, var_4b8h, var_540h);
        } else {
            auVar7 = runtime_concatstring3(&var_590h, var_4b8h, var_540h, 0x2e64cc0, 1, var_4b0h, var_538h);
        }
        var_550h = auVar7._8_8_;
        var_520h = auVar7._0_8_;
        piVar4 = (int64_t *)runtime_mapaccess1_faststr(0x107dac0, *(undefined8 *)(in_RAX + 0x30), var_520h, var_550h);
        if (*piVar4 != 0) {
            var_488h = var_4f8h;
            var_490h = var_500h;
            var_478h = var_4e8h;
            var_480h = var_4f0h;
            piVar6 = &var_490h;
            iVar5 = 0;
            var_508h = *piVar4;
            while (iVar5 < 2) {
                var_518h = *piVar6;
                iVar1 = piVar6[1];
                var_548h = iVar1;
                var_530h = iVar5;
                var_4a8h = (int64_t)piVar6;
                runtime_duffzero_offset_331();
                piVar4 = (int64_t *)runtime_mapaccess2_faststr(0x107d820, var_510h, extraout_RCX_00, iVar1);
                var_70h = *piVar4;
                runtime_duffcopy_offset_812();
                if ((char)extraout_RBX_00 != '\0') {
                    iVar5 = var_70h;
                    runtime_duffcopy_offset_812(var_4e0h, extraout_RBX_00, var_70h, &var_5f8h, &var_68h);
                    cVar2 = pkg_diapdu_vehicleExitedCurrentConflictWave
                                      (iVar5, var_5f8h, in_stack_fffffffffffffa30, in_stack_fffffffffffffa48, 
                                       in_stack_fffffffffffffa50, in_stack_fffffffffffffa58, in_stack_fffffffffffffa68);
                    if (cVar2 != '\0') {
                        runtime_mapdelete_faststr(0x107da60, var_508h, var_518h, var_548h);
                    }
                }
                piVar6 = (int64_t *)(var_4a8h + 0x10);
                iVar5 = var_530h + 1;
            }
            if (*(int64_t *)var_508h == 0) {
                runtime_mapdelete_faststr(0x107dac0, *(undefined8 *)(in_RAX + 0x30), var_520h, var_550h);
            }
        }
        arg2 = var_498h + 0x48;
        arg5 = var_528h + -1;
    }
    return var_510h;
}

/* CAS-Backend/pkg/diapdu.(*DynamicTrafficController).touchOppositeEnter | VA 0xe3ffa0 | traffic_opposite.go:366
   DWARF parameters and results: dt *CAS-Backend/pkg/diapdu.DynamicTrafficController, snaps []CAS-Backend/pkg/diapdu.runSnapEx, conflicts []CAS-Backend/pkg/diapdu.oppositeConflict
   DWARF locals: now int64, .autotmp_34 struct {}, ~r0.ptr *uint8, ~r0.len int, c CAS-Backend/pkg/diapdu.oppositeConflict, m map[string]int64, pk string, s CAS-Backend/pkg/diapdu.runSnapEx */
// WARNING: Variable defined which should be unmapped: var_8h

void __stdcall
pkg_diapdu___DynamicTrafficController__touchOppositeEnter
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, int64_t arg5, int64_t arg6,
          int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
          int64_t arg_38h, int64_t arg_b8h)
{
    uint8_t uVar1;
    int64_t in_RAX;
    undefined8 uVar2;
    int64_t iVar3;
    int64_t *piVar4;
    int64_t iVar5;
    int64_t extraout_RAX;
    int64_t extraout_RAX_00;
    int64_t *piVar6;
    int64_t *extraout_RCX;
    int64_t *extraout_RCX_00;
    int64_t *piVar7;
    char extraout_BL;
    int64_t *unaff_RBX;
    int64_t extraout_RBX;
    int64_t extraout_RBX_00;
    char cVar8;
    int64_t iVar9;
    int64_t extraout_R8;
    int64_t extraout_R8_00;
    undefined8 *extraout_R11;
    int64_t *extraout_R11_00;
    int64_t unaff_R14;
    undefined auVar10 [16];
    int64_t var_238h;
    int64_t var_1f0h;
    int64_t var_1d0h;
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
    int64_t var_120h;
    int64_t var_100h;
    int64_t var_f8h;
    int64_t var_98h;
    int64_t var_90h;
    int64_t var_88h;
    int64_t var_80h;
    int64_t var_78h;
    int64_t var_70h;
    int64_t var_68h;
    int64_t var_60h;
    int64_t iStack_58;
    int64_t var_50h;
    undefined4 uStack_48;
    undefined4 uStack_44;
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (&var_1a8h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe405da;
        runtime_morestack_noctxt_abi0();
    }
    if (*(int64_t *)(in_RAX + 0x30) == 0) {
        uVar2 = runtime_makemap_small();
        if (*(int32_t *)0x355db50 != 0) {
            uVar2 = runtime_gcWriteBarrier2();
            *extraout_R11 = uVar2;
            extraout_R11[1] = *(undefined8 *)(in_RAX + 0x30);
        }
        *(undefined8 *)(in_RAX + 0x30) = uVar2;
    }
    auVar10 = time_Now();
    iVar3 = auVar10._8_8_;
    if ((int64_t)auVar10._0_8_ < 0) {
        iVar3 = ((auVar10._0_8_ & 0x7fffffffffffffff) >> 0x1e) + 0xdd7b17f80;
    }
    var_1a8h = (int64_t)(int32_t)(auVar10._0_4_ & 0x3fffffff) + iVar3 * 1000000000 + -0x5e4dfc14c2e60000;
    while (0 < arg5) {
        var_88h = *(int64_t *)arg2;
        var_188h = *(int64_t *)(arg2 + 8);
        var_78h = *(int64_t *)(arg2 + 0x10);
        var_198h = *(int64_t *)(arg2 + 0x18);
        var_68h = *(int64_t *)(arg2 + 0x20);
        var_60h = *(int64_t *)(arg2 + 0x28);
        iStack_58 = *(int64_t *)(arg2 + 0x30);
        var_50h._0_4_ = (undefined4)*(int64_t *)(arg2 + 0x38);
        var_50h._4_4_ = *(undefined4 *)(arg2 + 0x3c);
        uStack_48 = (undefined4)*(int64_t *)(arg2 + 0x40);
        uStack_44 = *(undefined4 *)(arg2 + 0x44);
        var_178h = arg5;
        var_80h = var_188h;
        var_70h = var_198h;
        var_38h = var_78h;
        var_28h = var_88h;
        var_10h = arg2;
        iVar3 = runtime_cmpstring();
        if (iVar3 < 0) {
            auVar10 = runtime_concatstring3(0, var_28h, var_188h, 0x2e64cc0, 1, var_38h, var_198h);
        } else {
            auVar10 = runtime_concatstring3(0, var_38h, var_198h, 0x2e64cc0, 1, var_28h, var_188h);
        }
        var_1b0h = auVar10._8_8_;
        var_170h = auVar10._0_8_;
        piVar4 = (int64_t *)runtime_mapaccess1_faststr(0x107dac0, *(undefined8 *)(in_RAX + 0x30), var_170h, var_1b0h);
        if (*piVar4 == 0) {
            var_18h = runtime_makemap_small();
            piVar4 = (int64_t *)runtime_mapassign_faststr(0x107dac0, *(undefined8 *)(in_RAX + 0x30), var_170h, var_1b0h);
            if (*(int32_t *)0x355db50 != 0) {
                piVar4 = (int64_t *)runtime_gcWriteBarrier2();
                *extraout_R11_00 = var_18h;
                extraout_R11_00[1] = *piVar4;
            }
            *piVar4 = var_18h;
        }
        piVar4 = (int64_t *)runtime_mapaccess1_faststr(0x107dac0, *(undefined8 *)(in_RAX + 0x30), var_170h, var_1b0h);
        iVar3 = *piVar4;
        iVar5 = arg4;
        piVar7 = unaff_RBX;
        piVar4 = unaff_RBX;
        var_98h = iVar3;
        for (iVar9 = arg4; 0 < iVar9; iVar9 = iVar9 + -1) {
            var_100h = *piVar7;
            var_180h = iVar9;
            var_20h = (int64_t)piVar7;
            runtime_duffcopy_offset_812(iVar5, iVar3, piVar4, &var_f8h, piVar7 + 1);
            if (var_80h == var_f8h) {
                uVar1 = runtime_memequal(var_100h, var_88h, var_f8h);
                uVar1 = uVar1 ^ 1;
                iVar5 = arg4;
                piVar4 = unaff_RBX;
                piVar7 = (int64_t *)var_20h;
                iVar3 = var_98h;
                iVar9 = var_180h;
            } else {
                uVar1 = 1;
                iVar5 = extraout_RAX;
                piVar4 = extraout_RCX;
                iVar3 = extraout_RBX;
                iVar9 = extraout_R8;
            }
            if (uVar1 == 0) {
                uVar1 = 0;
            } else if (var_70h == var_f8h) {
                uVar1 = runtime_memequal(var_100h, var_78h, var_f8h);
                uVar1 = uVar1 ^ 1;
                iVar5 = arg4;
                piVar4 = unaff_RBX;
                piVar7 = (int64_t *)var_20h;
                iVar3 = var_98h;
                iVar9 = var_180h;
            } else {
                uVar1 = 1;
            }
            if (uVar1 == 0) {
                var_168h = var_100h;
                runtime_duffcopy_offset_812(iVar5, iVar3, piVar4, &var_160h, &var_f8h);
                if ((char)var_120h == '\0') {
                    cVar8 = '\0';
                    iVar5 = extraout_RAX_00;
                    piVar4 = extraout_RCX_00;
                    iVar3 = extraout_RBX_00;
                    iVar9 = extraout_R8_00;
                } else {
                    var_90h = var_68h;
                    var_30h = var_158h;
                    var_190h = var_150h;
                    var_40h = var_148h;
                    var_1a0h = var_140h;
                    iVar3 = runtime_cmpstring();
                    if (iVar3 < 0) {
                        auVar10 = runtime_concatstring3(&var_1d0h, var_30h, var_190h, 0x116850a /* "|" */, 1, var_40h, var_1a0h);
                    } else {
                        auVar10 = runtime_concatstring3(&var_1f0h, var_40h, var_1a0h, 0x116850a /* "|" */, 1, var_30h, var_190h);
                    }
                    runtime_mapaccess2_faststr(0x107d5e0, var_90h, auVar10._0_8_, auVar10._8_8_);
                    iVar5 = arg4;
                    piVar4 = unaff_RBX;
                    piVar7 = (int64_t *)var_20h;
                    iVar3 = var_98h;
                    iVar9 = var_180h;
                    cVar8 = extraout_BL;
                }
                if ((cVar8 != '\0') &&
                   (piVar6 = (int64_t *)runtime_mapaccess1_faststr(0x107da60, iVar3, var_100h, var_f8h), iVar5 = arg4,
                   piVar4 = unaff_RBX, piVar7 = (int64_t *)var_20h, iVar3 = var_98h, iVar9 = var_180h, *piVar6 == 0)) {
                    piVar4 = (int64_t *)runtime_mapassign_faststr(0x107da60, var_98h, var_100h, var_f8h);
                    *piVar4 = var_1a8h;
                    piVar4 = unaff_RBX;
                    piVar7 = (int64_t *)var_20h;
                    iVar3 = var_98h;
                    iVar9 = var_180h;
                }
            }
            piVar7 = piVar7 + 0xd;
        }
        arg2 = var_10h + 0x48;
        arg5 = var_178h + -1;
    }
    return;
}

/* CAS-Backend/pkg/diapdu.(*DynamicTrafficController).applyOppositePause | VA 0xe40620 | traffic_opposite.go:402
   DWARF parameters and results: dt *CAS-Backend/pkg/diapdu.DynamicTrafficController, snaps []CAS-Backend/pkg/diapdu.runSnapEx, paused map[string]bool
   DWARF locals: snapByID map[string]CAS-Backend/pkg/diapdu.runSnapEx, conflicts []CAS-Backend/pkg/diapdu.oppositeConflict, ~r0.ptr *uint8, ~r0.len int, s CAS-Backend/pkg/diapdu.runSnapEx, c CAS-Backend/pkg/diapdu.oppositeConflict, oka bool, okb bool, priA int, priB int, pk string, winner string, sa CAS-Backend/pkg/diapdu.runSnapEx, sb CAS-Backend/pkg/diapdu.runSnapEx, winSnap CAS-Backend/pkg/diapdu.runSnapEx, vid string, w CAS-Backend/pkg/diapdu.runSnapEx */
// WARNING: Variable defined which should be unmapped: var_818h
// WARNING: Variable defined which should be unmapped: var_7b8h
// WARNING: Variable defined which should be unmapped: var_7b0h
// WARNING: Variable defined which should be unmapped: var_6c0h
// WARNING: Variable defined which should be unmapped: var_721h
// WARNING: Variable defined which should be unmapped: var_670h
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Detected overlap for variable var_720h
// WARNING: [rz-ghidra] Removing arg arg_610h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Removing arg arg_2b8h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Removing arg arg_250h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Removing arg arg_288h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Removing arg arg_278h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_200h
// WARNING: [rz-ghidra] Detected overlap for variable var_2ch
// WARNING: [rz-ghidra] Detected overlap for variable var_1e0h
// WARNING: [rz-ghidra] Removing arg arg_268h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Removing arg arg_220h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Removing arg arg_210h because it doesn't fit into ProtoModel

void __stdcall
pkg_diapdu___DynamicTrafficController__applyOppositePause
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h,
          int64_t arg_190h, int64_t arg_1b0h)
{
    int64_t iVar1;
    undefined auVar2 [16];
    undefined auVar3 [16];
    char cVar4;
    uint8_t uVar5;
    int64_t in_RAX;
    undefined8 uVar7;
    int64_t *piVar8;
    int64_t iVar9;
    undefined8 *puVar10;
    int64_t arg2_00;
    int64_t iVar11;
    int64_t extraout_RCX;
    undefined8 extraout_RCX_00;
    char extraout_BL;
    char extraout_BL_00;
    char extraout_BL_01;
    int64_t *unaff_RBX;
    int64_t extraout_RBX;
    undefined8 extraout_RBX_00;
    undefined8 extraout_RBX_01;
    int64_t arg4_00;
    int64_t extraout_RBX_02;
    int64_t extraout_RBX_03;
    undefined8 extraout_RBX_04;
    undefined8 extraout_RBX_05;
    undefined8 extraout_RBX_06;
    undefined8 extraout_RBX_07;
    undefined8 extraout_RBX_08;
    undefined8 extraout_RBX_09;
    undefined8 placeholder_12;
    int64_t unaff_R14;
    int64_t in_XMM15_Qa;
    undefined auVar12 [16];
    int64_t var_830h;
    int64_t in_stack_fffffffffffff7e0;
    int64_t iVar13;
    int64_t var_818h;
    int64_t in_stack_fffffffffffff7f0;
    int64_t in_stack_fffffffffffff7f8;
    int64_t in_stack_fffffffffffff800;
    int64_t in_stack_fffffffffffff808;
    int64_t in_stack_fffffffffffff810;
    int64_t in_stack_fffffffffffff818;
    int64_t in_stack_fffffffffffff828;
    int64_t in_stack_fffffffffffff830;
    int64_t in_stack_fffffffffffff838;
    int64_t var_7b8h;
    int64_t var_7b0h;
    int64_t in_stack_fffffffffffff858;
    int64_t in_stack_fffffffffffff860;
    int64_t in_stack_fffffffffffff868;
    int64_t in_stack_fffffffffffff870;
    int64_t in_stack_fffffffffffff880;
    int64_t in_stack_fffffffffffff890;
    int64_t in_stack_fffffffffffff8b0;
    int64_t in_stack_fffffffffffff8b8;
    int64_t in_stack_fffffffffffff8c0;
    int64_t in_stack_fffffffffffff8c8;
    int64_t in_stack_fffffffffffff8d0;
    unkbyte7 Stack_728;
    int64_t var_721h;
    int64_t in_stack_fffffffffffff8f8;
    int64_t var_700h;
    int64_t var_6e0h;
    int64_t var_6d8h;
    int64_t var_6d0h;
    int64_t var_6c8h;
    int64_t var_6c0h;
    int64_t var_6b8h;
    int64_t var_6b0h;
    int64_t var_6a8h;
    int64_t var_6a0h;
    int64_t var_698h;
    int64_t var_690h;
    int64_t var_688h;
    int64_t var_680h;
    int64_t var_678h;
    int64_t var_670h;
    int64_t var_668h;
    int64_t var_660h;
    int64_t var_658h;
    int64_t in_stack_fffffffffffff9b8;
    int64_t var_5f8h;
    int64_t var_5f0h;
    int64_t var_5e8h;
    int64_t var_5e0h;
    int64_t var_5d8h;
    int64_t var_5d0h;
    int64_t var_570h;
    int64_t var_568h;
    int64_t var_508h;
    int64_t var_500h;
    int64_t var_4f8h;
    int64_t var_4f0h;
    int64_t var_4e8h;
    int64_t var_4e0h;
    int64_t var_4d8h;
    int64_t iStack_4d0;
    int64_t var_4c8h;
    undefined4 uStack_4c0;
    undefined4 uStack_4bc;
    int64_t var_4b8h;
    int64_t var_4b0h;
    int64_t var_4a8h;
    int64_t var_4a0h;
    int64_t var_498h;
    int64_t var_490h;
    int64_t var_488h;
    int64_t var_b8h;
    int64_t var_a8h;
    undefined auStack_a0 [8];
    int64_t var_98h;
    int64_t var_88h;
    int64_t var_80h;
    int64_t var_40h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    undefined8 uVar6;
    
    while (&stack0xfffffffffffff860 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe41272;
        runtime_morestack_noctxt_abi0();
    }
    iVar11 = arg1;
    var_508h = pkg_diapdu_findOppositeConflicts
                         (arg1, in_stack_fffffffffffff7e0, var_818h, in_stack_fffffffffffff7f0, 
                          in_stack_fffffffffffff838);
    if (arg4 != 0) {
        var_6a0h = arg4;
        var_698h = iVar11;
        pkg_diapdu___DynamicTrafficController__pruneOppositeEnter
                  (arg1, var_508h, placeholder_2, arg4, arg4, iVar11, in_stack_fffffffffffff7e0, var_818h, 
                   in_stack_fffffffffffff7f0, in_stack_fffffffffffff7f8, in_stack_fffffffffffff800, 
                   in_stack_fffffffffffff808, in_stack_fffffffffffff810, in_stack_fffffffffffff8b8);
        pkg_diapdu___DynamicTrafficController__touchOppositeEnter
                  (arg1, var_508h, placeholder_2, arg4, var_6a0h, var_698h, in_stack_fffffffffffff7e0, var_818h, 
                   in_stack_fffffffffffff7f0, in_stack_fffffffffffff7f8, in_stack_fffffffffffff800, 
                   in_stack_fffffffffffff808, in_stack_fffffffffffff810, in_stack_fffffffffffff890);
        iVar11 = arg4;
        var_a8h = in_XMM15_Qa;
        if (arg4 < 9) {
            runtime_duffzero_offset_14();
            var_a8h = (int64_t)&var_488h;
            iVar11 = extraout_RBX;
        }
        auVar12 = runtime_makemap(0x107d820, iVar11, &var_b8h);
        uVar7 = auVar12._8_8_;
        uVar6 = auVar12._0_8_;
        while (var_678h = var_6a0h, var_10h = var_508h, 0 < arg4) {
            var_88h = *unaff_RBX;
            var_678h = arg4;
            var_10h = (int64_t)unaff_RBX;
            uVar7 = runtime_duffcopy_offset_812();
            piVar8 = (int64_t *)runtime_mapassign_faststr(0x107d820, uVar7, var_88h, var_80h);
            if (*(int32_t *)0x355db50 != 0) {
                var_18h = (int64_t)piVar8;
                runtime_wbMove(0x111d8c0, piVar8, &var_88h);
                piVar8 = (int64_t *)var_18h;
            }
            *piVar8 = var_88h;
            runtime_duffcopy_offset_812();
            unaff_RBX = (int64_t *)(var_10h + 0x68);
            uVar7 = extraout_RBX_00;
            arg4 = var_678h + -1;
        }
        for (; 0 < var_678h; var_678h = var_678h + -1) {
            var_500h = *(int64_t *)var_10h;
            var_4f8h = *(int64_t *)(var_10h + 8);
            var_4f0h = *(int64_t *)(var_10h + 0x10);
            var_4e8h = *(int64_t *)(var_10h + 0x18);
            var_4e0h = *(int64_t *)(var_10h + 0x20);
            var_4d8h = *(int64_t *)(var_10h + 0x28);
            iStack_4d0 = *(int64_t *)(var_10h + 0x30);
            var_4c8h._0_4_ = (undefined4)*(int64_t *)(var_10h + 0x38);
            var_4c8h._4_4_ = *(undefined4 *)(var_10h + 0x3c);
            uStack_4c0 = (undefined4)*(int64_t *)(var_10h + 0x40);
            uStack_4bc = *(undefined4 *)(var_10h + 0x44);
            uVar7 = runtime_duffzero_offset_331(uVar6, uVar7, var_678h, auStack_a0);
            piVar8 = (int64_t *)runtime_mapaccess2_faststr(0x107d820, uVar7, var_500h, var_4f8h);
            var_88h = *piVar8;
            var_721h._0_1_ = extraout_BL;
            runtime_duffcopy_offset_812();
            iVar11 = var_88h;
            runtime_duffcopy_offset_812();
            runtime_duffzero_offset_331();
            piVar8 = (int64_t *)runtime_mapaccess2_faststr(0x107d820, uVar6, var_4f0h, var_4e8h);
            var_88h = *piVar8;
            runtime_duffcopy_offset_812();
            iVar1 = var_88h;
            runtime_duffcopy_offset_812();
            uVar7 = extraout_RBX_01;
            if (((char)var_721h != '\0') && ((char)extraout_RBX_01 != '\0')) {
                var_4b0h = var_500h;
                var_688h = var_4f8h;
                var_4b8h = var_4f0h;
                var_690h = var_4e8h;
                iVar9 = runtime_cmpstring();
                if (iVar9 < 0) {
                    auVar12 = runtime_concatstring3(&var_700h, var_4b0h, var_688h, 0x2e64cc0, 1, var_4b8h, var_690h);
                } else {
                    auVar12 = runtime_concatstring3((int64_t)&var_721h + 1, var_4b8h, var_690h, 0x2e64cc0, 1, var_4b0h, 
                                              var_688h);
                }
                var_6e0h = auVar12._8_8_;
                var_670h = auVar12._0_8_;
                if (*(int64_t *)(in_RAX + 0x10) == 0) {
                    var_6c8h = 2;
                } else {
                    piVar8 = (int64_t *)runtime_mapaccess2_faststr(0x107da00, *(int64_t *)(in_RAX + 0x10), var_500h, var_4f8h);
                    auVar12._8_8_ = var_6e0h;
                    auVar12._0_8_ = var_670h;
                    auVar2._8_8_ = var_6e0h;
                    auVar2._0_8_ = var_670h;
                    if ((extraout_BL_00 == '\0') || (var_6c8h = *piVar8, var_6c8h < 1)) {
                        var_6c8h = 2;
                        auVar12 = auVar2;
                    }
                }
                var_6e0h = auVar12._8_8_;
                var_670h = auVar12._0_8_;
                if (*(int64_t *)(in_RAX + 0x10) == 0) {
                    var_6d0h = 2;
                } else {
                    piVar8 = (int64_t *)runtime_mapaccess2_faststr(0x107da00, *(int64_t *)(in_RAX + 0x10), var_4f0h, var_4e8h);
                    auVar12._8_8_ = var_6e0h;
                    auVar12._0_8_ = var_670h;
                    auVar3._8_8_ = var_6e0h;
                    auVar3._0_8_ = var_670h;
                    if ((extraout_BL_01 == '\0') || (var_6d0h = *piVar8, var_6d0h < 1)) {
                        var_6d0h = 2;
                        auVar12 = auVar3;
                    }
                }
                iVar9 = var_500h;
                var_6e0h = auVar12._8_8_;
                var_670h = auVar12._0_8_;
                if (*(int64_t *)(in_RAX + 0x30) == 0) {
                    iVar9 = 0;
                } else {
                    var_6a8h = var_4f8h;
                    piVar8 = (int64_t *)runtime_mapaccess1_faststr(0x107dac0, *(int64_t *)(in_RAX + 0x30), var_670h, var_6e0h);
                    auVar12._8_8_ = var_6e0h;
                    auVar12._0_8_ = var_670h;
                    if (*piVar8 == 0) {
                        iVar9 = 0;
                    } else {
                        piVar8 = (int64_t *)runtime_mapaccess1_faststr(0x107da60, *piVar8, iVar9, var_6a8h);
                        auVar12._8_8_ = var_6e0h;
                        auVar12._0_8_ = var_670h;
                        iVar9 = *piVar8;
                    }
                }
                iVar13 = var_4f0h;
                var_6e0h = auVar12._8_8_;
                var_670h = auVar12._0_8_;
                if (*(int64_t *)(in_RAX + 0x30) == 0) {
                    uVar7 = 0;
                } else {
                    var_6b0h = var_4e8h;
                    var_6d8h = iVar9;
                    piVar8 = (int64_t *)runtime_mapaccess1_faststr(0x107dac0, *(int64_t *)(in_RAX + 0x30), var_670h, var_6e0h);
                    auVar12._8_8_ = var_6e0h;
                    auVar12._0_8_ = var_670h;
                    if (*piVar8 == 0) {
                        uVar7 = 0;
                        iVar9 = var_6d8h;
                    } else {
                        puVar10 = (undefined8 *)runtime_mapaccess1_faststr(0x107da60, *piVar8, iVar13, var_6b0h);
                        auVar12._8_8_ = var_6e0h;
                        auVar12._0_8_ = var_670h;
                        uVar7 = *puVar10;
                        iVar9 = var_6d8h;
                    }
                }
                var_6e0h = auVar12._8_8_;
                var_670h = auVar12._0_8_;
                iVar13 = iVar11;
                runtime_duffcopy_offset_812(uVar7, var_6d0h, var_6c8h, &var_818h, &var_568h, var_4e0h);
                runtime_duffcopy_offset_812();
                iVar9 = pkg_diapdu_pickOppositeWinner
                                  (iVar9, arg2_00, placeholder_2, arg4_00, placeholder_4, placeholder_5, iVar13, 
                                   var_818h, in_stack_fffffffffffff7f0, in_stack_fffffffffffff7f8, 
                                   in_stack_fffffffffffff800, arg4_00, placeholder_12, in_stack_fffffffffffff818, iVar1
                                   , var_7b0h, in_stack_fffffffffffff858, in_stack_fffffffffffff860, 
                                   in_stack_fffffffffffff868, in_stack_fffffffffffff870, in_stack_fffffffffffff880, 
                                   in_stack_fffffffffffff8b0, in_stack_fffffffffffff8b8, in_stack_fffffffffffff8c0, 
                                   in_stack_fffffffffffff8c8, in_stack_fffffffffffff8d0);
                uVar7 = 0;
                if (extraout_RCX != 0) {
                    var_660h = iVar11;
                    var_6c0h = extraout_RCX;
                    var_668h = iVar9;
                    auVar12 = runtime_duffcopy_offset_812();
                    iVar9 = auVar12._8_8_;
                    if ((var_4e8h == iVar9) &&
                       (cVar4 = runtime_memequal(auVar12._0_8_, var_4f0h, iVar9), iVar9 = extraout_RBX_02, cVar4 != '\0')
                       ) {
                        var_660h = iVar1;
                        runtime_duffcopy_offset_812();
                        iVar9 = extraout_RBX_03;
                    }
                    runtime_duffcopy_offset_812(var_4e0h, iVar9, iVar11, &var_818h, &var_568h);
                    runtime_duffcopy_offset_812();
                    cVar4 = pkg_diapdu_vehiclesOppositeInConflict
                                      (iVar11, var_818h, iVar1, var_7b0h, in_stack_fffffffffffff8b0, 
                                       in_stack_fffffffffffff8f8, var_6c0h);
                    uVar7 = extraout_RBX_04;
                    if (cVar4 != '\0') {
                        var_88h = var_660h;
                        runtime_duffcopy_offset_812();
                        if ((char)var_40h == '\0') {
                            uVar5 = 0;
                            uVar7 = extraout_RBX_05;
                        } else {
                            runtime_duffcopy_offset_812(var_4e0h, extraout_RBX_05, var_660h, &var_818h, &var_658h);
                            uVar5 = pkg_diapdu_winnerClearedOppositeZone();
                            uVar5 = uVar5 ^ 1;
                            uVar7 = extraout_RBX_06;
                        }
                        if (uVar5 != 0) {
                            var_4a0h = var_4f8h;
                            var_4a8h = var_500h;
                            var_490h = var_4e8h;
                            var_498h = var_4f0h;
                            piVar8 = &var_4a8h;
                            iVar11 = 0;
                            while (iVar11 < 2) {
                                var_20h = (int64_t)piVar8;
                                var_6b8h = piVar8[1];
                                iVar1 = *piVar8;
                                var_680h = iVar11;
                                if ((var_6c0h != var_6b8h) ||
                                   (cVar4 = runtime_memequal(iVar1, var_668h, var_6b8h), uVar7 = extraout_RBX_07,
                                   cVar4 == '\0')) {
                                    piVar8 = (int64_t *)runtime_mapaccess1_faststr(0x107d820, uVar6, iVar1, var_6b8h);
                                    var_88h = *piVar8;
                                    runtime_duffcopy_offset_812();
                                    iVar9 = var_88h;
                                    runtime_duffcopy_offset_812(var_4e0h, extraout_RBX_08, extraout_RCX_00, &var_818h, &var_80h);
                                    iVar11 = var_660h;
                                    runtime_duffcopy_offset_812();
                                    cVar4 = pkg_diapdu_shouldPauseForOpposite
                                                      (iVar9, var_818h, in_stack_fffffffffffff800, 
                                                       in_stack_fffffffffffff828, in_stack_fffffffffffff830, iVar11, 
                                                       var_7b0h, in_stack_fffffffffffff8b0, 
                                                       CONCAT17((char)var_721h, Stack_728), var_670h, 
                                                       in_stack_fffffffffffff9b8);
                                    uVar7 = extraout_RBX_09;
                                    if (cVar4 != '\0') {
                                        auVar12 = runtime_mapassign_faststr(0x107d940, arg2, iVar1, var_6b8h);
                                        uVar7 = auVar12._8_8_;
                                        *auVar12._0_8_ = 1;
                                    }
                                }
                                piVar8 = (int64_t *)(var_20h + 0x10);
                                iVar11 = var_680h + 1;
                            }
                        }
                    }
                }
            }
            var_10h = (int64_t)(var_10h + 0x48);
        }
        return;
    }
    return;
}
