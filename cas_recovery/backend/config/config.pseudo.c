/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/config.InitConfig | VA 0x856540 | config.go:53
   DWARF parameters and results: (no entries)
   DWARF locals: v *github.com/spf13/viper.Viper, configPaths []string, used string, err error, appRoot string, p string */
// WARNING: Removing unreachable block (ram,0x00856626)
// WARNING: Removing unreachable block (ram,0x00856651)
// WARNING: Removing unreachable block (ram,0x008565f7)

void __stdcall config_InitConfig(int64_t arg_50h)
{
    char cVar1;
    undefined8 uVar2;
    int64_t iVar3;
    undefined8 *puVar4;
    undefined8 extraout_RCX;
    int64_t extraout_RCX_00;
    undefined8 extraout_RBX;
    int64_t *piVar5;
    undefined *unaff_RBP;
    undefined *puVar6;
    undefined8 extraout_RDI;
    undefined8 uVar7;
    undefined8 extraout_RDI_00;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t unaff_R14;
    undefined8 in_XMM15_Qa;
    undefined8 in_XMM15_Qb;
    undefined auVar8 [16];
    undefined auVar9 [16];
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    do {
        piVar5 = (int64_t *)*(undefined **)0x20;
        puVar6 = unaff_RBP;
        if (*(undefined **)(unaff_R14 + 0x10) < *(undefined **)0x20) {
            puVar6 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            piVar5 = (int64_t *)((int64_t)*(undefined **)0x20 + -0x60);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = 0x856557;
            uVar2 = spf13_viper_New();
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = uVar2;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = 0x85656d;
            spf13_viper___Viper__SetConfigName(uVar2, 0x116f2c1 /* "config" */, 6);
            iVar3 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x28);
            *(undefined8 *)(iVar3 + 0x88) = 4;
            if (*(int32_t *)0x355db50 != 0) {
                uVar2 = *(undefined8 *)(iVar3 + 0x80);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = 0x856593;
                iVar3 = runtime_gcWriteBarrier1(iVar3, extraout_RBX, uVar2);
                *extraout_R11 = extraout_RCX;
            }
            *(undefined8 *)(iVar3 + 0x80) = 0x1169554;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = 0x8565a9;
            auVar8 = config_configSearchPaths();
            while( true ) {
                puVar4 = auVar8._0_8_;
                if (auVar8._8_8_ < 1) break;
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x30) = auVar8._8_8_;
                *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x20) = puVar4;
                uVar2 = *puVar4;
                uVar7 = puVar4[1];
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = 0x8565c6;
                spf13_viper___Viper__AddConfigPath(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28), uVar2, uVar7);
                auVar8._8_8_ = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x30) + -1;
                auVar8._0_8_ = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x20) + 0x10;
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = 0x8565e6;
            auVar9 = spf13_viper___Viper__ReadInConfig(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28));
            if (auVar9._0_8_ == 0) {
                iVar3 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x28);
                uVar2 = *(undefined8 *)(iVar3 + 0x78);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = 0x856610;
                uVar7 = extraout_RDI;
                path_filepath_abs(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x60), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x58));
                if (iVar3 == 0) {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = 0x856631;
                    internal_filepathlite_Dir(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x60), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x58));
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = 0x856637;
                    internal_filepathlite_Dir(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x60), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x58));
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = 0x85663c;
                    iVar3 = pkg_appdir_SetRoot(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x60), 
                                               *(int64_t *)((int64_t)*(undefined **)0x20 + -0x58));
                    if (iVar3 == 0) {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = 0x856675;
                        auVar8 = spf13_viper___Viper__Unmarshal(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28), 0x1023c20, 
                                                 0x3516420, 0, 0, 0);
                        if (auVar8._0_8_ == 0) {
                            uVar2 = *(undefined8 *)0x35164c8;
                            if (*(int64_t *)0x35164d0 != 0) {
                                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = 0x856692;
                                cVar1 = internal_filepathlite_IsAbs(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x60), 
                                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x58), 
                                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x38));
                                iVar3 = *(int64_t *)0x35164d0;
                                uVar2 = *(undefined8 *)0x35164c8;
                                *(int64_t *)0x35164d0 = iVar3;
                                if (cVar1 == '\0') {
                                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = 0x8566a9;
                                    uVar2 = pkg_appdir_Resolve(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x60), 
                                                               *(int64_t *)((int64_t)*(undefined **)0x20 + -0x58), 
                                                               *(int64_t *)((int64_t)*(undefined **)0x20 + -0x18), 
                                                               *(int64_t *)((int64_t)*(undefined **)0x20 + -0x10));
                                    *(int64_t *)0x35164d0 = iVar3;
                                    if (*(int32_t *)0x355db50 != 0) {
                                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = 0x8566be;
                                        uVar2 = runtime_gcWriteBarrier2();
                                        *extraout_R11_00 = uVar2;
                                        extraout_R11_00[1] = *(undefined8 *)0x35164c8;
                                    }
                                }
                            }
                            *(undefined8 *)0x35164c8 = uVar2;
                            return;
                        }
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = in_XMM15_Qa;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = in_XMM15_Qb;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = *(undefined8 *)(auVar8._0_8_ + 8);
                        *(int64_t *)((int64_t)*(undefined **)0x20 + -0x10) = auVar8._8_8_;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = 0x85670e;
                        auVar8 = fmt_Errorf(0x1188e44 /* "解析配置文件失败: %s" */, 0x1c, (undefined *)((int64_t)*(undefined **)0x20 + -0x18), 1
                                                 , 1);
                        uVar2 = auVar8._8_8_;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = 0x85671c;
                        iVar3 = runtime_gopanic(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x60), 
                                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x58));
                    } else {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = in_XMM15_Qa;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = in_XMM15_Qb;
                    }
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = *(undefined8 *)(iVar3 + 8);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = uVar2;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = 0x856748;
                    fmt_Errorf(0x118c82b /* "切换应用根目录失败: %w" */, 0x1f, (undefined *)((int64_t)*(undefined **)0x20 + -0x18), 1, 1);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = 0x856756;
                    iVar3 = extraout_RCX_00;
                    uVar7 = extraout_RDI_00;
                    runtime_gopanic(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x60), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x58));
                } else {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = in_XMM15_Qa;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = in_XMM15_Qb;
                }
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = *(undefined8 *)(iVar3 + 8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = uVar7;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = 0x856785;
                auVar8 = fmt_Errorf(0x118fb53 /* "解析配置文件路径失败: %w" */, 0x22, (undefined *)((int64_t)*(undefined **)0x20 + -0x18), 1, 1);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = 0x856793;
                uVar2 = runtime_gopanic(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x60), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x58));
                auVar9._8_8_ = auVar8._8_8_;
                auVar9._0_8_ = uVar2;
            } else {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = in_XMM15_Qb;
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = *(undefined8 *)(auVar9._0_8_ + 8);
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x10) = auVar9._8_8_;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = 0x8567bf;
            fmt_Errorf(0x11aa568 /* "读取配置文件失败（请将 config 文件夹放在 exe 同级目录，内含 config.yaml）: %w" */, 0x65, (undefined *)((int64_t)*(undefined **)0x20 + -0x18), 1, 1);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = 0x8567ce;
            runtime_gopanic(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x60), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x58));
        }
        piVar5[-1] = 0x8567d4;
        runtime_morestack_noctxt_abi0(*piVar5, piVar5[1]);
        *(int64_t **)0x20 = (BADSPACEBASE *)piVar5;
        unaff_RBP = puVar6;
    } while( true );
}

/* CAS-Backend/config.configSearchPaths | VA 0x8567e0 | config.go:87
   DWARF parameters and results: ~r0 []string
   DWARF locals: paths []string, ~r0.ptr *uint8, ~r0.len int, wd string, err error */
// WARNING: Variable defined which should be unmapped: var_a8h
// WARNING: Variable defined which should be unmapped: var_90h
// WARNING: [rz-ghidra] Detected overlap for variable var_80h

undefined  [16] __stdcall config_configSearchPaths(int64_t arg_88h)
{
    int64_t extraout_RAX;
    undefined8 uVar1;
    uint64_t uVar2;
    uint64_t extraout_RCX;
    uint64_t extraout_RCX_00;
    int64_t extraout_RCX_01;
    int64_t iVar3;
    uint64_t arg_78h;
    int64_t extraout_RBX;
    int64_t extraout_RSI;
    int64_t iVar4;
    int64_t iVar5;
    int64_t extraout_RDI;
    int64_t *extraout_R11;
    int64_t *extraout_R11_00;
    int64_t unaff_R14;
    undefined auVar6 [16];
    undefined auVar7 [16];
    undefined auVar8 [16];
    int64_t unaff_retaddr;
    int64_t in_stack_00000008;
    int64_t in_stack_fffffffffffffee8;
    int64_t in_stack_fffffffffffffef0;
    int64_t in_stack_fffffffffffffef8;
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
    
    while (&var_98h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_stack_00000008);
    }
    if (*(int64_t *)0x35137f8 == 0) {
        uVar2 = 0;
        var_88h = 0;
        iVar3 = 0;
    } else {
        var_20h = *(int64_t *)0x35137f8;
        var_28h = *(int64_t *)0x35137f0;
        var_10h = 6;
        var_18h = 0x116f2c1;
        var_90h = path_filepath_join(in_stack_fffffffffffffee8, in_stack_fffffffffffffef0, in_stack_fffffffffffffef8, var_a8h
                               , var_90h);
        var_88h = runtime_growslice(0, 1, 0, 1, 0x1042920);
        *(int64_t *)(var_88h + 8) = 2;
        uVar2 = extraout_RCX;
        if (*(int32_t *)0x355db50 != 0) {
            var_88h = runtime_gcWriteBarrier2();
            *extraout_R11 = var_90h;
            extraout_R11[1] = *(int64_t *)var_88h;
            uVar2 = extraout_RCX_00;
        }
        *(int64_t *)var_88h = var_90h;
        iVar3 = 1;
    }
    syscall_Getwd();
    if ((extraout_RCX_01 == 0) && (extraout_RBX != 0)) {
        arg_78h = iVar3 + 2;
        var_30h = 6;
        var_38h = 0x116f2c1;
        var_80h = extraout_RAX;
        var_48h = extraout_RAX;
        var_40h = extraout_RBX;
        var_98h = path_filepath_join(in_stack_fffffffffffffee8, in_stack_fffffffffffffef0, in_stack_fffffffffffffef8, arg_78h
                               , var_90h);
        var_78h = var_80h;
        var_60h = 2;
        var_68h = 0x1168516;
        var_50h = 6;
        var_58h = 0x116f2c1;
        var_70h = extraout_RBX;
        uVar1 = path_filepath_join(in_stack_fffffffffffffee8, in_stack_fffffffffffffef0, in_stack_fffffffffffffef8, arg_78h, 
                             var_90h);
        auVar6._8_8_ = arg_78h;
        auVar6._0_8_ = var_88h;
        if (uVar2 < arg_78h) {
            auVar6 = runtime_growslice(var_88h, arg_78h, uVar2, 2, 0x1042920);
        }
        iVar3 = auVar6._8_8_;
        iVar4 = auVar6._0_8_;
        auVar7._8_8_ = 3;
        auVar7._0_8_ = uVar1;
        iVar5 = (iVar3 + -2) * 0x10;
        *(undefined8 *)(iVar4 + 8 + iVar5) = 2;
        if (*(int32_t *)0x355db50 != 0) {
            auVar7 = runtime_gcWriteBarrier4();
            *extraout_R11_00 = var_98h;
            extraout_R11_00[1] = *(int64_t *)(extraout_RSI + extraout_RDI);
            extraout_R11_00[2] = auVar7._0_8_;
            extraout_R11_00[3] = *(int64_t *)(extraout_RSI + 0x10 + extraout_RDI);
            iVar4 = extraout_RSI;
            iVar5 = extraout_RDI;
        }
        *(int64_t *)(iVar4 + iVar5) = var_98h;
        *(int64_t *)(iVar4 + 0x18 + iVar5) = auVar7._8_8_;
        *(int64_t *)(iVar4 + 0x10 + iVar5) = auVar7._0_8_;
        var_88h = iVar4;
    }
    auVar8._8_8_ = iVar3;
    auVar8._0_8_ = var_88h;
    return auVar8;
}
