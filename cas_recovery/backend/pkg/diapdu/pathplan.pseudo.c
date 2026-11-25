/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/pkg/diapdu.PlanStationPath | VA 0xe2c600 | pathplan.go:11
   DWARF parameters and results: graph *CAS-Backend/pkg/diapdu.Graph, start string, end string, waypoints []string, ~r0 []string, ~r1 error
   DWARF locals: legs []string, full []string, ~r0.ptr *string, ~r0.cap int, ~r0.len int, wp string, err error, i int, ok bool, a string, b string, seg []string */
undefined8 __stdcall
pkg_diapdu_PlanStationPath
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, int64_t arg5, int64_t arg6,
          int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
          int64_t arg_38h, int64_t arg_40h, int64_t arg_b0h, int64_t arg_140h)
{
    char cVar1;
    int64_t in_RAX;
    undefined8 *puVar2;
    undefined8 *extraout_RAX;
    undefined8 uVar3;
    undefined8 *extraout_RAX_00;
    undefined8 *extraout_RAX_01;
    undefined8 uVar4;
    undefined8 *extraout_RAX_02;
    int64_t extraout_RAX_03;
    int64_t extraout_RAX_04;
    undefined8 extraout_RAX_05;
    int64_t extraout_RAX_06;
    uint64_t extraout_RCX;
    uint64_t extraout_RCX_00;
    uint64_t extraout_RCX_01;
    uint64_t extraout_RCX_02;
    uint64_t extraout_RCX_03;
    uint64_t extraout_RCX_04;
    uint64_t uVar5;
    undefined8 extraout_RCX_05;
    uint64_t extraout_RCX_06;
    uint64_t extraout_RCX_07;
    undefined8 extraout_RCX_08;
    int64_t extraout_RCX_09;
    undefined8 uVar6;
    undefined8 unaff_RBX;
    uint64_t uVar7;
    uint64_t extraout_RBX;
    uint64_t extraout_RBX_00;
    uint64_t extraout_RBX_01;
    int64_t extraout_RBX_02;
    uint64_t extraout_RBX_03;
    uint64_t extraout_RBX_04;
    undefined8 extraout_RBX_05;
    undefined8 extraout_RBX_06;
    undefined *puVar8;
    undefined *unaff_RBP;
    undefined *puVar9;
    undefined8 *extraout_RSI;
    int64_t extraout_RSI_00;
    char extraout_DIL;
    int64_t iVar10;
    int64_t extraout_RDI;
    undefined8 *puVar11;
    int64_t extraout_R8;
    int64_t iVar12;
    int64_t iVar13;
    int64_t extraout_R8_00;
    int64_t iVar14;
    int64_t extraout_R9;
    undefined8 in_R10;
    undefined8 extraout_R10;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    int64_t unaff_R14;
    undefined8 uVar15;
    undefined8 in_XMM15_Qa;
    undefined8 in_XMM15_Qb;
    undefined auVar16 [16];
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
    
    do {
        puVar8 = (undefined *)*(undefined **)0x20;
        puVar9 = unaff_RBP;
        if (*(undefined **)(unaff_R14 + 0x10) < (undefined *)((int64_t)*(undefined **)0x20 + -0xb0)) {
            puVar9 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            puVar8 = (undefined *)((int64_t)*(undefined **)0x20 + -0x130);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x20) = arg1;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x30) = arg5;
            if (in_RAX == 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe2c7a8;
                fmt_Errorf(0x117a74a /* "地图图为空" */, 0xf, 0, 0, 0);
                return 0;
            }
            *(int64_t *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x38) = arg6;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x30) = arg5;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x20) = arg1;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x28) = arg2;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe2c671;
            auVar16 = strings_TrimSpace(unaff_RBX, arg4);
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88) = auVar16._8_8_;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x30) = auVar16._0_8_;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe2c696;
            auVar16 = strings_TrimSpace(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x20), 
                                      *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x28));
            if ((*(int64_t *)((int64_t)*(undefined **)0x20 + -0x88) == 0) || (auVar16._8_8_ == 0)) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe2c77a;
                fmt_Errorf(0x118e988 /* "起点或终点站点名称为空" */, 0x21, 0, 0, 0);
                return 0;
            }
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90) = auVar16._8_8_;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x38) = auVar16._0_8_;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0xc0) = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x38) + 2;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe2c6e5;
            puVar2 = (undefined8 *)runtime_makeslice(0x1042920, 0, *(int64_t *)((int64_t)*(undefined **)0x20 + 0x38) + 2);
            iVar14 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x38);
            if (iVar14 == -2) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe2c710;
                puVar2 = (undefined8 *)runtime_growslice(puVar2, 1, 0, 1, 0x1042920);
                iVar14 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x38);
                uVar5 = extraout_RCX;
            } else {
                uVar5 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0xc0);
            }
            puVar2[1] = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x88);
            if (*(int32_t *)0x355db50 == 0) {
                uVar3 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30);
            } else {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe2c73c;
                puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
                uVar3 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30);
                *extraout_R11 = uVar3;
                extraout_R11[1] = *puVar2;
                uVar5 = extraout_RCX_00;
            }
            *puVar2 = uVar3;
            puVar11 = *(undefined8 **)((int64_t)*(undefined **)0x20 + 0x30);
            uVar7 = 1;
            while (0 < iVar14) {
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88) = iVar14;
                *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x98) = uVar5;
                *(uint64_t *)((int64_t)*(undefined **)0x20 + -200) = uVar7;
                *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x68) = puVar2;
                *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x40) = puVar11;
                uVar3 = *puVar11;
                uVar6 = puVar11[1];
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe2c81a;
                auVar16 = strings_TrimSpace(uVar3, uVar6);
                if (auVar16._8_8_ == 0) {
                    uVar5 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x98);
                    uVar7 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -200);
                    puVar2 = *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x68);
                } else {
                    uVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + -200) + 1;
                    uVar5 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x98);
                    if (uVar5 < uVar7) {
                        *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0) = auVar16._8_8_;
                        *(int64_t *)((int64_t)*(undefined **)0x20 + -0x78) = auVar16._0_8_;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe2c87e;
                        runtime_growslice(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68), uVar7, uVar5, 1, 
                                        0x1042920);
                        auVar16._8_8_ = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe0);
                        auVar16._0_8_ = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78);
                        uVar5 = extraout_RCX_01;
                        uVar7 = extraout_RBX;
                        puVar2 = extraout_RAX;
                    } else {
                        puVar2 = *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x68);
                    }
                    uVar3 = auVar16._0_8_;
                    iVar14 = (uVar7 - 1) * 0x10;
                    puVar2[(uVar7 - 1) * 2 + 1] = auVar16._8_8_;
                    if (*(int32_t *)0x355db50 != 0) {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe2c8ac;
                        uVar3 = runtime_gcWriteBarrier2();
                        *extraout_R11_00 = uVar3;
                        extraout_R11_00[1] = *(undefined8 *)((int64_t)extraout_RSI + extraout_R8);
                        uVar5 = extraout_RCX_02;
                        puVar2 = extraout_RSI;
                        iVar14 = extraout_R8;
                    }
                    *(undefined8 *)((int64_t)puVar2 + iVar14) = uVar3;
                }
                puVar11 = (undefined8 *)(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x40) + 0x10);
                iVar14 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88) + -1;
            }
            uVar7 = uVar7 + 1;
            if (uVar5 < uVar7) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe2c8de;
                runtime_growslice();
                puVar2 = extraout_RAX_00;
                uVar5 = extraout_RCX_03;
                uVar7 = extraout_RBX_00;
            }
            iVar14 = uVar7 - 1;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88) = iVar14;
            puVar2[iVar14 * 2 + 1] = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x90);
            if (*(int32_t *)0x355db50 == 0) {
                uVar3 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38);
            } else {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe2c913;
                runtime_gcWriteBarrier2();
                uVar3 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38);
                *extraout_R11_01 = uVar3;
                extraout_R11_01[1] = extraout_RAX_01[iVar14 * 2];
                puVar2 = extraout_RAX_01;
                uVar5 = extraout_RCX_04;
                uVar7 = extraout_RBX_01;
            }
            *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x68) = puVar2;
            *(uint64_t *)((int64_t)*(undefined **)0x20 + -200) = uVar7;
            puVar2[iVar14 * 2] = uVar3;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe2c94d;
            iVar14 = pkg_diapdu_validateStationsOnGraph(*(undefined8 *)((int64_t)*(undefined **)0x20 + 8), puVar2, uVar7, uVar5);
            if (iVar14 != 0) {
                return 0;
            }
            iVar14 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88);
            iVar10 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x68);
            uVar4 = *(undefined8 *)((int64_t)*(undefined **)0x20 + 8);
            uVar5 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -200);
            iVar13 = 0;
            iVar12 = 0;
            uVar3 = 0;
            uVar6 = 0;
            while( true ) {
                if (iVar14 <= iVar13) {
                    if (iVar12 == 0) {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe2cdbe;
                        fmt_Errorf(0x1184a72 /* "路径规划结果为空" */, 0x18, 0, 0, 0);
                        return 0;
                    }
                    return uVar6;
                }
                uVar7 = iVar13 + 1;
                iVar14 = *(int64_t *)(iVar10 + 8 + iVar13 * 0x10);
                uVar15 = *(undefined8 *)(iVar10 + iVar13 * 0x10);
                if (uVar5 <= uVar7) break;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50) = uVar15;
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0) = iVar14;
                *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x90) = uVar7;
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb8) = iVar12;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) = uVar6;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb0) = uVar3;
                iVar13 = *(int64_t *)(iVar10 + 8 + uVar7 * 0x10);
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa8) = iVar13;
                uVar3 = *(undefined8 *)(iVar10 + uVar7 * 0x10);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) = uVar3;
                if (iVar13 == iVar14) {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe2ca49;
                    cVar1 = runtime_memequal(uVar15, uVar3, iVar14);
                    if (cVar1 == '\0') {
                        uVar4 = *(undefined8 *)((int64_t)*(undefined **)0x20 + 8);
                        uVar3 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58);
                        iVar13 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa8);
                        iVar14 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0);
                        uVar15 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50);
                        goto code_r0x00e2ca8f;
                    }
                    uVar3 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb0);
                    iVar12 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb8);
                    uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60);
                } else {
code_r0x00e2ca8f:
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe2caa5;
                    pkg_diapdu_shortestPathOnGraph(uVar4, 0, 0, 0, uVar15, iVar14, uVar3, iVar13);
                    if ((extraout_DIL == '\0') || (extraout_RBX_02 == 0)) {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = in_XMM15_Qa;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = in_XMM15_Qb;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe2cd26;
                        uVar3 = runtime_convTstring(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50), 
                                                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa0));
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = 0x1042920;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar3;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe2cd52;
                        uVar3 = runtime_convTstring(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58), 
                                                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa8));
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = 0x1042920;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = uVar3;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe2cd8a;
                        fmt_Errorf(0x1188e60 /* "无法规划路径: %s -> %s" */, 0x1c, (undefined *)((int64_t)*(undefined **)0x20 + -0x28), 2, 2);
                        return 0;
                    }
                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8) = extraout_RBX_02;
                    *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x70) = extraout_RAX_02;
                    iVar14 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb8);
                    if (iVar14 == 0) {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe2ccb1;
                        runtime_growslice(0, extraout_RBX_02, 0, extraout_RBX_02, 0x1042920);
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x80) = extraout_RAX_05;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = extraout_RBX_05;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe8) = extraout_RCX_08;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe2cce8;
                        runtime_typedslicecopy(0x1042920, extraout_RAX_05, extraout_RBX_05, 
                                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70), 
                                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8));
                        uVar3 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe8);
                        iVar12 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0);
                        uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x80);
                    } else {
                        iVar12 = (iVar14 + -1) * 0x10;
                        iVar10 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x60);
                        iVar13 = *(int64_t *)(iVar10 + 8 + iVar12);
                        uVar3 = *(undefined8 *)(iVar10 + iVar12);
                        puVar2 = extraout_RAX_02;
                        iVar12 = extraout_RBX_02;
                        if (extraout_RAX_02[1] == iVar13) {
                            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd0) = extraout_RCX_05;
                            uVar6 = *extraout_RAX_02;
                            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe2cb08;
                            cVar1 = runtime_memequal(uVar3, uVar6, iVar13);
                            if (cVar1 != '\0') {
                                iVar14 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb8);
                                uVar5 = (*(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8) + iVar14) - 1;
                                iVar13 = (uint64_t)
                                         ((uint32_t)(-(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0) + -1) >> 0x3f)
                                         & 0x10) + *(int64_t *)((int64_t)*(undefined **)0x20 + -0x70);
                                iVar10 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8) + -1;
                                uVar7 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0xb0);
                                if (uVar7 < uVar5) {
                                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x98) = iVar10;
                                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x48) = iVar13;
                                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe2cb7e;
                                    runtime_growslice(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60));
                                    iVar14 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb8);
                                    iVar10 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x98);
                                    iVar13 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x48);
                                    iVar12 = extraout_RAX_03;
                                    uVar7 = extraout_RCX_06;
                                    uVar5 = extraout_RBX_03;
                                } else {
                                    iVar12 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x60);
                                }
                                *(uint64_t *)((int64_t)*(undefined **)0x20 + -0xe8) = uVar7;
                                *(uint64_t *)((int64_t)*(undefined **)0x20 + -0xf0) = uVar5;
                                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80) = iVar12;
                                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe2cbd7;
                                runtime_typedslicecopy(0x1042920, ((int64_t)(iVar14 - uVar7) >> 0x3f & iVar14 << 4) + iVar12, 
                                                uVar5 - iVar14, iVar13, iVar10);
                                uVar3 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe8);
                                iVar12 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0);
                                uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x80);
                                goto code_r0x00e2c990;
                            }
                            puVar2 = *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x70);
                            iVar14 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb8);
                            iVar12 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8);
                            iVar10 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x60);
                        }
                        uVar5 = iVar14 + iVar12;
                        uVar7 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0xb0);
                        if (uVar7 < uVar5) {
                            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe2cc2e;
                            runtime_growslice(iVar10, uVar5, uVar7, iVar12, 0x1042920);
                            iVar14 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb8);
                            puVar2 = *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x70);
                            iVar12 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8);
                            uVar7 = extraout_RCX_07;
                            uVar5 = extraout_RBX_04;
                            iVar10 = extraout_RAX_04;
                        }
                        *(uint64_t *)((int64_t)*(undefined **)0x20 + -0xe8) = uVar7;
                        *(uint64_t *)((int64_t)*(undefined **)0x20 + -0xf0) = uVar5;
                        *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80) = iVar10;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe2cc87;
                        runtime_typedslicecopy(0x1042920, ((int64_t)(iVar14 - uVar7) >> 0x3f & iVar14 << 4) + iVar10, 
                                        uVar5 - iVar14, puVar2, iVar12);
                        uVar3 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe8);
                        iVar12 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0);
                        uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x80);
                    }
                }
code_r0x00e2c990:
                iVar14 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88);
                iVar10 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x68);
                uVar4 = *(undefined8 *)((int64_t)*(undefined **)0x20 + 8);
                uVar5 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -200);
                iVar13 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90);
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe2cdf2;
            runtime_panicIndex(uVar7);
            in_RAX = extraout_RAX_06;
            arg4 = extraout_RCX_09;
            unaff_RBX = extraout_RBX_06;
            arg2 = extraout_RSI_00;
            arg1 = extraout_RDI;
            arg5 = extraout_R8_00;
            arg6 = extraout_R9;
            in_R10 = extraout_R10;
        }
        *(int64_t *)(puVar8 + 8) = in_RAX;
        *(undefined8 *)(puVar8 + 0x10) = unaff_RBX;
        *(int64_t *)(puVar8 + 0x18) = arg4;
        *(int64_t *)(puVar8 + 0x20) = arg1;
        *(int64_t *)(puVar8 + 0x28) = arg2;
        *(int64_t *)(puVar8 + 0x30) = arg5;
        *(int64_t *)(puVar8 + 0x38) = arg6;
        *(undefined8 *)(puVar8 + 0x40) = in_R10;
        *(undefined8 *)(puVar8 + -8) = 0xe2ce25;
        runtime_morestack_noctxt_abi0();
        in_RAX = *(int64_t *)(puVar8 + 8);
        unaff_RBX = *(undefined8 *)(puVar8 + 0x10);
        arg4 = *(int64_t *)(puVar8 + 0x18);
        arg1 = *(int64_t *)(puVar8 + 0x20);
        arg2 = *(int64_t *)(puVar8 + 0x28);
        arg5 = *(int64_t *)(puVar8 + 0x30);
        arg6 = *(int64_t *)(puVar8 + 0x38);
        in_R10 = *(undefined8 *)(puVar8 + 0x40);
        *(undefined **)0x20 = (BADSPACEBASE *)puVar8;
        unaff_RBP = puVar9;
    } while( true );
}

/* CAS-Backend/pkg/diapdu.validateStationsOnGraph | VA 0xe2ce60 | pathplan.go:66
   DWARF parameters and results: g *CAS-Backend/pkg/diapdu.Graph, names []string, ~r0 error
   DWARF locals: nodeSet map[string]struct {}, n *CAS-Backend/pkg/diapdu.Node, .autotmp_12 struct {}, name string, ok bool, .autotmp_7 struct {} */
// WARNING: Variable defined which should be unmapped: var_8h

undefined8 __stdcall
pkg_diapdu_validateStationsOnGraph
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_40h)
{
    int64_t iVar1;
    int64_t iVar2;
    undefined8 *puVar3;
    undefined8 uVar4;
    undefined8 uVar5;
    int64_t *in_RAX;
    undefined8 uVar6;
    int64_t iVar7;
    char extraout_BL;
    undefined8 *unaff_RBX;
    int64_t unaff_R14;
    int64_t in_XMM15_Qa;
    int64_t var_148h;
    int64_t var_110h;
    int64_t var_108h;
    int64_t var_100h;
    int64_t var_f8h;
    int64_t var_f0h;
    int64_t var_e8h;
    int64_t var_e0h;
    int64_t var_d8h;
    undefined auStack_b8 [112];
    int64_t var_48h;
    int64_t var_38h;
    int64_t var_28h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (auStack_b8 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe2d04c;
        runtime_morestack_noctxt_abi0();
    }
    iVar1 = in_RAX[1];
    var_38h = in_XMM15_Qa;
    if (iVar1 < 9) {
        runtime_duffzero_offset_313();
        var_38h = (int64_t)&var_d8h;
    }
    uVar6 = runtime_makemap(0x107d5e0, iVar1, &var_48h);
    iVar1 = *in_RAX;
    iVar2 = in_RAX[1];
    for (iVar7 = 0; iVar7 < iVar2; iVar7 = iVar7 + 1) {
        puVar3 = *(undefined8 **)(iVar1 + iVar7 * 8);
        if ((puVar3 != (undefined8 *)0x0) && (puVar3[1] != 0)) {
            runtime_mapassign_faststr(0x107d5e0, uVar6, *puVar3);
        }
    }
    while( true ) {
        if (arg4 < 1) {
            return 0;
        }
        uVar4 = *unaff_RBX;
        uVar5 = unaff_RBX[1];
        runtime_mapaccess2_faststr(0x107d5e0, uVar6);
        if (extraout_BL == '\0') break;
        unaff_RBX = unaff_RBX + 2;
        arg4 = arg4 + -1;
    }
    var_10h = runtime_convTstring(uVar4, uVar5);
    var_18h = 0x1042920;
    uVar6 = fmt_Errorf(0x118c84a /* "站点 %q 不在地图节点中" */, 0x1f, &var_18h, 1, 1);
    return uVar6;
}
