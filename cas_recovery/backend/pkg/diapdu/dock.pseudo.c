/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/pkg/diapdu.resolveDockStartStation | VA 0xe25140 | dock.go:16
   DWARF parameters and results: graph *CAS-Backend/pkg/diapdu.Graph, vehicleID string, pushStation string, from CAS-Backend/pkg/diapdu.Location, ~r0 string
   DWARF locals: snap *CAS-Backend/pkg/diapdu.VehicleRuntimeSnap, ok bool, st string, n *CAS-Backend/pkg/diapdu.Node */
undefined8 __stdcall
pkg_diapdu_resolveDockStartStation
          (int64_t arg7, int64_t arg8, int64_t arg1, int64_t arg2, undefined8 placeholder_4, int64_t arg4,
          undefined8 placeholder_6, undefined8 placeholder_7, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h,
          int64_t arg_20h, int64_t arg_28h, int64_t arg_30h, int64_t arg_38h)
{
    int64_t iVar1;
    char cVar2;
    int64_t *in_RAX;
    undefined8 uVar3;
    int64_t iVar4;
    undefined8 *puVar5;
    char extraout_BL;
    undefined8 unaff_RBX;
    int64_t iVar6;
    int64_t unaff_R14;
    undefined auVar7 [16];
    int64_t unaff_retaddr;
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
    
    while (&stack0xfffffffffffffff8 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, (int64_t)in_RAX);
    }
    auVar7 = strings_TrimSpace(arg1, arg2);
    uVar3 = auVar7._0_8_;
    if ((in_RAX != (int64_t *)0x0) && (auVar7._8_8_ != 0)) {
        iVar4 = *in_RAX;
        iVar1 = in_RAX[1];
        for (iVar6 = 0; iVar6 < iVar1; iVar6 = iVar6 + 1) {
            puVar5 = *(undefined8 **)(iVar4 + iVar6 * 8);
            if ((auVar7._8_8_ == puVar5[1]) && (cVar2 = runtime_memequal(*puVar5, uVar3, puVar5[1]), cVar2 != '\0'))
            goto code_r0x00e25407;
        }
        puVar5 = (undefined8 *)0x0;
code_r0x00e25407:
        if (puVar5 != (undefined8 *)0x0) {
            return uVar3;
        }
    }
    iVar4 = pkg_diapdu___VehicleRuntimeHub__Fresh(*(undefined8 *)0xfb4b70, unaff_RBX, arg4);
    if (extraout_BL != '\0') {
        auVar7 = strings_TrimSpace(*(undefined8 *)(iVar4 + 0x40), *(undefined8 *)(iVar4 + 0x48));
        if ((auVar7._8_8_ != 0) && (in_RAX != (int64_t *)0x0)) {
            iVar4 = *in_RAX;
            iVar1 = in_RAX[1];
            for (iVar6 = 0; iVar6 < iVar1; iVar6 = iVar6 + 1) {
                puVar5 = *(undefined8 **)(iVar4 + iVar6 * 8);
                if ((auVar7._8_8_ == puVar5[1]) &&
                   (cVar2 = runtime_memequal(*puVar5, auVar7._0_8_, puVar5[1]), cVar2 != '\0')) goto code_r0x00e25378;
            }
            puVar5 = (undefined8 *)0x0;
code_r0x00e25378:
            if (puVar5 != (undefined8 *)0x0) {
                return auVar7._0_8_;
            }
        }
    }
    if (in_RAX != (int64_t *)0x0) {
        for (iVar4 = 0; iVar4 < in_RAX[1]; iVar4 = iVar4 + 1) {
            puVar5 = *(undefined8 **)(*in_RAX + iVar4 * 8);
            if (ABS((double)puVar5[2] - (double)arg7) < *(double *)0x2e67888 &&
                ABS((double)puVar5[3] - (double)arg8) < *(double *)0x2e67888) goto code_r0x00e252d3;
        }
        puVar5 = (undefined8 *)0x0;
code_r0x00e252d3:
        if (puVar5 != (undefined8 *)0x0) {
            return *puVar5;
        }
        puVar5 = (undefined8 *)pkg_diapdu_closestNodeTo();
        if (puVar5 != (undefined8 *)0x0) {
            return *puVar5;
        }
    }
    return uVar3;
}

/* CAS-Backend/pkg/diapdu.planDockPathNodes | VA 0xe25480 | dock.go:38
   DWARF parameters and results: graph *CAS-Backend/pkg/diapdu.Graph, vehicleID string, startStation string, dockName string, ~r0 []string, ~r1 bool
   DWARF locals: ok bool, path []string */
int64_t * __stdcall
pkg_diapdu_planDockPathNodes
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, int64_t arg5, int64_t arg6,
          int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
          int64_t arg_38h, int64_t arg_98h)
{
    int64_t iVar1;
    char cVar2;
    int64_t *in_RAX;
    int64_t iVar3;
    undefined8 *puVar4;
    int64_t *piVar5;
    undefined8 unaff_RBX;
    int64_t iVar6;
    int64_t iVar7;
    int64_t iVar8;
    char extraout_DIL;
    int64_t *extraout_R11;
    int64_t *extraout_R11_00;
    int64_t *extraout_R11_01;
    int64_t unaff_R14;
    bool bVar9;
    undefined auVar10 [16];
    int64_t unaff_retaddr;
    int64_t in_stack_ffffffffffffff60;
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
    
    while (&var_20h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, (int64_t)in_RAX);
    }
    auVar10 = strings_TrimSpace(arg1, arg2);
    iVar6 = auVar10._8_8_;
    var_10h = auVar10._0_8_;
    auVar10 = strings_TrimSpace(arg5, arg6);
    iVar7 = auVar10._8_8_;
    var_18h = auVar10._0_8_;
    if ((iVar6 == 0) || (iVar7 == 0)) {
        return (int64_t *)0x0;
    }
    if ((iVar7 == iVar6) && (cVar2 = runtime_memequal(var_10h, var_18h, iVar6), cVar2 != '\0')) {
        piVar5 = (int64_t *)runtime_newobject(in_stack_ffffffffffffff60);
        piVar5[1] = iVar6;
        if (*(int32_t *)0x355db50 != 0) {
            piVar5 = (int64_t *)runtime_gcWriteBarrier1();
            *extraout_R11 = var_10h;
        }
        *piVar5 = var_10h;
        return piVar5;
    }
    if (in_RAX != (int64_t *)0x0) {
        auVar10 = pkg_diapdu_shortestPathOnGraph(in_RAX, 0, unaff_RBX, arg4, var_10h, iVar6, var_18h, iVar7);
        if ((extraout_DIL != '\0') && (1 < auVar10._8_8_)) {
            return auVar10._0_8_;
        }
        iVar8 = *in_RAX;
        iVar1 = in_RAX[1];
        var_20h = iVar8;
        for (iVar3 = 0; iVar3 < iVar1; iVar3 = iVar3 + 1) {
            puVar4 = *(undefined8 **)(iVar8 + iVar3 * 8);
            if ((iVar6 == puVar4[1]) && (cVar2 = runtime_memequal(*puVar4, var_10h), iVar8 = var_20h, cVar2 != '\0'))
            goto code_r0x00e25720;
        }
        puVar4 = (undefined8 *)0x0;
code_r0x00e25720:
        if (puVar4 == (undefined8 *)0x0) {
            bVar9 = false;
        } else {
            iVar8 = *in_RAX;
            iVar1 = in_RAX[1];
            for (iVar3 = 0; iVar3 < iVar1; iVar3 = iVar3 + 1) {
                puVar4 = *(undefined8 **)(iVar8 + iVar3 * 8);
                if ((iVar7 == puVar4[1]) && (cVar2 = runtime_memequal(*puVar4, var_18h), cVar2 != '\0'))
                goto code_r0x00e25824;
            }
            puVar4 = (undefined8 *)0x0;
code_r0x00e25824:
            bVar9 = puVar4 != (undefined8 *)0x0;
        }
        if (bVar9) {
            piVar5 = (int64_t *)runtime_newobject(in_stack_ffffffffffffff60);
            piVar5[1] = iVar6;
            if (*(int32_t *)0x355db50 != 0) {
                piVar5 = (int64_t *)runtime_gcWriteBarrier2();
                *extraout_R11_01 = var_10h;
                extraout_R11_01[1] = var_18h;
            }
            *piVar5 = var_10h;
            piVar5[3] = iVar7;
            piVar5[2] = var_18h;
            return piVar5;
        }
    }
    piVar5 = (int64_t *)runtime_newobject(in_stack_ffffffffffffff60);
    piVar5[1] = iVar6;
    if (*(int32_t *)0x355db50 != 0) {
        piVar5 = (int64_t *)runtime_gcWriteBarrier2();
        *extraout_R11_00 = var_10h;
        extraout_R11_00[1] = var_18h;
    }
    *piVar5 = var_10h;
    piVar5[3] = iVar7;
    piVar5[2] = var_18h;
    return piVar5;
}

/* CAS-Backend/pkg/diapdu.NearestAvailablePPDock | VA 0xe25880 | dock.go:59
   DWARF parameters and results: graph *CAS-Backend/pkg/diapdu.Graph, startStation string, from CAS-Backend/pkg/diapdu.Location, occupied map[string]string, selfID string, ~r0 *CAS-Backend/pkg/diapdu.Node
   DWARF locals: best *CAS-Backend/pkg/diapdu.Node, bestD float64, n *CAS-Backend/pkg/diapdu.Node, ok bool, d float64, owner string */
undefined  [16] __stdcall
pkg_diapdu_NearestAvailablePPDock
          (int64_t arg7, int64_t arg8, int64_t arg1, int64_t arg2, undefined8 placeholder_4, int64_t arg4, int64_t arg5,
          undefined8 placeholder_7, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h,
          int64_t arg_30h, int64_t arg_38h, int64_t arg_40h, int64_t arg_60h)
{
    int64_t iVar1;
    int64_t iVar2;
    undefined8 *puVar3;
    undefined auVar4 [16];
    undefined auVar5 [16];
    uint8_t uVar6;
    int64_t *in_RAX;
    undefined8 *puVar7;
    int64_t iVar8;
    uint64_t in_RDX;
    uint64_t extraout_RDX;
    char extraout_BL;
    int64_t unaff_RBX;
    char extraout_DIL;
    undefined8 *puVar9;
    int64_t unaff_R14;
    bool bVar10;
    double dVar11;
    double dVar12;
    undefined8 in_XMM6_Qa;
    undefined auVar13 [16];
    int64_t unaff_retaddr;
    int64_t in_stack_ffffffffffffff78;
    int64_t in_stack_ffffffffffffff80;
    int64_t in_stack_ffffffffffffff88;
    int64_t in_stack_ffffffffffffff90;
    int64_t in_stack_ffffffffffffff98;
    int64_t in_stack_ffffffffffffffa0;
    int64_t in_stack_ffffffffffffffa8;
    int64_t var_48h;
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0xfffffffffffffff8 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, (int64_t)in_RAX);
        in_RDX = extraout_RDX;
    }
    if ((in_RAX != (int64_t *)0x0) && (in_RAX[1] != 0)) {
        auVar13 = pkg_diapdu_resolveDockStartStation
                            (arg7, arg8, unaff_RBX, arg4, placeholder_4, arg5, in_XMM6_Qa, placeholder_7, 
                             in_stack_ffffffffffffff78, in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, 
                             in_stack_ffffffffffffff90, in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0, 
                             in_stack_ffffffffffffffa8);
        if (arg2 == 0) {
            auVar4._8_8_ = 0;
            auVar4._0_8_ = auVar13._8_8_;
            return auVar4 << 0x40;
        }
        iVar1 = *in_RAX;
        iVar2 = in_RAX[1];
        puVar9 = (undefined8 *)0x0;
        dVar11 = *(double *)0x2e678a0;
        for (iVar8 = 0; iVar8 < iVar2; iVar8 = iVar8 + 1) {
            puVar3 = *(undefined8 **)(iVar1 + iVar8 * 8);
            if (puVar3 == (undefined8 *)0x0) {
                bVar10 = true;
            } else {
                if (puVar3[1] == 0) {
                    bVar10 = false;
                } else if ((int64_t)puVar3[1] < 2) {
                    bVar10 = false;
                } else {
                    bVar10 = *(int16_t *)*puVar3 == 0x5050;
                }
                bVar10 = (bool)(bVar10 ^ 1);
            }
            if (!bVar10) {
                puVar7 = (undefined8 *)runtime_mapaccess2_faststr(0x107db20, arg1, *puVar3, puVar3[1]);
                if (extraout_BL == '\0') {
                    uVar6 = 0;
                } else if (puVar7[1] == 0) {
                    uVar6 = 0;
                } else if (arg5 == puVar7[1]) {
                    uVar6 = runtime_memequal(*puVar7, arg2);
                    uVar6 = uVar6 ^ 1;
                } else {
                    uVar6 = 1;
                }
                if (((uVar6 == 0) &&
                    (dVar12 = (double)pkg_diapdu_shortestPathOnGraph(in_RAX, 0, arg2, arg5, auVar13._0_8_, arg2, *puVar3, puVar3[1]),
                    extraout_DIL != '\0')) && (dVar12 < dVar11)) {
                    puVar9 = puVar3;
                    dVar11 = dVar12;
                }
            }
        }
        auVar13._8_8_ = in_RAX;
        auVar13._0_8_ = puVar9;
        return auVar13;
    }
    auVar5._8_8_ = 0;
    auVar5._0_8_ = in_RDX;
    return auVar5 << 0x40;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).occupiedDockMap | VA 0xe25b60 | dock.go:90
   DWARF parameters and results: s *CAS-Backend/pkg/diapdu.TaskScheduler, ~r0 map[string]string
   DWARF locals: out map[string]string, dock string, vid string */
// WARNING: Variable defined which should be unmapped: var_8h

int64_t __stdcall pkg_diapdu___TaskScheduler__occupiedDockMap(int64_t arg_8h, int64_t arg_38h, int64_t arg_40h)
{
    int32_t *piVar1;
    uint32_t uVar2;
    int32_t iVar3;
    int64_t in_RAX;
    uint64_t uVar4;
    int64_t *piVar5;
    undefined8 extraout_RBX;
    int64_t *extraout_R11;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t var_b8h;
    int64_t var_88h;
    int64_t var_80h;
    int64_t var_78h;
    int64_t var_70h;
    int64_t var_68h;
    int64_t var_60h;
    undefined auStack_28 [32];
    int64_t var_8h;
    
    while (auStack_28 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe25cbf;
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    var_78h = runtime_makemap_small();
    if (in_RAX == 0) {
        return var_78h;
    }
    var_70h = in_RAX + 0x58;
    uVar4 = 0;
    LOCK();
    uVar2 = *(uint32_t *)(in_RAX + 0x58);
    if (uVar2 == 0) {
        *(uint32_t *)(in_RAX + 0x58) = 1;
    } else {
        uVar4 = (uint64_t)uVar2;
    }
    UNLOCK();
    if (uVar2 != 0) {
        uVar4 = sync___Mutex__lockSlow(var_70h);
    }
    runtime_duffzero_offset_331(uVar4, *(undefined8 *)(in_RAX + 0x60), in_RAX, &var_88h);
    runtime_mapiterinit(0x107db20, extraout_RBX, &var_68h);
    while (var_68h != 0) {
        var_88h = *(int64_t *)(var_60h + 8);
        var_80h = *(int64_t *)var_60h;
        piVar5 = (int64_t *)runtime_mapassign_faststr(0x107db20, var_78h, *(undefined8 *)var_68h, *(undefined8 *)(var_68h + 8));
        piVar5[1] = var_88h;
        if (*(int32_t *)0x355db50 != 0) {
            piVar5 = (int64_t *)runtime_gcWriteBarrier2();
            *extraout_R11 = var_80h;
            extraout_R11[1] = *piVar5;
        }
        *piVar5 = var_80h;
        runtime_mapiternext(&var_68h);
    }
    LOCK();
    piVar1 = (int32_t *)(in_RAX + 0x58);
    iVar3 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar3 != 1) {
        sync___Mutex__unlockSlow(var_70h);
    }
    return var_78h;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).dockOccupancyIncludingLivePositions | VA 0xe25ce0 | dock.go:104
   DWARF parameters and results: s *CAS-Backend/pkg/diapdu.TaskScheduler, ~r0 map[string]string
   DWARF locals: out map[string]string, fl *CAS-Backend/pkg/diapdu.Forklift, st string, err error, ok bool, owner string */
// WARNING: Variable defined which should be unmapped: var_90h

undefined8 __stdcall pkg_diapdu___TaskScheduler__dockOccupancyIncludingLivePositions(int64_t arg_8h)
{
    uint8_t uVar1;
    int64_t *in_RAX;
    undefined8 uVar2;
    int64_t iVar3;
    int16_t *piVar4;
    undefined8 *puVar5;
    int64_t *piVar6;
    int64_t iVar7;
    int64_t extraout_RCX;
    char extraout_BL;
    int64_t iVar8;
    int64_t *extraout_R11;
    int64_t unaff_R14;
    bool bVar9;
    undefined auVar10 [16];
    undefined auVar11 [16];
    int64_t unaff_retaddr;
    int64_t in_stack_ffffffffffffff38;
    int64_t in_stack_ffffffffffffff40;
    int64_t in_stack_ffffffffffffff48;
    int64_t in_stack_ffffffffffffff50;
    int64_t in_stack_ffffffffffffff58;
    int64_t in_stack_ffffffffffffff60;
    int64_t in_stack_ffffffffffffff68;
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
    
    while (&var_48h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, (int64_t)in_RAX);
    }
    uVar2 = pkg_diapdu___TaskScheduler__occupiedDockMap(in_stack_ffffffffffffff38, in_stack_ffffffffffffff68, var_90h);
    if ((in_RAX != (int64_t *)0x0) && (*in_RAX != 0)) {
        auVar10 = pkg_diapdu___ForkliftUpdater__GetAllForklifts(*in_RAX);
        iVar3 = auVar10._0_8_;
        var_40h = iVar3;
        for (iVar7 = 0; iVar7 < auVar10._8_8_; iVar7 = iVar7 + 1) {
            piVar6 = *(int64_t **)(iVar3 + iVar7 * 8);
            if (((piVar6 != (int64_t *)0x0) && (piVar6[1] != 0)) &&
               (pkg_diapdu_currentStationForVehicle(*piVar6, piVar6[1], piVar6[7], piVar6[8]), iVar3 = var_40h, extraout_RCX == 0)) {
                auVar11 = strings_TrimSpace();
                iVar8 = auVar11._8_8_;
                piVar4 = auVar11._0_8_;
                if (iVar8 == 0) {
                    bVar9 = false;
                } else if (iVar8 < 2) {
                    bVar9 = false;
                } else {
                    bVar9 = *piVar4 == 0x5050;
                }
                iVar3 = var_40h;
                if (bVar9) {
                    puVar5 = (undefined8 *)runtime_mapaccess2_faststr(0x107db20, uVar2, piVar4, iVar8);
                    if (extraout_BL == '\0') {
                        uVar1 = 0;
                    } else if (puVar5[1] == 0) {
                        uVar1 = 0;
                    } else if (piVar6[1] == puVar5[1]) {
                        uVar1 = runtime_memequal(*puVar5, *piVar6);
                        uVar1 = uVar1 ^ 1;
                    } else {
                        uVar1 = 1;
                    }
                    if (uVar1 == 0) {
                        iVar3 = piVar6[1];
                        var_48h = *piVar6;
                        piVar6 = (int64_t *)runtime_mapassign_faststr(0x107db20, uVar2, piVar4, iVar8);
                        piVar6[1] = iVar3;
                        if (*(int32_t *)0x355db50 != 0) {
                            piVar6 = (int64_t *)runtime_gcWriteBarrier2();
                            *extraout_R11 = var_48h;
                            extraout_R11[1] = *piVar6;
                        }
                        *piVar6 = var_48h;
                        iVar3 = var_40h;
                    } else {
                        var_30h = runtime_convTstring(in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, 
                                               in_stack_ffffffffffffff60);
                        var_38h = 0x1042920;
                        var_20h = runtime_convTstring(in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, 
                                               in_stack_ffffffffffffff60);
                        var_28h = 0x1042920;
                        var_10h = runtime_convTstring(in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, 
                                               in_stack_ffffffffffffff60);
                        var_18h = 0x1042920;
                        fmt_Fprintf(in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, in_stack_ffffffffffffff48, 
                                     in_stack_ffffffffffffff50, in_stack_ffffffffffffff58, in_stack_ffffffffffffff60, 
                                     in_stack_ffffffffffffff68);
                        iVar3 = var_40h;
                    }
                }
            }
        }
        return uVar2;
    }
    return uVar2;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).releaseDockIfVehicleLeft | VA 0xe25fe0 | dock.go:131
   DWARF parameters and results: s *CAS-Backend/pkg/diapdu.TaskScheduler, vehicleID string, currentStation string
   DWARF locals: st *CAS-Backend/pkg/diapdu.vehicleDockState, ok bool, dock string, vid string */
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Detected overlap for variable var_a8h

void __stdcall
pkg_diapdu___TaskScheduler__releaseDockIfVehicleLeft
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h,
          int64_t placeholder_11, undefined8 placeholder_12, int64_t arg_40h, int64_t arg_70h)
{
    int64_t iVar1;
    char cVar2;
    uint8_t uVar3;
    int64_t in_RAX;
    int64_t *piVar4;
    undefined8 extraout_RCX;
    char extraout_BL;
    undefined8 unaff_RBX;
    undefined8 extraout_RBX;
    int64_t unaff_R14;
    bool bVar5;
    undefined auVar6 [16];
    int64_t unaff_retaddr;
    int64_t var_e0h;
    int64_t var_a9h;
    int64_t var_a0h;
    int64_t var_98h;
    int64_t var_90h;
    int64_t var_88h;
    int64_t var_80h;
    int64_t var_78h;
    int64_t var_70h;
    undefined8 *puStack_68;
    undefined auStack_50 [64];
    int64_t var_10h;
    int64_t var_8h;
    
    while (auStack_50 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe26271;
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    if ((in_RAX == 0) || (placeholder_11 == 0)) {
        return;
    }
    auVar6 = strings_TrimSpace(arg1, arg2);
    var_88h = auVar6._0_8_;
    var_78h = in_RAX + 0x58;
    LOCK();
    bVar5 = *(int32_t *)(in_RAX + 0x58) == 0;
    if (bVar5) {
        *(int32_t *)(in_RAX + 0x58) = 1;
    }
    UNLOCK();
    if (!bVar5) {
        sync___Mutex__lockSlow(var_78h);
    }
    var_80h = 0xe262a0;
    var_10h = (int64_t)&var_80h;
    piVar4 = (int64_t *)runtime_mapaccess2_faststr(0x107d7c0, *(undefined8 *)(in_RAX + 0x68), unaff_RBX, placeholder_11);
    if (((extraout_BL != '\0') && (*piVar4 != 0)) && (*(char *)(*piVar4 + 0x10) != '\0')) {
        (**(code **)var_10h)();
        return;
    }
    runtime_duffzero_offset_331(piVar4, *(undefined8 *)(in_RAX + 0x60), extraout_RCX, &var_90h);
    runtime_mapiterinit(0x107db20, extraout_RBX, &var_70h);
    while (var_70h != 0) {
        iVar1 = *(int64_t *)(var_70h + 8);
        var_90h = *(int64_t *)var_70h;
        if (placeholder_11 == puStack_68[1]) {
            cVar2 = runtime_memequal(*puStack_68, unaff_RBX);
        } else {
            cVar2 = '\0';
        }
        if (cVar2 != '\0') {
            if (auVar6._8_8_ == iVar1) {
                uVar3 = runtime_memequal(var_90h, var_88h, iVar1, iVar1, placeholder_11);
                uVar3 = uVar3 ^ 1;
            } else {
                uVar3 = 1;
            }
            if (uVar3 != 0) {
                runtime_mapdelete_faststr(0x107db20, *(undefined8 *)(in_RAX + 0x60), var_90h, iVar1, placeholder_11);
            }
        }
        runtime_mapiternext(&var_70h);
    }
    (**(code **)var_10h)();
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).releaseDockIfVehicleLeft.deferwrap1 | VA 0xe262a0 | dock.go:137
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_diapdu___TaskScheduler__releaseDockIfVehicleLeft_deferwrap1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int32_t iVar1;
    int64_t *piVar2;
    int32_t *piVar3;
    int64_t extraout_RDX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000010;
    int64_t var_18h;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, arg_8h);
        arg3 = extraout_RDX;
    }
    piVar2 = *(int64_t **)(unaff_R14 + 0x20);
    if ((piVar2 != (int64_t *)0x0) && ((int64_t *)*piVar2 == &arg_8h)) {
        *piVar2 = (int64_t)&var_18h;
    }
    piVar3 = *(int32_t **)(arg3 + 8);
    LOCK();
    iVar1 = *piVar3;
    *piVar3 = *piVar3 + -1;
    UNLOCK();
    if (iVar1 != 1) {
        sync___Mutex__unlockSlow(var_18h, in_stack_fffffffffffffff0, in_stack_00000010);
    }
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).syncVehicleDockFromRuntime | VA 0xe26300 | dock.go:150
   DWARF parameters and results: s *CAS-Backend/pkg/diapdu.TaskScheduler, vehicleID string, currentStation string
   DWARF locals: (no entries) */
void __stdcall
pkg_diapdu___TaskScheduler__syncVehicleDockFromRuntime
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h,
          undefined8 placeholder_11, int64_t arg_38h, undefined8 placeholder_13, undefined8 placeholder_14,
          int64_t arg_50h)
{
    int64_t in_RAX;
    int16_t *piVar1;
    undefined8 unaff_RBX;
    int64_t iVar2;
    int64_t unaff_R14;
    bool bVar3;
    undefined auVar4 [16];
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    if (in_RAX != 0) {
        auVar4 = strings_TrimSpace(arg1, arg2);
        iVar2 = auVar4._8_8_;
        piVar1 = auVar4._0_8_;
        pkg_diapdu___TaskScheduler__releaseDockIfVehicleLeft(in_RAX, unaff_RBX, placeholder_11, piVar1, iVar2);
        if (iVar2 != 0) {
            if (iVar2 < 2) {
                bVar3 = false;
            } else {
                bVar3 = *piVar1 == 0x5050;
            }
            if (bVar3) {
                pkg_diapdu___TaskScheduler__claimDockIfParked(in_RAX, unaff_RBX, placeholder_11, piVar1);
            }
        }
        return;
    }
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).isVehicleNavigatingToDock | VA 0xe26400 | dock.go:161
   DWARF parameters and results: s *CAS-Backend/pkg/diapdu.TaskScheduler, vehicleID string, ~r0 bool, ~r0 bool
   DWARF locals: ok bool, st *CAS-Backend/pkg/diapdu.vehicleDockState */
// WARNING: [rz-ghidra] Detected overlap for variable var_32h
// WARNING: [rz-ghidra] Detected overlap for variable var_30h

undefined __stdcall
pkg_diapdu___TaskScheduler__isVehicleNavigatingToDock(int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h)
{
    undefined uVar1;
    int64_t in_RAX;
    int64_t *piVar2;
    char extraout_BL;
    undefined8 unaff_RBX;
    int64_t unaff_R14;
    bool bVar3;
    int64_t var_31h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    LOCK();
    bVar3 = *(int32_t *)(in_RAX + 0x58) == 0;
    if (bVar3) {
        *(int32_t *)(in_RAX + 0x58) = 1;
    }
    UNLOCK();
    if (!bVar3) {
        sync___Mutex__lockSlow(in_RAX + 0x58);
    }
    var_20h = 0xe26520;
    var_10h = (int64_t)&var_20h;
    var_18h = in_RAX + 0x58;
    piVar2 = (int64_t *)runtime_mapaccess2_faststr(0x107d7c0, *(undefined8 *)(in_RAX + 0x68), unaff_RBX, arg4);
    if ((extraout_BL == '\0') || (*piVar2 == 0)) {
        uVar1 = 0;
    } else {
        uVar1 = *(undefined *)(*piVar2 + 0x10);
    }
    (**(code **)var_10h)();
    return uVar1;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).isVehicleNavigatingToDock.deferwrap1 | VA 0xe26520 | dock.go:163
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_diapdu___TaskScheduler__isVehicleNavigatingToDock_deferwrap1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int32_t iVar1;
    int64_t *piVar2;
    int32_t *piVar3;
    int64_t extraout_RDX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000010;
    int64_t var_18h;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, arg_8h);
        arg3 = extraout_RDX;
    }
    piVar2 = *(int64_t **)(unaff_R14 + 0x20);
    if ((piVar2 != (int64_t *)0x0) && ((int64_t *)*piVar2 == &arg_8h)) {
        *piVar2 = (int64_t)&var_18h;
    }
    piVar3 = *(int32_t **)(arg3 + 8);
    LOCK();
    iVar1 = *piVar3;
    *piVar3 = *piVar3 + -1;
    UNLOCK();
    if (iVar1 != 1) {
        sync___Mutex__unlockSlow(var_18h, in_stack_fffffffffffffff0, in_stack_00000010);
    }
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).tryReserveDock | VA 0xe26580 | dock.go:168
   DWARF parameters and results: s *CAS-Backend/pkg/diapdu.TaskScheduler, vehicleID string, dockName string, ~r0 bool, ~r0 bool
   DWARF locals: ok bool, owner string */
// WARNING: [rz-ghidra] Detected overlap for variable var_32h
// WARNING: [rz-ghidra] Detected overlap for variable var_30h

undefined __stdcall
pkg_diapdu___TaskScheduler__tryReserveDock
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h,
          int64_t arg_68h, int64_t arg_80h)
{
    uint8_t uVar1;
    int64_t in_RAX;
    undefined8 *puVar2;
    int64_t *piVar3;
    undefined8 *puVar4;
    char extraout_BL;
    undefined8 unaff_RBX;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t *extraout_R11_01;
    int64_t unaff_R14;
    bool bVar5;
    int64_t var_31h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    LOCK();
    bVar5 = *(int32_t *)(in_RAX + 0x58) == 0;
    if (bVar5) {
        *(int32_t *)(in_RAX + 0x58) = 1;
    }
    UNLOCK();
    if (!bVar5) {
        sync___Mutex__lockSlow(in_RAX + 0x58);
    }
    var_20h = 0xe26860;
    var_10h = (int64_t)&var_20h;
    var_18h = in_RAX + 0x58;
    puVar2 = (undefined8 *)runtime_mapaccess2_faststr(0x107db20, *(undefined8 *)(in_RAX + 0x60), arg1, arg2);
    if (extraout_BL == '\0') {
        uVar1 = 0;
    } else if (puVar2[1] == 0) {
        uVar1 = 0;
    } else if (arg4 == puVar2[1]) {
        uVar1 = runtime_memequal(*puVar2, unaff_RBX);
        uVar1 = uVar1 ^ 1;
    } else {
        uVar1 = 1;
    }
    if (uVar1 != 0) {
        (**(code **)var_10h)();
        return 0;
    }
    puVar2 = (undefined8 *)runtime_mapassign_faststr(0x107db20, *(undefined8 *)(in_RAX + 0x60), arg1, arg2);
    puVar2[1] = arg4;
    if (*(int32_t *)0x355db50 != 0) {
        puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11 = unaff_RBX;
        extraout_R11[1] = *puVar2;
    }
    *puVar2 = unaff_RBX;
    piVar3 = (int64_t *)runtime_mapaccess1_faststr(0x107d7c0, *(undefined8 *)(in_RAX + 0x68));
    if (*piVar3 == 0) {
        puVar2 = (undefined8 *)runtime_newobject(0x10d3680);
        *puVar2 = 0;
        puVar2[3] = 0;
        puVar4 = (undefined8 *)runtime_mapassign_faststr(0x107d7c0, *(undefined8 *)(in_RAX + 0x68), unaff_RBX, arg4);
        if (*(int32_t *)0x355db50 != 0) {
            puVar4 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_00 = puVar2;
            extraout_R11_00[1] = *puVar4;
        }
        *puVar4 = puVar2;
    }
    piVar3 = (int64_t *)runtime_mapaccess1_faststr(0x107d7c0, *(undefined8 *)(in_RAX + 0x68), unaff_RBX, arg4);
    piVar3 = (int64_t *)*piVar3;
    piVar3[1] = arg2;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier2();
        *extraout_R11_01 = arg1;
        extraout_R11_01[1] = *piVar3;
    }
    *piVar3 = arg1;
    (**(code **)var_10h)();
    return 1;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).tryReserveDock.deferwrap1 | VA 0xe26860 | dock.go:170
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_diapdu___TaskScheduler__tryReserveDock_deferwrap1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int32_t iVar1;
    int64_t *piVar2;
    int32_t *piVar3;
    int64_t extraout_RDX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000010;
    int64_t var_18h;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, arg_8h);
        arg3 = extraout_RDX;
    }
    piVar2 = *(int64_t **)(unaff_R14 + 0x20);
    if ((piVar2 != (int64_t *)0x0) && ((int64_t *)*piVar2 == &arg_8h)) {
        *piVar2 = (int64_t)&var_18h;
    }
    piVar3 = *(int32_t **)(arg3 + 8);
    LOCK();
    iVar1 = *piVar3;
    *piVar3 = *piVar3 + -1;
    UNLOCK();
    if (iVar1 != 1) {
        sync___Mutex__unlockSlow(var_18h, in_stack_fffffffffffffff0, in_stack_00000010);
    }
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).releaseDockForVehicle | VA 0xe268c0 | dock.go:182
   DWARF parameters and results: s *CAS-Backend/pkg/diapdu.TaskScheduler, vehicleID string
   DWARF locals: ok bool, st *CAS-Backend/pkg/diapdu.vehicleDockState */
// WARNING: [rz-ghidra] Detected overlap for variable var_30h

void __stdcall
pkg_diapdu___TaskScheduler__releaseDockForVehicle
          (int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_68h)
{
    undefined8 *puVar1;
    char cVar2;
    int64_t in_RAX;
    int64_t *piVar3;
    undefined8 *puVar4;
    char extraout_BL;
    undefined8 unaff_RBX;
    int64_t unaff_R14;
    bool bVar5;
    int64_t var_31h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    LOCK();
    bVar5 = *(int32_t *)(in_RAX + 0x58) == 0;
    if (bVar5) {
        *(int32_t *)(in_RAX + 0x58) = 1;
    }
    UNLOCK();
    if (!bVar5) {
        sync___Mutex__lockSlow(in_RAX + 0x58);
    }
    var_20h = 0xe26a80;
    var_10h = (int64_t)&var_20h;
    var_18h = in_RAX + 0x58;
    piVar3 = (int64_t *)runtime_mapaccess2_faststr(0x107d7c0, *(undefined8 *)(in_RAX + 0x68), unaff_RBX, arg4);
    if ((extraout_BL != '\0') && (puVar1 = (undefined8 *)*piVar3, puVar1 != (undefined8 *)0x0)) {
        if (puVar1[1] != 0) {
            puVar4 = (undefined8 *)runtime_mapaccess1_faststr(0x107db20, *(undefined8 *)(in_RAX + 0x60), *puVar1);
            if (arg4 == puVar4[1]) {
                cVar2 = runtime_memequal(*puVar4, unaff_RBX);
            } else {
                cVar2 = '\0';
            }
            if (cVar2 != '\0') {
                runtime_mapdelete_faststr(0x107db20, *(undefined8 *)(in_RAX + 0x60), *puVar1, puVar1[1]);
            }
        }
        runtime_mapdelete_faststr(0x107d7c0, *(undefined8 *)(in_RAX + 0x68), unaff_RBX, arg4);
        (**(code **)var_10h)();
        return;
    }
    (**(code **)var_10h)();
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).releaseDockForVehicle.deferwrap1 | VA 0xe26a80 | dock.go:184
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_diapdu___TaskScheduler__releaseDockForVehicle_deferwrap1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int32_t iVar1;
    int64_t *piVar2;
    int32_t *piVar3;
    int64_t extraout_RDX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000010;
    int64_t var_18h;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, arg_8h);
        arg3 = extraout_RDX;
    }
    piVar2 = *(int64_t **)(unaff_R14 + 0x20);
    if ((piVar2 != (int64_t *)0x0) && ((int64_t *)*piVar2 == &arg_8h)) {
        *piVar2 = (int64_t)&var_18h;
    }
    piVar3 = *(int32_t **)(arg3 + 8);
    LOCK();
    iVar1 = *piVar3;
    *piVar3 = *piVar3 + -1;
    UNLOCK();
    if (iVar1 != 1) {
        sync___Mutex__unlockSlow(var_18h, in_stack_fffffffffffffff0, in_stack_00000010);
    }
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).setDockNavigating | VA 0xe26ae0 | dock.go:195
   DWARF parameters and results: s *CAS-Backend/pkg/diapdu.TaskScheduler, vehicleID string, navigating bool, cancel func()
   DWARF locals: st *CAS-Backend/pkg/diapdu.vehicleDockState */
// WARNING: [rz-ghidra] Detected overlap for variable var_30h

void __stdcall
pkg_diapdu___TaskScheduler__setDockNavigating
          (undefined8 placeholder_0, int64_t arg2, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h)
{
    int64_t in_RAX;
    undefined8 *puVar1;
    undefined8 *puVar2;
    undefined8 uVar3;
    int64_t extraout_RCX;
    undefined8 unaff_RBX;
    char in_DIL;
    undefined8 *extraout_R11;
    int64_t *extraout_R11_00;
    undefined8 *extraout_R11_01;
    int64_t unaff_R14;
    bool bVar4;
    int64_t var_31h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    LOCK();
    bVar4 = *(int32_t *)(in_RAX + 0x58) == 0;
    if (bVar4) {
        *(int32_t *)(in_RAX + 0x58) = 1;
    }
    UNLOCK();
    if (!bVar4) {
        sync___Mutex__lockSlow(in_RAX + 0x58);
    }
    var_20h = 0xe26cc0;
    var_10h = (int64_t)&var_20h;
    var_18h = in_RAX + 0x58;
    puVar1 = (undefined8 *)runtime_mapaccess1_faststr(0x107d7c0, *(undefined8 *)(in_RAX + 0x68), unaff_RBX, arg4);
    puVar1 = (undefined8 *)*puVar1;
    if (puVar1 == (undefined8 *)0x0) {
        puVar1 = (undefined8 *)runtime_newobject(0x10d3680);
        *puVar1 = 0;
        puVar1[3] = 0;
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x107d7c0, *(undefined8 *)(in_RAX + 0x68), unaff_RBX, arg4);
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11 = puVar1;
            extraout_R11[1] = *puVar2;
        }
        *puVar2 = puVar1;
    }
    *(char *)(puVar1 + 2) = in_DIL;
    if (arg2 != 0) {
        if (*(int32_t *)0x355db50 != 0) {
            in_DIL = runtime_gcWriteBarrier2();
            *extraout_R11_00 = extraout_RCX;
            extraout_R11_00[1] = puVar1[3];
            arg2 = extraout_RCX;
        }
        puVar1[3] = arg2;
    }
    if (in_DIL == '\0') {
        if (*(int32_t *)0x355db50 != 0) {
            uVar3 = runtime_gcWriteBarrier1(puVar1[3]);
            *extraout_R11_01 = uVar3;
        }
        puVar1[3] = 0;
    }
    (**(code **)var_10h)();
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).setDockNavigating.deferwrap1 | VA 0xe26cc0 | dock.go:197
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_diapdu___TaskScheduler__setDockNavigating_deferwrap1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int32_t iVar1;
    int64_t *piVar2;
    int32_t *piVar3;
    int64_t extraout_RDX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000010;
    int64_t var_18h;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, arg_8h);
        arg3 = extraout_RDX;
    }
    piVar2 = *(int64_t **)(unaff_R14 + 0x20);
    if ((piVar2 != (int64_t *)0x0) && ((int64_t *)*piVar2 == &arg_8h)) {
        *piVar2 = (int64_t)&var_18h;
    }
    piVar3 = *(int32_t **)(arg3 + 8);
    LOCK();
    iVar1 = *piVar3;
    *piVar3 = *piVar3 + -1;
    UNLOCK();
    if (iVar1 != 1) {
        sync___Mutex__unlockSlow(var_18h, in_stack_fffffffffffffff0, in_stack_00000010);
    }
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).getDockCancel | VA 0xe26d20 | dock.go:212
   DWARF parameters and results: s *CAS-Backend/pkg/diapdu.TaskScheduler, vehicleID string, ~r0 func(), ~r0 func()
   DWARF locals: st *CAS-Backend/pkg/diapdu.vehicleDockState */
// WARNING: [rz-ghidra] Detected overlap for variable var_38h

undefined8 __stdcall
pkg_diapdu___TaskScheduler__getDockCancel
          (int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_50h)
{
    int64_t iVar1;
    undefined8 uVar2;
    int64_t in_RAX;
    int64_t *piVar3;
    undefined8 unaff_RBX;
    int64_t unaff_R14;
    bool bVar4;
    int64_t var_39h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    iVar1 = in_RAX + 0x58;
    LOCK();
    bVar4 = *(int32_t *)(in_RAX + 0x58) == 0;
    if (bVar4) {
        *(int32_t *)(in_RAX + 0x58) = 1;
    }
    UNLOCK();
    if (!bVar4) {
        var_18h = in_RAX;
        sync___Mutex__lockSlow(iVar1);
        in_RAX = var_18h;
    }
    var_28h = 0xe26e60;
    var_10h = (int64_t)&var_28h;
    var_20h = iVar1;
    piVar3 = (int64_t *)runtime_mapaccess1_faststr(0x107d7c0, *(undefined8 *)(in_RAX + 0x68), unaff_RBX, arg4);
    if (*piVar3 == 0) {
        (**(code **)var_10h)();
        return 0;
    }
    uVar2 = *(undefined8 *)(*piVar3 + 0x18);
    (**(code **)var_10h)();
    return uVar2;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).getDockCancel.deferwrap1 | VA 0xe26e60 | dock.go:214
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_diapdu___TaskScheduler__getDockCancel_deferwrap1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int32_t iVar1;
    int64_t *piVar2;
    int32_t *piVar3;
    int64_t extraout_RDX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000010;
    int64_t var_18h;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, arg_8h);
        arg3 = extraout_RDX;
    }
    piVar2 = *(int64_t **)(unaff_R14 + 0x20);
    if ((piVar2 != (int64_t *)0x0) && ((int64_t *)*piVar2 == &arg_8h)) {
        *piVar2 = (int64_t)&var_18h;
    }
    piVar3 = *(int32_t **)(arg3 + 8);
    LOCK();
    iVar1 = *piVar3;
    *piVar3 = *piVar3 + -1;
    UNLOCK();
    if (iVar1 != 1) {
        sync___Mutex__unlockSlow(var_18h, in_stack_fffffffffffffff0, in_stack_00000010);
    }
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).claimDockIfParked | VA 0xe26ec0 | dock.go:222
   DWARF parameters and results: s *CAS-Backend/pkg/diapdu.TaskScheduler, vehicleID string, station string
   DWARF locals: ok bool, owner string */
// WARNING: [rz-ghidra] Detected overlap for variable var_80h

void __stdcall
pkg_diapdu___TaskScheduler__claimDockIfParked
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h,
          int64_t arg_60h, int64_t arg_d0h)
{
    int64_t iVar1;
    undefined8 uVar2;
    uint8_t uVar3;
    int64_t in_RAX;
    int16_t *piVar4;
    undefined8 *puVar5;
    int64_t *piVar6;
    undefined8 *puVar7;
    char extraout_BL;
    undefined8 unaff_RBX;
    int64_t iVar8;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    int64_t unaff_R14;
    bool bVar9;
    undefined auVar10 [16];
    int64_t var_81h;
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
    
    while (&var_40h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    auVar10 = strings_TrimSpace(arg1, arg2);
    iVar8 = auVar10._8_8_;
    piVar4 = auVar10._0_8_;
    if (iVar8 != 0) {
        if (iVar8 < 2) {
            bVar9 = false;
        } else {
            bVar9 = *piVar4 == 0x5050;
        }
        if (bVar9) {
            LOCK();
            bVar9 = *(int32_t *)(in_RAX + 0x58) == 0;
            if (bVar9) {
                *(int32_t *)(in_RAX + 0x58) = 1;
            }
            UNLOCK();
            if (!bVar9) {
                sync___Mutex__lockSlow(in_RAX + 0x58, iVar8, piVar4);
            }
            var_20h = 0xe27320;
            var_10h = (int64_t)&var_20h;
            var_18h = in_RAX + 0x58;
            puVar5 = (undefined8 *)runtime_mapaccess2_faststr(0x107db20, *(undefined8 *)(in_RAX + 0x60), piVar4, iVar8);
            iVar1 = puVar5[1];
            uVar2 = *puVar5;
            if (extraout_BL == '\0') {
                uVar3 = 0;
            } else if (iVar1 == 0) {
                uVar3 = 0;
            } else if (arg4 == iVar1) {
                uVar3 = runtime_memequal(uVar2, unaff_RBX);
                uVar3 = uVar3 ^ 1;
            } else {
                uVar3 = 1;
            }
            if (uVar3 != 0) {
                var_48h = runtime_convTstring(piVar4, iVar8, iVar1);
                var_50h = 0x1042920;
                var_38h = runtime_convTstring(uVar2, iVar1);
                var_40h = 0x1042920;
                var_28h = runtime_convTstring(unaff_RBX, arg4);
                var_30h = 0x1042920;
                fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a4bb4 /* "[停靠] 停靠点 %s 已由 %s 占用，车辆 %s 无法登记\n" */, 0x40, &var_50h, 3, 3);
                (**(code **)var_10h)();
                return;
            }
            puVar5 = (undefined8 *)runtime_mapassign_faststr(0x107db20, *(undefined8 *)(in_RAX + 0x60), piVar4, iVar8);
            puVar5[1] = arg4;
            if (*(int32_t *)0x355db50 != 0) {
                puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
                *extraout_R11 = unaff_RBX;
                extraout_R11[1] = *puVar5;
            }
            *puVar5 = unaff_RBX;
            piVar6 = (int64_t *)runtime_mapaccess1_faststr(0x107d7c0, *(undefined8 *)(in_RAX + 0x68));
            if (*piVar6 == 0) {
                puVar5 = (undefined8 *)runtime_newobject(0x10d3680);
                *puVar5 = 0;
                puVar5[3] = 0;
                puVar7 = (undefined8 *)runtime_mapassign_faststr(0x107d7c0, *(undefined8 *)(in_RAX + 0x68), unaff_RBX, arg4);
                if (*(int32_t *)0x355db50 != 0) {
                    puVar7 = (undefined8 *)runtime_gcWriteBarrier2();
                    *extraout_R11_00 = puVar5;
                    extraout_R11_00[1] = *puVar7;
                }
                *puVar7 = puVar5;
            }
            puVar5 = (undefined8 *)runtime_mapaccess1_faststr(0x107d7c0, *(undefined8 *)(in_RAX + 0x68), unaff_RBX, arg4);
            puVar5 = (undefined8 *)*puVar5;
            puVar5[1] = iVar8;
            if (*(int32_t *)0x355db50 != 0) {
                runtime_gcWriteBarrier2();
                *extraout_R11_01 = piVar4;
                extraout_R11_01[1] = *puVar5;
            }
            *puVar5 = piVar4;
            piVar6 = (int64_t *)runtime_mapaccess1_faststr(0x107d7c0, *(undefined8 *)(in_RAX + 0x68), unaff_RBX, arg4);
            *(undefined *)(*piVar6 + 0x10) = 0;
            (**(code **)var_10h)();
            return;
        }
    }
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).claimDockIfParked.deferwrap1 | VA 0xe27320 | dock.go:228
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_diapdu___TaskScheduler__claimDockIfParked_deferwrap1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int32_t iVar1;
    int64_t *piVar2;
    int32_t *piVar3;
    int64_t extraout_RDX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000010;
    int64_t var_18h;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, arg_8h);
        arg3 = extraout_RDX;
    }
    piVar2 = *(int64_t **)(unaff_R14 + 0x20);
    if ((piVar2 != (int64_t *)0x0) && ((int64_t *)*piVar2 == &arg_8h)) {
        *piVar2 = (int64_t)&var_18h;
    }
    piVar3 = *(int32_t **)(arg3 + 8);
    LOCK();
    iVar1 = *piVar3;
    *piVar3 = *piVar3 + -1;
    UNLOCK();
    if (iVar1 != 1) {
        sync___Mutex__unlockSlow(var_18h, in_stack_fffffffffffffff0, in_stack_00000010);
    }
    return;
}

/* CAS-Backend/pkg/diapdu.formatDockTaskID | VA 0xe27380 | dock.go:241
   DWARF parameters and results: prefix string, idx int, ~r0 string
   DWARF locals: (no entries) */
void __stdcall pkg_diapdu_formatDockTaskID(int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h)
{
    undefined8 in_RAX;
    int64_t iVar1;
    undefined8 unaff_RBX;
    int64_t unaff_R14;
    undefined auVar2 [16];
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
    auVar2 = time_Now();
    iVar1 = auVar2._8_8_;
    if ((int64_t)auVar2._0_8_ < 0) {
        iVar1 = ((auVar2._0_8_ & 0x7fffffffffffffff) >> 0x1e) + 0xdd7b17f80;
    }
    iVar1 = (int64_t)(int32_t)(auVar2._0_4_ & 0x3fffffff) + iVar1 * 1000000000;
    var_30h = runtime_convTstring(in_RAX, unaff_RBX);
    var_38h = 0x1042920;
    var_20h = runtime_convT64(arg4);
    var_28h = 0x1042b60;
    var_10h = runtime_convT64(iVar1 + ((iVar1 + -0x5e4dfc14c2e60000) / 1000000000) * -1000000000 + -0x5e4dfc14c2e60000);
    var_18h = 0x1042ae0;
    fmt_Sprintf(0x1178cf8 /* "%s-dock-%d-%d" */, 0xd, &var_38h, 3, 3);
    return;
}
