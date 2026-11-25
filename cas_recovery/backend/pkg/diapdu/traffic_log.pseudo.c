/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/pkg/diapdu.formatEdgeKey | VA 0xe3b420 | traffic_log.go:16
   DWARF parameters and results: key string, ~r0 string
   DWARF locals: a string, b string */
int64_t __stdcall pkg_diapdu_formatEdgeKey(int64_t arg_8h, int64_t arg_10h)
{
    int64_t in_RAX;
    int64_t iVar1;
    int64_t unaff_RBX;
    int64_t unaff_RBP;
    int64_t in_RDI;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_ffffffffffffffc0;
    int64_t in_stack_ffffffffffffffc8;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    pkg_diapdu_splitUndirectedKey(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_fffffffffffffff0, unaff_RBP);
    if ((unaff_RBX != 0) && (in_RDI != 0)) {
        iVar1 = runtime_concatstring3(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, 
                             in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, in_stack_ffffffffffffffe8, 
                             in_stack_fffffffffffffff0);
        return iVar1;
    }
    return in_RAX;
}

/* CAS-Backend/pkg/diapdu.(*DynamicTrafficController).collectActiveEdgeLocks | VA 0xe3b4a0 | traffic_log.go:25
   DWARF parameters and results: dt *CAS-Backend/pkg/diapdu.DynamicTrafficController, snaps []CAS-Backend/pkg/diapdu.runSnapEx, ~r0 map[string]string
   DWARF locals: owners map[string]string, snapByID map[string]CAS-Backend/pkg/diapdu.runSnapEx, conflicts []CAS-Backend/pkg/diapdu.oppositeConflict, ~r0.ptr *uint8, ~r0.len int, s CAS-Backend/pkg/diapdu.runSnapEx, ok bool, lk CAS-Backend/pkg/diapdu.edgeLock, c CAS-Backend/pkg/diapdu.oppositeConflict, oka bool, okb bool, pk string, winner string, sa CAS-Backend/pkg/diapdu.runSnapEx, sb CAS-Backend/pkg/diapdu.runSnapEx, winSnap CAS-Backend/pkg/diapdu.runSnapEx, ue string */
// WARNING: Variable defined which should be unmapped: var_858h
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Detected overlap for variable var_760h

int64_t __stdcall
pkg_diapdu___DynamicTrafficController__collectActiveEdgeLocks
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_180h,
          int64_t arg_1a8h)
{
    bool bVar1;
    char cVar2;
    uint32_t uVar3;
    int64_t in_RAX;
    int64_t iVar4;
    int64_t extraout_RAX;
    int64_t iVar5;
    int64_t *piVar6;
    undefined8 uVar7;
    int64_t iVar8;
    undefined8 *puVar9;
    undefined8 extraout_RAX_00;
    int64_t extraout_RCX;
    int64_t iVar10;
    undefined8 extraout_RCX_00;
    int64_t extraout_RCX_01;
    char extraout_BL;
    char extraout_BL_00;
    char extraout_BL_01;
    int64_t *unaff_RBX;
    int64_t extraout_RBX;
    undefined8 extraout_RBX_00;
    undefined8 extraout_RBX_01;
    undefined8 extraout_RBX_02;
    undefined8 extraout_RBX_03;
    undefined8 extraout_RBX_04;
    undefined8 extraout_RBX_05;
    undefined8 extraout_RBX_06;
    undefined8 extraout_RBX_07;
    undefined8 extraout_RBX_08;
    undefined8 extraout_R8;
    int64_t extraout_R9;
    int64_t *extraout_R11;
    int64_t *extraout_R11_00;
    int64_t unaff_R14;
    int64_t in_XMM15_Qa;
    int64_t in_XMM15_Qb;
    undefined auVar11 [16];
    undefined auVar12 [16];
    int64_t unaff_retaddr;
    int64_t var_870h;
    int64_t in_stack_fffffffffffff7a0;
    int64_t var_858h;
    int64_t in_stack_fffffffffffff7b0;
    int64_t in_stack_fffffffffffff7b8;
    int64_t in_stack_fffffffffffff7c0;
    int64_t in_stack_fffffffffffff7c8;
    int64_t in_stack_fffffffffffff7d0;
    int64_t var_7f8h;
    int64_t var_7f0h;
    undefined auStack_7e0 [127];
    int64_t var_761h;
    int64_t var_740h;
    int64_t var_720h;
    int64_t var_718h;
    int64_t var_710h;
    int64_t var_708h;
    int64_t var_700h;
    int64_t var_6f8h;
    int64_t var_6f0h;
    int64_t var_6e8h;
    int64_t var_6e0h;
    int64_t var_6d8h;
    int64_t var_6d0h;
    int64_t var_6c8h;
    int64_t var_6c0h;
    int64_t var_6b8h;
    int64_t var_6b0h;
    int64_t var_6a8h;
    int64_t var_6a0h;
    int64_t var_640h;
    int64_t var_638h;
    int64_t var_630h;
    int64_t var_628h;
    int64_t var_620h;
    int64_t var_618h;
    int64_t var_610h;
    int64_t var_608h;
    int64_t var_600h;
    int64_t var_5f8h;
    int64_t var_5f0h;
    int64_t var_5e8h;
    int64_t var_5c0h;
    int64_t var_5b8h;
    int64_t var_5b0h;
    int64_t var_5a8h;
    int64_t var_5a0h;
    int64_t var_598h;
    int64_t var_588h;
    int64_t var_578h;
    int64_t var_558h;
    int64_t var_550h;
    int64_t var_548h;
    int64_t var_540h;
    int64_t var_538h;
    int64_t var_530h;
    int64_t var_528h;
    int64_t var_520h;
    int64_t iStack_518;
    int64_t var_510h;
    undefined4 uStack_508;
    undefined4 uStack_504;
    int64_t var_500h;
    int64_t var_4f8h;
    int64_t var_4f0h;
    int64_t var_120h;
    int64_t var_110h;
    int64_t var_100h;
    int64_t var_f0h;
    undefined auStack_a8 [24];
    int64_t var_90h;
    int64_t var_88h;
    int64_t iStack_80;
    int64_t var_78h;
    int64_t iStack_70;
    int64_t var_68h;
    int64_t var_60h;
    int64_t var_58h;
    undefined4 uStack_50;
    undefined4 uStack_4c;
    int64_t var_48h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (auStack_7e0 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe3c309;
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    iVar4 = runtime_makemap_small();
    piVar6 = unaff_RBX;
    iVar8 = arg4;
    var_558h = iVar4;
    for (iVar5 = arg4; 0 < iVar5; iVar5 = iVar5 + -1) {
        var_90h = *piVar6;
        var_6c0h = iVar5;
        var_10h = (int64_t)piVar6;
        runtime_duffcopy_offset_812(iVar4, iVar5, piVar6, &var_88h, piVar6 + 1, piVar6 + 1, iVar8);
        var_5c0h = var_90h;
        runtime_duffcopy_offset_812();
        if ((((char)var_578h == '\0') || (var_5a8h == 0)) || (var_598h == 0)) {
            bVar1 = false;
            iVar4 = extraout_RAX;
            iVar10 = extraout_RCX;
            iVar5 = extraout_RBX;
            iVar8 = extraout_R9;
            var_628h = in_XMM15_Qa;
            var_620h = in_XMM15_Qa;
            var_618h = in_XMM15_Qb;
            var_610h = in_XMM15_Qa;
            var_608h = in_XMM15_Qb;
            var_600h = in_XMM15_Qa;
            var_5f8h = in_XMM15_Qb;
            var_5f0h = in_XMM15_Qa;
            var_5e8h = in_XMM15_Qb;
        } else {
            var_6c8h = var_598h;
            var_6d0h = var_5a8h;
            var_18h = var_5b0h;
            var_20h = var_5a0h;
            iVar5 = runtime_cmpstring(var_5b0h, var_5a8h);
            iVar4 = var_18h;
            var_5f0h = var_20h;
            if (iVar5 < 0) {
                var_5f8h = runtime_concatstring3(in_stack_fffffffffffff7a0, var_858h, in_stack_fffffffffffff7b0, 
                                        in_stack_fffffffffffff7b8, in_stack_fffffffffffff7c0, in_stack_fffffffffffff7c8
                                        , in_stack_fffffffffffff7d0);
                var_5f0h = iVar4;
            } else {
                var_5f8h = runtime_concatstring3(in_stack_fffffffffffff7a0, var_858h, in_stack_fffffffffffff7b0, 
                                        in_stack_fffffffffffff7b8, in_stack_fffffffffffff7c0, in_stack_fffffffffffff7c8
                                        , in_stack_fffffffffffff7d0);
            }
            var_628h = var_5c0h;
            var_620h = var_5b8h;
            var_618h = var_5b0h;
            var_610h = var_5a8h;
            var_608h = var_5a0h;
            var_600h = var_598h;
            var_5e8h = var_588h;
            bVar1 = true;
            iVar4 = var_558h;
            iVar10 = var_10h;
            iVar5 = var_6c0h;
            iVar8 = arg4;
        }
        var_90h = var_628h;
        var_88h = var_620h;
        iStack_80 = var_618h;
        var_78h = var_610h;
        iStack_70 = var_608h;
        var_68h = var_600h;
        var_60h = var_5f8h;
        var_58h._0_4_ = (undefined4)var_5f0h;
        var_58h._4_4_ = var_5f0h._4_4_;
        uStack_50 = (undefined4)var_5e8h;
        uStack_4c = var_5e8h._4_4_;
        if (bVar1) {
            var_6c8h = var_620h;
            var_18h = var_628h;
            piVar6 = (int64_t *)runtime_mapassign_faststr(0x107db20, iVar4, var_5f8h, var_5f0h);
            piVar6[1] = var_6c8h;
            if (*(int32_t *)0x355db50 != 0) {
                piVar6 = (int64_t *)runtime_gcWriteBarrier2();
                *extraout_R11 = var_18h;
                extraout_R11[1] = *piVar6;
            }
            *piVar6 = var_18h;
            iVar4 = var_558h;
            iVar10 = var_10h;
            iVar5 = var_6c0h;
            iVar8 = arg4;
        }
        piVar6 = (int64_t *)(iVar10 + 0x68);
    }
    auVar11 = pkg_diapdu_findOppositeConflicts(unaff_RBX, iVar8, arg1);
    var_6e8h = auVar11._8_8_;
    var_550h = auVar11._0_8_;
    if (var_6e8h == 0) {
        return var_558h;
    }
    var_110h = in_XMM15_Qa;
    if (arg4 < 9) {
        runtime_duffzero_offset_14();
        auVar11._8_8_ = var_6e8h;
        auVar11._0_8_ = var_550h;
        var_110h = (int64_t)&var_4f0h;
    }
    var_6e8h = auVar11._8_8_;
    var_550h = auVar11._0_8_;
    auVar12 = runtime_makemap(0x107d820, arg4, &var_120h);
    while (var_630h = auVar12._0_8_, var_6c0h = var_6e8h, var_10h = var_550h, 0 < arg4) {
        var_90h = *unaff_RBX;
        var_6c0h = arg4;
        var_10h = (int64_t)unaff_RBX;
        uVar7 = runtime_duffcopy_offset_812();
        piVar6 = (int64_t *)runtime_mapassign_faststr(0x107d820, uVar7, var_90h, var_88h);
        if (*(int32_t *)0x355db50 != 0) {
            var_28h = (int64_t)piVar6;
            runtime_wbMove(0x111d8c0, piVar6, &var_90h);
            piVar6 = (int64_t *)var_28h;
        }
        *piVar6 = var_90h;
        runtime_duffcopy_offset_812();
        auVar12._8_8_ = extraout_RBX_00;
        auVar12._0_8_ = var_630h;
        unaff_RBX = (int64_t *)(var_10h + 0x68);
        arg4 = var_6c0h + -1;
    }
    while( true ) {
        var_630h = auVar12._0_8_;
        if (var_6c0h < 1) break;
        var_548h = *(int64_t *)var_10h;
        var_540h = *(int64_t *)(var_10h + 8);
        var_538h = *(int64_t *)(var_10h + 0x10);
        var_530h = *(int64_t *)(var_10h + 0x18);
        var_528h = *(int64_t *)(var_10h + 0x20);
        var_520h = *(int64_t *)(var_10h + 0x28);
        iStack_518 = *(int64_t *)(var_10h + 0x30);
        var_510h._0_4_ = (undefined4)*(int64_t *)(var_10h + 0x38);
        var_510h._4_4_ = *(undefined4 *)(var_10h + 0x3c);
        uStack_508 = (undefined4)*(int64_t *)(var_10h + 0x40);
        uStack_504 = *(undefined4 *)(var_10h + 0x44);
        uVar7 = runtime_duffzero_offset_331(var_630h, auVar12._8_8_, var_6c0h, auStack_a8);
        piVar6 = (int64_t *)runtime_mapaccess2_faststr(0x107d820, uVar7, var_548h, var_540h);
        var_90h = *piVar6;
        var_761h._0_1_ = extraout_BL;
        runtime_duffcopy_offset_812();
        var_5c0h = var_90h;
        runtime_duffcopy_offset_812();
        runtime_duffzero_offset_331();
        piVar6 = (int64_t *)runtime_mapaccess2_faststr(0x107d820, var_630h, var_538h, var_530h);
        var_90h = *piVar6;
        runtime_duffcopy_offset_812();
        var_628h = var_90h;
        runtime_duffcopy_offset_812();
        uVar7 = extraout_RBX_01;
        if (((char)var_761h != '\0') && ((char)extraout_RBX_01 != '\0')) {
            var_4f8h = var_548h;
            var_6d8h = var_540h;
            var_500h = var_538h;
            var_6e0h = var_530h;
            iVar8 = runtime_cmpstring();
            iVar5 = var_4f8h;
            iVar4 = var_500h;
            if (iVar8 < 0) {
                var_6b8h = runtime_concatstring3(in_stack_fffffffffffff7a0, var_858h, in_stack_fffffffffffff7b0, 
                                        in_stack_fffffffffffff7b8, in_stack_fffffffffffff7c0, in_stack_fffffffffffff7c8
                                        , in_stack_fffffffffffff7d0);
                iVar4 = iVar5;
            } else {
                var_6b8h = runtime_concatstring3(in_stack_fffffffffffff7a0, var_858h, in_stack_fffffffffffff7b0, 
                                        in_stack_fffffffffffff7b8, in_stack_fffffffffffff7c0, in_stack_fffffffffffff7c8
                                        , in_stack_fffffffffffff7d0);
            }
            var_720h = iVar4;
            if (*(int64_t *)(in_RAX + 0x10) == 0) {
                var_708h = 2;
            } else {
                piVar6 = (int64_t *)runtime_mapaccess2_faststr(0x107da00, *(int64_t *)(in_RAX + 0x10), var_548h, var_540h);
                if ((extraout_BL_00 == '\0') || (var_708h = *piVar6, var_708h < 1)) {
                    var_708h = 2;
                }
            }
            if (*(int64_t *)(in_RAX + 0x10) == 0) {
                var_710h = 2;
            } else {
                piVar6 = (int64_t *)runtime_mapaccess2_faststr(0x107da00, *(int64_t *)(in_RAX + 0x10), var_538h, var_530h);
                if ((extraout_BL_01 == '\0') || (var_710h = *piVar6, var_710h < 1)) {
                    var_710h = 2;
                }
            }
            if (*(int64_t *)(in_RAX + 0x30) == 0) {
                iVar4 = 0;
            } else {
                var_6f0h = var_540h;
                var_638h = var_548h;
                piVar6 = (int64_t *)runtime_mapaccess1_faststr(0x107dac0, *(int64_t *)(in_RAX + 0x30), var_6b8h, var_720h);
                if (*piVar6 == 0) {
                    iVar4 = 0;
                } else {
                    piVar6 = (int64_t *)runtime_mapaccess1_faststr(0x107da60, *piVar6, var_638h, var_6f0h);
                    iVar4 = *piVar6;
                }
            }
            if (*(int64_t *)(in_RAX + 0x30) == 0) {
                uVar7 = 0;
            } else {
                var_6f8h = var_530h;
                var_640h = var_538h;
                var_718h = iVar4;
                piVar6 = (int64_t *)runtime_mapaccess1_faststr(0x107dac0, *(int64_t *)(in_RAX + 0x30), var_6b8h, var_720h);
                if (*piVar6 == 0) {
                    uVar7 = 0;
                    iVar4 = var_718h;
                } else {
                    puVar9 = (undefined8 *)runtime_mapaccess1_faststr(0x107da60, *piVar6, var_640h, var_6f8h);
                    uVar7 = *puVar9;
                    iVar4 = var_718h;
                }
            }
            in_stack_fffffffffffff7a0 = var_5c0h;
            runtime_duffcopy_offset_812(uVar7, var_710h, var_708h, &var_858h, &var_5b8h, var_528h);
            runtime_duffcopy_offset_812();
            auVar11 = pkg_diapdu_pickOppositeWinner(extraout_R8, extraout_RCX_00, extraout_RBX_02, iVar4, extraout_RAX_00);
            iVar4 = auVar11._8_8_;
            uVar7 = 0;
            if (iVar4 != 0) {
                in_stack_fffffffffffff7a0 = var_5c0h;
                var_700h = iVar4;
                var_6b0h = auVar11._0_8_;
                runtime_duffcopy_offset_812(var_528h, iVar4, var_5c0h, &var_858h, &var_5b8h);
                runtime_duffcopy_offset_812();
                cVar2 = pkg_diapdu_vehiclesOppositeInConflict();
                uVar7 = extraout_RBX_03;
                if (cVar2 != '\0') {
                    var_6a8h = var_5c0h;
                    auVar11 = runtime_duffcopy_offset_812();
                    if ((var_530h == var_700h) && (auVar11 = runtime_memequal(var_6b0h, var_538h), auVar11[0] != '\0')) {
                        var_6a8h = var_628h;
                        auVar11 = runtime_duffcopy_offset_812();
                    }
                    var_90h = var_6a8h;
                    runtime_duffcopy_offset_812(auVar11._0_8_, auVar11._8_8_, var_700h, &var_88h, &var_6a0h);
                    if ((char)var_48h == '\0') {
                        uVar3 = 0;
                        iVar4 = extraout_RCX_01;
                        uVar7 = extraout_RBX_04;
                    } else {
                        in_stack_fffffffffffff7a0 = var_6a8h;
                        runtime_duffcopy_offset_812(var_528h, extraout_RBX_04, var_6a8h, &var_858h, &var_6a0h);
                        uVar3 = pkg_diapdu_winnerClearedOppositeZone();
                        uVar3 = uVar3 ^ 1;
                        iVar4 = var_700h;
                        uVar7 = extraout_RBX_05;
                    }
                    if ((char)uVar3 != '\0') {
                        runtime_duffzero_offset_331(uVar3, var_528h, iVar4, &var_110h);
                        runtime_mapiterinit(0x107d5e0, extraout_RBX_06, &var_f0h);
                        uVar7 = extraout_RBX_07;
                        while (var_f0h != 0) {
                            piVar6 = (int64_t *)
                                     runtime_mapassign_faststr(0x107db20, var_558h, *(undefined8 *)var_f0h, 
                                                     *(undefined8 *)(var_f0h + 8));
                            piVar6[1] = var_700h;
                            if (*(int32_t *)0x355db50 != 0) {
                                piVar6 = (int64_t *)runtime_gcWriteBarrier2();
                                *extraout_R11_00 = var_6b0h;
                                extraout_R11_00[1] = *piVar6;
                            }
                            *piVar6 = var_6b0h;
                            runtime_mapiternext(&var_f0h);
                            uVar7 = extraout_RBX_08;
                        }
                    }
                }
            }
        }
        auVar12._8_8_ = uVar7;
        auVar12._0_8_ = var_630h;
        var_6c0h = var_6c0h + -1;
        var_10h = (int64_t)(var_10h + 0x48);
    }
    return var_558h;
}

/* CAS-Backend/pkg/diapdu.formatLockList | VA 0xe3c340 | traffic_log.go:73
   DWARF parameters and results: owners map[string]string, ~r0 string
   DWARF locals: keys []string, parts []string, k string */
// WARNING: Variable defined which should be unmapped: var_8h

undefined8 __stdcall pkg_diapdu_formatLockList(int64_t arg_8h, int64_t arg_50h, int64_t arg_150h)
{
    uint64_t *in_RAX;
    int64_t extraout_RAX;
    int64_t iVar1;
    undefined8 *puVar2;
    int64_t extraout_RAX_00;
    int64_t iVar3;
    undefined8 uVar4;
    uint64_t extraout_RCX;
    uint64_t uVar5;
    uint64_t uVar6;
    uint64_t extraout_RCX_00;
    uint64_t extraout_RCX_01;
    uint64_t extraout_RBX;
    uint64_t extraout_RBX_00;
    int64_t iVar7;
    int64_t extraout_RSI;
    int64_t extraout_RSI_00;
    int64_t *piVar8;
    int64_t extraout_R8;
    int64_t extraout_R9;
    uint64_t uVar9;
    int64_t *extraout_R11;
    int64_t *extraout_R11_00;
    int64_t unaff_R14;
    undefined auVar10 [16];
    int64_t unaff_retaddr;
    int64_t var_150h;
    int64_t in_stack_fffffffffffffec0;
    int64_t in_stack_fffffffffffffec8;
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
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (&var_c0h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe3c6cf;
        runtime_morestack_noctxt_abi0(unaff_retaddr, (int64_t)in_RAX);
    }
    if (in_RAX == (uint64_t *)0x0) {
        uVar5 = 0;
    } else {
        uVar5 = *in_RAX;
    }
    if (uVar5 == 0) {
        return 0x1168a51 /* "无" */;
    }
    if (in_RAX == (uint64_t *)0x0) {
        uVar5 = 0;
    } else {
        uVar5 = *in_RAX;
    }
    var_30h = runtime_makeslice(0x1042920, 0, uVar5);
    runtime_duffzero_offset_331();
    runtime_mapiterinit(0x107db20, in_RAX, &var_a0h);
    uVar9 = 0;
    iVar1 = var_30h;
    while (var_a0h != 0) {
        uVar9 = uVar9 + 1;
        uVar4 = *(undefined8 *)(var_a0h + 8);
        iVar3 = *(int64_t *)var_a0h;
        if (uVar5 < uVar9) {
            var_a8h = *(int64_t *)var_a0h;
            runtime_growslice(iVar1, uVar9, uVar5, 1, 0x1042920);
            uVar5 = extraout_RCX;
            iVar1 = extraout_RAX;
            uVar9 = extraout_RBX;
            iVar3 = var_a8h;
        }
        iVar7 = (uVar9 - 1) * 0x10;
        *(undefined8 *)(iVar1 + 8 + iVar7) = uVar4;
        if (*(int32_t *)0x355db50 != 0) {
            runtime_gcWriteBarrier2();
            *extraout_R11 = extraout_R9;
            extraout_R11[1] = *(int64_t *)(iVar1 + extraout_RSI);
            iVar7 = extraout_RSI;
            iVar3 = extraout_R9;
        }
        *(int64_t *)(iVar1 + iVar7) = iVar3;
        var_b8h = iVar1;
        runtime_mapiternext(&var_a0h);
        iVar1 = var_b8h;
    }
    var_38h = iVar1;
    sort_stringsImpl(iVar1, uVar9);
    iVar1 = runtime_makeslice(0x1042920, 0, uVar9);
    uVar6 = 0;
    piVar8 = (int64_t *)var_38h;
    uVar5 = uVar9;
    for (; 0 < (int64_t)uVar9; uVar9 = uVar9 - 1) {
        var_b0h = *piVar8;
        iVar3 = piVar8[1];
        var_c0h = iVar1;
        var_30h = (int64_t)piVar8;
        pkg_diapdu_formatEdgeKey(in_stack_fffffffffffffec0, in_stack_fffffffffffffec8);
        uVar6 = uVar6 + 1;
        var_20h = runtime_convTstring();
        var_28h = 0x1042920;
        puVar2 = (undefined8 *)runtime_mapaccess1_faststr(0x107db20, in_RAX, var_b0h, iVar3);
        var_10h = runtime_convTstring(*puVar2, puVar2[1]);
        var_18h = 0x1042920;
        auVar10 = fmt_Sprintf(0x1176162 /* "%s(车=%s)" */, 10, &var_28h, 2, 2);
        iVar3 = auVar10._0_8_;
        iVar1 = var_c0h;
        if (uVar5 < uVar6) {
            var_40h = iVar3;
            runtime_growslice(var_c0h, uVar6, uVar5, 1, 0x1042920);
            iVar3 = var_40h;
            uVar5 = extraout_RCX_00;
            uVar6 = extraout_RBX_00;
            iVar1 = extraout_RAX_00;
        }
        iVar7 = (uVar6 - 1) * 0x10;
        *(int64_t *)(iVar1 + 8 + iVar7) = auVar10._8_8_;
        if (*(int32_t *)0x355db50 != 0) {
            iVar3 = runtime_gcWriteBarrier2();
            *extraout_R11_00 = iVar3;
            extraout_R11_00[1] = *(int64_t *)(extraout_RSI_00 + extraout_R8);
            uVar5 = extraout_RCX_01;
            iVar1 = extraout_RSI_00;
            iVar7 = extraout_R8;
        }
        *(int64_t *)(iVar1 + iVar7) = iVar3;
        piVar8 = (int64_t *)(var_30h + 0x10);
    }
    uVar4 = strings_Join(iVar1, uVar6, uVar5, 0x1168518, 2);
    return uVar4;
}

/* CAS-Backend/pkg/diapdu.(*DynamicTrafficController).LogTaskAssignment | VA 0xe3c6e0 | traffic_log.go:90
   DWARF parameters and results: dt *CAS-Backend/pkg/diapdu.DynamicTrafficController, vehicleID string, taskID int, path []string, priority int
   DWARF locals: owners map[string]string, snaps []CAS-Backend/pkg/diapdu.runSnapEx, curEdge string, pathStr string, s CAS-Backend/pkg/diapdu.runSnapEx, pkg *CAS-Backend/pkg/diapdu.MonitorTaskStatusPackage, ok bool, ok2 bool, from string, to string, hubSnap *CAS-Backend/pkg/diapdu.VehicleRuntimeSnap */
// WARNING: Variable defined which should be unmapped: var_128h
// WARNING: Variable defined which should be unmapped: var_28h
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Detected overlap for variable var_760h

void __stdcall
pkg_diapdu___DynamicTrafficController__LogTaskAssignment
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, int64_t arg5, int64_t arg6,
          int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
          int64_t arg_38h, int64_t arg_40h, int64_t arg_180h)
{
    int32_t iVar1;
    char cVar2;
    int32_t *in_RAX;
    undefined8 *extraout_RAX;
    int64_t extraout_RAX_00;
    undefined8 uVar3;
    int64_t iVar4;
    int64_t arg1_00;
    int32_t *extraout_RCX;
    int32_t *piVar5;
    undefined8 *puVar6;
    int64_t iVar7;
    char extraout_BL;
    char extraout_BL_00;
    undefined8 unaff_RBX;
    int64_t arg4_00;
    int64_t iVar8;
    int64_t extraout_RBX;
    undefined8 uVar9;
    int64_t extraout_RDI;
    int64_t extraout_RDI_00;
    char extraout_R8B;
    char extraout_R8B_00;
    undefined8 in_R10;
    int64_t extraout_R10;
    int64_t unaff_R14;
    undefined8 in_XMM1_Qa;
    undefined8 in_XMM4_Qa;
    undefined8 in_XMM5_Qa;
    undefined auVar10 [16];
    undefined auVar11 [16];
    int64_t unaff_retaddr;
    int64_t var_180h;
    int64_t in_stack_fffffffffffffe90;
    int64_t in_stack_fffffffffffffe98;
    int64_t in_stack_fffffffffffffea0;
    int64_t in_stack_fffffffffffffea8;
    int64_t in_stack_fffffffffffffeb0;
    int64_t in_stack_fffffffffffffeb8;
    int64_t in_stack_fffffffffffffec0;
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
    int64_t var_8h;
    
    while (&var_f0h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe3cdd4;
        runtime_morestack_noctxt_abi0(unaff_retaddr, (int64_t)in_RAX);
    }
    if (in_RAX == (int32_t *)0x0) {
        return;
    }
    LOCK();
    iVar1 = *in_RAX;
    if (iVar1 == 0) {
        *in_RAX = 1;
    }
    UNLOCK();
    if (iVar1 != 0) {
        sync___Mutex__lockSlow(in_RAX);
    }
    pkg_diapdu___DynamicTrafficController__buildRunSnapExLocked(in_RAX);
    var_98h = pkg_diapdu___DynamicTrafficController__collectActiveEdgeLocks
                        (arg1_00, in_XMM1_Qa, placeholder_2, arg4_00, in_XMM4_Qa, in_XMM5_Qa, in_stack_fffffffffffffe90
                         , in_stack_fffffffffffffe98, in_stack_fffffffffffffea0, in_stack_fffffffffffffea8, 
                         (int64_t)in_RAX, arg5);
    LOCK();
    iVar1 = *in_RAX;
    *in_RAX = *in_RAX + -1;
    UNLOCK();
    iVar7 = var_98h;
    piVar5 = in_RAX;
    puVar6 = extraout_RAX;
    iVar8 = arg4_00;
    iVar4 = arg4;
    if (iVar1 != 1) {
        sync___Mutex__unlockSlow(in_RAX);
        iVar7 = var_98h;
    }
    do {
        if (iVar8 < 1) {
            iVar8 = 0;
            iVar7 = 0;
code_r0x00e3c920:
            if ((iVar8 == 0) &&
               (var_90h = iVar7, uVar3 = pkg_diapdu___DynamicTrafficController__FreshMonitorSnap(piVar5, unaff_RBX, iVar4, 15000000000), iVar7 = var_90h,
               iVar4 = arg4, extraout_BL != '\0')) {
                auVar10 = pkg_diapdu_resolveCurrentEdgeOnPath(arg2, arg5, arg6, uVar3);
                iVar7 = var_90h;
                if (extraout_R8B != '\0') {
                    if ((auVar10._8_8_ == 0) || (extraout_RDI == 0)) {
                        iVar7 = 0x116f2c7;
                        iVar8 = 6;
                    } else {
                        iVar7 = runtime_concatstring3(in_stack_fffffffffffffe90, in_stack_fffffffffffffe98, 
                                             in_stack_fffffffffffffea0, in_stack_fffffffffffffea8, 
                                             in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, 
                                             in_stack_fffffffffffffec0);
                        iVar8 = auVar10._0_8_;
                    }
                }
            }
            if ((iVar8 == 0) &&
               (var_18h = iVar7, iVar4 = pkg_diapdu___VehicleRuntimeHub__Fresh(*(undefined8 *)0xfb4b70, unaff_RBX, iVar4), iVar7 = var_18h,
               extraout_BL_00 != '\0')) {
                auVar10 = pkg_diapdu_resolveCurrentEdgeOnPath(arg2, arg5, arg6, iVar4 + 0x50);
                iVar7 = var_18h;
                if (extraout_R8B_00 != '\0') {
                    if ((auVar10._8_8_ == 0) || (extraout_RDI_00 == 0)) {
                        iVar7 = 0x116f2c7;
                        iVar8 = 6;
                    } else {
                        iVar7 = runtime_concatstring3(in_stack_fffffffffffffe90, in_stack_fffffffffffffe98, 
                                             in_stack_fffffffffffffea0, in_stack_fffffffffffffea8, 
                                             in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, 
                                             in_stack_fffffffffffffec0);
                        iVar8 = auVar10._0_8_;
                    }
                }
            }
            auVar10._8_8_ = iVar8;
            auVar10._0_8_ = iVar7;
            if (iVar8 == 0) {
                if (arg5 < 2) {
                    auVar10._8_8_ = 0xc;
                    auVar10._0_8_ = 0x1177d4a;
                } else {
                    if ((*(int64_t *)(arg2 + 8) == 0) || (*(int64_t *)(arg2 + 0x18) == 0)) {
                        uVar3 = 6;
                        uVar9 = 0x116f2c7;
                    } else {
                        uVar3 = *(undefined8 *)arg2;
                        uVar9 = runtime_concatstring3(in_stack_fffffffffffffe90, in_stack_fffffffffffffe98, 
                                             in_stack_fffffffffffffea0, in_stack_fffffffffffffea8, 
                                             in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, 
                                             in_stack_fffffffffffffec0);
                    }
                    var_20h = runtime_convTstring(uVar9, uVar3);
                    var_28h = 0x1042920;
                    auVar10 = fmt_Sprintf(0x118a3d7 /* "尚无监控(规划首段 %s)" */, 0x1d, &var_28h, 1, 1);
                }
            }
            var_90h = auVar10._0_8_;
            if (arg5 == 0) {
                auVar11._8_8_ = 3;
                auVar11._0_8_ = 0x1168a51;
            } else {
                auVar11 = strings_Join(arg2, arg5, arg6, 0x1168a48 /* "→" */, 3);
            }
            var_a0h = auVar11._0_8_;
            var_60h = runtime_convT64(arg1);
            var_68h = 0x1042b60;
            var_50h = runtime_convTstring(unaff_RBX, arg4);
            var_58h = 0x1042920;
            var_40h = runtime_convT64(in_R10);
            var_48h = 0x1042b60;
            var_30h = runtime_convTstring(var_a0h, auVar11._8_8_);
            var_38h = 0x1042920;
            fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a712a, 0x47, &var_68h, 4, 4);
            var_70h = runtime_convTstring(var_90h, auVar10._8_8_);
            var_78h = 0x1042920;
            fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11929f6, 0x25, &var_78h, 1, 1);
            pkg_diapdu_formatLockList(in_stack_fffffffffffffe90, auVar10._8_8_, var_28h);
            var_80h = runtime_convTstring();
            var_88h = 0x1042920;
            fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1192a1b /* "[交通管制]   系统锁定边: %s\n" */, 0x25, &var_88h, 1, 1);
            return;
        }
        uVar3 = *puVar6;
        runtime_duffcopy_offset_812(iVar7, iVar8, piVar5, &var_100h, puVar6 + 1);
        if (extraout_R10 == var_100h) {
            var_10h = (int64_t)puVar6;
            cVar2 = runtime_memequal(uVar3, unaff_RBX, var_100h);
            iVar7 = var_98h;
            piVar5 = in_RAX;
            puVar6 = (undefined8 *)var_10h;
            iVar4 = arg4;
        } else {
            cVar2 = '\0';
            iVar7 = extraout_RAX_00;
            piVar5 = extraout_RCX;
            iVar4 = extraout_R10;
        }
        if ((cVar2 != '\0') && ((char)var_c0h != '\0')) {
            if ((var_f0h == 0) || (var_e0h == 0)) {
                iVar7 = 0x116f2c7;
                iVar8 = 6;
            } else {
                iVar7 = runtime_concatstring3(in_stack_fffffffffffffe90, in_stack_fffffffffffffe98, in_stack_fffffffffffffea0, 
                                     in_stack_fffffffffffffea8, in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, 
                                     in_stack_fffffffffffffec0);
                piVar5 = in_RAX;
                iVar8 = var_f8h;
                iVar4 = arg4;
            }
            goto code_r0x00e3c920;
        }
        puVar6 = puVar6 + 0xd;
        iVar8 = extraout_RBX + -1;
    } while( true );
}
