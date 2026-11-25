/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/pkg/agvcontrol.SendStopCommand | VA 0xe19920 | kongzhi.go:35
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: header CAS-Backend/pkg/agvcontrol.ProtocolHeader, respHeader CAS-Backend/pkg/agvcontrol.ProtocolHeader, err error, &response *CAS-Backend/pkg/agvcontrol.Response, data []uint8 */
// WARNING: Variable defined which should be unmapped: var_40h
// WARNING: Variable defined which should be unmapped: var_28h
// WARNING: Variable defined which should be unmapped: var_10h
// WARNING: [rz-ghidra] Detected overlap for variable var_5ch

undefined8 __stdcall pkg_agvcontrol_SendStopCommand(int64_t arg_8h, int64_t arg_10h, int64_t arg_38h, int64_t arg_78h)
{
    int64_t in_RAX;
    int64_t iVar1;
    undefined8 uVar2;
    undefined8 unaff_RBX;
    int64_t extraout_RBX;
    uint64_t uVar3;
    uint64_t uVar4;
    int64_t unaff_R14;
    undefined8 in_XMM15_Qa;
    int32_t iVar5;
    int64_t in_XMM15_Qb;
    int64_t in_stack_00000050;
    int64_t in_stack_00000068;
    int64_t in_stack_ffffffffffffff70;
    int64_t in_stack_ffffffffffffff78;
    int64_t in_stack_ffffffffffffff80;
    int64_t in_stack_ffffffffffffff88;
    int64_t in_stack_ffffffffffffff90;
    int64_t in_stack_ffffffffffffff98;
    int64_t var_60h;
    int64_t var_50h;
    int64_t var_48h;
    int64_t var_40h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (iVar5 = (int32_t)((uint64_t)in_XMM15_Qa >> 0x20), &var_10h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    if (in_RAX != 0) {
        uVar3 = (uint64_t)*(uint32_t *)(in_RAX + 0x10);
        do {
            uVar4 = uVar3 & **(uint64_t **)0xfbb810;
            if ((*(uint64_t **)0xfbb810)[uVar4 * 2 + 1] == *(uint64_t *)(in_RAX + 8)) goto code_r0x00e1997c;
            uVar3 = uVar3 + 1;
        } while ((*(uint64_t **)0xfbb810)[uVar4 * 2 + 1] != 0);
        runtime_typeAssert(in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, in_stack_ffffffffffffff90, 
                     in_stack_ffffffffffffff98);
    }
code_r0x00e1997c:
    iVar1 = encoding_binary_Write(in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, in_stack_ffffffffffffff80, 
                         in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, in_stack_ffffffffffffff98, 0x15a, var_28h
                         , in_stack_00000068);
    if (iVar1 != 0) {
        uVar2 = fmt_Errorf(in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, in_stack_ffffffffffffff80, 
                             in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, var_10h);
        return uVar2;
    }
    if (in_RAX != 0) {
        uVar3 = (uint64_t)*(uint32_t *)(in_RAX + 0x10);
        do {
            uVar4 = uVar3 & **(uint64_t **)0xfbb830;
            if ((*(uint64_t **)0xfbb830)[uVar4 * 2 + 1] == *(uint64_t *)(in_RAX + 8)) goto code_r0x00e19a14;
            uVar3 = uVar3 + 1;
        } while ((*(uint64_t **)0xfbb830)[uVar4 * 2 + 1] != 0);
        runtime_typeAssert(in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, in_stack_ffffffffffffff90, 
                     in_stack_ffffffffffffff98);
    }
code_r0x00e19a14:
    iVar1 = encoding_binary_Read(in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, in_stack_ffffffffffffff80, 
                         in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, in_stack_ffffffffffffff98, var_10h, 
                         in_RAX, in_stack_00000050);
    if (iVar1 != 0) {
        uVar2 = fmt_Errorf(in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, in_stack_ffffffffffffff80, 
                             in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, var_10h);
        return uVar2;
    }
    if (iVar5 != 0) {
        uVar2 = runtime_makeslice(in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, in_stack_ffffffffffffff80);
        (**(code **)(in_RAX + 0x28))(unaff_RBX, uVar2, iVar5);
        if (extraout_RBX != 0) {
            uVar2 = fmt_Errorf(in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, in_stack_ffffffffffffff80, 
                                 in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, var_10h);
            return uVar2;
        }
        var_10h = runtime_newobject(in_stack_ffffffffffffff70);
        iVar1 = encoding_json_Unmarshal(in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, in_stack_ffffffffffffff80, 
                             in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, in_XMM15_Qb);
        if (iVar1 != 0) {
            uVar2 = fmt_Errorf(in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, in_stack_ffffffffffffff80, 
                                 in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, var_10h);
            return uVar2;
        }
        if (*(int64_t *)(var_10h + 0x20) != 0) {
            runtime_convT(in_stack_ffffffffffffff70, in_stack_ffffffffffffff78);
            uVar2 = fmt_Errorf(in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, in_stack_ffffffffffffff80, 
                                 in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, var_10h);
            return uVar2;
        }
    }
    return 0;
}

/* CAS-Backend/pkg/agvcontrol.SendMotionCommand | VA 0xe19ca0 | kongzhi.go:85
   DWARF parameters and results: conn net.Conn, vx float64, vy float64, w float64, realstear float64, steer int, duration int, ~r0 error
   DWARF locals: &buf *bytes.Buffer, jsonData []uint8, err error, fullMessage []uint8, reqData CAS-Backend/pkg/agvcontrol.MotionRequest, ~r0.len int, header CAS-Backend/pkg/agvcontrol.ProtocolHeader, respHeader CAS-Backend/pkg/agvcontrol.ProtocolHeader, &response *CAS-Backend/pkg/agvcontrol.Response, data []uint8 */
// WARNING: [rz-ghidra] Detected overlap for variable var_b4h
// WARNING: [rz-ghidra] Detected overlap for variable var_c4h
// WARNING: [rz-ghidra] Detected overlap for variable var_88h
// WARNING: [rz-ghidra] Detected overlap for variable var_10h

undefined8 __stdcall
pkg_agvcontrol_SendMotionCommand
          (int64_t arg7, int64_t arg8, int64_t arg9, int64_t arg10, int64_t arg1, undefined8 placeholder_5,
          undefined8 placeholder_6, int64_t arg4, int64_t placeholder_8, int64_t placeholder_9, int64_t arg_8h,
          int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h, int64_t arg_38h,
          int64_t arg_40h, int64_t arg_d8h)
{
    int64_t *piVar1;
    code *pcVar2;
    int64_t in_RAX;
    int64_t iVar3;
    int64_t iVar4;
    undefined8 uVar5;
    int64_t extraout_RCX;
    int64_t extraout_RCX_00;
    uint64_t uVar6;
    int64_t unaff_RBX;
    int64_t extraout_RBX;
    int64_t extraout_RBX_00;
    int64_t *piVar7;
    undefined *unaff_RBP;
    int64_t *piVar8;
    int64_t extraout_RSI;
    uint64_t uVar9;
    uint64_t uVar10;
    int64_t unaff_R14;
    undefined4 extraout_XMM0_Da;
    undefined4 extraout_XMM0_Db;
    int64_t in_XMM15_Qa;
    int64_t in_XMM15_Qb;
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
        piVar7 = (int64_t *)*(int64_t **)0x20;
        piVar8 = (int64_t *)unaff_RBP;
        if (*(int64_t **)(unaff_R14 + 0x10) < (int64_t *)((int64_t)*(int64_t **)0x20 + -0x78)) {
            piVar8 = (int64_t *)((int64_t)*(int64_t **)0x20 + -8);
            *(undefined **)((int64_t)*(int64_t **)0x20 + -8) = unaff_RBP;
            piVar7 = (int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8);
            *(int64_t *)((int64_t)*(int64_t **)0x20 + 0x10) = unaff_RBX;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + 8) = in_RAX;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x90) = in_XMM15_Qa;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x88) = in_XMM15_Qb;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x80) = in_XMM15_Qa;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x78) = in_XMM15_Qb;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x70) = in_XMM15_Qa;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x68) = in_XMM15_Qb;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x90) = arg7;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x88) = arg8;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x80) = arg9;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x70) = arg10;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x68) = placeholder_8;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x78) = arg4;
            *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe19d1b;
            iVar3 = runtime_convTnoptr(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0));
            *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe19d2a;
            iVar4 = encoding_json_Marshal(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x80));
            if (placeholder_8 != 0) {
                *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x28) = in_XMM15_Qa;
                *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x20) = in_XMM15_Qb;
                *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x28) = *(int64_t *)(placeholder_8 + 8);
                *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x20) = placeholder_9;
                *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe19d6f;
                uVar5 = fmt_Errorf(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                                     *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                                     *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                                     *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), 
                                     *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8), 
                                     *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x78));
                return uVar5;
            }
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x60) = iVar3;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x40) = iVar4;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xb8) = 0x15a;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xb0) = 0x7da;
            *(int32_t *)((int64_t)*(int64_t **)0x20 + -0xb4) = (int32_t)iVar3;
            *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe19daa;
            unaff_RBX = runtime_newobject(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8));
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x10) = unaff_RBX;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xa8) = *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xb8);
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xa0) = *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xb0);
            placeholder_8 = 0x355d2a0;
            *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe19de5;
            iVar3 = encoding_binary_Write(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd0), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xa8), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x90), *(int64_t *)*(int64_t **)0x20);
            if (iVar3 != 0) {
                *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x28) = in_XMM15_Qa;
                *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x20) = in_XMM15_Qb;
                *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x28) = *(int64_t *)(iVar3 + 8);
                *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x20) = unaff_RBX;
                *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe19e2a;
                uVar5 = fmt_Errorf(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                                     *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                                     *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                                     *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), 
                                     *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8), 
                                     *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x78));
                return uVar5;
            }
            piVar1 = *(int64_t **)((int64_t)*(int64_t **)0x20 + -0x10);
            arg4 = piVar1[1];
            uVar9 = piVar1[3];
            if (uVar9 <= (uint64_t)arg4) break;
            *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1a1cb;
            in_RAX = runtime_panicSliceB(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                                  *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0));
            arg7 = CONCAT44(extraout_XMM0_Db, extraout_XMM0_Da);
        }
        *(int64_t *)((int64_t)piVar7 + 8) = in_RAX;
        *(int64_t *)((int64_t)piVar7 + 0x10) = unaff_RBX;
        *(int64_t *)((int64_t)piVar7 + 0x18) = arg7;
        *(int64_t *)((int64_t)piVar7 + 0x20) = arg8;
        *(int64_t *)((int64_t)piVar7 + 0x28) = arg9;
        *(int64_t *)((int64_t)piVar7 + 0x30) = arg10;
        *(int64_t *)((int64_t)piVar7 + 0x38) = arg4;
        *(int64_t *)((int64_t)piVar7 + 0x40) = placeholder_8;
        *(undefined8 *)((int64_t)piVar7 + -8) = 0xe1a1fd;
        runtime_morestack_noctxt_abi0();
        in_RAX = *(int64_t *)((int64_t)piVar7 + 8);
        unaff_RBX = *(int64_t *)((int64_t)piVar7 + 0x10);
        arg7 = *(int64_t *)((int64_t)piVar7 + 0x18);
        arg8 = *(int64_t *)((int64_t)piVar7 + 0x20);
        arg9 = *(int64_t *)((int64_t)piVar7 + 0x28);
        arg10 = *(int64_t *)((int64_t)piVar7 + 0x30);
        arg4 = *(uint64_t *)((int64_t)piVar7 + 0x38);
        placeholder_8 = *(int64_t *)((int64_t)piVar7 + 0x40);
        *(undefined **)0x20 = (BADSPACEBASE *)piVar7;
        unaff_RBP = (undefined *)piVar8;
        placeholder_9 = extraout_RSI;
    } while( true );
    uVar6 = piVar1[2] - uVar9;
    arg4 = arg4 - uVar9;
    iVar3 = *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x60);
    uVar10 = arg4 + iVar3;
    iVar4 = (uVar9 & (int64_t)-uVar6 >> 0x3f) + *piVar1;
    if (uVar6 < uVar10) {
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x98) = arg4;
        *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe19e8e;
        iVar4 = runtime_growslice(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x68));
        iVar3 = *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x60);
        arg4 = *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x98);
    }
    *(uint64_t *)((int64_t)*(int64_t **)0x20 + -0x50) = uVar6;
    *(uint64_t *)((int64_t)*(int64_t **)0x20 + -0x58) = uVar10;
    *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x38) = iVar4;
    *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe19ecd;
    runtime_memmove(iVar4 + arg4, *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x40), iVar3);
    pcVar2 = *(code **)(*(int64_t *)((int64_t)*(int64_t **)0x20 + 8) + 0x50);
    *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe19efb;
    (*pcVar2)(*(int64_t *)((int64_t)*(int64_t **)0x20 + 0x10), *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x38), 
              *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x58), *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x50));
    if (extraout_RBX != 0) {
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x28) = in_XMM15_Qa;
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x20) = in_XMM15_Qb;
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x28) = *(int64_t *)(extraout_RBX + 8);
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x20) = extraout_RCX;
        *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe19f6f;
        uVar5 = fmt_Errorf(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x78));
        return uVar5;
    }
    *(int64_t *)((int64_t)*(int64_t **)0x20 + -200) = in_XMM15_Qa;
    *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xc0) = in_XMM15_Qb;
    iVar3 = *(int64_t *)((int64_t)*(int64_t **)0x20 + 8);
    if (iVar3 != 0) {
        uVar9 = (uint64_t)*(uint32_t *)(iVar3 + 0x10);
        do {
            uVar10 = uVar9 & **(uint64_t **)0xfbb850;
            if ((*(uint64_t **)0xfbb850)[uVar10 * 2 + 1] == *(uint64_t *)(iVar3 + 8)) goto code_r0x00e19f78;
            uVar9 = uVar9 + 1;
        } while ((*(uint64_t **)0xfbb850)[uVar10 * 2 + 1] != 0);
        *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1a1b1;
        runtime_typeAssert(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0)
                     , *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8), 
                     *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd0));
    }
code_r0x00e19f78:
    iVar3 = *(int64_t *)((int64_t)*(int64_t **)0x20 + 0x10);
    *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe19fa5;
    iVar4 = encoding_binary_Read(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd0), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x78), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x60), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x18));
    if (iVar4 != 0) {
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x28) = in_XMM15_Qa;
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x20) = in_XMM15_Qb;
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x28) = *(int64_t *)(iVar4 + 8);
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x20) = iVar3;
        *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe19fea;
        uVar5 = fmt_Errorf(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x78));
        return uVar5;
    }
    if (*(int32_t *)((int64_t)*(int64_t **)0x20 + -0xc4) != 0) {
        *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1a00d;
        iVar3 = runtime_makeslice(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8));
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x30) = iVar3;
        *(uint64_t *)((int64_t)*(int64_t **)0x20 + -0x48) = (uint64_t)*(uint32_t *)((int64_t)*(int64_t **)0x20 + -0xc4);
        pcVar2 = *(code **)(*(int64_t *)((int64_t)*(int64_t **)0x20 + 8) + 0x28);
        *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1a03d;
        (*pcVar2)(*(int64_t *)((int64_t)*(int64_t **)0x20 + 0x10), iVar3, 
                  (uint64_t)*(uint32_t *)((int64_t)*(int64_t **)0x20 + -0xc4));
        if (extraout_RBX_00 != 0) {
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x28) = in_XMM15_Qa;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x20) = in_XMM15_Qb;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x28) = *(int64_t *)(extraout_RBX_00 + 8);
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x20) = extraout_RCX_00;
            *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1a085;
            uVar5 = fmt_Errorf(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x78));
            return uVar5;
        }
        *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1a09a;
        iVar3 = runtime_newobject(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8));
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x18) = iVar3;
        iVar3 = *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x48);
        *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1a0c5;
        iVar4 = encoding_json_Unmarshal(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xc0));
        if (iVar4 != 0) {
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x28) = in_XMM15_Qa;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x20) = in_XMM15_Qb;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x28) = *(int64_t *)(iVar4 + 8);
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x20) = iVar3;
            *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1a10a;
            uVar5 = fmt_Errorf(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x78));
            return uVar5;
        }
        if (*(int64_t *)(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0x18) + 0x20) != 0) {
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x28) = in_XMM15_Qa;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x20) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1a145;
            iVar3 = runtime_convT(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0));
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x28) = 0x10d5f00;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x20) = iVar3;
            *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1a17d;
            uVar5 = fmt_Errorf(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x78));
            return uVar5;
        }
    }
    return 0;
}

/* CAS-Backend/pkg/agvcontrol.QueryForkStatus | VA 0xe1a240 | kongzhi.go:171
   DWARF parameters and results: conn net.Conn, ~r0 *CAS-Backend/pkg/agvcontrol.ForkStatusDetail, ~r1 error
   DWARF locals: &response *CAS-Backend/pkg/agvcontrol.ForkStatusDetail, header CAS-Backend/pkg/agvcontrol.PacketHeader, respHeader CAS-Backend/pkg/agvcontrol.PacketHeader, err error, data []uint8 */
// WARNING: Variable defined which should be unmapped: var_80h
// WARNING: Variable defined which should be unmapped: var_68h
// WARNING: Variable defined which should be unmapped: var_50h
// WARNING: Variable defined which should be unmapped: var_38h
// WARNING: [rz-ghidra] Detected overlap for variable var_9ch

int64_t __stdcall pkg_agvcontrol_QueryForkStatus(int64_t arg_8h, int64_t arg_10h, int64_t arg_98h, int64_t arg_b8h)
{
    int64_t in_RAX;
    int64_t iVar1;
    undefined8 uVar2;
    undefined8 uVar3;
    undefined8 extraout_RCX;
    int64_t extraout_RCX_00;
    int64_t unaff_RBX;
    undefined8 extraout_RBX;
    int64_t extraout_RBX_00;
    uint64_t uVar4;
    uint64_t uVar5;
    int64_t unaff_R14;
    undefined8 in_XMM15_Qa;
    uint32_t uVar6;
    int64_t in_XMM15_Qb;
    int64_t in_stack_00000028;
    int64_t in_stack_ffffffffffffff30;
    int64_t in_stack_ffffffffffffff38;
    int64_t in_stack_ffffffffffffff40;
    int64_t in_stack_ffffffffffffff48;
    int64_t in_stack_ffffffffffffff50;
    int64_t in_stack_ffffffffffffff58;
    int64_t var_a0h;
    int64_t var_90h;
    int64_t var_88h;
    int64_t var_80h;
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
    
    while (uVar6 = (uint32_t)((uint64_t)in_XMM15_Qa >> 0x20), &var_50h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    if (in_RAX != 0) {
        uVar4 = (uint64_t)*(uint32_t *)(in_RAX + 0x10);
        do {
            uVar5 = uVar4 & **(uint64_t **)0xfbb870;
            if ((*(uint64_t **)0xfbb870)[uVar5 * 2 + 1] == *(uint64_t *)(in_RAX + 8)) goto code_r0x00e1a29c;
            uVar4 = uVar4 + 1;
        } while ((*(uint64_t **)0xfbb870)[uVar5 * 2 + 1] != 0);
        runtime_typeAssert(in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, in_stack_ffffffffffffff50, 
                     in_stack_ffffffffffffff58);
    }
code_r0x00e1a29c:
    iVar1 = encoding_binary_Write(in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, 
                         in_stack_ffffffffffffff48, in_stack_ffffffffffffff50, in_stack_ffffffffffffff58, 0x1000015a, 
                         var_68h, in_stack_00000028);
    if (iVar1 != 0) {
        var_20h = *(int64_t *)(iVar1 + 8);
        fmt_Errorf(in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, 
                     in_stack_ffffffffffffff48, in_stack_ffffffffffffff50, var_50h);
        return 0;
    }
    time_Now();
    uVar3 = extraout_RCX;
    uVar2 = time_Time_Add(in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, 
                         in_stack_ffffffffffffff48, in_stack_ffffffffffffff58);
    (**(code **)(in_RAX + 0x40))(unaff_RBX, uVar2, extraout_RBX, uVar3);
    if (in_RAX != 0) {
        uVar4 = (uint64_t)*(uint32_t *)(in_RAX + 0x10);
        do {
            uVar5 = uVar4 & **(uint64_t **)0xfbb890;
            if ((*(uint64_t **)0xfbb890)[uVar5 * 2 + 1] == *(uint64_t *)(in_RAX + 8)) goto code_r0x00e1a378;
            uVar4 = uVar4 + 1;
        } while ((*(uint64_t **)0xfbb890)[uVar5 * 2 + 1] != 0);
        runtime_typeAssert(in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, in_stack_ffffffffffffff50, 
                     in_stack_ffffffffffffff58);
    }
code_r0x00e1a378:
    iVar1 = encoding_binary_Read(in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, 
                         in_stack_ffffffffffffff48, in_stack_ffffffffffffff50, in_stack_ffffffffffffff58, var_50h, 
                         var_38h, unaff_RBX);
    if (iVar1 != 0) {
        var_20h = *(int64_t *)(iVar1 + 8);
        fmt_Errorf(in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, 
                     in_stack_ffffffffffffff48, in_stack_ffffffffffffff50, var_50h);
        return 0;
    }
    var_10h = runtime_newobject(in_stack_ffffffffffffff30);
    if (uVar6 != 0) {
        uVar3 = runtime_makeslice(in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, in_stack_ffffffffffffff40);
        uVar4 = (uint64_t)uVar6;
        (**(code **)(in_RAX + 0x28))(unaff_RBX, uVar3, uVar4);
        if (extraout_RBX_00 != 0) {
            var_20h = *(int64_t *)(extraout_RBX_00 + 8);
            var_18h = extraout_RCX_00;
            fmt_Errorf(in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, 
                         in_stack_ffffffffffffff48, in_stack_ffffffffffffff50, var_50h);
            return 0;
        }
        iVar1 = encoding_json_Unmarshal(in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, 
                             in_stack_ffffffffffffff48, in_stack_ffffffffffffff50, in_XMM15_Qb);
        if (iVar1 != 0) {
            var_40h = *(int64_t *)(iVar1 + 8);
            var_38h = uVar4;
            runtime_slicebytetostring(0, uVar3, uVar4);
            var_28h = runtime_convTstring(in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, in_stack_ffffffffffffff58);
            var_30h = 0x1042920;
            fmt_Errorf(in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, 
                         in_stack_ffffffffffffff48, in_stack_ffffffffffffff50, var_50h);
            return 0;
        }
    }
    if (*(int64_t *)var_10h == 0) {
        var_48h = runtime_convT64(in_stack_ffffffffffffff30);
        var_50h = 0x1042ce0;
        fmt_Fprintln(in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, 
                     in_stack_ffffffffffffff48, in_stack_ffffffffffffff50);
        fmt_Fprintln(in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, 
                     in_stack_ffffffffffffff48, in_stack_ffffffffffffff50);
        return var_10h;
    }
    var_38h = runtime_convT64(in_stack_ffffffffffffff30);
    var_40h = 0x1042b60;
    var_28h = runtime_convTstring(in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, in_stack_ffffffffffffff58);
    var_30h = 0x1042920;
    fmt_Errorf(in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, 
                 in_stack_ffffffffffffff48, in_stack_ffffffffffffff50, var_50h);
    return var_10h;
}

/* CAS-Backend/pkg/agvcontrol.SendHuochaHeightCommand | VA 0xe1a760 | kongzhi.go:258
   DWARF parameters and results: conn net.Conn, height float64, ~r0 error
   DWARF locals: requestData map[string]interface {}, n int, jsonData []uint8, err error, headerBytes []uint8, fullMessage []uint8, responseHeaderBytes []uint8, header CAS-Backend/pkg/agvcontrol.ProtocolHeader, responseHeader CAS-Backend/pkg/agvcontrol.ProtocolHeader, &response *CAS-Backend/pkg/agvcontrol.Response, jsonEnd int, responseDataBytes []uint8, validJSON []uint8 */
// WARNING: Variable defined which should be unmapped: var_1b0h
// WARNING: Variable defined which should be unmapped: var_140h
// WARNING: Variable defined which should be unmapped: var_1a8h
// WARNING: Variable defined which should be unmapped: var_1a0h
// WARNING: Variable defined which should be unmapped: var_198h
// WARNING: Variable defined which should be unmapped: var_138h
// WARNING: Variable defined which should be unmapped: var_128h
// WARNING: Variable defined which should be unmapped: var_148h
// WARNING: Variable defined which should be unmapped: var_180h
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: Removing unreachable block (ram,0x00e1af8a)
// WARNING: Removing unreachable block (ram,0x00e1af9e)
// WARNING: Removing unreachable block (ram,0x00e1afa2)
// WARNING: [rz-ghidra] Detected overlap for variable var_15ch
// WARNING: [rz-ghidra] Detected overlap for variable var_16fh
// WARNING: [rz-ghidra] Detected overlap for variable var_16eh
// WARNING: [rz-ghidra] Detected overlap for variable var_16ch
// WARNING: [rz-ghidra] Detected overlap for variable var_168h
// WARNING: [rz-ghidra] Detected overlap for variable var_166h
// WARNING: [rz-ghidra] Detected overlap for variable var_17eh
// WARNING: [rz-ghidra] Detected overlap for variable var_17ch
// WARNING: [rz-ghidra] Detected overlap for variable var_178h
// WARNING: [rz-ghidra] Detected overlap for variable var_176h
// WARNING: [rz-ghidra] Detected overlap for variable var_172h
// WARNING: [rz-ghidra] Detected overlap for variable var_162h
// WARNING: [rz-ghidra] Detected overlap for variable var_88h
// WARNING: [rz-ghidra] Detected overlap for variable var_10h

undefined8 __stdcall
pkg_agvcontrol_SendHuochaHeightCommand
          (int64_t arg7, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_78h, int64_t arg_c8h,
          int64_t arg_190h)
{
    undefined2 uVar1;
    uint16_t uVar2;
    int64_t in_RAX;
    undefined8 *puVar3;
    undefined8 uVar4;
    undefined8 uVar5;
    int64_t iVar6;
    int64_t iVar7;
    int64_t extraout_RCX;
    undefined8 extraout_RCX_00;
    uint64_t uVar8;
    uint64_t extraout_RDX;
    uint64_t uVar9;
    int64_t unaff_RBX;
    int64_t extraout_RBX;
    undefined8 extraout_RBX_00;
    uint64_t extraout_RBX_01;
    int64_t extraout_RSI;
    int64_t extraout_RSI_00;
    int64_t extraout_RDI;
    int64_t extraout_RDI_00;
    int64_t iVar10;
    uint32_t uVar11;
    uint64_t *extraout_R9;
    uint64_t *puVar12;
    uint64_t extraout_R10;
    uint64_t uVar13;
    uint64_t uVar14;
    int64_t *extraout_R11;
    int64_t unaff_R14;
    undefined4 uVar15;
    undefined4 uVar16;
    undefined4 in_XMM15_Dc;
    undefined4 uVar17;
    undefined4 in_XMM15_Dd;
    undefined4 uVar18;
    int64_t var_1c8h;
    int64_t in_stack_fffffffffffffe48;
    int64_t var_1b0h;
    int64_t var_1a8h;
    int64_t var_1a0h;
    int64_t var_198h;
    int64_t in_stack_fffffffffffffe70;
    int64_t var_180h;
    undefined2 var_176h;
    undefined2 uStack_174;
    undefined2 var_172h;
    int64_t var_170h;
    undefined8 var_168h;
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
    int64_t var_8h;
    
    while (var_176h = (undefined2)((uint32_t)in_XMM15_Dc >> 0x10), &var_138h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe1b267;
        runtime_morestack_noctxt_abi0();
    }
    var_128h = runtime_makemap_small();
    var_f8h = runtime_convT64(in_stack_fffffffffffffe48);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, var_128h, 0x116f4c5 /* "height" */, 6);
    *puVar3 = 0x1042ce0;
    iVar7 = extraout_RSI;
    iVar10 = extraout_RDI;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11 = var_f8h;
        extraout_R11[1] = puVar3[1];
        iVar7 = extraout_RSI_00;
        iVar10 = extraout_RDI_00;
    }
    iVar6 = var_128h;
    puVar3[1] = var_f8h;
    var_120h = encoding_json_Marshal(in_stack_fffffffffffffe48, var_1b0h, var_140h);
    if (iVar10 != 0) {
        var_108h = *(int64_t *)(iVar10 + 8);
        var_100h = iVar7;
        uVar4 = fmt_Errorf(in_stack_fffffffffffffe48, var_1b0h, var_1a8h, 
                             CONCAT71(var_1a0h._1_7_, (undefined)var_1a0h), var_198h, var_138h);
        return uVar4;
    }
    if (0x400 < iVar6) {
        var_100h = runtime_convT64(in_stack_fffffffffffffe48);
        var_108h = 0x1042b60;
        uVar4 = fmt_Errorf(in_stack_fffffffffffffe48, var_1b0h, var_1a8h, 
                             CONCAT71(var_1a0h._1_7_, (undefined)var_1a0h), var_198h, var_138h);
        return uVar4;
    }
    var_148h = iVar6;
    var_48h = runtime_convT64(in_stack_fffffffffffffe48);
    var_50h = 0x1042b60;
    runtime_slicebytetostring(0, var_120h, var_148h);
    var_38h = runtime_convTstring(in_stack_fffffffffffffe48, var_1b0h, in_stack_fffffffffffffe70);
    var_40h = 0x1042920;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1194f67, 0x27, &var_50h, 2, 2);
    var_158h = 0x1798;
    var_160h = CONCAT44((int32_t)var_148h, 0x1015a);
    var_170h = var_160h;
    var_168h = 0x1798;
    var_f8h = runtime_makeslice(in_stack_fffffffffffffe48, var_1b0h, var_1a8h);
    *(undefined *)var_f8h = (undefined)var_170h;
    *(undefined *)(var_f8h + 1) = var_170h._1_1_;
    *(uint16_t *)(var_f8h + 2) = var_170h._2_2_ << 8 | var_170h._2_2_ >> 8;
    *(uint32_t *)(var_f8h + 4) =
         var_170h._4_4_ >> 0x18 | (var_170h._4_4_ & 0xff0000) >> 8 | (var_170h._4_4_ & 0xff00) << 8 |
         var_170h._4_4_ << 0x18;
    *(uint16_t *)(var_f8h + 8) = (uint16_t)var_168h << 8 | (uint16_t)var_168h >> 8;
    if ((undefined *)((int64_t)&var_168h + 2) != (undefined *)(var_f8h + 10)) {
        *(undefined4 *)(var_f8h + 10) = var_168h._2_4_;
        *(undefined2 *)(var_f8h + 0xe) = var_168h._6_2_;
    }
    var_110h = var_f8h + 4;
    runtime_duffzero_offset_336(var_f8h, 0x10, var_110h, &var_d0h);
    var_a0h = 0x10429a0;
    var_98h = (var_170h & 0xffU) * 8 + 0xf7a720;
    var_90h = 0x10429a0;
    var_88h = ((uint64_t)var_170h >> 8 & 0xff) * 8 + 0xf7a720;
    var_78h = runtime_convT16(var_170h._2_2_);
    var_80h = 0x1042a20;
    var_68h = runtime_convT32(var_170h._4_4_);
    var_70h = 0x1042aa0;
    var_58h = runtime_convT16(var_168h & 0xffff);
    var_60h = 0x1042a20;
    var_130h = var_148h + 0x10;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a7246, 0x47, &var_a0h, 5, 5);
    var_a8h = runtime_convTslice(in_stack_fffffffffffffe48, var_1b0h, var_1a8h);
    var_b0h = 0x1038240;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x117cce6, 0x11, &var_b0h, 1, 1);
    var_c8h = runtime_convTslice(in_stack_fffffffffffffe48, var_1b0h, var_1a8h);
    var_d0h = 0x1038240;
    var_b8h = runtime_convT32(var_170h._4_4_, 4);
    var_c0h = 0x1042aa0;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a1aa8 /* "长度字段字节表示: %x (应该对应十进制: %d)\n" */, 0x39, &var_d0h, 2, 2);
    var_140h = var_130h;
    if ((uint64_t)var_130h < 0x11) {
        iVar7 = 0x10;
        var_118h = var_f8h;
    } else {
        iVar7 = 0x10;
        var_118h = runtime_growslice(in_stack_fffffffffffffe48, var_1b0h, var_1a8h, 
                                CONCAT71(var_1a0h._1_7_, (undefined)var_1a0h), var_198h, var_128h);
    }
    var_138h = iVar7;
    runtime_memmove(var_118h + 0x10, var_120h, var_148h);
    (**(code **)(in_RAX + 0x50))(unaff_RBX, var_118h, var_140h, var_138h);
    if (extraout_RBX != 0) {
        var_108h = *(int64_t *)(extraout_RBX + 8);
        var_100h = extraout_RCX;
        uVar4 = fmt_Errorf(in_stack_fffffffffffffe48, var_1b0h, var_1a8h, 
                             CONCAT71(var_1a0h._1_7_, (undefined)var_1a0h), var_198h, var_138h);
        return uVar4;
    }
    time_Now();
    uVar4 = extraout_RCX_00;
    uVar5 = time_Time_Add(in_stack_fffffffffffffe48, var_1b0h, var_1a8h, CONCAT71(var_1a0h._1_7_, (undefined)var_1a0h), 
                         in_stack_fffffffffffffe70);
    (**(code **)(in_RAX + 0x40))(unaff_RBX, uVar5, extraout_RBX_00, uVar4);
    var_f8h = runtime_makeslice(in_stack_fffffffffffffe48, var_1b0h, var_1a8h);
    if (in_RAX != 0) {
        uVar8 = (uint64_t)*(uint32_t *)(in_RAX + 0x10);
        do {
            uVar14 = uVar8 & **(uint64_t **)0xfbb8b0;
            if ((*(uint64_t **)0xfbb8b0)[uVar14 * 2 + 1] == *(uint64_t *)(in_RAX + 8)) goto code_r0x00e1ad87;
            uVar8 = uVar8 + 1;
        } while ((*(uint64_t **)0xfbb8b0)[uVar14 * 2 + 1] != 0);
        runtime_typeAssert(in_stack_fffffffffffffe48, var_1b0h, var_198h, in_stack_fffffffffffffe70);
    }
code_r0x00e1ad87:
    iVar7 = var_f8h;
    io_ReadAtLeast(in_stack_fffffffffffffe48, var_1b0h, var_1a8h, CONCAT71(var_1a0h._1_7_, (undefined)var_1a0h), var_198h
                 , in_stack_fffffffffffffe70, var_148h);
    if (unaff_RBX != 0) {
        var_30h = *(int64_t *)(unaff_RBX + 8);
        var_28h = iVar7;
        var_18h = runtime_convT64(in_stack_fffffffffffffe48);
        var_20h = 0x1042b60;
        uVar4 = fmt_Errorf(in_stack_fffffffffffffe48, var_1b0h, var_1a8h, 
                             CONCAT71(var_1a0h._1_7_, (undefined)var_1a0h), var_198h, var_138h);
        return uVar4;
    }
    uVar1 = *(undefined2 *)var_f8h;
    uStack_174 = (undefined2)in_XMM15_Dd;
    var_172h = (undefined2)((uint32_t)in_XMM15_Dd >> 0x10);
    uVar2 = *(uint16_t *)(var_f8h + 2);
    uVar11 = *(uint32_t *)(var_f8h + 4);
    uVar11 = uVar11 >> 0x18 | (uVar11 & 0xff0000) >> 8 | (uVar11 & 0xff00) << 8 | uVar11 << 0x18;
    if (&var_176h != (undefined2 *)(var_f8h + 10)) {
        var_172h = *(undefined2 *)(var_f8h + 0xe);
        var_176h = (undefined2)*(undefined4 *)(var_f8h + 10);
        uStack_174 = (undefined2)((uint32_t)*(undefined4 *)(var_f8h + 10) >> 0x10);
    }
    if (uVar11 != 0) {
        var_f8h = runtime_makeslice(in_stack_fffffffffffffe48, var_1b0h, var_1a8h);
        var_130h = (int64_t)uVar11;
        if (in_RAX == 0) goto code_r0x00e1af6a;
        uVar14 = *(uint64_t *)(in_RAX + 8);
        uVar13 = **(uint64_t **)0xfbb8d0;
        uVar8 = (uint64_t)*(uint32_t *)(in_RAX + 0x10);
        puVar12 = *(uint64_t **)0xfbb8d0;
code_r0x00e1b1bb:
        uVar9 = uVar8 & uVar13;
        if (puVar12[uVar9 * 2 + 1] != uVar14) goto code_r0x00e1b1cf;
        goto code_r0x00e1af6a;
    }
    var_e0h = 0x1042920;
    var_d8h = 0x2e69040 /* "响应数据长度为0" */;
    fmt_Fprintln(in_stack_fffffffffffffe48, var_1b0h, var_1a8h, CONCAT71(var_1a0h._1_7_, (undefined)var_1a0h), var_198h)
    ;
code_r0x00e1af1c:
    var_f0h = 0x1042920;
    var_e8h = 0x2e69090 /* "货叉高度设置成功" */;
    fmt_Fprintln(in_stack_fffffffffffffe48, var_1b0h, var_1a8h, CONCAT71(var_1a0h._1_7_, (undefined)var_1a0h), var_198h)
    ;
    return 0;
code_r0x00e1b1cf:
    uVar8 = uVar8 + 1;
    if (puVar12[uVar9 * 2 + 1] != 0) goto code_r0x00e1b1bb;
    runtime_typeAssert(in_stack_fffffffffffffe48, var_1b0h, var_198h, in_stack_fffffffffffffe70);
code_r0x00e1af6a:
    io_ReadAtLeast(in_stack_fffffffffffffe48, var_1b0h, var_1a8h, CONCAT71(var_1a0h._1_7_, (undefined)var_1a0h), var_198h
                 , in_stack_fffffffffffffe70, var_148h);
    iVar7 = var_130h;
    var_1b0h = var_130h;
    var_1a8h = var_130h;
    var_1a0h._0_1_ = 0;
    in_stack_fffffffffffffe48 = var_f8h;
    internal_bytealg_IndexByte_abi0();
    uVar15 = 0;
    uVar16 = 0;
    uVar17 = 0;
    uVar18 = 0;
    var_150h = var_198h;
    if (var_198h == -1) {
        var_150h = var_130h;
    }
    if ((uint64_t)var_130h < (uint64_t)var_150h) {
        puVar12 = extraout_R9;
        uVar13 = extraout_R10;
        runtime_panicSliceAcap(in_stack_fffffffffffffe48, iVar7);
        uVar8 = extraout_RDX;
        uVar14 = extraout_RBX_01;
        goto code_r0x00e1b1bb;
    }
    var_10h = runtime_newobject(in_stack_fffffffffffffe48);
    iVar10 = var_150h;
    iVar6 = encoding_json_Unmarshal(in_stack_fffffffffffffe48, iVar7, iVar7, (uint64_t)var_1a0h._1_7_ << 8, var_198h, 
                         CONCAT44(uVar11, CONCAT22(uVar2 << 8 | uVar2 >> 8, uVar1)));
    if (iVar6 != 0) {
        var_20h = CONCAT44(uVar16, uVar15);
        var_18h = CONCAT44(uVar18, uVar17);
        var_30h = *(int64_t *)(iVar6 + 8);
        var_28h = iVar10;
        runtime_slicebytetostring(0, var_f8h, var_150h);
        var_18h = runtime_convTstring(in_stack_fffffffffffffe48, iVar7, in_stack_fffffffffffffe70);
        var_20h = 0x1042920;
        uVar4 = fmt_Errorf(in_stack_fffffffffffffe48, iVar7, iVar7, (uint64_t)var_1a0h._1_7_ << 8, var_198h, var_138h)
        ;
        return uVar4;
    }
    if (*(int64_t *)var_10h != 0) {
        var_30h = CONCAT44(uVar16, uVar15);
        var_28h = CONCAT44(uVar18, uVar17);
        var_20h = CONCAT44(uVar16, uVar15);
        var_18h = CONCAT44(uVar18, uVar17);
        var_28h = runtime_convT64(in_stack_fffffffffffffe48);
        var_30h = 0x1042b60;
        var_18h = runtime_convTstring(in_stack_fffffffffffffe48, iVar7, in_stack_fffffffffffffe70);
        var_20h = 0x1042920;
        uVar4 = fmt_Errorf(in_stack_fffffffffffffe48, iVar7, iVar7, (uint64_t)var_1a0h._1_7_ << 8, var_198h, var_138h)
        ;
        return uVar4;
    }
    goto code_r0x00e1af1c;
}

/* CAS-Backend/pkg/agvcontrol.SendStartSlamRequest | VA 0xe1b280 | kongzhi.go:411
   DWARF parameters and results: conn net.Conn, realTime bool, slamType int, ~r0 *CAS-Backend/pkg/agvcontrol.Response, ~r1 error
   DWARF locals: reqData CAS-Backend/pkg/agvcontrol.StartSlamRequest, n int, &buf *bytes.Buffer, headerBuf *bytes.Reader, &response *CAS-Backend/pkg/agvcontrol.Response, jsonData []uint8, err error, responseHeaderBytes []uint8, responseData []uint8, header CAS-Backend/pkg/agvcontrol.ProtocolHeader, responseHeader CAS-Backend/pkg/agvcontrol.ProtocolHeader */
// WARNING: [rz-ghidra] Detected overlap for variable var_c4h
// WARNING: [rz-ghidra] Removing arg arg_3ch because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_d4h
// WARNING: [rz-ghidra] Detected overlap for variable var_88h
// WARNING: [rz-ghidra] Detected overlap for variable var_10h

undefined8 __stdcall
pkg_agvcontrol_SendStartSlamRequest
          (int64_t arg1, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_88h,
          int64_t arg_e0h, int64_t arg_f8h, int64_t arg_118h)
{
    int64_t *piVar1;
    code *pcVar2;
    int64_t iVar3;
    char cVar4;
    int64_t in_RAX;
    undefined8 uVar5;
    undefined8 uVar6;
    int64_t iVar7;
    undefined8 *puVar8;
    uint64_t in_RCX;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    uint64_t uVar9;
    undefined8 unaff_RBX;
    int64_t extraout_RBX;
    undefined8 extraout_RBX_00;
    undefined *puVar10;
    undefined *unaff_RBP;
    undefined *puVar11;
    undefined8 in_RSI;
    undefined8 extraout_RSI;
    uint64_t uVar12;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    undefined8 in_XMM15_Qa;
    undefined8 in_XMM15_Qb;
    int64_t var_100h;
    int64_t var_f8h;
    int64_t var_f0h;
    int64_t var_e8h;
    int64_t var_d8h;
    int64_t var_c8h;
    int64_t var_c0h;
    int64_t var_b8h;
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
        puVar10 = (undefined *)*(undefined **)0x20;
        puVar11 = unaff_RBP;
        if (*(undefined **)(unaff_R14 + 0x10) < (undefined *)((int64_t)*(undefined **)0x20 + -0x88)) {
            puVar11 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            puVar10 = (undefined *)((int64_t)*(undefined **)0x20 + -0x108);
            *(int64_t *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
            if (in_RAX == 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b571;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88));
                return 0;
            }
            *(int64_t *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
            *(char *)((int64_t)*(undefined **)0x20 + -0x80) = (char)in_RCX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x78) = arg1;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b2e9;
            uVar5 = runtime_convTnoptr(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b2f8;
            uVar6 = encoding_json_Marshal(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90));
            if (arg1 != 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = *(undefined8 *)(arg1 + 8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_RSI;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b33d;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88));
                return 0;
            }
            *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x90) = in_RCX;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x98) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) = uVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -200) = 0x1015a;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xc0) = 0x17d4;
            *(int32_t *)((int64_t)*(undefined **)0x20 + -0xc4) = (int32_t)uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b385;
            uVar5 = runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = *(undefined8 *)((int64_t)*(undefined **)0x20 + -200)
            ;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb0) =
                 *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xc0);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b3c5;
            iVar7 = encoding_binary_Write(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x10));
            if (iVar7 != 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = *(undefined8 *)(iVar7 + 8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b40a;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88));
                return 0;
            }
            unaff_RBX = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60);
            arg1 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b43a;
            bytes___Buffer__Write(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0));
            piVar1 = *(int64_t **)((int64_t)*(undefined **)0x20 + -0x10);
            in_RCX = piVar1[1];
            uVar9 = piVar1[3];
            if (uVar9 <= in_RCX) break;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b9e5;
            in_RAX = runtime_panicSliceB(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                                  *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100));
        }
        *(int64_t *)(puVar10 + 8) = in_RAX;
        *(undefined8 *)(puVar10 + 0x10) = unaff_RBX;
        puVar10[0x18] = (char)in_RCX;
        *(int64_t *)(puVar10 + 0x20) = arg1;
        *(undefined8 *)(puVar10 + -8) = 0xe1b9fe;
        runtime_morestack_noctxt_abi0();
        in_RAX = *(int64_t *)(puVar10 + 8);
        unaff_RBX = *(undefined8 *)(puVar10 + 0x10);
        in_RCX = (uint64_t)(uint8_t)puVar10[0x18];
        arg1 = *(int64_t *)(puVar10 + 0x20);
        *(undefined **)0x20 = (BADSPACEBASE *)puVar10;
        unaff_RBP = puVar11;
        in_RSI = extraout_RSI;
    } while( true );
    pcVar2 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + 8) + 0x50);
    iVar7 = *piVar1;
    iVar3 = piVar1[2];
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b488;
    (*pcVar2)(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), iVar7 + (uVar9 & (int64_t)-(iVar3 - uVar9) >> 0x3f)
              , in_RCX - uVar9);
    if (extraout_RBX != 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = *(undefined8 *)(extraout_RBX + 8);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = extraout_RCX;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b548;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88));
        return 0;
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b492;
    time_Now();
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b4a5;
    uVar5 = extraout_RCX_00;
    uVar6 = time_Time_Add(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0));
    pcVar2 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + 8) + 0x40);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b4c4;
    (*pcVar2)(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), uVar6, extraout_RBX_00, uVar5);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b4d8;
    uVar5 = runtime_makeslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8));
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar5;
    iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
    if (iVar7 != 0) {
        uVar9 = (uint64_t)*(uint32_t *)(iVar7 + 0x10);
        do {
            uVar12 = uVar9 & **(uint64_t **)0xfbb8f0;
            if ((*(uint64_t **)0xfbb8f0)[uVar12 * 2 + 1] == *(uint64_t *)(iVar7 + 8)) goto code_r0x00e1b582;
            uVar9 = uVar9 + 1;
        } while ((*(uint64_t **)0xfbb8f0)[uVar12 * 2 + 1] != 0);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b9bf;
        runtime_typeAssert(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0));
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
    }
code_r0x00e1b582:
    iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b5a5;
    uVar6 = io_ReadAtLeast(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x98));
    if (iVar7 != 0) {
        iVar3 = iVar7;
        if (*(int64_t *)0xfb6dc0 == iVar7) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa0) = uVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) = uVar5;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88) = iVar7;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b5e6;
            cVar4 = runtime_ifaceeq(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8));
            if (cVar4 != '\0') {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b69c;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88));
                return 0;
            }
            uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58);
            iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88);
            iVar3 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88);
        }
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = in_XMM15_Qb;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = in_XMM15_Qb;
        if (iVar3 != 0) {
            iVar7 = *(int64_t *)(iVar7 + 8);
        }
        *(int64_t *)((int64_t)*(undefined **)0x20 + -0x50) = iVar7;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = uVar5;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b63b;
        uVar5 = runtime_convT64(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108));
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = 0x1042b60;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = uVar5;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b673;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88));
        return 0;
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8) = in_XMM15_Qa;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd0) = in_XMM15_Qb;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b6c5;
    puVar8 = (undefined8 *)runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108));
    puVar8[1] = 0x10;
    puVar8[2] = 0x10;
    if (*(int32_t *)0x355db50 == 0) {
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
    } else {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b6ed;
        puVar8 = (undefined8 *)runtime_gcWriteBarrier1();
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
        *extraout_R11 = uVar5;
    }
    *puVar8 = uVar5;
    puVar8[3] = 0;
    puVar8[4] = 0xffffffffffffffff;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b734;
    iVar7 = encoding_binary_Read(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x70), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x28));
    if (iVar7 != 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = *(undefined8 *)(iVar7 + 8);
        *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x28) = puVar8;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b7d4;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88));
        return 0;
    }
    if (*(int32_t *)((int64_t)*(undefined **)0x20 + -0xd4) == 0) {
        uVar5 = 0;
        uVar6 = 0;
    } else {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b752;
        uVar5 = runtime_makeslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8));
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar5;
        *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x70) =
             (uint64_t)*(uint32_t *)((int64_t)*(undefined **)0x20 + -0xd4);
        iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
        if (iVar7 != 0) {
            uVar9 = (uint64_t)*(uint32_t *)(iVar7 + 0x10);
            do {
                uVar12 = uVar9 & **(uint64_t **)0xfbb910;
                if ((*(uint64_t **)0xfbb910)[uVar12 * 2 + 1] == *(uint64_t *)(iVar7 + 8)) goto code_r0x00e1b89d;
                uVar9 = uVar9 + 1;
            } while ((*(uint64_t **)0xfbb910)[uVar12 * 2 + 1] != 0);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b974;
            runtime_typeAssert(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0));
            uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
        }
code_r0x00e1b89d:
        iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b8b6;
        io_ReadAtLeast(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x98));
        if (iVar7 != 0) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50) = *(undefined8 *)(iVar7 + 8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b8e8;
            uVar5 = runtime_convT64(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = 0x1042b60;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b925;
            fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88));
            return 0;
        }
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70);
        uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa8) = uVar5;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = uVar6;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b7fe;
    uVar5 = runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108));
    if (*(int32_t *)((int64_t)*(undefined **)0x20 + -0xd4) != 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = uVar5;
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa8);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b830;
        iVar7 = encoding_json_Unmarshal(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0));
        if (iVar7 != 0) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = *(undefined8 *)(iVar7 + 8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1b877;
            fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88));
            return 0;
        }
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
    }
    return uVar5;
}

/* CAS-Backend/pkg/agvcontrol.SendStopSlamRequest | VA 0xe1ba20 | kongzhi.go:608
   DWARF parameters and results: conn net.Conn, ~r0 *CAS-Backend/pkg/agvcontrol.Response, ~r1 error
   DWARF locals: &buf *bytes.Buffer, n int, headerBuf *bytes.Reader, &response *CAS-Backend/pkg/agvcontrol.Response, jsonData []uint8, err error, responseHeaderBytes []uint8, responseData []uint8, header CAS-Backend/pkg/agvcontrol.ProtocolHeader, responseHeader CAS-Backend/pkg/agvcontrol.ProtocolHeader */
// WARNING: [rz-ghidra] Detected overlap for variable var_ach
// WARNING: [rz-ghidra] Removing arg arg_44h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_bch
// WARNING: [rz-ghidra] Detected overlap for variable var_10h

int64_t __stdcall
pkg_agvcontrol_SendStopSlamRequest(int64_t arg_8h, int64_t arg_10h, int64_t arg_80h, int64_t arg_d0h, int64_t arg_e8h)
{
    int64_t *piVar1;
    code *pcVar2;
    int64_t iVar3;
    char cVar4;
    int64_t in_RAX;
    int64_t iVar5;
    int64_t iVar6;
    undefined8 uVar7;
    int64_t iVar8;
    int64_t *piVar9;
    int64_t extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 uVar10;
    uint64_t uVar11;
    int64_t *unaff_RBX;
    int64_t extraout_RBX;
    undefined8 extraout_RBX_00;
    undefined *unaff_RBP;
    int64_t *piVar12;
    uint64_t uVar13;
    int64_t *extraout_R11;
    int64_t unaff_R14;
    int64_t in_XMM15_Qa;
    int64_t in_XMM15_Qb;
    int64_t var_f0h;
    int64_t var_e8h;
    int64_t var_c0h;
    int64_t var_b0h;
    int64_t var_a8h;
    int64_t var_a0h;
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
        piVar9 = (int64_t *)*(int64_t **)0x20;
        piVar12 = (int64_t *)unaff_RBP;
        if (*(int64_t **)(unaff_R14 + 0x10) < (int64_t *)((int64_t)*(int64_t **)0x20 + -0x78)) {
            piVar12 = (int64_t *)((int64_t)*(int64_t **)0x20 + -8);
            *(undefined **)((int64_t)*(int64_t **)0x20 + -8) = unaff_RBP;
            piVar9 = (int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8);
            *(int64_t *)((int64_t)*(int64_t **)0x20 + 8) = in_RAX;
            *(int64_t **)((int64_t)*(int64_t **)0x20 + 0x10) = unaff_RBX;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xb0) = 0x1015a;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xa8) = 0x17d5;
            *(undefined4 *)((int64_t)*(int64_t **)0x20 + -0xac) = 0;
            *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1ba70;
            iVar5 = runtime_newobject(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8));
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x10) = iVar5;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xa0) = *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xb0);
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x98) = *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xa8);
            *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1baab;
            iVar6 = encoding_binary_Write(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd0), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xa8), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x90), *(int64_t *)*(int64_t **)0x20);
            if (iVar6 != 0) {
                *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x30) = in_XMM15_Qa;
                *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x28) = in_XMM15_Qb;
                *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x30) = *(int64_t *)(iVar6 + 8);
                *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x28) = iVar5;
                *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1baf0;
                fmt_Errorf(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x78));
                return 0;
            }
            unaff_RBX = (int64_t *)((int64_t)*(int64_t **)0x20 + -0xc0);
            *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1bb18;
            bytes___Buffer__Write(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0));
            piVar1 = *(int64_t **)((int64_t)*(int64_t **)0x20 + -0x10);
            uVar11 = piVar1[1];
            uVar13 = piVar1[3];
            if (uVar13 <= uVar11) break;
            *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1c0f7;
            in_RAX = runtime_panicSliceB(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                                  *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0));
        }
        piVar9[1] = in_RAX;
        piVar9[2] = (int64_t)unaff_RBX;
        piVar9[-1] = 0xe1c107;
        runtime_morestack_noctxt_abi0(*piVar9, piVar9[1]);
        in_RAX = piVar9[1];
        unaff_RBX = (int64_t *)piVar9[2];
        *(int64_t **)0x20 = (BADSPACEBASE *)piVar9;
        unaff_RBP = (undefined *)piVar12;
    } while( true );
    pcVar2 = *(code **)(*(int64_t *)((int64_t)*(int64_t **)0x20 + 8) + 0x50);
    iVar5 = *piVar1;
    iVar6 = piVar1[2];
    *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1bb66;
    (*pcVar2)(*(int64_t *)((int64_t)*(int64_t **)0x20 + 0x10), iVar5 + (uVar13 & (int64_t)-(iVar6 - uVar13) >> 0x3f), 
              uVar11 - uVar13);
    if (extraout_RBX != 0) {
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x30) = in_XMM15_Qa;
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x28) = in_XMM15_Qb;
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x30) = *(int64_t *)(extraout_RBX + 8);
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x28) = extraout_RCX;
        *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1bc1e;
        fmt_Errorf(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0)
                     , *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8)
                     , *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x78));
        return 0;
    }
    *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1bb70;
    time_Now();
    *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1bb7f;
    uVar10 = extraout_RCX_00;
    uVar7 = time_Time_Add(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd0));
    pcVar2 = *(code **)(*(int64_t *)((int64_t)*(int64_t **)0x20 + 8) + 0x40);
    *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1bb9e;
    (*pcVar2)(*(int64_t *)((int64_t)*(int64_t **)0x20 + 0x10), uVar7, extraout_RBX_00, uVar10);
    *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1bbb2;
    iVar6 = runtime_makeslice(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8));
    *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x20) = iVar6;
    iVar5 = *(int64_t *)((int64_t)*(int64_t **)0x20 + 8);
    if (iVar5 != 0) {
        uVar11 = (uint64_t)*(uint32_t *)(iVar5 + 0x10);
        do {
            uVar13 = uVar11 & **(uint64_t **)0xfbb930;
            if ((*(uint64_t **)0xfbb930)[uVar13 * 2 + 1] == *(uint64_t *)(iVar5 + 8)) goto code_r0x00e1bc2f;
            uVar11 = uVar11 + 1;
        } while ((*(uint64_t **)0xfbb930)[uVar13 * 2 + 1] != 0);
        *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1c0d1;
        runtime_typeAssert(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0)
                     , *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8), 
                     *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd0));
        iVar6 = *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x20);
    }
code_r0x00e1bc2f:
    iVar5 = *(int64_t *)((int64_t)*(int64_t **)0x20 + 0x10);
    *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1bc50;
    iVar8 = io_ReadAtLeast(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd0), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x88));
    if (iVar5 != 0) {
        iVar3 = iVar5;
        if (*(int64_t *)0xfb6dc0 == iVar5) {
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x88) = iVar8;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x68) = iVar6;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x80) = iVar5;
            *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1bc95;
            cVar4 = runtime_ifaceeq(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8));
            if (cVar4 != '\0') {
                *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1bd46;
                fmt_Errorf(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x78));
                return 0;
            }
            iVar6 = *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x68);
            iVar5 = *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x80);
            iVar3 = *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x80);
        }
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x50) = in_XMM15_Qa;
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x48) = in_XMM15_Qb;
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x40) = in_XMM15_Qa;
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x38) = in_XMM15_Qb;
        if (iVar3 != 0) {
            iVar5 = *(int64_t *)(iVar5 + 8);
        }
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x50) = iVar5;
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x48) = iVar6;
        *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1bce5;
        iVar5 = runtime_convT64(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8));
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x40) = 0x1042b60;
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x38) = iVar5;
        *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1bd1d;
        fmt_Errorf(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0)
                     , *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8)
                     , *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x78));
        return 0;
    }
    *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x60) = in_XMM15_Qa;
    *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x58) = in_XMM15_Qb;
    *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1bd75;
    iVar5 = runtime_convTslice(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8));
    uVar10 = *(undefined8 *)0x3512080;
    *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x60) = 0x1038240;
    *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x58) = iVar5;
    *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1bdbc;
    fmt_Fprintf(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), 
                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8), *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd0), 
                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -200));
    *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xc0) = in_XMM15_Qa;
    *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xb8) = in_XMM15_Qb;
    *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1bdcf;
    piVar9 = (int64_t *)runtime_newobject(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8));
    piVar9[1] = 0x10;
    piVar9[2] = 0x10;
    if (*(int32_t *)0x355db50 == 0) {
        iVar5 = *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x20);
    } else {
        *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1bdf7;
        piVar9 = (int64_t *)runtime_gcWriteBarrier1(piVar9, uVar10);
        iVar5 = *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x20);
        *extraout_R11 = iVar5;
    }
    *piVar9 = iVar5;
    piVar9[3] = 0;
    piVar9[4] = -1;
    *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1be3e;
    iVar5 = encoding_binary_Read(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd0), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x78), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x60), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x18));
    if (iVar5 != 0) {
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x30) = in_XMM15_Qa;
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x28) = in_XMM15_Qb;
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x30) = *(int64_t *)(iVar5 + 8);
        *(int64_t **)((int64_t)*(int64_t **)0x20 + -0x28) = piVar9;
        *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1bee5;
        fmt_Errorf(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0)
                     , *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8)
                     , *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x78));
        return 0;
    }
    if (*(int32_t *)((int64_t)*(int64_t **)0x20 + -0xbc) == 0) {
        iVar5 = 0;
        iVar6 = 0;
    } else {
        *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1be5b;
        iVar6 = runtime_makeslice(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8));
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x20) = iVar6;
        *(uint64_t *)((int64_t)*(int64_t **)0x20 + -0x78) = (uint64_t)*(uint32_t *)((int64_t)*(int64_t **)0x20 + -0xbc);
        iVar5 = *(int64_t *)((int64_t)*(int64_t **)0x20 + 8);
        if (iVar5 != 0) {
            uVar11 = (uint64_t)*(uint32_t *)(iVar5 + 0x10);
            do {
                uVar13 = uVar11 & **(uint64_t **)0xfbb950;
                if ((*(uint64_t **)0xfbb950)[uVar13 * 2 + 1] == *(uint64_t *)(iVar5 + 8)) goto code_r0x00e1bfb0;
                uVar11 = uVar11 + 1;
            } while ((*(uint64_t **)0xfbb950)[uVar13 * 2 + 1] != 0);
            *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1c085;
            runtime_typeAssert(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd0));
            iVar6 = *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x20);
        }
code_r0x00e1bfb0:
        iVar5 = *(int64_t *)((int64_t)*(int64_t **)0x20 + 0x10);
        *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1bfc9;
        io_ReadAtLeast(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0)
                     , *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8)
                     , *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd0), 
                     *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x88));
        if (iVar5 != 0) {
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x50) = in_XMM15_Qa;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x48) = in_XMM15_Qb;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x40) = in_XMM15_Qa;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x38) = in_XMM15_Qb;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x50) = *(int64_t *)(iVar5 + 8);
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x48) = iVar6;
            *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1bffb;
            iVar5 = runtime_convT64(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8));
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x40) = 0x1042b60;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x38) = iVar5;
            *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1c033;
            fmt_Errorf(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x78));
            return 0;
        }
        iVar5 = *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x78);
        iVar6 = *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x20);
    }
    *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x90) = iVar5;
    *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x70) = iVar6;
    *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1bf0f;
    iVar5 = runtime_newobject(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8));
    if (*(int32_t *)((int64_t)*(int64_t **)0x20 + -0xbc) != 0) {
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x18) = iVar5;
        iVar5 = *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x90);
        *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1bf45;
        iVar6 = encoding_json_Unmarshal(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xc0));
        if (iVar6 != 0) {
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x30) = in_XMM15_Qa;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x28) = in_XMM15_Qb;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x30) = *(int64_t *)(iVar6 + 8);
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x28) = iVar5;
            *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1bf8a;
            fmt_Errorf(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x78));
            return 0;
        }
        iVar5 = *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x18);
    }
    return iVar5;
}

/* CAS-Backend/pkg/agvcontrol.SltGetMapRequest | VA 0xe1c120 | kongzhi.go:705
   DWARF parameters and results: conn net.Conn, ~r0 map[string]interface {}, ~r1 error
   DWARF locals: n int, headerBuf *bytes.Reader, &buf *bytes.Buffer, &response *CAS-Backend/pkg/agvcontrol.SlamResponse, jsonData []uint8, err error, responseHeaderBytes []uint8, responseData []uint8, header CAS-Backend/pkg/agvcontrol.ProtocolHeader, responseHeader CAS-Backend/pkg/agvcontrol.ProtocolHeader */
// WARNING: [rz-ghidra] Detected overlap for variable var_d4h
// WARNING: [rz-ghidra] Removing arg arg_44h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_e4h
// WARNING: [rz-ghidra] Detected overlap for variable var_88h
// WARNING: [rz-ghidra] Detected overlap for variable var_10h

undefined8 __stdcall
pkg_agvcontrol_SltGetMapRequest(int64_t arg_8h, int64_t arg_10h, int64_t arg_90h, int64_t arg_f8h, int64_t arg_110h)
{
    int64_t *piVar1;
    code *pcVar2;
    int64_t iVar3;
    char cVar4;
    int64_t in_RAX;
    undefined8 uVar5;
    int64_t iVar6;
    undefined8 uVar7;
    undefined8 *puVar8;
    uint64_t in_RCX;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    uint64_t uVar9;
    int64_t unaff_RBX;
    int64_t extraout_RBX;
    undefined8 extraout_RBX_00;
    int64_t *piVar10;
    undefined *unaff_RBP;
    undefined *puVar11;
    undefined8 in_RSI;
    int64_t in_RDI;
    uint64_t uVar12;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    undefined8 in_XMM15_Qa;
    undefined8 in_XMM15_Qb;
    int64_t var_118h;
    int64_t var_110h;
    int64_t var_e8h;
    int64_t var_d8h;
    int64_t var_d0h;
    int64_t var_c8h;
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
        piVar10 = (int64_t *)*(undefined **)0x20;
        puVar11 = unaff_RBP;
        if (*(undefined **)(unaff_R14 + 0x10) < (undefined *)((int64_t)*(undefined **)0x20 + -0xa0)) {
            puVar11 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            piVar10 = (int64_t *)((int64_t)*(undefined **)0x20 + -0x120);
            *(int64_t *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c165;
            uVar5 = encoding_json_Marshal(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa8));
            if (in_RDI != 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = *(undefined8 *)(in_RDI + 8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_RSI;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c1aa;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0));
                return 0;
            }
            *(uint64_t *)((int64_t)*(undefined **)0x20 + -0xa0) = in_RCX;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa8) = 0xf7a728;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x80) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8) = 0x1015a;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd0) = 0x401;
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0xd4) = 0xf7a728;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c1f2;
            uVar5 = runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -200) = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8)
            ;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xc0) =
                 *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd0);
            in_RSI = 0x110e8c0;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c22d;
            iVar6 = encoding_binary_Write(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x28));
            if (iVar6 != 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = *(undefined8 *)(iVar6 + 8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c272;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0));
                return 0;
            }
            unaff_RBX = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80);
            in_RDI = *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c2a5;
            bytes___Buffer__Write(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108));
            piVar1 = *(int64_t **)((int64_t)*(undefined **)0x20 + -0x10);
            in_RCX = piVar1[1];
            uVar9 = piVar1[3];
            if (uVar9 <= in_RCX) break;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c90a;
            in_RAX = runtime_panicSliceB(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                                  *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118));
        }
        piVar10[1] = in_RAX;
        piVar10[2] = unaff_RBX;
        piVar10[-1] = 0xe1c91a;
        runtime_morestack_noctxt_abi0(*piVar10, piVar10[1]);
        in_RAX = piVar10[1];
        unaff_RBX = piVar10[2];
        *(int64_t **)0x20 = (BADSPACEBASE *)piVar10;
        unaff_RBP = puVar11;
    } while( true );
    pcVar2 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + 8) + 0x50);
    iVar6 = *piVar1;
    iVar3 = piVar1[2];
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c2f3;
    (*pcVar2)(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), iVar6 + (uVar9 & (int64_t)-(iVar3 - uVar9) >> 0x3f)
              , in_RCX - uVar9);
    if (extraout_RBX != 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = *(undefined8 *)(extraout_RBX + 8);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = extraout_RCX;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c3ab;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0));
        return 0;
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c2fd;
    time_Now();
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c30c;
    uVar5 = extraout_RCX_00;
    uVar7 = time_Time_Add(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8));
    pcVar2 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + 8) + 0x40);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c32b;
    (*pcVar2)(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), uVar7, extraout_RBX_00, uVar5);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c33f;
    uVar5 = runtime_makeslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110));
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar5;
    iVar6 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
    if (iVar6 != 0) {
        uVar9 = (uint64_t)*(uint32_t *)(iVar6 + 0x10);
        do {
            uVar12 = uVar9 & **(uint64_t **)0xfbb970;
            if ((*(uint64_t **)0xfbb970)[uVar12 * 2 + 1] == *(uint64_t *)(iVar6 + 8)) goto code_r0x00e1c3bc;
            uVar9 = uVar9 + 1;
        } while ((*(uint64_t **)0xfbb970)[uVar12 * 2 + 1] != 0);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c8e5;
        runtime_typeAssert(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8));
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
    }
code_r0x00e1c3bc:
    iVar6 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c3dd;
    uVar7 = io_ReadAtLeast(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0));
    if (iVar6 != 0) {
        iVar3 = iVar6;
        if (*(int64_t *)0xfb6dc0 == iVar6) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb0) = uVar7;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = uVar5;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x98) = iVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c425;
            cVar4 = runtime_ifaceeq(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110));
            if (cVar4 != '\0') {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c4dc;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0));
                return 0;
            }
            uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78);
            iVar6 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x98);
            iVar3 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x98);
        }
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = in_XMM15_Qb;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = in_XMM15_Qb;
        if (iVar3 != 0) {
            iVar6 = *(int64_t *)(iVar6 + 8);
        }
        *(int64_t *)((int64_t)*(undefined **)0x20 + -0x50) = iVar6;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = uVar5;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c47b;
        uVar5 = runtime_convT64(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120));
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = 0x1042b60;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = uVar5;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c4b3;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0));
        return 0;
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) = in_XMM15_Qa;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) = in_XMM15_Qb;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c50b;
    uVar7 = runtime_convTslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110));
    uVar5 = *(undefined8 *)0x3512080;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) = 0x1038240;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) = uVar7;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c552;
    fmt_Fprintf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8)
                 , *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0));
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe8) = in_XMM15_Qa;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe0) = in_XMM15_Qb;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c565;
    puVar8 = (undefined8 *)runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120));
    puVar8[1] = 0x10;
    puVar8[2] = 0x10;
    if (*(int32_t *)0x355db50 == 0) {
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
    } else {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c58d;
        puVar8 = (undefined8 *)runtime_gcWriteBarrier1(puVar8, uVar5);
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
        *extraout_R11 = uVar5;
    }
    *puVar8 = uVar5;
    puVar8[3] = 0;
    puVar8[4] = 0xffffffffffffffff;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c5d4;
    iVar6 = encoding_binary_Read(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x40));
    if (iVar6 != 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = *(undefined8 *)(iVar6 + 8);
        *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x28) = puVar8;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c674;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0));
        return 0;
    }
    if (*(int32_t *)((int64_t)*(undefined **)0x20 + -0xe4) == 0) {
        uVar5 = 0;
        uVar7 = 0;
    } else {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c5f2;
        uVar5 = runtime_makeslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110));
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar5;
        *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x90) =
             (uint64_t)*(uint32_t *)((int64_t)*(undefined **)0x20 + -0xe4);
        iVar6 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
        if (iVar6 != 0) {
            uVar9 = (uint64_t)*(uint32_t *)(iVar6 + 0x10);
            do {
                uVar12 = uVar9 & **(uint64_t **)0xfbb990;
                if ((*(uint64_t **)0xfbb990)[uVar12 * 2 + 1] == *(uint64_t *)(iVar6 + 8)) goto code_r0x00e1c7c5;
                uVar9 = uVar9 + 1;
            } while ((*(uint64_t **)0xfbb990)[uVar12 * 2 + 1] != 0);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c89a;
            runtime_typeAssert(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8));
            uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
        }
code_r0x00e1c7c5:
        iVar6 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c7de;
        io_ReadAtLeast(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0));
        if (iVar6 != 0) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50) = *(undefined8 *)(iVar6 + 8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c812;
            uVar5 = runtime_convT64(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = 0x1042b60;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c84a;
            fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0));
            return 0;
        }
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x90);
        uVar7 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = uVar5;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x88) = uVar7;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c69e;
    uVar5 = runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120));
    if (*(int32_t *)((int64_t)*(undefined **)0x20 + -0xe4) == 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c7b4;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0));
        return 0;
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = uVar5;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = in_XMM15_Qa;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = in_XMM15_Qb;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c6cf;
    uVar5 = runtime_convTslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110));
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = 0x1038240;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = uVar5;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c709;
    fmt_Fprintln(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100));
    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c72d;
    iVar6 = encoding_json_Unmarshal(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8));
    if (iVar6 == 0) {
        return *(undefined8 *)(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x18) + 0x30);
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = *(undefined8 *)(iVar6 + 8);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = uVar5;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1c772;
    fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0)
                );
    return 0;
}

/* CAS-Backend/pkg/agvcontrol.CancerChongdingweiapi | VA 0xe1c940 | kongzhi.go:917
   DWARF parameters and results: conn net.Conn, ~r0 bool, ~r1 error
   DWARF locals: n int, &buf *bytes.Buffer, &response *CAS-Backend/pkg/agvcontrol.Response, headerBuf *bytes.Reader, reqData []uint8, jsonData []uint8, err error, responseHeaderBytes []uint8, responseData []uint8, header CAS-Backend/pkg/agvcontrol.ProtocolHeader, responseHeader CAS-Backend/pkg/agvcontrol.ProtocolHeader */
// WARNING: [rz-ghidra] Detected overlap for variable var_bch
// WARNING: [rz-ghidra] Removing arg arg_3ch because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_cch
// WARNING: [rz-ghidra] Detected overlap for variable var_88h
// WARNING: [rz-ghidra] Detected overlap for variable var_10h

undefined8 __stdcall
pkg_agvcontrol_CancerChongdingweiapi(int64_t arg_8h, int64_t arg_10h, int64_t arg_68h, int64_t arg_88h, int64_t arg_e0h)
{
    int64_t *piVar1;
    code *pcVar2;
    int64_t iVar3;
    char cVar4;
    int64_t in_RAX;
    undefined8 uVar5;
    undefined8 uVar6;
    int64_t iVar7;
    undefined8 *puVar8;
    undefined8 uVar9;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    uint64_t uVar10;
    int64_t unaff_RBX;
    int64_t extraout_RBX;
    undefined8 extraout_RBX_00;
    int64_t *piVar11;
    undefined *unaff_RBP;
    undefined *puVar12;
    undefined8 in_RSI;
    int64_t in_RDI;
    uint64_t uVar13;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    undefined8 in_XMM15_Qa;
    undefined8 in_XMM15_Qb;
    int64_t var_f8h;
    int64_t var_f0h;
    int64_t var_d0h;
    int64_t var_c0h;
    int64_t var_b8h;
    int64_t var_b0h;
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
        piVar11 = (int64_t *)*(undefined **)0x20;
        puVar12 = unaff_RBP;
        if (*(undefined **)(unaff_R14 + 0x10) < (undefined *)((int64_t)*(undefined **)0x20 + -0x80)) {
            puVar12 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            piVar11 = (int64_t *)((int64_t)*(undefined **)0x20 + -0x100);
            *(int64_t *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
            uVar9 = 0;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1c97b;
            uVar5 = runtime_convTslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1c98a;
            uVar6 = encoding_json_Marshal(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88));
            if (in_RDI != 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = *(undefined8 *)(in_RDI + 8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_RSI;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1c9cf;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80));
                return 0;
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x88) = uVar9;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x90) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = uVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xc0) = 0x1015a;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0x7d4;
            *(int32_t *)((int64_t)*(undefined **)0x20 + -0xbc) = (int32_t)uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1ca15;
            uVar5 = runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb0) =
                 *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xc0);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa8) =
                 *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8);
            in_RSI = 0x110e8c0;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1ca50;
            iVar7 = encoding_binary_Write(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x98), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -8));
            if (iVar7 != 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = *(undefined8 *)(iVar7 + 8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1ca97;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80));
                return 0;
            }
            unaff_RBX = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x68);
            in_RDI = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1cac7;
            bytes___Buffer__Write(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8));
            piVar1 = *(int64_t **)((int64_t)*(undefined **)0x20 + -0x10);
            uVar10 = piVar1[1];
            uVar13 = piVar1[3];
            if (uVar13 <= uVar10) break;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1d097;
            in_RAX = runtime_panicSliceB(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                                  *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8));
        }
        piVar11[1] = in_RAX;
        piVar11[2] = unaff_RBX;
        piVar11[-1] = 0xe1d0a7;
        runtime_morestack_noctxt_abi0(*piVar11, piVar11[1]);
        in_RAX = piVar11[1];
        unaff_RBX = piVar11[2];
        *(int64_t **)0x20 = (BADSPACEBASE *)piVar11;
        unaff_RBP = puVar12;
    } while( true );
    pcVar2 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + 8) + 0x50);
    iVar7 = *piVar1;
    iVar3 = piVar1[2];
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1cb1e;
    (*pcVar2)(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), 
              iVar7 + (uVar13 & (int64_t)-(iVar3 - uVar13) >> 0x3f), uVar10 - uVar13);
    if (extraout_RBX != 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = *(undefined8 *)(extraout_RBX + 8);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = extraout_RCX;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1cbdc;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80));
        return 0;
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1cb2a;
    time_Now();
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1cb39;
    uVar5 = extraout_RCX_00;
    uVar6 = time_Time_Add(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8));
    pcVar2 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + 8) + 0x40);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1cb58;
    (*pcVar2)(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), uVar6, extraout_RBX_00, uVar5);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1cb6c;
    uVar5 = runtime_makeslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0));
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = uVar5;
    iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
    if (iVar7 != 0) {
        uVar10 = (uint64_t)*(uint32_t *)(iVar7 + 0x10);
        do {
            uVar13 = uVar10 & **(uint64_t **)0xfbb9b0;
            if ((*(uint64_t **)0xfbb9b0)[uVar13 * 2 + 1] == *(uint64_t *)(iVar7 + 8)) goto code_r0x00e1cbed;
            uVar10 = uVar10 + 1;
        } while ((*(uint64_t **)0xfbb9b0)[uVar13 * 2 + 1] != 0);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1d071;
        runtime_typeAssert(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8));
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
    }
code_r0x00e1cbed:
    iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1cc0e;
    uVar6 = io_ReadAtLeast(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90));
    if (iVar7 != 0) {
        iVar3 = iVar7;
        if (*(int64_t *)0xfb6dc0 == iVar7) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x98) = uVar6;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80) = iVar7;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1cc58;
            cVar4 = runtime_ifaceeq(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0));
            if (cVar4 != '\0') {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1cd16;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80));
                return 0;
            }
            uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60);
            iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80);
            iVar3 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80);
        }
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Qb;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qb;
        if (iVar3 != 0) {
            iVar7 = *(int64_t *)(iVar7 + 8);
        }
        *(int64_t *)((int64_t)*(undefined **)0x20 + -0x48) = iVar7;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = uVar5;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1ccb5;
        uVar5 = runtime_convT64(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100));
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = 0x1042b60;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = uVar5;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1cced;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80));
        return 0;
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd0) = in_XMM15_Qa;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -200) = in_XMM15_Qb;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1cd3a;
    puVar8 = (undefined8 *)runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100));
    puVar8[1] = 0x10;
    puVar8[2] = 0x10;
    if (*(int32_t *)0x355db50 == 0) {
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
    } else {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1cd65;
        puVar8 = (undefined8 *)runtime_gcWriteBarrier1();
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
        *extraout_R11 = uVar5;
    }
    *puVar8 = uVar5;
    puVar8[3] = 0;
    puVar8[4] = 0xffffffffffffffff;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1cdac;
    iVar7 = encoding_binary_Read(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x68), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x20));
    if (iVar7 != 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = *(undefined8 *)(iVar7 + 8);
        *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x20) = puVar8;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1ce4b;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80));
        return 0;
    }
    if (*(int32_t *)((int64_t)*(undefined **)0x20 + -0xcc) == 0) {
        uVar5 = 0;
        uVar6 = 0;
    } else {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1cdc7;
        uVar5 = runtime_makeslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0));
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = uVar5;
        *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x78) =
             (uint64_t)*(uint32_t *)((int64_t)*(undefined **)0x20 + -0xcc);
        iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
        if (iVar7 != 0) {
            uVar10 = (uint64_t)*(uint32_t *)(iVar7 + 0x10);
            do {
                uVar13 = uVar10 & **(uint64_t **)0xfbb9d0;
                if ((*(uint64_t **)0xfbb9d0)[uVar13 * 2 + 1] == *(uint64_t *)(iVar7 + 8)) goto code_r0x00e1cf4d;
                uVar10 = uVar10 + 1;
            } while ((*(uint64_t **)0xfbb9d0)[uVar13 * 2 + 1] != 0);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1d01f;
            runtime_typeAssert(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8));
            uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
        }
code_r0x00e1cf4d:
        iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1cf66;
        io_ReadAtLeast(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90));
        if (iVar7 != 0) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = *(undefined8 *)(iVar7 + 8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1cf98;
            uVar5 = runtime_convT64(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = 0x1042b60;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1cfd0;
            fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80));
            return 0;
        }
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78);
        uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa0) = uVar5;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = uVar6;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1ce75;
    runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100));
    if (*(int32_t *)((int64_t)*(undefined **)0x20 + -0xcc) == 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) = 0x1042920;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50) = 0x2e690a0 /* "响应为空" */;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1cf3b;
        fmt_Fprintln(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0));
    } else {
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa0);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1ce9b;
        iVar7 = encoding_json_Unmarshal(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -200));
        if (iVar7 != 0) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = *(undefined8 *)(iVar7 + 8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe1cee9;
            fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80));
            return 0;
        }
    }
    return 1;
}

/* CAS-Backend/pkg/agvcontrol.Chongdingweiapi | VA 0xe1d0c0 | kongzhi.go:1003
   DWARF parameters and results: conn net.Conn, isauto bool, x float64, y float64, angle float64, length float64, ~r0 bool, ~r1 error
   DWARF locals: n int, &buf *bytes.Buffer, &response *CAS-Backend/pkg/agvcontrol.Response, headerBuf *bytes.Reader, jsonData []uint8, err error, responseHeaderBytes []uint8, responseData []uint8, reqData CAS-Backend/pkg/agvcontrol.ChongdingweiReq, header CAS-Backend/pkg/agvcontrol.ProtocolHeader, responseHeader CAS-Backend/pkg/agvcontrol.ProtocolHeader */
// WARNING: [rz-ghidra] Detected overlap for variable var_e4h
// WARNING: [rz-ghidra] Detected overlap for variable arg_3ch
// WARNING: [rz-ghidra] Detected overlap for variable var_f4h
// WARNING: [rz-ghidra] Detected overlap for variable var_88h
// WARNING: [rz-ghidra] Detected overlap for variable var_10h

undefined8 __stdcall
pkg_agvcontrol_Chongdingweiapi
          (int64_t arg7, int64_t arg8, int64_t arg9, int64_t arg10, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h,
          int64_t arg_20h, int64_t arg_28h, int64_t arg_30h, int64_t arg_38h, int64_t arg_68h, int64_t arg_70h,
          int64_t arg_b0h, int64_t arg_108h)
{
    int64_t *piVar1;
    code *pcVar2;
    int64_t iVar3;
    char cVar4;
    int64_t in_RAX;
    undefined8 uVar5;
    undefined8 uVar6;
    undefined8 uVar7;
    int64_t iVar8;
    undefined8 uVar9;
    undefined8 *puVar10;
    char in_CL;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 extraout_RCX_01;
    uint64_t uVar11;
    int64_t unaff_RBX;
    int64_t extraout_RBX;
    undefined8 extraout_RBX_00;
    int64_t *piVar12;
    undefined *unaff_RBP;
    undefined *puVar13;
    undefined8 extraout_RSI;
    int64_t extraout_RDI;
    uint64_t uVar14;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    undefined4 extraout_XMM0_Da;
    undefined4 extraout_XMM0_Db;
    undefined8 in_XMM15_Qa;
    undefined8 in_XMM15_Qb;
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
        piVar12 = (int64_t *)*(undefined **)0x20;
        puVar13 = unaff_RBP;
        if (*(undefined **)(unaff_R14 + 0x10) < (undefined *)((int64_t)*(undefined **)0x20 + -0xa8)) {
            puVar13 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            piVar12 = (int64_t *)((int64_t)*(undefined **)0x20 + -0x128);
            *(int64_t *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xc0) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb0) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa8) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa0) = in_XMM15_Qb;
            if (in_CL == '\0') {
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb8) = arg7;
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0) = arg8;
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa8) = arg9;
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0) = arg10;
            } else {
                *(char *)((int64_t)*(undefined **)0x20 + -0xc0) = in_CL;
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d13b;
            uVar5 = runtime_convTnoptr(0x1104d40, (undefined *)((int64_t)*(undefined **)0x20 + -0xc0));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d14a;
            uVar7 = extraout_RCX;
            uVar9 = extraout_RSI;
            iVar8 = extraout_RDI;
            uVar6 = encoding_json_Marshal(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0));
            if (iVar8 != 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = *(undefined8 *)(iVar8 + 8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar9;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d18f;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa8));
                return 0;
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x88) = uVar7;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x90) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = uVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe8) = 0x1015a;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe0) = 0x7d2;
            *(int32_t *)((int64_t)*(undefined **)0x20 + -0xe4) = (int32_t)uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d1db;
            uVar7 = runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x128));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = uVar7;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8) =
                 *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd0) =
                 *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe0);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d216;
            iVar8 = encoding_binary_Write(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xc0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x30));
            if (iVar8 != 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = *(undefined8 *)(iVar8 + 8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar7;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d25b;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa8));
                return 0;
            }
            unaff_RBX = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x68);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d291;
            bytes___Buffer__Write(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110));
            piVar1 = *(int64_t **)((int64_t)*(undefined **)0x20 + -0x10);
            uVar11 = piVar1[1];
            uVar14 = piVar1[3];
            if (uVar14 <= uVar11) break;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d857;
            in_RAX = runtime_panicSliceB(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                                  *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120));
            in_CL = (char)uVar11;
            arg7 = CONCAT44(extraout_XMM0_Db, extraout_XMM0_Da);
        }
        piVar12[1] = in_RAX;
        piVar12[2] = unaff_RBX;
        *(char *)(piVar12 + 3) = in_CL;
        piVar12[4] = arg7;
        piVar12[5] = arg8;
        piVar12[6] = arg9;
        piVar12[7] = arg10;
        piVar12[-1] = 0xe1d885;
        runtime_morestack_noctxt_abi0(*piVar12, piVar12[1]);
        in_RAX = piVar12[1];
        unaff_RBX = piVar12[2];
        in_CL = (char)piVar12[3];
        arg7 = piVar12[4];
        arg8 = piVar12[5];
        arg9 = piVar12[6];
        arg10 = piVar12[7];
        *(int64_t **)0x20 = (BADSPACEBASE *)piVar12;
        unaff_RBP = puVar13;
    } while( true );
    pcVar2 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + 8) + 0x50);
    iVar8 = *piVar1;
    iVar3 = piVar1[2];
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d2df;
    (*pcVar2)(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), 
              iVar8 + (uVar14 & (int64_t)-(iVar3 - uVar14) >> 0x3f), uVar11 - uVar14);
    if (extraout_RBX != 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = *(undefined8 *)(extraout_RBX + 8);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = extraout_RCX_00;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d39c;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa8));
        return 0;
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d2ea;
    time_Now();
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d2f9;
    uVar7 = extraout_RCX_01;
    uVar9 = time_Time_Add(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100));
    pcVar2 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + 8) + 0x40);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d318;
    (*pcVar2)(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), uVar9, extraout_RBX_00, uVar7);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d32c;
    uVar7 = runtime_makeslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118));
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = uVar7;
    iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
    if (iVar8 != 0) {
        uVar11 = (uint64_t)*(uint32_t *)(iVar8 + 0x10);
        do {
            uVar14 = uVar11 & **(uint64_t **)0xfbb9f0;
            if ((*(uint64_t **)0xfbb9f0)[uVar14 * 2 + 1] == *(uint64_t *)(iVar8 + 8)) goto code_r0x00e1d3ad;
            uVar11 = uVar11 + 1;
        } while ((*(uint64_t **)0xfbb9f0)[uVar14 * 2 + 1] != 0);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d831;
        runtime_typeAssert(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100));
        uVar7 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
    }
code_r0x00e1d3ad:
    iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d3ce;
    uVar9 = io_ReadAtLeast(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb8));
    if (iVar8 != 0) {
        iVar3 = iVar8;
        if (*(int64_t *)0xfb6dc0 == iVar8) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x98) = uVar9;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) = uVar7;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80) = iVar8;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d41b;
            cVar4 = runtime_ifaceeq(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118));
            if (cVar4 != '\0') {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d4d9;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa8));
                return 0;
            }
            uVar7 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60);
            iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80);
            iVar3 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80);
        }
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Qb;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qb;
        if (iVar3 != 0) {
            iVar8 = *(int64_t *)(iVar8 + 8);
        }
        *(int64_t *)((int64_t)*(undefined **)0x20 + -0x48) = iVar8;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = uVar7;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d478;
        uVar7 = runtime_convT64(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x128));
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = 0x1042b60;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = uVar7;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d4b0;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa8));
        return 0;
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = in_XMM15_Qa;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = in_XMM15_Qb;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d4fd;
    puVar10 = (undefined8 *)runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x128));
    puVar10[1] = 0x10;
    puVar10[2] = 0x10;
    if (*(int32_t *)0x355db50 == 0) {
        uVar7 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
    } else {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d527;
        puVar10 = (undefined8 *)runtime_gcWriteBarrier1();
        uVar7 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
        *extraout_R11 = uVar7;
    }
    *puVar10 = uVar7;
    puVar10[3] = 0;
    puVar10[4] = 0xffffffffffffffff;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d56e;
    iVar8 = encoding_binary_Read(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x48));
    if (iVar8 != 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = *(undefined8 *)(iVar8 + 8);
        *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x20) = puVar10;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d60b;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa8));
        return 0;
    }
    if (*(int32_t *)((int64_t)*(undefined **)0x20 + -0xf4) == 0) {
        uVar7 = 0;
        uVar9 = 0;
    } else {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d589;
        uVar7 = runtime_makeslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118));
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = uVar7;
        *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x78) =
             (uint64_t)*(uint32_t *)((int64_t)*(undefined **)0x20 + -0xf4);
        iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
        if (iVar8 != 0) {
            uVar11 = (uint64_t)*(uint32_t *)(iVar8 + 0x10);
            do {
                uVar14 = uVar11 & **(uint64_t **)0xfbba10;
                if ((*(uint64_t **)0xfbba10)[uVar14 * 2 + 1] == *(uint64_t *)(iVar8 + 8)) goto code_r0x00e1d70d;
                uVar11 = uVar11 + 1;
            } while ((*(uint64_t **)0xfbba10)[uVar14 * 2 + 1] != 0);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d7df;
            runtime_typeAssert(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100));
            uVar7 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
        }
code_r0x00e1d70d:
        iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d726;
        io_ReadAtLeast(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb8));
        if (iVar8 != 0) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = *(undefined8 *)(iVar8 + 8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = uVar7;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d758;
            uVar7 = runtime_convT64(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x128));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = 0x1042b60;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = uVar7;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d790;
            fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa8));
            return 0;
        }
        uVar7 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78);
        uVar9 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -200) = uVar7;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = uVar9;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d635;
    runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x128));
    if (*(int32_t *)((int64_t)*(undefined **)0x20 + -0xf4) == 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) = 0x1042920;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50) = 0x2e690a0 /* "响应为空" */;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d6fb;
        fmt_Fprintln(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108));
    } else {
        uVar7 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -200);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d65b;
        iVar8 = encoding_json_Unmarshal(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0));
        if (iVar8 != 0) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = *(undefined8 *)(iVar8 + 8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar7;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0xe1d6a9;
            fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa8));
            return 0;
        }
    }
    return 1;
}

/* CAS-Backend/pkg/agvcontrol.queryAMRLocation | VA 0xe1d8c0 | kongzhi.go:1136
   DWARF parameters and results: conn net.Conn, quiet bool, ~r0 *CAS-Backend/pkg/agvcontrol.VechileLocation, ~r0 *CAS-Backend/pkg/agvcontrol.VechileLocation, ~r1 error, ~r1 error
   DWARF locals: &response *CAS-Backend/pkg/agvcontrol.VechileLocation, header CAS-Backend/pkg/agvcontrol.PacketHeader, respHeader CAS-Backend/pkg/agvcontrol.PacketHeader, err error, data []uint8 */
// WARNING: Variable defined which should be unmapped: var_d0h
// WARNING: Variable defined which should be unmapped: var_b8h
// WARNING: Variable defined which should be unmapped: var_28h
// WARNING: Variable defined which should be unmapped: var_a0h
// WARNING: Variable defined which should be unmapped: var_88h
// WARNING: Variable defined which should be unmapped: var_40h
// WARNING: Variable defined which should be unmapped: var_e9h
// WARNING: [rz-ghidra] Detected overlap for variable var_e8h
// WARNING: [rz-ghidra] Detected overlap for variable var_e4h

int64_t __stdcall
pkg_agvcontrol_queryAMRLocation
          (int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_a0h, int64_t arg_f8h, int64_t arg_110h,
          int64_t arg_140h)
{
    char cVar1;
    int64_t in_RAX;
    int64_t iVar2;
    undefined8 uVar3;
    char in_CL;
    undefined8 extraout_RCX;
    undefined8 uVar4;
    int64_t extraout_RCX_00;
    uint64_t unaff_RBX;
    undefined8 extraout_RBX;
    int64_t extraout_RBX_00;
    uint64_t extraout_RBX_01;
    uint64_t uVar5;
    uint64_t uVar6;
    int64_t unaff_R14;
    int64_t in_XMM15_Qa;
    int64_t unaff_retaddr;
    int64_t in_stack_fffffffffffffee0;
    int64_t in_stack_fffffffffffffee8;
    int64_t in_stack_fffffffffffffef0;
    int64_t in_stack_fffffffffffffef8;
    int64_t in_stack_ffffffffffffff00;
    int64_t in_stack_ffffffffffffff08;
    int64_t var_e9h;
    int64_t var_d8h;
    int64_t var_d0h;
    int64_t var_c8h;
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
    
    while (&var_a0h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    var_a0h = 0;
    if (in_RAX != 0) {
        uVar5 = (uint64_t)*(uint32_t *)(in_RAX + 0x10);
        do {
            uVar6 = uVar5 & **(uint64_t **)0xfbba30;
            if ((*(uint64_t **)0xfbba30)[uVar6 * 2 + 1] == *(uint64_t *)(in_RAX + 8)) goto code_r0x00e1d945;
            uVar5 = uVar5 + 1;
        } while ((*(uint64_t **)0xfbba30)[uVar6 * 2 + 1] != 0);
        runtime_typeAssert(in_stack_fffffffffffffee0, in_stack_fffffffffffffee8, in_stack_ffffffffffffff00, 
                     in_stack_ffffffffffffff08);
    }
code_r0x00e1d945:
    iVar2 = encoding_binary_Write(in_stack_fffffffffffffee0, in_stack_fffffffffffffee8, in_stack_fffffffffffffef0, 
                         in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, in_stack_ffffffffffffff08, 0x3ec, var_b8h
                         , var_28h);
    if (iVar2 != 0) {
        var_30h = *(int64_t *)(iVar2 + 8);
        fmt_Errorf(in_stack_fffffffffffffee0, in_stack_fffffffffffffee8, in_stack_fffffffffffffef0, 
                     in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, var_a0h);
        return 0;
    }
    if (in_CL == '\0') {
        var_60h = 0x1042920;
        var_58h = 0x2e690b0 /* "车辆位置查询请求已发送" */;
        fmt_Fprintln(in_stack_fffffffffffffee0, in_stack_fffffffffffffee8, in_stack_fffffffffffffef0, 
                     in_stack_fffffffffffffef8, in_stack_ffffffffffffff00);
    }
    time_Now();
    uVar4 = extraout_RCX;
    uVar3 = time_Time_Add(in_stack_fffffffffffffee0, in_stack_fffffffffffffee8, in_stack_fffffffffffffef0, 
                         in_stack_fffffffffffffef8, in_stack_ffffffffffffff08);
    (**(code **)(in_RAX + 0x40))(unaff_RBX, uVar3, extraout_RBX, uVar4);
    var_78h = 0xe1e060;
    var_10h = (int64_t)&var_78h;
    if (in_RAX != 0) {
        uVar5 = (uint64_t)*(uint32_t *)(in_RAX + 0x10);
        do {
            uVar6 = uVar5 & **(uint64_t **)0xfbba50;
            if ((*(uint64_t **)0xfbba50)[uVar6 * 2 + 1] == *(uint64_t *)(in_RAX + 8)) goto code_r0x00e1dad5;
            uVar5 = uVar5 + 1;
        } while ((*(uint64_t **)0xfbba50)[uVar6 * 2 + 1] != 0);
        runtime_typeAssert(in_stack_fffffffffffffee0, in_stack_fffffffffffffee8, in_stack_ffffffffffffff00, 
                     in_stack_ffffffffffffff08);
    }
code_r0x00e1dad5:
    iVar2 = encoding_binary_Read(in_stack_fffffffffffffee0, in_stack_fffffffffffffee8, in_stack_fffffffffffffef0, 
                         in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, in_stack_ffffffffffffff08, var_a0h, 
                         var_88h, var_40h);
    if (iVar2 != 0) {
        var_30h = *(int64_t *)(iVar2 + 8);
        fmt_Errorf(in_stack_fffffffffffffee0, in_stack_fffffffffffffee8, in_stack_fffffffffffffef0, 
                     in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, var_a0h);
        var_a0h = 0;
        (**(code **)var_10h)();
        return var_a0h;
    }
    var_18h = runtime_newobject(in_stack_fffffffffffffee0);
    stack0xffffffffffffff1c = (uint32_t)((uint64_t)in_XMM15_Qa >> 0x20);
    if (stack0xffffffffffffff1c != 0) {
        var_20h = runtime_makeslice(in_stack_fffffffffffffee0, in_stack_fffffffffffffee8, in_stack_fffffffffffffef0);
        uVar5 = (uint64_t)stack0xffffffffffffff1c;
        (**(code **)(in_RAX + 0x28))(unaff_RBX, var_20h, uVar5);
        if (extraout_RBX_00 != 0) {
            var_30h = *(int64_t *)(extraout_RBX_00 + 8);
            var_28h = extraout_RCX_00;
            fmt_Errorf(in_stack_fffffffffffffee0, in_stack_fffffffffffffee8, in_stack_fffffffffffffef0, 
                         in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, var_a0h);
            var_a0h = 0;
            (**(code **)var_10h)();
            return var_a0h;
        }
        iVar2 = encoding_json_Unmarshal(in_stack_fffffffffffffee0, in_stack_fffffffffffffee8, in_stack_fffffffffffffef0, 
                             in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, in_XMM15_Qa);
        if (iVar2 != 0) {
            var_50h = *(int64_t *)(iVar2 + 8);
            var_48h = uVar5;
            runtime_slicebytetostring(0, var_20h, uVar5);
            var_38h = runtime_convTstring(in_stack_fffffffffffffee0, in_stack_fffffffffffffee8, in_stack_ffffffffffffff08);
            var_40h = 0x1042920;
            fmt_Errorf(in_stack_fffffffffffffee0, in_stack_fffffffffffffee8, in_stack_fffffffffffffef0, 
                         in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, var_a0h);
            var_a0h = 0;
            (**(code **)var_10h)();
            return var_a0h;
        }
        if ((*(int64_t *)(var_18h + 0x20) == 0x14) &&
           (cVar1 = runtime_memequal(*(undefined8 *)(var_18h + 0x18), 0x1180466 /* "Out of station range" */, 0x14), uVar5 = extraout_RBX_01,
           cVar1 != '\0')) {
            fmt_Errorf(in_stack_fffffffffffffee0, in_stack_fffffffffffffee8, in_stack_fffffffffffffef0, 
                         in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, var_a0h);
            var_a0h = 0;
            (**(code **)var_10h)();
            return var_a0h;
        }
        unaff_RBX = uVar5;
        if (*(int64_t *)(var_18h + 0x20) != 0) {
            var_28h = runtime_convTstring(in_stack_fffffffffffffee0, in_stack_fffffffffffffee8, in_stack_ffffffffffffff08);
            var_30h = 0x1042920;
            fmt_Errorf(in_stack_fffffffffffffee0, in_stack_fffffffffffffee8, in_stack_fffffffffffffef0, 
                         in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, var_a0h);
            var_a0h = 0;
            (**(code **)var_10h)();
            return var_a0h;
        }
    }
    if (in_CL == '\0') {
        var_80h = runtime_convTstring(in_stack_fffffffffffffee0, in_stack_fffffffffffffee8, in_stack_ffffffffffffff08);
        var_88h = 0x1042920;
        fmt_Fprintln(in_stack_fffffffffffffee0, in_stack_fffffffffffffee8, in_stack_fffffffffffffef0, 
                     in_stack_fffffffffffffef8, in_stack_ffffffffffffff00);
        unaff_RBX = *(uint64_t *)0x3512080;
        var_98h = 0x1042920;
        var_90h = 0x2e690c0 /* "车辆位置查询成功" */;
        fmt_Fprintln(in_stack_fffffffffffffee0, in_stack_fffffffffffffee8, in_stack_fffffffffffffef0, 
                     in_stack_fffffffffffffef8, in_stack_ffffffffffffff00);
    }
    var_a0h = var_18h;
    (**(code **)var_10h)(*(code **)var_10h, unaff_RBX);
    return var_a0h;
}

/* CAS-Backend/pkg/agvcontrol.queryAMRLocation.deferwrap1 | VA 0xe1e060 | kongzhi.go:1158
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_agvcontrol_queryAMRLocation_deferwrap1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int64_t *piVar1;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000020;
    int64_t var_18h;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, arg_8h);
    }
    piVar1 = *(int64_t **)(unaff_R14 + 0x20);
    if ((piVar1 != (int64_t *)0x0) && ((int64_t *)*piVar1 == &arg_8h)) {
        *piVar1 = (int64_t)&var_18h;
    }
    pkg_agvcontrol_ClearConnDeadlines(var_18h, in_stack_fffffffffffffff0, in_stack_00000020);
    return;
}

/* CAS-Backend/pkg/agvcontrol.Ruanjiting | VA 0xe1e0c0 | kongzhi.go:1215
   DWARF parameters and results: conn net.Conn, status bool, ~r0 bool, ~r1 error
   DWARF locals: reqData CAS-Backend/pkg/agvcontrol.RuanjitingReq, n int, &buf *bytes.Buffer, headerBuf *bytes.Reader, jsonData []uint8, err error, responseHeaderBytes []uint8, responseData []uint8, header CAS-Backend/pkg/agvcontrol.ProtocolHeader, responseHeader CAS-Backend/pkg/agvcontrol.ProtocolHeader, &response *CAS-Backend/pkg/agvcontrol.Response */
// WARNING: [rz-ghidra] Detected overlap for variable var_ach
// WARNING: [rz-ghidra] Removing arg arg_3ch because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_bch
// WARNING: [rz-ghidra] Detected overlap for variable var_88h
// WARNING: [rz-ghidra] Detected overlap for variable var_10h

undefined8 __stdcall
pkg_agvcontrol_Ruanjiting
          (int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_80h, int64_t arg_b0h, int64_t arg_d0h)
{
    int64_t *piVar1;
    code *pcVar2;
    char cVar3;
    undefined8 in_RAX;
    undefined8 uVar4;
    int64_t iVar5;
    undefined8 uVar6;
    undefined8 *puVar7;
    uint8_t in_CL;
    int64_t iVar8;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    uint64_t uVar9;
    undefined8 unaff_RBX;
    int64_t extraout_RBX;
    undefined8 extraout_RBX_00;
    undefined *puVar10;
    undefined *unaff_RBP;
    undefined *puVar11;
    undefined8 in_RSI;
    undefined8 extraout_RSI;
    int64_t in_RDI;
    int64_t extraout_RDI;
    uint64_t uVar12;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    undefined8 in_XMM15_Qa;
    undefined8 in_XMM15_Qb;
    int64_t var_e8h;
    int64_t var_e0h;
    int64_t var_d8h;
    int64_t var_c0h;
    int64_t var_b0h;
    int64_t var_a8h;
    int64_t var_a0h;
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
        puVar10 = (undefined *)*(undefined **)0x20;
        puVar11 = unaff_RBP;
        if (*(undefined **)(unaff_R14 + 0x10) < (undefined *)((int64_t)*(undefined **)0x20 + -0x70)) {
            puVar11 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            puVar10 = (undefined *)((int64_t)*(undefined **)0x20 + -0xf0);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
            iVar5 = (uint64_t)in_CL * 8 + 0xf7a720;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e107;
            iVar8 = iVar5;
            uVar4 = encoding_json_Marshal(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x78));
            if (in_RDI != 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = *(undefined8 *)(in_RDI + 8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_RSI;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e14c;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x70));
                return 0;
            }
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80) = iVar8;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88) = iVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = uVar4;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb0) = 0x1015a;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa8) = 0x1774;
            *(int32_t *)((int64_t)*(undefined **)0x20 + -0xac) = (int32_t)iVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e191;
            uVar4 = runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = uVar4;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa0) =
                 *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb0);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x98) =
                 *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e1cc;
            iVar5 = encoding_binary_Write(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -200), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + 8));
            if (iVar5 != 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = *(undefined8 *)(iVar5 + 8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar4;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e211;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x70));
                return 0;
            }
            unaff_RBX = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e245;
            bytes___Buffer__Write(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8));
            piVar1 = *(int64_t **)((int64_t)*(undefined **)0x20 + -0x10);
            uVar9 = piVar1[1];
            uVar12 = piVar1[3];
            if (uVar12 <= uVar9) break;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e7bf;
            in_RAX = runtime_panicSliceB(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                                  *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8));
            in_CL = (uint8_t)uVar9;
        }
        *(undefined8 *)(puVar10 + 8) = in_RAX;
        *(undefined8 *)(puVar10 + 0x10) = unaff_RBX;
        puVar10[0x18] = in_CL;
        *(undefined8 *)(puVar10 + -8) = 0xe1e7d3;
        runtime_morestack_noctxt_abi0();
        in_RAX = *(undefined8 *)(puVar10 + 8);
        unaff_RBX = *(undefined8 *)(puVar10 + 0x10);
        in_CL = puVar10[0x18];
        *(undefined **)0x20 = (BADSPACEBASE *)puVar10;
        unaff_RBP = puVar11;
        in_RSI = extraout_RSI;
        in_RDI = extraout_RDI;
    } while( true );
    pcVar2 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + 8) + 0x50);
    iVar5 = *piVar1;
    iVar8 = piVar1[2];
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e293;
    (*pcVar2)(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), 
              iVar5 + (uVar12 & (int64_t)-(iVar8 - uVar12) >> 0x3f), uVar9 - uVar12);
    if (extraout_RBX != 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = *(undefined8 *)(extraout_RBX + 8);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = extraout_RCX;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e34b;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x70));
        return 0;
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e29d;
    time_Now();
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e2ac;
    uVar4 = extraout_RCX_00;
    uVar6 = time_Time_Add(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -200));
    pcVar2 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + 8) + 0x40);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e2cb;
    (*pcVar2)(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), uVar6, extraout_RBX_00, uVar4);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e2df;
    uVar4 = runtime_makeslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0));
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = uVar4;
    iVar5 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
    if (iVar5 != 0) {
        uVar9 = (uint64_t)*(uint32_t *)(iVar5 + 0x10);
        do {
            uVar12 = uVar9 & **(uint64_t **)0xfbba70;
            if ((*(uint64_t **)0xfbba70)[uVar12 * 2 + 1] == *(uint64_t *)(iVar5 + 8)) goto code_r0x00e1e35c;
            uVar9 = uVar9 + 1;
        } while ((*(uint64_t **)0xfbba70)[uVar12 * 2 + 1] != 0);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e79d;
        runtime_typeAssert(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -200));
        uVar4 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
    }
code_r0x00e1e35c:
    iVar5 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e37d;
    uVar6 = io_ReadAtLeast(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -200), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80));
    if (iVar5 != 0) {
        iVar8 = iVar5;
        if (*(int64_t *)0xfb6dc0 == iVar5) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x90) = uVar6;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x78) = iVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) = uVar4;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e3be;
            cVar3 = runtime_ifaceeq(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0));
            if (cVar3 != '\0') {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e470;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x70));
                return 0;
            }
            uVar4 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60);
            iVar5 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x78);
            iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x78);
        }
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Qb;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qb;
        if (iVar8 != 0) {
            iVar5 = *(int64_t *)(iVar5 + 8);
        }
        *(int64_t *)((int64_t)*(undefined **)0x20 + -0x48) = iVar5;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = uVar4;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e40f;
        uVar4 = runtime_convT64(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0));
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = 0x1042b60;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = uVar4;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e447;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x70));
        return 0;
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xc0) = in_XMM15_Qa;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = in_XMM15_Qb;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e494;
    puVar7 = (undefined8 *)runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0));
    puVar7[1] = 0x10;
    puVar7[2] = 0x10;
    if (*(int32_t *)0x355db50 == 0) {
        uVar4 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
    } else {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e4bc;
        puVar7 = (undefined8 *)runtime_gcWriteBarrier1();
        uVar4 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
        *extraout_R11 = uVar4;
    }
    *puVar7 = uVar4;
    puVar7[3] = 0;
    puVar7[4] = 0xffffffffffffffff;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e505;
    iVar5 = encoding_binary_Read(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -200), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x70), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x58), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x10));
    if (iVar5 != 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = *(undefined8 *)(iVar5 + 8);
        *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x20) = puVar7;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e5e8;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x70));
        return 0;
    }
    if (*(int32_t *)((int64_t)*(undefined **)0x20 + -0xbc) == 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) = 0x1042920;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50) = 0x2e690a0 /* "响应为空" */;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e5a6;
        fmt_Fprintln(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0));
    } else {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e525;
        uVar4 = runtime_makeslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0));
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = uVar4;
        *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x70) =
             (uint64_t)*(uint32_t *)((int64_t)*(undefined **)0x20 + -0xbc);
        iVar5 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
        if (iVar5 != 0) {
            uVar9 = (uint64_t)*(uint32_t *)(iVar5 + 0x10);
            do {
                uVar12 = uVar9 & **(uint64_t **)0xfbba90;
                if ((*(uint64_t **)0xfbba90)[uVar12 * 2 + 1] == *(uint64_t *)(iVar5 + 8)) goto code_r0x00e1e60b;
                uVar9 = uVar9 + 1;
            } while ((*(uint64_t **)0xfbba90)[uVar12 * 2 + 1] != 0);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e752;
            runtime_typeAssert(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -200));
            uVar4 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
        }
code_r0x00e1e60b:
        iVar5 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e625;
        io_ReadAtLeast(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -200), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80));
        if (iVar5 != 0) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = *(undefined8 *)(iVar5 + 8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = uVar4;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e657;
            uVar4 = runtime_convT64(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = 0x1042b60;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = uVar4;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e68f;
            fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x70));
            return 0;
        }
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e6ad;
        runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0));
        uVar4 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e6cf;
        iVar5 = encoding_json_Unmarshal(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb8));
        if (iVar5 != 0) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = *(undefined8 *)(iVar5 + 8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar4;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = 0xe1e718;
            fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x70));
            return 0;
        }
    }
    return 1;
}
