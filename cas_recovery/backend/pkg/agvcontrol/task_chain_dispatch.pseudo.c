/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/pkg/agvcontrol.ParseForkliftTaskChainJSON | VA 0xe21f20 | task_chain_dispatch.go:12
   DWARF parameters and results: raw string, ~r0 []CAS-Backend/pkg/agvcontrol.ForkliftTask, ~r1 error
   DWARF locals: &tasks *[]CAS-Backend/pkg/agvcontrol.ForkliftTask, err error, i int */
// WARNING: [rz-ghidra] Removing arg arg_228h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_10h

int64_t __stdcall
pkg_agvcontrol_ParseForkliftTaskChainJSON(int64_t arg_8h, int64_t arg_10h, int64_t arg_100h, int64_t arg_110h)
{
    int64_t in_RAX;
    undefined8 uVar1;
    undefined8 *puVar2;
    int64_t iVar3;
    uint64_t uVar4;
    int64_t *piVar5;
    int64_t unaff_RBX;
    int64_t extraout_RBX;
    int64_t *piVar6;
    undefined *unaff_RBP;
    undefined *puVar7;
    int64_t unaff_R14;
    bool bVar8;
    undefined8 in_XMM15_Qa;
    undefined8 in_XMM15_Qb;
    int64_t var_240h;
    int64_t var_228h;
    int64_t var_220h;
    int64_t var_150h;
    int64_t var_148h;
    int64_t var_140h;
    int64_t var_138h;
    int64_t var_130h;
    int64_t var_128h;
    int64_t var_120h;
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    do {
        piVar6 = (int64_t *)*(undefined **)0x20;
        puVar7 = unaff_RBP;
        if (*(undefined **)(unaff_R14 + 0x10) < (undefined *)((int64_t)*(undefined **)0x20 + -0x1b0)) {
            puVar7 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            piVar6 = (int64_t *)((int64_t)*(undefined **)0x20 + -0x230);
            *(int64_t *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x238) = 0xe21f4a;
            uVar1 = strings_TrimSpace(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x230), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x228));
            if (unaff_RBX == 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x238) = 0xe22068;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x230), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x228), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x220), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x218), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x210), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x1b0));
                return 0;
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = uVar1;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x138) = unaff_RBX;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x238) = 0xe21f6f;
            puVar2 = (undefined8 *)runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x230));
            *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x10) = puVar2;
            *puVar2 = 0;
            unaff_RBX = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x238) = 0xe21f95;
            runtime_stringtoslicebyte(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x230), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x228), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x220), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x210));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x238) = 0xe21fa9;
            iVar3 = encoding_json_Unmarshal(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x230), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x228), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x220), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x218), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x210), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x1f8));
            if (iVar3 != 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = *(undefined8 *)(iVar3 + 8);
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x18) = unaff_RBX;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x238) = 0xe21fee;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x230), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x228), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x220), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x218), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x210), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x1b0));
                return 0;
            }
            piVar5 = *(int64_t **)((int64_t)*(undefined **)0x20 + -0x10);
            iVar3 = piVar5[1];
            if (iVar3 == 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x238) = 0xe2203a;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x230), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x228), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x220), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x218), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x210), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x1b0));
                return 0;
            }
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x138) = iVar3;
            uVar4 = 0;
            while( true ) {
                if (iVar3 <= (int64_t)uVar4) {
                    return *piVar5;
                }
                if ((uint64_t)piVar5[1] <= uVar4) goto code_r0x00e222eb;
                *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x150) = uVar4;
                *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x140) = uVar4 * 0xe0;
                unaff_RBX = *(int64_t *)(*piVar5 + 8 + uVar4 * 0xe0);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x238) = 0xe220e5;
                strings_TrimSpace(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x230), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x228));
                if (unaff_RBX == 0) {
                    bVar8 = true;
                } else {
                    if ((uint64_t)(*(int64_t **)((int64_t)*(undefined **)0x20 + -0x10))[1] <=
                        *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x150)) goto code_r0x00e222e6;
                    unaff_RBX = *(int64_t *)
                                 (**(int64_t **)((int64_t)*(undefined **)0x20 + -0x10) + 0x18 +
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x140));
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x238) = 0xe22128;
                    strings_TrimSpace(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x230), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x228));
                    bVar8 = unaff_RBX == 0;
                }
                if (bVar8) {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qa;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = in_XMM15_Qb;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x238) = 0xe2227a;
                    uVar1 = runtime_convT64(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x230));
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = 0x1042b60;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = uVar1;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x238) = 0xe222b2;
                    fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x230), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x228), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x220), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x218), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x210), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x1b0));
                    return 0;
                }
                if (*(uint64_t *)(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x10) + 8) <=
                    *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x150)) break;
                *(undefined **)((int64_t)*(undefined **)0x20 + -0x240) = puVar7;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x238) = 0xe22179;
                fcn.00478ddc();
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x240) =
                     *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x240);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x238) = 0xe22197;
                fcn.00478ddc();
                puVar7 = *(undefined **)((int64_t)*(undefined **)0x20 + -0x240);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x238) = 0xe221a5;
                iVar3 = pkg_agvcontrol_validateForkliftOperation(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x198), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -400), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x188), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x180), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x178), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x170), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x138));
                if (iVar3 != 0) {
                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x148) = iVar3;
                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x130) = extraout_RBX;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Qa;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = in_XMM15_Qb;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x238) = 0xe221e5;
                    uVar1 = runtime_convT64(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x230));
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = 0x1042b60;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = uVar1;
                    if (*(int64_t *)((int64_t)*(undefined **)0x20 + -0x148) == 0) {
                        uVar1 = 0;
                    } else {
                        uVar1 = *(undefined8 *)(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x148) + 8);
                    }
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = uVar1;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) =
                         *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x238) = 0xe2224b;
                    fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x230), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x228), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x220), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x218), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x210), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x1b0));
                    return 0;
                }
                uVar4 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x150) + 1;
                iVar3 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x138);
                piVar5 = *(int64_t **)((int64_t)*(undefined **)0x20 + -0x10);
                unaff_RBX = extraout_RBX;
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x238) = 0xe222e6;
            runtime_panicIndex(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x230), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x228));
code_r0x00e222e6:
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x238) = 0xe222eb;
            runtime_panicIndex(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x230), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x228));
code_r0x00e222eb:
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x238) = 0xe222f0;
            in_RAX = runtime_panicIndex(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x230), 
                                  *(int64_t *)((int64_t)*(undefined **)0x20 + -0x228));
        }
        piVar6[1] = in_RAX;
        piVar6[2] = unaff_RBX;
        piVar6[-1] = 0xe22305;
        runtime_morestack_noctxt_abi0(*piVar6, piVar6[1]);
        in_RAX = piVar6[1];
        unaff_RBX = piVar6[2];
        *(int64_t **)0x20 = (BADSPACEBASE *)piVar6;
        unaff_RBP = puVar7;
    } while( true );
}

/* CAS-Backend/pkg/agvcontrol.AssignForkliftTaskIDs | VA 0xe22320 | task_chain_dispatch.go:36
   DWARF parameters and results: tasks []CAS-Backend/pkg/agvcontrol.ForkliftTask, timestamp string, ~r0 []CAS-Backend/pkg/agvcontrol.ForkliftTask, ~r1 []string, ~r2 error
   DWARF locals: out []CAS-Backend/pkg/agvcontrol.ForkliftTask, ids []string, i int, t CAS-Backend/pkg/agvcontrol.ForkliftTask */
// WARNING: Variable defined which should be unmapped: var_8h

int64_t __stdcall
pkg_agvcontrol_AssignForkliftTaskIDs
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h,
          int64_t arg_30h, int64_t arg_168h)
{
    int64_t in_RAX;
    int64_t iVar1;
    int64_t iVar2;
    undefined8 uVar3;
    undefined8 extraout_RAX;
    int64_t iVar4;
    int64_t extraout_RCX;
    int64_t extraout_RCX_00;
    int64_t unaff_RBX;
    int64_t iVar5;
    int64_t extraout_RBX;
    int64_t extraout_RDI;
    int64_t iVar6;
    int64_t extraout_R9;
    int64_t extraout_R10;
    undefined8 *extraout_R11;
    int64_t iVar7;
    undefined8 *extraout_R11_00;
    int64_t unaff_R14;
    undefined auVar8 [16];
    int64_t unaff_retaddr;
    int64_t var_160h;
    int64_t in_stack_fffffffffffffeb0;
    int64_t in_stack_fffffffffffffeb8;
    int64_t in_stack_fffffffffffffec0;
    int64_t in_stack_fffffffffffffec8;
    int64_t in_stack_fffffffffffffed0;
    int64_t var_128h;
    int64_t var_120h;
    int64_t var_118h;
    int64_t var_110h;
    int64_t in_stack_ffffffffffffff30;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (&stack0xffffffffffffff30 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    if (unaff_RBX == 0) {
        fmt_Errorf(in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, in_stack_fffffffffffffec0, 
                     in_stack_fffffffffffffec8, in_stack_fffffffffffffed0, in_stack_ffffffffffffff30);
        return 0;
    }
    if (arg2 == 0) {
        time_Now();
        arg1 = time_Time_Format();
    }
    iVar1 = runtime_makeslice(in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, in_stack_fffffffffffffec0);
    iVar2 = runtime_makeslice(in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, in_stack_fffffffffffffec0);
    iVar6 = iVar2;
    iVar5 = unaff_RBX;
    for (iVar4 = 0; iVar4 < unaff_RBX; iVar4 = iVar4 + 1) {
        fcn.00478ddc(iVar6, iVar5, iVar4, &var_110h, in_RAX);
        iVar6 = extraout_RCX * 0xe0;
        if (*(int32_t *)0x355db50 != 0) {
            runtime_wbMove(0x1142180, iVar1 + iVar6, &var_110h);
        }
        fcn.00478ddc();
        iVar5 = *(int64_t *)(extraout_R9 + 0x28 + extraout_R10);
        strings_TrimSpace(in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8);
        if (iVar5 == 0) {
            strconv_FormatInt(iVar4, 10);
            uVar3 = runtime_concatstring2(in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, in_stack_fffffffffffffec0, 
                                 in_stack_fffffffffffffec8, in_stack_fffffffffffffed0);
            *(int64_t *)(iVar1 + 0x28 + iVar6) = arg1;
            iVar5 = arg1;
            if (*(int32_t *)0x355db50 != 0) {
                runtime_gcWriteBarrier2();
                *extraout_R11 = extraout_RAX;
                extraout_R11[1] = *(undefined8 *)(iVar1 + 0x20 + extraout_RCX_00);
                uVar3 = extraout_RAX;
                iVar6 = extraout_RCX_00;
                iVar5 = extraout_RBX;
            }
            *(undefined8 *)(iVar1 + 0x20 + iVar6) = uVar3;
        }
        iVar7 = iVar4 * 0x10;
        auVar8._8_8_ = iVar5;
        auVar8._0_8_ = iVar7;
        uVar3 = *(undefined8 *)(iVar6 + 0x20 + iVar1);
        *(undefined8 *)(iVar2 + 8 + iVar7) = *(undefined8 *)(iVar6 + 0x28 + iVar1);
        iVar6 = iVar2;
        if (*(int32_t *)0x355db50 != 0) {
            auVar8 = runtime_gcWriteBarrier2(iVar7);
            *extraout_R11_00 = uVar3;
            extraout_R11_00[1] = *(undefined8 *)(extraout_RDI + auVar8._0_8_);
            iVar6 = extraout_RDI;
        }
        iVar5 = auVar8._8_8_;
        *(undefined8 *)(iVar6 + auVar8._0_8_) = uVar3;
        in_RAX = in_RAX + 0xe0;
    }
    return iVar1;
}
