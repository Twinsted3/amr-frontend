/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/pkg/agvcontrol.SendTranslateRequest | VA 0xe141e0 | daohang.go:37
   DWARF parameters and results: conn net.Conn, dist float64, vx float64, vy float64, mode int, ~r0 *CAS-Backend/pkg/agvcontrol.Response, ~r1 error
   DWARF locals: reqData CAS-Backend/pkg/agvcontrol.TranslateRequest, &buf *bytes.Buffer, &response *CAS-Backend/pkg/agvcontrol.Response, headerBuf *bytes.Reader, n int, jsonData []uint8, err error, responseHeaderBytes []uint8, responseData []uint8, header CAS-Backend/pkg/agvcontrol.ProtocolHeader, responseHeader CAS-Backend/pkg/agvcontrol.ProtocolHeader */
// WARNING: [rz-ghidra] Detected overlap for variable var_e4h
// WARNING: [rz-ghidra] Removing arg arg_44h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_f4h
// WARNING: [rz-ghidra] Detected overlap for variable var_88h
// WARNING: [rz-ghidra] Detected overlap for variable var_10h

undefined8 __stdcall
pkg_agvcontrol_SendTranslateRequest
          (int64_t arg7, int64_t arg8, int64_t arg9, int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h,
          int64_t arg_20h, int64_t arg_28h, int64_t arg_30h, int64_t arg_90h, int64_t arg_108h, int64_t arg_120h)
{
    int64_t *piVar1;
    code *pcVar2;
    int64_t iVar3;
    char cVar4;
    undefined8 in_RAX;
    undefined8 uVar5;
    undefined8 uVar6;
    int64_t iVar7;
    undefined8 *puVar8;
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
    undefined4 extraout_XMM0_Da;
    undefined4 extraout_XMM0_Db;
    undefined8 in_XMM15_Qa;
    undefined8 in_XMM15_Qb;
    int64_t var_128h;
    int64_t var_120h;
    int64_t var_118h;
    int64_t var_110h;
    int64_t var_108h;
    int64_t var_100h;
    int64_t var_f8h;
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
        puVar10 = (undefined *)*(undefined **)0x20;
        puVar11 = unaff_RBP;
        if (*(undefined **)(unaff_R14 + 0x10) < (undefined *)((int64_t)*(undefined **)0x20 + -0xb0)) {
            puVar11 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            puVar10 = (undefined *)((int64_t)*(undefined **)0x20 + -0x130);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0) = arg7;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x98) = arg8;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90) = arg9;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88) = arg4;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe14245;
            uVar5 = runtime_convTnoptr(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe14254;
            uVar6 = encoding_json_Marshal(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb8));
            if (in_RDI != 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = *(undefined8 *)(in_RDI + 8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_RSI;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe14299;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0));
                return 0;
            }
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0) = arg4;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = uVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe8) = 0x1015a;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe0) = 0xbef;
            *(int32_t *)((int64_t)*(undefined **)0x20 + -0xe4) = (int32_t)uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe142e5;
            uVar5 = runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8) =
                 *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd0) =
                 *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe0);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe14325;
            iVar7 = encoding_binary_Write(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -200), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x38));
            if (iVar7 != 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = *(undefined8 *)(iVar7 + 8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe1436a;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0));
                return 0;
            }
            unaff_RBX = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe1439d;
            bytes___Buffer__Write(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118));
            piVar1 = *(int64_t **)((int64_t)*(undefined **)0x20 + -0x10);
            arg4 = piVar1[1];
            uVar9 = piVar1[3];
            if (uVar9 <= (uint64_t)arg4) break;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe14985;
            in_RAX = runtime_panicSliceB(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130), 
                                  *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128));
            arg7 = CONCAT44(extraout_XMM0_Db, extraout_XMM0_Da);
        }
        *(undefined8 *)(puVar10 + 8) = in_RAX;
        *(undefined8 *)(puVar10 + 0x10) = unaff_RBX;
        *(int64_t *)(puVar10 + 0x18) = arg7;
        *(int64_t *)(puVar10 + 0x20) = arg8;
        *(int64_t *)(puVar10 + 0x28) = arg9;
        *(int64_t *)(puVar10 + 0x30) = arg4;
        *(undefined8 *)(puVar10 + -8) = 0xe149ac;
        runtime_morestack_noctxt_abi0();
        in_RAX = *(undefined8 *)(puVar10 + 8);
        unaff_RBX = *(undefined8 *)(puVar10 + 0x10);
        arg7 = *(int64_t *)(puVar10 + 0x18);
        arg8 = *(int64_t *)(puVar10 + 0x20);
        arg9 = *(int64_t *)(puVar10 + 0x28);
        arg4 = *(int64_t *)(puVar10 + 0x30);
        *(undefined **)0x20 = (BADSPACEBASE *)puVar10;
        unaff_RBP = puVar11;
        in_RSI = extraout_RSI;
        in_RDI = extraout_RDI;
    } while( true );
    pcVar2 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + 8) + 0x50);
    iVar7 = *piVar1;
    iVar3 = piVar1[2];
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe143eb;
    (*pcVar2)(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), iVar7 + (uVar9 & (int64_t)-(iVar3 - uVar9) >> 0x3f)
              , arg4 - uVar9);
    if (extraout_RBX != 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = *(undefined8 *)(extraout_RBX + 8);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = extraout_RCX;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe144a5;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0));
        return 0;
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe143f5;
    time_Now();
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe14405;
    uVar5 = extraout_RCX_00;
    uVar6 = time_Time_Add(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108));
    pcVar2 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + 8) + 0x40);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe14424;
    (*pcVar2)(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), uVar6, extraout_RBX_00, uVar5);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe14438;
    uVar5 = runtime_makeslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120));
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar5;
    iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
    if (iVar7 != 0) {
        uVar9 = (uint64_t)*(uint32_t *)(iVar7 + 0x10);
        do {
            uVar12 = uVar9 & **(uint64_t **)0xfbb6d0;
            if ((*(uint64_t **)0xfbb6d0)[uVar12 * 2 + 1] == *(uint64_t *)(iVar7 + 8)) goto code_r0x00e144b6;
            uVar9 = uVar9 + 1;
        } while ((*(uint64_t **)0xfbb6d0)[uVar12 * 2 + 1] != 0);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe1495f;
        runtime_typeAssert(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108));
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
    }
code_r0x00e144b6:
    iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe144d7;
    uVar6 = io_ReadAtLeast(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xc0));
    if (iVar7 != 0) {
        iVar3 = iVar7;
        if (*(int64_t *)0xfb6dc0 == iVar7) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xc0) = uVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = uVar5;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa8) = iVar7;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe14525;
            cVar4 = runtime_ifaceeq(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120));
            if (cVar4 != '\0') {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe145dc;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0));
                return 0;
            }
            uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68);
            iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa8);
            iVar3 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa8);
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
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe1457b;
        uVar5 = runtime_convT64(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130));
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = 0x1042b60;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = uVar5;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe145b3;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0));
        return 0;
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) = in_XMM15_Qa;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) = in_XMM15_Qb;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe1460b;
    uVar6 = runtime_convTslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120));
    uVar5 = *(undefined8 *)0x3512080;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) = 0x1038240;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) = uVar6;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe14652;
    fmt_Fprintf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130), 
                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100));
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = in_XMM15_Qa;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = in_XMM15_Qb;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe14665;
    puVar8 = (undefined8 *)runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130));
    puVar8[1] = 0x10;
    puVar8[2] = 0x10;
    if (*(int32_t *)0x355db50 == 0) {
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
    } else {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe1468d;
        puVar8 = (undefined8 *)runtime_gcWriteBarrier1(puVar8, uVar5);
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
        *extraout_R11 = uVar5;
    }
    *puVar8 = uVar5;
    puVar8[3] = 0;
    puVar8[4] = 0xffffffffffffffff;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe146d4;
    iVar7 = encoding_binary_Read(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x98), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x50));
    if (iVar7 != 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = *(undefined8 *)(iVar7 + 8);
        *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x28) = puVar8;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe14774;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0));
        return 0;
    }
    if (*(int32_t *)((int64_t)*(undefined **)0x20 + -0xf4) == 0) {
        uVar5 = 0;
        uVar6 = 0;
    } else {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe146f2;
        uVar5 = runtime_makeslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120));
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar5;
        *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x80) =
             (uint64_t)*(uint32_t *)((int64_t)*(undefined **)0x20 + -0xf4);
        iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
        if (iVar7 != 0) {
            uVar9 = (uint64_t)*(uint32_t *)(iVar7 + 0x10);
            do {
                uVar12 = uVar9 & **(uint64_t **)0xfbb6f0;
                if ((*(uint64_t **)0xfbb6f0)[uVar12 * 2 + 1] == *(uint64_t *)(iVar7 + 8)) goto code_r0x00e1483d;
                uVar9 = uVar9 + 1;
            } while ((*(uint64_t **)0xfbb6f0)[uVar12 * 2 + 1] != 0);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe14914;
            runtime_typeAssert(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108));
            uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
        }
code_r0x00e1483d:
        iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe14856;
        io_ReadAtLeast(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xc0));
        if (iVar7 != 0) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50) = *(undefined8 *)(iVar7 + 8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe14888;
            uVar5 = runtime_convT64(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = 0x1042b60;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe148c5;
            fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0));
            return 0;
        }
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x80);
        uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = uVar6;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -200) = uVar5;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe1479e;
    uVar5 = runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130));
    if (*(int32_t *)((int64_t)*(undefined **)0x20 + -0xf4) != 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = uVar5;
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -200);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe147d0;
        iVar7 = encoding_json_Unmarshal(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8));
        if (iVar7 != 0) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = *(undefined8 *)(iVar7 + 8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = 0xe14817;
            fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0));
            return 0;
        }
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
    }
    return uVar5;
}

/* CAS-Backend/pkg/agvcontrol.SendTurnCommand | VA 0xe149e0 | daohang.go:140
   DWARF parameters and results: conn net.Conn, angle float64, vw float64, mode int, sequenceNumber uint16, ~r0 error
   DWARF locals: requestData map[string]interface {}, n int, jsonData []uint8, err error, headerBytes []uint8, fullMessage []uint8, responseHeaderBytes []uint8, header CAS-Backend/pkg/agvcontrol.ProtocolHeader, responseHeader CAS-Backend/pkg/agvcontrol.ProtocolHeader, jsonEnd int, &response *CAS-Backend/pkg/agvcontrol.Response, responseDataBytes []uint8, validJSON []uint8 */
// WARNING: [rz-ghidra] Detected overlap for variable var_1feh
// WARNING: [rz-ghidra] Detected overlap for variable var_1fch
// WARNING: [rz-ghidra] Detected overlap for variable var_20fh
// WARNING: [rz-ghidra] Detected overlap for variable var_20eh
// WARNING: [rz-ghidra] Detected overlap for variable var_20ch
// WARNING: [rz-ghidra] Detected overlap for variable var_208h
// WARNING: [rz-ghidra] Detected overlap for variable var_206h
// WARNING: [rz-ghidra] Detected overlap for variable var_21eh
// WARNING: [rz-ghidra] Detected overlap for variable var_21ch
// WARNING: [rz-ghidra] Detected overlap for variable var_218h
// WARNING: [rz-ghidra] Detected overlap for variable var_216h
// WARNING: [rz-ghidra] Removing arg arg_220h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_212h
// WARNING: [rz-ghidra] Detected overlap for variable var_202h

undefined8 __stdcall
pkg_agvcontrol_SendTurnCommand
          (int64_t arg7, int64_t arg8, int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h,
          int64_t arg_28h, int64_t arg_30h, int64_t arg_78h, int64_t arg_b8h, int64_t arg_140h)
{
    undefined2 uVar1;
    uint32_t uVar2;
    code *pcVar3;
    undefined2 *puVar4;
    undefined8 uVar5;
    undefined8 in_RAX;
    undefined8 uVar6;
    undefined8 *puVar7;
    undefined *puVar8;
    int64_t extraout_RAX;
    int64_t iVar9;
    undefined8 extraout_RAX_00;
    uint64_t uVar10;
    undefined8 extraout_RAX_01;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 extraout_RCX_01;
    undefined8 extraout_RCX_02;
    undefined8 extraout_RCX_03;
    int64_t extraout_RCX_04;
    uint64_t uVar11;
    undefined8 unaff_RBX;
    uint64_t extraout_RBX;
    int64_t extraout_RBX_00;
    undefined8 extraout_RBX_01;
    int64_t extraout_RBX_02;
    int64_t extraout_RBX_03;
    undefined8 extraout_RBX_04;
    undefined *puVar12;
    undefined8 unaff_RBP;
    undefined8 extraout_RSI;
    undefined2 in_DI;
    undefined2 extraout_DI;
    int64_t extraout_RDI;
    uint64_t extraout_R8;
    uint64_t *extraout_R9;
    uint64_t *puVar13;
    uint64_t extraout_R10;
    uint64_t uVar14;
    uint64_t uVar15;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    int64_t unaff_R14;
    undefined4 extraout_XMM0_Da;
    undefined4 extraout_XMM0_Db;
    undefined4 in_XMM15_Da;
    undefined4 in_XMM15_Db;
    undefined4 in_XMM15_Dc;
    undefined4 in_XMM15_Dd;
    undefined auVar16 [16];
    int64_t var_268h;
    int64_t var_250h;
    int64_t var_248h;
    int64_t var_240h;
    int64_t var_238h;
    int64_t var_230h;
    int64_t var_228h;
    int64_t var_220h;
    int64_t var_210h;
    int64_t var_200h;
    int64_t var_1f8h;
    int64_t var_1f0h;
    int64_t var_1e8h;
    int64_t var_1e0h;
    int64_t var_1d8h;
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
    
    do {
        puVar12 = (undefined *)*(undefined **)0x20;
        if (*(undefined **)(unaff_R14 + 0x10) < (undefined *)((int64_t)*(undefined **)0x20 + -0x1d8)) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            puVar12 = (undefined *)((int64_t)*(undefined **)0x20 + -600);
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x18) = arg7;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x20) = arg8;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x28) = arg4;
            *(undefined2 *)((int64_t)*(undefined **)0x20 + 0x30) = in_DI;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14a34;
            uVar6 = runtime_makemap_small();
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1c8) = uVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14a52;
            uVar6 = runtime_convT64(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x18));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a8) = uVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14a7a;
            puVar7 = (undefined8 *)
                     runtime_mapassign_faststr(0x107d4c0, *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1c8), 0x116a76a /* "angle" */, 5);
            *puVar7 = 0x1042ce0;
            if (*(int32_t *)0x355db50 == 0) {
                uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a8);
            } else {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14a9c;
                puVar7 = (undefined8 *)runtime_gcWriteBarrier2();
                uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a8);
                *extraout_R11 = uVar6;
                extraout_R11[1] = puVar7[1];
            }
            puVar7[1] = uVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14ac6;
            uVar6 = runtime_convT64(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x20));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a8) = uVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14aee;
            puVar7 = (undefined8 *)
                     runtime_mapassign_faststr(0x107d4c0, *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1c8), 0x11685a8 /* "vw" */, 2);
            *puVar7 = 0x1042ce0;
            if (*(int32_t *)0x355db50 == 0) {
                uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a8);
            } else {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14b11;
                puVar7 = (undefined8 *)runtime_gcWriteBarrier2();
                uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a8);
                *extraout_R11_00 = uVar6;
                extraout_R11_00[1] = puVar7[1];
            }
            puVar7[1] = uVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14b35;
            uVar6 = runtime_convT64(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x28));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a8) = uVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14b5d;
            puVar7 = (undefined8 *)
                     runtime_mapassign_faststr(0x107d4c0, *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1c8), 0x11696ac /* "mode" */, 4);
            *puVar7 = 0x1042b60;
            if (*(int32_t *)0x355db50 == 0) {
                uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a8);
            } else {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14b7f;
                puVar7 = (undefined8 *)runtime_gcWriteBarrier2();
                uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a8);
                *extraout_R11_01 = uVar6;
                extraout_R11_01[1] = puVar7[1];
            }
            puVar7[1] = uVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14baa;
            auVar16 = encoding_json_Marshal(0x107d4c0, *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1c8));
            iVar9 = auVar16._8_8_;
            if (extraout_RDI != 0) {
                *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Da;
                *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x1c) = in_XMM15_Db;
                *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x18) = in_XMM15_Dc;
                *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x14) = in_XMM15_Dd;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = *(undefined8 *)(extraout_RDI + 8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = extraout_RSI;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14bef;
                uVar6 = fmt_Errorf(0x1183b9b /* "JSON序列化失败: %v" */, 0x17, (undefined *)((int64_t)*(undefined **)0x20 + -0x20), 1, 1);
                return uVar6;
            }
            if (0x400 < iVar9) {
                *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Da;
                *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x1c) = in_XMM15_Db;
                *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x18) = in_XMM15_Dc;
                *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x14) = in_XMM15_Dd;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe15245;
                uVar6 = runtime_convT64(iVar9);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = 0x1042b60;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = uVar6;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe1527d;
                uVar6 = fmt_Errorf(0x1186fc2 /* "JSON数据过长: %d字节" */, 0x1a, (undefined *)((int64_t)*(undefined **)0x20 + -0x20), 1, 1);
                return uVar6;
            }
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x1e8) = iVar9;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x1c0) = auVar16._0_8_;
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x60) = in_XMM15_Da;
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x5c) = in_XMM15_Db;
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x58) = in_XMM15_Dc;
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x54) = in_XMM15_Dd;
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x50) = in_XMM15_Da;
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x4c) = in_XMM15_Db;
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x48) = in_XMM15_Dc;
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x44) = in_XMM15_Dd;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14c34;
            uVar6 = runtime_convT64(iVar9);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) = 0x1042b60;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) = uVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14c5f;
            runtime_slicebytetostring(0, *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1c0), 
                            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1e8));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14c65;
            uVar6 = runtime_convTstring();
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50) = 0x1042920;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = uVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14cac;
            fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1194f67, 0x27, 
                            (undefined *)((int64_t)*(undefined **)0x20 + -0x60), 2, 2);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x200) = 0x15a;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1f8) = 0xbf0;
            *(undefined2 *)((int64_t)*(undefined **)0x20 + -0x1fe) =
                 *(undefined2 *)((int64_t)*(undefined **)0x20 + 0x30);
            *(int32_t *)((int64_t)*(undefined **)0x20 + -0x1fc) =
                 (int32_t)*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1e8);
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x210) =
                 *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x200);
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x20c) =
                 *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x1fc);
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x208) =
                 *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x1f8);
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x204) =
                 *(undefined4 *)((int64_t)*(undefined **)0x20 + -500);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14cf2;
            puVar8 = (undefined *)runtime_makeslice(0x10429a0, 0x10, 0x10);
            *puVar8 = *(undefined *)((int64_t)*(undefined **)0x20 + -0x210);
            puVar8[1] = *(undefined *)((int64_t)*(undefined **)0x20 + -0x20f);
            *(uint16_t *)(puVar8 + 2) =
                 *(uint16_t *)((int64_t)*(undefined **)0x20 + -0x20e) << 8 |
                 *(uint16_t *)((int64_t)*(undefined **)0x20 + -0x20e) >> 8;
            uVar2 = *(uint32_t *)((int64_t)*(undefined **)0x20 + -0x20c);
            *(uint32_t *)(puVar8 + 4) = uVar2 >> 0x18 | (uVar2 & 0xff0000) >> 8 | (uVar2 & 0xff00) << 8 | uVar2 << 0x18;
            *(uint16_t *)(puVar8 + 8) =
                 *(uint16_t *)((int64_t)*(undefined **)0x20 + -0x208) << 8 |
                 *(uint16_t *)((int64_t)*(undefined **)0x20 + -0x208) >> 8;
            if ((undefined *)((int64_t)*(undefined **)0x20 + -0x206) != puVar8 + 10) {
                uVar1 = *(undefined2 *)((int64_t)*(undefined **)0x20 + -0x202);
                *(undefined4 *)(puVar8 + 10) = *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x206);
                *(undefined2 *)(puVar8 + 0xe) = uVar1;
            }
            *(undefined **)((int64_t)*(undefined **)0x20 + -0x1a8) = puVar8;
            *(undefined **)((int64_t)*(undefined **)0x20 + -0x1b0) = puVar8 + 4;
            *(undefined **)((int64_t)*(undefined **)0x20 + -0x268) = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14d71;
            runtime_duffzero_offset_336();
            unaff_RBP = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x268);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb0) = 0x10429a0;
            *(uint64_t *)((int64_t)*(undefined **)0x20 + -0xa8) =
                 (uint64_t)*(uint8_t *)((int64_t)*(undefined **)0x20 + -0x210) * 8 + 0xf7a720;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa0) = 0x10429a0;
            *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x98) =
                 (uint64_t)*(uint8_t *)((int64_t)*(undefined **)0x20 + -0x20f) * 8 + 0xf7a720;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14dc5;
            uVar6 = runtime_convT16(*(undefined2 *)((int64_t)*(undefined **)0x20 + -0x20e));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x90) = 0x1042a20;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x88) = uVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14de5;
            uVar6 = runtime_convT32(*(undefined4 *)((int64_t)*(undefined **)0x20 + -0x20c));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x80) = 0x1042aa0;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = uVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14e06;
            uVar6 = runtime_convT16(*(undefined2 *)((int64_t)*(undefined **)0x20 + -0x208));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = 0x1042a20;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = uVar6;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x1d0) =
                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x1e8) + 0x10;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14e65;
            fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a7246, 0x47, 
                            (undefined *)((int64_t)*(undefined **)0x20 + -0xb0), 5, 5);
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0xc0) = in_XMM15_Da;
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0xbc) = in_XMM15_Db;
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0xb8) = in_XMM15_Dc;
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0xb4) = in_XMM15_Dd;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14e85;
            uVar6 = runtime_convTslice(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a8), 0x10, 0x10);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xc0) = 0x1038240;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = uVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14ecc;
            fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x117cce6, 0x11, 
                            (undefined *)((int64_t)*(undefined **)0x20 + -0xc0), 1, 1);
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0xe0) = in_XMM15_Da;
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0xdc) = in_XMM15_Db;
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0xd8) = in_XMM15_Dc;
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0xd4) = in_XMM15_Dd;
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0xd0) = in_XMM15_Da;
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0xcc) = in_XMM15_Db;
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -200) = in_XMM15_Dc;
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0xc4) = in_XMM15_Dd;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14ef5;
            uVar6 = runtime_convTslice(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b0), 4, 0xc);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe0) = 0x1038240;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8) = uVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14f15;
            uVar6 = runtime_convT32(*(undefined4 *)((int64_t)*(undefined **)0x20 + -0x20c));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd0) = 0x1042aa0;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -200) = uVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14f5c;
            fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a1aa8, 0x39, 
                            (undefined *)((int64_t)*(undefined **)0x20 + -0xe0), 2, 2);
            uVar10 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x1d0);
            if (uVar10 < 0x11) {
                uVar6 = 0x10;
                iVar9 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x1a8);
            } else {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14f97;
                runtime_growslice(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a8), uVar10, 0x10, 
                                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1e8), 0x10429a0);
                iVar9 = extraout_RAX;
                uVar6 = extraout_RCX;
                uVar10 = extraout_RBX;
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1d8) = uVar6;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x1b8) = iVar9;
            *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x1e0) = uVar10;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14fc5;
            runtime_memmove(iVar9 + 0x10, *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1c0), 
                            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1e8));
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0xf0) = in_XMM15_Da;
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0xec) = in_XMM15_Db;
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0xe8) = in_XMM15_Dc;
            *(undefined4 *)((int64_t)*(undefined **)0x20 + -0xe4) = in_XMM15_Dd;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe14fd8;
            uVar6 = runtime_convT64(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1e0));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = 0x1042b60;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe8) = uVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe1501f;
            fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x118a842 /* "完整报文长度: %d字节\n" */, 0x1d, 
                            (undefined *)((int64_t)*(undefined **)0x20 + -0xf0), 1, 1);
            uVar10 = 0x20;
            if ((int64_t)*(uint64_t *)((int64_t)*(undefined **)0x20 + -0x1e0) < 0x20) {
                uVar10 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x1e0);
            }
            if (uVar10 <= *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x1d8)) goto code_r0x00e15049;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe1593a;
            runtime_panicSliceAcap();
            arg7 = CONCAT44(extraout_XMM0_Db, extraout_XMM0_Da);
            in_RAX = extraout_RAX_01;
            arg4 = extraout_RCX_04;
            unaff_RBX = extraout_RBX_04;
            in_DI = extraout_DI;
        }
        *(undefined8 *)(puVar12 + 8) = in_RAX;
        *(undefined8 *)(puVar12 + 0x10) = unaff_RBX;
        *(int64_t *)(puVar12 + 0x18) = arg7;
        *(int64_t *)(puVar12 + 0x20) = arg8;
        *(int64_t *)(puVar12 + 0x28) = arg4;
        *(undefined2 *)(puVar12 + 0x30) = in_DI;
        *(undefined8 *)(puVar12 + -8) = 0xe15965;
        runtime_morestack_noctxt_abi0();
        in_RAX = *(undefined8 *)(puVar12 + 8);
        unaff_RBX = *(undefined8 *)(puVar12 + 0x10);
        arg7 = *(int64_t *)(puVar12 + 0x18);
        arg8 = *(int64_t *)(puVar12 + 0x20);
        arg4 = *(int64_t *)(puVar12 + 0x28);
        in_DI = *(undefined2 *)(puVar12 + 0x30);
        *(undefined **)0x20 = (BADSPACEBASE *)puVar12;
    } while( true );
code_r0x00e158ab:
    uVar15 = uVar15 + 1;
    if (puVar13[uVar11 * 2 + 1] != 0) goto code_r0x00e15897;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe158c5;
    uVar15 = runtime_typeAssert(0xfbb730);
    uVar10 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x1d0);
    uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a8);
code_r0x00e15505:
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe1551e;
    io_ReadAtLeast(uVar15, *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), uVar6, uVar10, uVar10);
    if (extraout_RBX_03 != 0) {
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Da;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x3c) = in_XMM15_Db;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x38) = in_XMM15_Dc;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x34) = in_XMM15_Dd;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Da;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x2c) = in_XMM15_Db;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Dc;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x24) = in_XMM15_Dd;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = *(undefined8 *)(extraout_RBX_03 + 8);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = extraout_RCX_03;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe15552;
        uVar6 = runtime_convT64();
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = 0x1042b60;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = uVar6;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe1558a;
        uVar6 = fmt_Errorf(0x119cbba /* "接收响应数据失败: %v, 读取字节数: %d" */, 0x31, (undefined *)((int64_t)*(undefined **)0x20 + -0x40), 2, 2);
        return uVar6;
    }
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x160) = in_XMM15_Da;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x15c) = in_XMM15_Db;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x158) = in_XMM15_Dc;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x154) = in_XMM15_Dd;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe155b3;
    runtime_slicebytetostring(0, *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a8), 
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1d0));
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe155b8;
    uVar6 = runtime_convTstring();
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x160) = 0x1042920;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x158) = uVar6;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe155ff;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1183c53 /* "原始响应数据: %s\n" */, 0x17, 
                    (undefined *)((int64_t)*(undefined **)0x20 + -0x160), 1, 1);
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x170) = in_XMM15_Da;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x16c) = in_XMM15_Db;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x168) = in_XMM15_Dc;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x164) = in_XMM15_Dd;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe15625;
    uVar6 = runtime_convTslice(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a8), 
                            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1d0), 
                            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1d0));
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x170) = 0x1038240;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x168) = uVar6;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe1566c;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x118a85f /* "响应数据十六进制: %x\n" */, 0x1d, 
                    (undefined *)((int64_t)*(undefined **)0x20 + -0x170), 1, 1);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -600) = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a8);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x250) = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1d0);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x248) = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1d0);
    *(undefined *)((int64_t)*(undefined **)0x20 + -0x240) = 0;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe15695;
    internal_bytealg_IndexByte_abi0();
    in_XMM15_Da = 0;
    in_XMM15_Db = 0;
    in_XMM15_Dc = 0;
    in_XMM15_Dd = 0;
    uVar15 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x1d0);
    uVar10 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x238);
    if (*(uint64_t *)((int64_t)*(undefined **)0x20 + -0x238) == 0xffffffffffffffff) {
        uVar10 = uVar15;
    }
    if (uVar15 < uVar10) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe15897;
        auVar16 = runtime_panicSliceAcap();
        uVar10 = extraout_R8;
        puVar13 = extraout_R9;
        uVar14 = extraout_R10;
        goto code_r0x00e15897;
    }
    *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x1f0) = uVar10;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x180) = 0;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x178) = 0;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe156e6;
    runtime_slicebytetostring(0, *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a8));
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe156eb;
    uVar6 = runtime_convTstring();
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x180) = 0x1042920;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x178) = uVar6;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe15732;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1181822 /* "有效JSON数据: %s\n" */, 0x15, 
                    (undefined *)((int64_t)*(undefined **)0x20 + -0x180), 1, 1);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe1573e;
    uVar6 = runtime_newobject(0x10d5f00);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = uVar6;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe1576a;
    auVar16 = encoding_json_Unmarshal(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a8), 
                              *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1f0), 
                              *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1d0), 0x1026c60, uVar6);
    if (auVar16._0_8_ != 0) {
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Da;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x3c) = in_XMM15_Db;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x38) = in_XMM15_Dc;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x34) = in_XMM15_Dd;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Da;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x2c) = in_XMM15_Db;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Dc;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x24) = in_XMM15_Dd;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = *(undefined8 *)(auVar16._0_8_ + 8);
        *(int64_t *)((int64_t)*(undefined **)0x20 + -0x38) = auVar16._8_8_;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe157af;
        runtime_slicebytetostring(0, *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a8), 
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1f0));
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe157b4;
        uVar6 = runtime_convTstring();
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = 0x1042920;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = uVar6;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe157ec;
        uVar6 = fmt_Errorf(0x1193e49 /* "解析响应JSON失败: %v, 数据: %s" */, 0x26, (undefined *)((int64_t)*(undefined **)0x20 + -0x40), 2, 2);
        return uVar6;
    }
    if (**(int64_t **)((int64_t)*(undefined **)0x20 + -0x10) != 0) {
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Da;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x3c) = in_XMM15_Db;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x38) = in_XMM15_Dc;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x34) = in_XMM15_Dd;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Da;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x2c) = in_XMM15_Db;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Dc;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x24) = in_XMM15_Dd;
        iVar9 = **(int64_t **)((int64_t)*(undefined **)0x20 + -0x10);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe15825;
        uVar6 = runtime_convT64(iVar9);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = 0x1042b60;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = uVar6;
        uVar6 = *(undefined8 *)(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x10) + 0x18);
        uVar5 = *(undefined8 *)(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x10) + 0x20);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe15851;
        uVar6 = runtime_convTstring(uVar6, uVar5);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = 0x1042920;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = uVar6;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe15889;
        uVar6 = fmt_Errorf(0x119a976 /* "API执行错误: 错误码=%d, 错误信息=%s" */, 0x2e, (undefined *)((int64_t)*(undefined **)0x20 + -0x40), 2, 2);
        return uVar6;
    }
    goto code_r0x00e154b7;
code_r0x00e15049:
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x100) = in_XMM15_Da;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0xfc) = in_XMM15_Db;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0xf8) = in_XMM15_Dc;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0xf4) = in_XMM15_Dd;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe15065;
    uVar6 = runtime_convTslice(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8), uVar10, 
                            *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x1d8));
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x100) = 0x1038240;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = uVar6;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe150ac;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x118942c /* "完整报文前32字节: %x\n" */, 0x1c, 
                    (undefined *)((int64_t)*(undefined **)0x20 + -0x100), 1, 1);
    pcVar3 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + 8) + 0x50);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe150d7;
    (*pcVar3)(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), 
              *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8), 
              *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1e0), 
              *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1d8));
    if (extraout_RBX_00 != 0) {
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Da;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x1c) = in_XMM15_Db;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x18) = in_XMM15_Dc;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x14) = in_XMM15_Dd;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = *(undefined8 *)(extraout_RBX_00 + 8);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = extraout_RCX_00;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe15228;
        uVar6 = fmt_Errorf(0x11827c4 /* "发送数据失败: %v" */, 0x16, (undefined *)((int64_t)*(undefined **)0x20 + -0x20), 1, 1);
        return uVar6;
    }
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x120) = in_XMM15_Da;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x11c) = in_XMM15_Db;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x118) = in_XMM15_Dc;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x114) = in_XMM15_Dd;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x110) = in_XMM15_Da;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x10c) = in_XMM15_Db;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x108) = in_XMM15_Dc;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x104) = in_XMM15_Dd;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe15108;
    uVar6 = runtime_convT16(*(undefined2 *)((int64_t)*(undefined **)0x20 + 0x30));
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x120) = 0x1042a20;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = uVar6;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe15129;
    uVar6 = runtime_convT64(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1e0));
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0x1042b60;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = uVar6;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe15170;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a262d, 0x3b, 
                    (undefined *)((int64_t)*(undefined **)0x20 + -0x120), 2, 2);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe15175;
    time_Now();
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe15185;
    time_Time_Add();
    pcVar3 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + 8) + 0x40);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe151a4;
    (*pcVar3)(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), extraout_RAX_00, extraout_RBX_01, extraout_RCX_01);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe151b8;
    uVar6 = runtime_makeslice(0x10429a0, 0x10, 0x10);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a8) = uVar6;
    iVar9 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
    uVar10 = 0;
    if (iVar9 != 0) {
        uVar10 = (uint64_t)*(uint32_t *)(iVar9 + 0x10);
        do {
            uVar15 = uVar10 & **(uint64_t **)0xfbb710;
            if ((*(uint64_t **)0xfbb710)[uVar15 * 2 + 1] == *(uint64_t *)(iVar9 + 8)) {
                uVar10 = (*(uint64_t **)0xfbb710)[uVar15 * 2 + 2];
                goto code_r0x00e15286;
            }
            uVar10 = uVar10 + 1;
        } while ((*(uint64_t **)0xfbb710)[uVar15 * 2 + 1] != 0);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe15911;
        uVar10 = runtime_typeAssert(0xfbb710);
        uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a8);
    }
code_r0x00e15286:
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe152a7;
    io_ReadAtLeast(uVar10, *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), uVar6, 0x10, 0x10, 0x10);
    if (extraout_RBX_02 != 0) {
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Da;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x3c) = in_XMM15_Db;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x38) = in_XMM15_Dc;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x34) = in_XMM15_Dd;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Da;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x2c) = in_XMM15_Db;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Dc;
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x24) = in_XMM15_Dd;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = *(undefined8 *)(extraout_RBX_02 + 8);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = extraout_RCX_02;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe15476;
        uVar6 = runtime_convT64();
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = 0x1042b60;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = uVar6;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe154ae;
        uVar6 = fmt_Errorf(0x119a948 /* "接收响应头失败: %v, 读取字节数: %d" */, 0x2e, (undefined *)((int64_t)*(undefined **)0x20 + -0x40), 2, 2);
        return uVar6;
    }
    puVar4 = *(undefined2 **)((int64_t)*(undefined **)0x20 + -0x1a8);
    uVar1 = *puVar4;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x220) = in_XMM15_Da;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x21c) = in_XMM15_Db;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x218) = in_XMM15_Dc;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x214) = in_XMM15_Dd;
    *(undefined2 *)((int64_t)*(undefined **)0x20 + -0x220) = uVar1;
    *(uint16_t *)((int64_t)*(undefined **)0x20 + -0x21e) = puVar4[1] << 8 | (uint16_t)puVar4[1] >> 8;
    uVar2 = *(uint32_t *)(puVar4 + 2);
    *(uint32_t *)((int64_t)*(undefined **)0x20 + -0x21c) =
         uVar2 >> 0x18 | (uVar2 & 0xff0000) >> 8 | (uVar2 & 0xff00) << 8 | uVar2 << 0x18;
    *(uint16_t *)((int64_t)*(undefined **)0x20 + -0x218) = puVar4[4] << 8 | (uint16_t)puVar4[4] >> 8;
    if ((undefined2 *)((int64_t)*(undefined **)0x20 + -0x216) != puVar4 + 5) {
        uVar1 = puVar4[7];
        *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x216) = *(undefined4 *)(puVar4 + 5);
        *(undefined2 *)((int64_t)*(undefined **)0x20 + -0x212) = uVar1;
    }
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x150) = in_XMM15_Da;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x14c) = in_XMM15_Db;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x148) = in_XMM15_Dc;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x144) = in_XMM15_Dd;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x140) = in_XMM15_Da;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x13c) = in_XMM15_Db;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x138) = in_XMM15_Dc;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x134) = in_XMM15_Dd;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x130) = in_XMM15_Da;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -300) = in_XMM15_Db;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x128) = in_XMM15_Dc;
    *(undefined4 *)((int64_t)*(undefined **)0x20 + -0x124) = in_XMM15_Dd;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe1532c;
    uVar6 = runtime_convT16(*(undefined2 *)((int64_t)*(undefined **)0x20 + -0x218));
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x150) = 0x1042a20;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x148) = uVar6;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe1534c;
    uVar6 = runtime_convT32(*(undefined4 *)((int64_t)*(undefined **)0x20 + -0x21c));
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x140) = 0x1042aa0;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = uVar6;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe1536d;
    uVar6 = runtime_convT16(*(undefined2 *)((int64_t)*(undefined **)0x20 + -0x21e));
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130) = 0x1042a20;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = uVar6;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe153b4;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x119fbd9 /* "收到响应头: 类型=0x%X, 长度=%d, 序列号=%d\n" */, 0x36, 
                    (undefined *)((int64_t)*(undefined **)0x20 + -0x150), 3, 3);
    if (*(int32_t *)((int64_t)*(undefined **)0x20 + -0x21c) != 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe153ca;
        uVar6 = runtime_makeslice(0x10429a0, *(int32_t *)((int64_t)*(undefined **)0x20 + -0x21c));
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a8) = uVar6;
        uVar10 = (uint64_t)*(uint32_t *)((int64_t)*(undefined **)0x20 + -0x21c);
        *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x1d0) = uVar10;
        iVar9 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
        uVar15 = 0;
        if (iVar9 == 0) goto code_r0x00e15505;
        auVar16._8_8_ = *(undefined8 *)(iVar9 + 8);
        auVar16._0_8_ = uVar6;
        uVar14 = **(uint64_t **)0xfbb730;
        uVar15 = (uint64_t)*(uint32_t *)(iVar9 + 0x10);
        puVar13 = *(uint64_t **)0xfbb730;
code_r0x00e15897:
        uVar6 = auVar16._0_8_;
        uVar11 = uVar15 & uVar14;
        if (puVar13[uVar11 * 2 + 1] != auVar16._8_8_) goto code_r0x00e158ab;
        uVar15 = puVar13[uVar11 * 2 + 2];
        goto code_r0x00e15505;
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -400) = 0x1042920;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x188) = 0x2e69040 /* "响应数据长度为0" */;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe15447;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, (undefined *)((int64_t)*(undefined **)0x20 + -400), 1, 1);
code_r0x00e154b7:
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1a0) = 0x1042920;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x198) = 0x2e69050 /* "转动指令发送成功" */;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x260) = 0xe154f8;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, (undefined *)((int64_t)*(undefined **)0x20 + -0x1a0), 1, 1);
    return 0;
}

/* CAS-Backend/pkg/agvcontrol.SendCircularMotionCommand | VA 0xe159a0 | daohang.go:280
   DWARF parameters and results: conn net.Conn, seqNumber uint16, radius float64, degree float64, speed float64, mode int, ~r0 *CAS-Backend/pkg/agvcontrol.Response, ~r1 error
   DWARF locals: responseBuf *bytes.Reader, requestData CAS-Backend/pkg/agvcontrol.CircularMotionRequest, &buf *bytes.Buffer, &response *CAS-Backend/pkg/agvcontrol.Response, jsonData []uint8, err error, fullMessage []uint8, responseHeader []uint8, responseData []uint8, ~r0.len int, header CAS-Backend/pkg/agvcontrol.ProtocolHeader, respHeader CAS-Backend/pkg/agvcontrol.ProtocolHeader */
// WARNING: [rz-ghidra] Detected overlap for variable var_a2h
// WARNING: [rz-ghidra] Detected overlap for variable var_a0h
// WARNING: [rz-ghidra] Detected overlap for variable var_b4h
// WARNING: [rz-ghidra] Detected overlap for variable var_ach
// WARNING: [rz-ghidra] Detected overlap for variable var_80h
// WARNING: [rz-ghidra] Detected overlap for variable var_88h
// WARNING: [rz-ghidra] Detected overlap for variable var_10h

undefined8 __stdcall
pkg_agvcontrol_SendCircularMotionCommand
          (int64_t arg7, int64_t arg8, int64_t arg9, int64_t arg1, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h,
          int64_t arg_20h, int64_t arg_28h, int64_t arg_30h, int64_t arg_38h, int64_t arg_40h, int64_t arg_70h,
          int64_t arg_c0h, int64_t arg_d0h, int64_t arg_d8h, int64_t arg_f8h)
{
    int32_t iVar1;
    uint32_t uVar2;
    int64_t *piVar3;
    uint64_t uVar4;
    code *pcVar5;
    int64_t in_RAX;
    undefined8 uVar6;
    undefined8 uVar7;
    int64_t iVar8;
    int64_t iVar9;
    undefined8 *puVar10;
    undefined2 in_CX;
    int64_t iVar11;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 extraout_RCX_01;
    uint64_t uVar12;
    uint64_t uVar13;
    int64_t unaff_RBX;
    int64_t extraout_RBX;
    int64_t extraout_RBX_00;
    int64_t extraout_RBX_01;
    int64_t *piVar14;
    undefined *unaff_RBP;
    undefined *puVar15;
    undefined8 in_RSI;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    undefined4 extraout_XMM0_Da;
    undefined4 extraout_XMM0_Db;
    undefined8 in_XMM15_Qa;
    undefined8 in_XMM15_Qb;
    int64_t var_e0h;
    int64_t var_d8h;
    int64_t var_d0h;
    int64_t var_c8h;
    int64_t var_c0h;
    int64_t var_b8h;
    int64_t var_b0h;
    int64_t var_a4h;
    int64_t var_9ch;
    int64_t var_94h;
    int64_t var_84h;
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
        piVar14 = (int64_t *)*(undefined **)0x20;
        puVar15 = unaff_RBP;
        if (*(undefined **)(unaff_R14 + 0x10) < (undefined *)((int64_t)*(undefined **)0x20 + -0x68)) {
            puVar15 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            piVar14 = (int64_t *)((int64_t)*(undefined **)0x20 + -0xe8);
            *(undefined2 *)((int64_t)*(undefined **)0x20 + 0x18) = in_CX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x60) = arg7;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x58) = arg8;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x50) = arg9;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x48) = arg1;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = 0xe15a09;
            uVar6 = runtime_convTnoptr(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = 0xe15a18;
            uVar7 = encoding_json_Marshal(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x70));
            if (arg1 != 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = *(undefined8 *)(arg1 + 8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_RSI;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = 0xe15a5d;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -200), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x68));
                return 0;
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = uVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = uVar7;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa4) = 0x15a;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x9c) = 0xbf2;
            *(undefined2 *)((int64_t)*(undefined **)0x20 + -0xa2) = *(undefined2 *)((int64_t)*(undefined **)0x20 + 0x18)
            ;
            *(int32_t *)((int64_t)*(undefined **)0x20 + -0xa0) = (int32_t)uVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = 0xe15aaa;
            unaff_RBX = runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8));
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x10) = unaff_RBX;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x94) =
                 *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa4);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x8c) =
                 *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x9c);
            arg1 = 0x355d2a0;
            in_RSI = 0x110e8c0;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = 0xe15ae5;
            iVar8 = encoding_binary_Write(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -200), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xc0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x98), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10));
            if (iVar8 != 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = *(undefined8 *)(iVar8 + 8);
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x28) = unaff_RBX;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = 0xe15b2a;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -200), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x68));
                return 0;
            }
            piVar3 = *(int64_t **)((int64_t)*(undefined **)0x20 + -0x10);
            uVar12 = piVar3[1];
            uVar4 = piVar3[3];
            if (uVar4 <= uVar12) {
                uVar13 = piVar3[2] - uVar4;
                iVar11 = uVar12 - uVar4;
                iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x78);
                uVar12 = iVar11 + iVar8;
                iVar9 = (uVar4 & (int64_t)-uVar13 >> 0x3f) + *piVar3;
                if (uVar13 < uVar12) {
                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80) = iVar11;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = 0xe15b93;
                    iVar9 = runtime_growslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -200), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x58));
                    iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x78);
                    iVar11 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80);
                }
                *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x68) = uVar13;
                *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x70) = uVar12;
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x38) = iVar9;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = 0xe15bcc;
                runtime_memmove(iVar9 + iVar11, *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40), iVar8);
                pcVar5 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + 8) + 0x50);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = 0xe15bf7;
                (*pcVar5)(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), 
                          *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38), 
                          *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70), 
                          *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68));
                if (extraout_RBX != 0) {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = *(undefined8 *)(extraout_RBX + 8);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = extraout_RCX;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = 0xe15c3c;
                    fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -200), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x68));
                    return 0;
                }
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = 0xe15c65;
                uVar6 = runtime_makeslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8));
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar6;
                pcVar5 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + 8) + 0x28);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = 0xe15c8e;
                (*pcVar5)(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), uVar6, 0x10, 0x10);
                if (extraout_RBX_00 != 0) {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = *(undefined8 *)(extraout_RBX_00 + 8);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = extraout_RCX_00;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = 0xe15cd3;
                    fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -200), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x68));
                    return 0;
                }
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb4) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xac) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = 0xe15cf7;
                puVar10 = (undefined8 *)runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8));
                puVar10[1] = 0x10;
                puVar10[2] = 0x10;
                if (*(int32_t *)0x355db50 == 0) {
                    uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
                } else {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = 0xe15d1f;
                    puVar10 = (undefined8 *)runtime_gcWriteBarrier1();
                    uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
                    *extraout_R11 = uVar6;
                }
                *puVar10 = uVar6;
                puVar10[3] = 0;
                puVar10[4] = 0xffffffffffffffff;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = 0xe15d66;
                iVar8 = encoding_binary_Read(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -200), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xc0), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x68), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x50), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -8));
                if (iVar8 != 0) {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = *(undefined8 *)(iVar8 + 8);
                    *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x28) = puVar10;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = 0xe15dab;
                    fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -200), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x68));
                    return 0;
                }
                if (*(int16_t *)((int64_t)*(undefined **)0x20 + -0xac) != 0x3302) {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = 0xe15f15;
                    uVar6 = runtime_convT16(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8));
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = 0x1042a20;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = uVar6;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = 0xe15f4d;
                    fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -200), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x68));
                    return 0;
                }
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = 0xe15ddc;
                uVar6 = runtime_makeslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8));
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar6;
                iVar1 = *(int32_t *)((int64_t)*(undefined **)0x20 + -0xb0);
                *(int32_t *)((int64_t)*(undefined **)0x20 + -0x84) = iVar1;
                if (iVar1 != 0) {
                    pcVar5 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + 8) + 0x28);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = 0xe15e0b;
                    (*pcVar5)(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), uVar6, iVar1);
                    if (extraout_RBX_01 != 0) {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = *(undefined8 *)(extraout_RBX_01 + 8);
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = extraout_RCX_01;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = 0xe15e50;
                        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -200), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x68));
                        return 0;
                    }
                }
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = 0xe15e6d;
                uVar6 = runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8));
                uVar2 = *(uint32_t *)((int64_t)*(undefined **)0x20 + -0x84);
                if (uVar2 != 0) {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = uVar6;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = 0xe15e97;
                    iVar8 = encoding_json_Unmarshal(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -200), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0));
                    if (iVar8 != 0) {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = *(undefined8 *)(iVar8 + 8);
                        *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x28) = (uint64_t)uVar2;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = 0xe15edc;
                        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -200), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x68));
                        return 0;
                    }
                    uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
                }
                return uVar6;
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = 0xe15f65;
            in_RAX = runtime_panicSliceB(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                                  *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0));
            in_CX = (undefined2)uVar12;
            arg7 = CONCAT44(extraout_XMM0_Db, extraout_XMM0_Da);
        }
        piVar14[1] = in_RAX;
        piVar14[2] = unaff_RBX;
        *(undefined2 *)(piVar14 + 3) = in_CX;
        piVar14[4] = arg7;
        piVar14[5] = arg8;
        piVar14[6] = arg9;
        piVar14[7] = arg1;
        piVar14[-1] = 0xe15f91;
        runtime_morestack_noctxt_abi0(*piVar14, piVar14[1]);
        in_RAX = piVar14[1];
        unaff_RBX = piVar14[2];
        in_CX = (undefined2)piVar14[3];
        arg7 = piVar14[4];
        arg8 = piVar14[5];
        arg9 = piVar14[6];
        arg1 = piVar14[7];
        *(int64_t **)0x20 = (BADSPACEBASE *)piVar14;
        unaff_RBP = puVar15;
    } while( true );
}

/* CAS-Backend/pkg/agvcontrol.SendPauseNavigation | VA 0xe15fc0 | daohang.go:362
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: headerBytes []uint8, err error, responseHeaderBytes []uint8, header CAS-Backend/pkg/agvcontrol.ProtocolHeader, responseHeader CAS-Backend/pkg/agvcontrol.ProtocolHeader, &pauseResp *CAS-Backend/pkg/agvcontrol.Response, responseData []uint8 */
// WARNING: Variable defined which should be unmapped: var_60h
// WARNING: Variable defined which should be unmapped: var_18h
// WARNING: [rz-ghidra] Detected overlap for variable var_5fh
// WARNING: [rz-ghidra] Detected overlap for variable var_5eh
// WARNING: [rz-ghidra] Detected overlap for variable var_5ch
// WARNING: [rz-ghidra] Detected overlap for variable var_56h
// WARNING: [rz-ghidra] Detected overlap for variable var_6fh
// WARNING: [rz-ghidra] Detected overlap for variable var_6eh
// WARNING: [rz-ghidra] Detected overlap for variable var_6ch
// WARNING: [rz-ghidra] Detected overlap for variable var_68h
// WARNING: [rz-ghidra] Detected overlap for variable var_66h
// WARNING: [rz-ghidra] Detected overlap for variable var_50h
// WARNING: [rz-ghidra] Detected overlap for variable var_62h
// WARNING: [rz-ghidra] Removing arg arg_4ah because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_52h

undefined8 __stdcall pkg_agvcontrol_SendPauseNavigation(int64_t arg_8h, int64_t arg_10h, int64_t arg_80h)
{
    uint64_t arg_88h;
    int64_t in_RAX;
    undefined *puVar1;
    undefined8 uVar2;
    int64_t iVar3;
    int64_t arg_88h_00;
    int64_t arg_88h_01;
    int64_t arg_88h_02;
    undefined8 unaff_RBX;
    int64_t extraout_RBX;
    int64_t extraout_RBX_00;
    int64_t extraout_RBX_01;
    uint32_t uVar4;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_ffffffffffffff68;
    int64_t in_stack_ffffffffffffff70;
    int64_t in_stack_ffffffffffffff78;
    int64_t in_stack_ffffffffffffff80;
    int64_t in_stack_ffffffffffffff88;
    int64_t var_70h;
    int64_t var_60h;
    int64_t var_58h;
    uint64_t var_50h;
    int64_t var_48h;
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&var_18h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    var_58h = 0xbb9;
    puVar1 = (undefined *)runtime_makeslice(in_stack_ffffffffffffff68, in_stack_ffffffffffffff70, in_stack_ffffffffffffff78);
    *puVar1 = 0x5a;
    puVar1[1] = 1;
    *(undefined2 *)(puVar1 + 2) = 0x100;
    *(undefined4 *)(puVar1 + 4) = 0;
    *(uint16_t *)(puVar1 + 8) = (uint16_t)var_58h << 8 | (uint16_t)var_58h >> 8;
    if ((undefined *)((int64_t)&var_58h + 2) != puVar1 + 10) {
        *(undefined4 *)(puVar1 + 10) = var_58h._2_4_;
        *(undefined2 *)(puVar1 + 0xe) = var_58h._6_2_;
    }
    (**(code **)(in_RAX + 0x50))(unaff_RBX, puVar1, 0x10, 0x10);
    if (extraout_RBX != 0) {
        var_20h = *(int64_t *)(extraout_RBX + 8);
        var_18h = arg_88h_00;
        uVar2 = fmt_Errorf(in_stack_ffffffffffffff68, in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, 
                             in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, arg_88h_00);
        return uVar2;
    }
    var_48h = runtime_makeslice(in_stack_ffffffffffffff68, in_stack_ffffffffffffff70, in_stack_ffffffffffffff78);
    (**(code **)(in_RAX + 0x28))(unaff_RBX, var_48h, 0x10, 0x10);
    if (extraout_RBX_00 != 0) {
        var_20h = *(int64_t *)(extraout_RBX_00 + 8);
        var_18h = arg_88h_01;
        uVar2 = fmt_Errorf(in_stack_ffffffffffffff68, in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, 
                             in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, arg_88h_01);
        return uVar2;
    }
    uVar4 = *(uint32_t *)(var_48h + 4);
    uVar4 = uVar4 >> 0x18 | (uVar4 & 0xff0000) >> 8 | (uVar4 & 0xff00) << 8 | uVar4 << 0x18;
    if (uVar4 != 0) {
        var_48h = runtime_makeslice(in_stack_ffffffffffffff68, in_stack_ffffffffffffff70, in_stack_ffffffffffffff78);
        var_50h = (uint64_t)uVar4;
        (**(code **)(in_RAX + 0x28))(unaff_RBX, var_48h, var_50h);
        if (extraout_RBX_01 != 0) {
            var_20h = *(int64_t *)(extraout_RBX_01 + 8);
            var_18h = arg_88h_02;
            uVar2 = fmt_Errorf(in_stack_ffffffffffffff68, in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, 
                                 in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, arg_88h_02);
            return uVar2;
        }
        var_10h = runtime_newobject(in_stack_ffffffffffffff68);
        arg_88h = var_50h;
        iVar3 = encoding_json_Unmarshal(in_stack_ffffffffffffff68, in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, 
                             in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, 0x1015a);
        if (iVar3 != 0) {
            var_20h = *(int64_t *)(iVar3 + 8);
            var_18h = arg_88h;
            uVar2 = fmt_Errorf(in_stack_ffffffffffffff68, in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, 
                                 in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, arg_88h);
            return uVar2;
        }
        if (*(int64_t *)var_10h != 0) {
            var_38h = runtime_convT64(*(undefined8 *)var_10h);
            var_40h = 0x1042b60;
            var_28h = runtime_convTstring(*(undefined8 *)(var_10h + 0x18), *(undefined8 *)(var_10h + 0x20));
            var_30h = 0x1042920;
            uVar2 = fmt_Errorf(in_stack_ffffffffffffff68, in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, 
                                 in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, var_18h);
            return uVar2;
        }
    }
    return 0;
}

/* CAS-Backend/pkg/agvcontrol.SendResumeNavigation | VA 0xe16360 | daohang.go:430
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &response *CAS-Backend/pkg/agvcontrol.Response, headerBytes []uint8, err error, responseHeaderBytes []uint8, responseData []uint8, header CAS-Backend/pkg/agvcontrol.ProtocolHeader, responseHeader CAS-Backend/pkg/agvcontrol.ProtocolHeader */
// WARNING: Variable defined which should be unmapped: var_44h
// WARNING: [rz-ghidra] Detected overlap for variable var_43h
// WARNING: [rz-ghidra] Detected overlap for variable var_42h
// WARNING: [rz-ghidra] Detected overlap for variable var_40h
// WARNING: [rz-ghidra] Detected overlap for variable var_3ah
// WARNING: [rz-ghidra] Detected overlap for variable var_2fh
// WARNING: [rz-ghidra] Detected overlap for variable var_2eh
// WARNING: [rz-ghidra] Detected overlap for variable var_2ch
// WARNING: [rz-ghidra] Detected overlap for variable var_28h
// WARNING: [rz-ghidra] Detected overlap for variable var_4ah
// WARNING: [rz-ghidra] Detected overlap for variable var_50h
// WARNING: [rz-ghidra] Detected overlap for variable var_34h
// WARNING: [rz-ghidra] Detected overlap for variable var_46h
// WARNING: [rz-ghidra] Removing arg arg_4eh because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_36h

undefined8 __stdcall
pkg_agvcontrol_SendResumeNavigation(int64_t arg_8h, int64_t arg_10h, int64_t arg_70h, int64_t arg_90h)
{
    int64_t in_RAX;
    undefined *puVar1;
    undefined8 uVar2;
    int64_t iVar3;
    int64_t extraout_RCX;
    int64_t extraout_RCX_00;
    int64_t extraout_RCX_01;
    undefined8 unaff_RBX;
    int64_t extraout_RBX;
    int64_t extraout_RBX_00;
    int64_t extraout_RBX_01;
    uint64_t uVar4;
    uint32_t uVar5;
    int64_t unaff_R14;
    undefined8 in_XMM15_Qb;
    int64_t unaff_retaddr;
    int64_t in_stack_ffffffffffffff80;
    int64_t in_stack_ffffffffffffff88;
    int64_t in_stack_ffffffffffffff90;
    int64_t in_stack_ffffffffffffff98;
    int64_t in_stack_ffffffffffffffa0;
    int64_t var_54h;
    undefined2 var_4ah;
    undefined2 uStack_48;
    undefined2 var_46h;
    int64_t var_44h;
    int64_t var_3ch;
    uint32_t var_34h;
    int64_t var_30h;
    uint16_t var_28h;
    unkbyte6 Stack_26;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    var_44h._0_1_ = 0x5a;
    var_44h._1_1_ = 1;
    var_44h._2_2_ = 1;
    var_44h._4_4_ = 0;
    var_3ch = 0xbba;
    puVar1 = (undefined *)runtime_makeslice(in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, in_stack_ffffffffffffff90);
    *puVar1 = (undefined)var_44h;
    puVar1[1] = var_44h._1_1_;
    *(uint16_t *)(puVar1 + 2) = var_44h._2_2_ << 8 | var_44h._2_2_ >> 8;
    *(uint32_t *)(puVar1 + 4) =
         var_44h._4_4_ >> 0x18 | (var_44h._4_4_ & 0xff0000) >> 8 | (var_44h._4_4_ & 0xff00) << 8 | var_44h._4_4_ << 0x18
    ;
    *(uint16_t *)(puVar1 + 8) = (uint16_t)var_3ch << 8 | (uint16_t)var_3ch >> 8;
    if ((undefined *)((int64_t)&var_3ch + 2) != puVar1 + 10) {
        *(undefined4 *)(puVar1 + 10) = var_3ch._2_4_;
        *(undefined2 *)(puVar1 + 0xe) = var_3ch._6_2_;
    }
    (**(code **)(in_RAX + 0x50))(unaff_RBX, puVar1, 0x10, 0x10);
    if (extraout_RBX != 0) {
        var_18h = *(int64_t *)(extraout_RBX + 8);
        var_10h = extraout_RCX;
        uVar2 = fmt_Errorf(in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, 
                             in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0, unaff_retaddr);
        return uVar2;
    }
    var_20h = runtime_makeslice(in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, in_stack_ffffffffffffff90);
    (**(code **)(in_RAX + 0x28))(unaff_RBX, var_20h, 0x10, 0x10);
    if (extraout_RBX_00 != 0) {
        var_18h = *(int64_t *)(extraout_RBX_00 + 8);
        var_10h = extraout_RCX_00;
        uVar2 = fmt_Errorf(in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, 
                             in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0, unaff_retaddr);
        return uVar2;
    }
    uVar5 = *(uint32_t *)(var_20h + 4);
    uVar5 = uVar5 >> 0x18 | (uVar5 & 0xff0000) >> 8 | (uVar5 & 0xff00) << 8 | uVar5 << 0x18;
    var_30h = CONCAT44(uVar5, CONCAT22(*(uint16_t *)(var_20h + 2) << 8 | *(uint16_t *)(var_20h + 2) >> 8, 
                                       *(undefined2 *)var_20h));
    _var_28h = CONCAT62((unkint6)((uint64_t)in_XMM15_Qb >> 0x10), 
                        *(uint16_t *)(var_20h + 8) << 8 | *(uint16_t *)(var_20h + 8) >> 8);
    var_4ah = (undefined2)((uint64_t)in_XMM15_Qb >> 0x10);
    uStack_48 = (undefined2)((uint64_t)in_XMM15_Qb >> 0x20);
    var_46h = (undefined2)((uint64_t)in_XMM15_Qb >> 0x30);
    if (&var_4ah != (undefined2 *)(var_20h + 10)) {
        var_46h = *(undefined2 *)(var_20h + 0xe);
        var_4ah = (undefined2)*(undefined4 *)(var_20h + 10);
        uStack_48 = (undefined2)((uint32_t)*(undefined4 *)(var_20h + 10) >> 0x10);
    }
    var_20h = runtime_makeslice(in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, in_stack_ffffffffffffff90);
    var_34h = uVar5;
    if ((uVar5 != 0) && ((**(code **)(in_RAX + 0x28))(unaff_RBX, var_20h, uVar5), extraout_RBX_01 != 0)) {
        var_18h = *(int64_t *)(extraout_RBX_01 + 8);
        var_10h = extraout_RCX_01;
        uVar2 = fmt_Errorf(in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, 
                             in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0, unaff_retaddr);
        return uVar2;
    }
    runtime_newobject(in_stack_ffffffffffffff80);
    if (var_34h != 0) {
        uVar4 = (uint64_t)var_34h;
        iVar3 = encoding_json_Unmarshal(in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, 
                             in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0, 
                             CONCAT26(var_44h._2_2_, 
                                      CONCAT15(var_44h._1_1_, CONCAT14((undefined)var_44h, CONCAT22(var_46h, uStack_48))
                                              )));
        if (iVar3 != 0) {
            var_18h = *(int64_t *)(iVar3 + 8);
            var_10h = uVar4;
            uVar2 = fmt_Errorf(in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, 
                                 in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0, unaff_retaddr);
            return uVar2;
        }
    }
    return 0;
}

/* CAS-Backend/pkg/agvcontrol.SendCancelNavigation | VA 0xe16660 | daohang.go:495
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &response *CAS-Backend/pkg/agvcontrol.Response, headerBytes []uint8, err error, responseHeaderBytes []uint8, responseData []uint8, header CAS-Backend/pkg/agvcontrol.ProtocolHeader, responseHeader CAS-Backend/pkg/agvcontrol.ProtocolHeader */
// WARNING: Variable defined which should be unmapped: var_44h
// WARNING: [rz-ghidra] Detected overlap for variable var_43h
// WARNING: [rz-ghidra] Detected overlap for variable var_42h
// WARNING: [rz-ghidra] Detected overlap for variable var_40h
// WARNING: [rz-ghidra] Detected overlap for variable var_3ah
// WARNING: [rz-ghidra] Detected overlap for variable var_2fh
// WARNING: [rz-ghidra] Detected overlap for variable var_2eh
// WARNING: [rz-ghidra] Detected overlap for variable var_2ch
// WARNING: [rz-ghidra] Detected overlap for variable var_28h
// WARNING: [rz-ghidra] Detected overlap for variable var_4ah
// WARNING: [rz-ghidra] Detected overlap for variable var_50h
// WARNING: [rz-ghidra] Detected overlap for variable var_34h
// WARNING: [rz-ghidra] Detected overlap for variable var_46h
// WARNING: [rz-ghidra] Removing arg arg_4eh because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_36h

undefined8 __stdcall
pkg_agvcontrol_SendCancelNavigation(int64_t arg_8h, int64_t arg_10h, int64_t arg_70h, int64_t arg_90h)
{
    int64_t in_RAX;
    undefined *puVar1;
    undefined8 uVar2;
    int64_t iVar3;
    int64_t extraout_RCX;
    int64_t extraout_RCX_00;
    int64_t extraout_RCX_01;
    undefined8 unaff_RBX;
    int64_t extraout_RBX;
    int64_t extraout_RBX_00;
    int64_t extraout_RBX_01;
    uint64_t uVar4;
    uint32_t uVar5;
    int64_t unaff_R14;
    undefined8 in_XMM15_Qb;
    int64_t unaff_retaddr;
    int64_t in_stack_ffffffffffffff80;
    int64_t in_stack_ffffffffffffff88;
    int64_t in_stack_ffffffffffffff90;
    int64_t in_stack_ffffffffffffff98;
    int64_t in_stack_ffffffffffffffa0;
    int64_t var_54h;
    undefined2 var_4ah;
    undefined2 uStack_48;
    undefined2 var_46h;
    int64_t var_44h;
    int64_t var_3ch;
    uint32_t var_34h;
    int64_t var_30h;
    uint16_t var_28h;
    unkbyte6 Stack_26;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    var_44h._0_1_ = 0x5a;
    var_44h._1_1_ = 1;
    var_44h._2_2_ = 1;
    var_44h._4_4_ = 0;
    var_3ch = 0xbbb;
    puVar1 = (undefined *)runtime_makeslice(in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, in_stack_ffffffffffffff90);
    *puVar1 = (undefined)var_44h;
    puVar1[1] = var_44h._1_1_;
    *(uint16_t *)(puVar1 + 2) = var_44h._2_2_ << 8 | var_44h._2_2_ >> 8;
    *(uint32_t *)(puVar1 + 4) =
         var_44h._4_4_ >> 0x18 | (var_44h._4_4_ & 0xff0000) >> 8 | (var_44h._4_4_ & 0xff00) << 8 | var_44h._4_4_ << 0x18
    ;
    *(uint16_t *)(puVar1 + 8) = (uint16_t)var_3ch << 8 | (uint16_t)var_3ch >> 8;
    if ((undefined *)((int64_t)&var_3ch + 2) != puVar1 + 10) {
        *(undefined4 *)(puVar1 + 10) = var_3ch._2_4_;
        *(undefined2 *)(puVar1 + 0xe) = var_3ch._6_2_;
    }
    (**(code **)(in_RAX + 0x50))(unaff_RBX, puVar1, 0x10, 0x10);
    if (extraout_RBX != 0) {
        var_18h = *(int64_t *)(extraout_RBX + 8);
        var_10h = extraout_RCX;
        uVar2 = fmt_Errorf(in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, 
                             in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0, unaff_retaddr);
        return uVar2;
    }
    var_20h = runtime_makeslice(in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, in_stack_ffffffffffffff90);
    (**(code **)(in_RAX + 0x28))(unaff_RBX, var_20h, 0x10, 0x10);
    if (extraout_RBX_00 != 0) {
        var_18h = *(int64_t *)(extraout_RBX_00 + 8);
        var_10h = extraout_RCX_00;
        uVar2 = fmt_Errorf(in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, 
                             in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0, unaff_retaddr);
        return uVar2;
    }
    uVar5 = *(uint32_t *)(var_20h + 4);
    uVar5 = uVar5 >> 0x18 | (uVar5 & 0xff0000) >> 8 | (uVar5 & 0xff00) << 8 | uVar5 << 0x18;
    var_30h = CONCAT44(uVar5, CONCAT22(*(uint16_t *)(var_20h + 2) << 8 | *(uint16_t *)(var_20h + 2) >> 8, 
                                       *(undefined2 *)var_20h));
    _var_28h = CONCAT62((unkint6)((uint64_t)in_XMM15_Qb >> 0x10), 
                        *(uint16_t *)(var_20h + 8) << 8 | *(uint16_t *)(var_20h + 8) >> 8);
    var_4ah = (undefined2)((uint64_t)in_XMM15_Qb >> 0x10);
    uStack_48 = (undefined2)((uint64_t)in_XMM15_Qb >> 0x20);
    var_46h = (undefined2)((uint64_t)in_XMM15_Qb >> 0x30);
    if (&var_4ah != (undefined2 *)(var_20h + 10)) {
        var_46h = *(undefined2 *)(var_20h + 0xe);
        var_4ah = (undefined2)*(undefined4 *)(var_20h + 10);
        uStack_48 = (undefined2)((uint32_t)*(undefined4 *)(var_20h + 10) >> 0x10);
    }
    var_20h = runtime_makeslice(in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, in_stack_ffffffffffffff90);
    var_34h = uVar5;
    if ((uVar5 != 0) && ((**(code **)(in_RAX + 0x28))(unaff_RBX, var_20h, uVar5), extraout_RBX_01 != 0)) {
        var_18h = *(int64_t *)(extraout_RBX_01 + 8);
        var_10h = extraout_RCX_01;
        uVar2 = fmt_Errorf(in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, 
                             in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0, unaff_retaddr);
        return uVar2;
    }
    runtime_newobject(in_stack_ffffffffffffff80);
    if (var_34h != 0) {
        uVar4 = (uint64_t)var_34h;
        iVar3 = encoding_json_Unmarshal(in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, 
                             in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0, 
                             CONCAT26(var_44h._2_2_, 
                                      CONCAT15(var_44h._1_1_, CONCAT14((undefined)var_44h, CONCAT22(var_46h, uStack_48))
                                              )));
        if (iVar3 != 0) {
            var_18h = *(int64_t *)(iVar3 + 8);
            var_10h = uVar4;
            uVar2 = fmt_Errorf(in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, 
                                 in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0, unaff_retaddr);
            return uVar2;
        }
    }
    return 0;
}

/* CAS-Backend/pkg/agvcontrol.SendRobotConfigLockReq | VA 0xe16960 | daohang.go:578
   DWARF parameters and results: conn net.Conn, nickName string, sequence uint16, ~r0 error
   DWARF locals: &buf *bytes.Buffer, jsonData []uint8, err error, reqData CAS-Backend/pkg/agvcontrol.RobotConfigLockReq, header CAS-Backend/pkg/agvcontrol.PacketHeader */
// WARNING: [rz-ghidra] Detected overlap for variable var_94h
// WARNING: [rz-ghidra] Detected overlap for variable var_88h
// WARNING: [rz-ghidra] Detected overlap for variable var_10h

undefined8 __stdcall
pkg_agvcontrol_SendRobotConfigLockReq
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h,
          int64_t arg_c0h)
{
    int64_t *piVar1;
    uint64_t uVar2;
    code *pcVar3;
    int64_t iVar4;
    int64_t in_RAX;
    undefined8 uVar5;
    undefined8 uVar6;
    int64_t iVar7;
    undefined8 extraout_RCX;
    int64_t unaff_RBX;
    int64_t extraout_RBX;
    int64_t *piVar8;
    undefined *unaff_RBP;
    undefined *puVar9;
    uint64_t in_RSI;
    int64_t unaff_R14;
    undefined8 in_XMM15_Qa;
    undefined8 in_XMM15_Qb;
    int64_t var_c8h;
    int64_t var_c0h;
    int64_t var_b8h;
    int64_t var_b0h;
    int64_t var_a8h;
    int64_t var_98h;
    int64_t var_90h;
    int64_t var_88h;
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
        if (*(undefined **)(unaff_R14 + 0x10) < (undefined *)((int64_t)*(undefined **)0x20 + -0x50)) {
            puVar9 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            piVar8 = (int64_t *)((int64_t)*(undefined **)0x20 + -0xd0);
            *(int16_t *)((int64_t)*(undefined **)0x20 + 0x28) = (int16_t)in_RSI;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x20) = arg1;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x18) = arg4;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x28) = arg4;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x20) = arg1;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8) = 0xe169c5;
            uVar5 = runtime_convTstring(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -200), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa8));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8) = 0xe169d4;
            uVar6 = encoding_json_Marshal(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -200), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x58));
            if (arg1 != 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = *(undefined8 *)(arg1 + 8);
                *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x10) = in_RSI;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8) = 0xe16a19;
                uVar5 = fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -200), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xc0), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb8), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x50));
                return uVar5;
            }
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x70) = arg4;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = uVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8) = 0xe16a45;
            uVar5 = runtime_convT64(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = 0x1042b60;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8) = 0xe16a7f;
            fmt_Fprintln(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -200), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xc0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x98) = 0x1000015a;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x90) = 0xfa5;
            *(int32_t *)((int64_t)*(undefined **)0x20 + -0x94) =
                 (int32_t)*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8) = 0xe16aa6;
            uVar5 = runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x88) =
                 *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x98);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x80) =
                 *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x90);
            in_RSI = 0x110e7c0;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8) = 0xe16ade;
            iVar7 = encoding_binary_Write(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -200), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xc0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x68), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + 0x28));
            if (iVar7 != 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = *(undefined8 *)(iVar7 + 8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8) = 0xe16b25;
                uVar5 = fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -200), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xc0), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb8), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x50));
                return uVar5;
            }
            unaff_RBX = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x68);
            arg1 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x70);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8) = 0xe16b47;
            bytes___Buffer__Write(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -200), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xc0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb8));
            piVar1 = *(int64_t **)((int64_t)*(undefined **)0x20 + -0x60);
            arg4 = piVar1[1];
            uVar2 = piVar1[3];
            if (uVar2 <= (uint64_t)arg4) {
                pcVar3 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + 8) + 0x50);
                iVar7 = *piVar1;
                iVar4 = piVar1[2];
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8) = 0xe16b91;
                (*pcVar3)(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), 
                          iVar7 + (uVar2 & (int64_t)-(iVar4 - uVar2) >> 0x3f), arg4 - uVar2);
                if (extraout_RBX != 0) {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = in_XMM15_Qa;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = in_XMM15_Qb;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = *(undefined8 *)(extraout_RBX + 8);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = extraout_RCX;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8) = 0xe16bd7;
                    uVar5 = fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -200), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xc0), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb8), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x50));
                    return uVar5;
                }
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8) = 0xe16bfd;
                uVar5 = runtime_convT16(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0));
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) = 0x1042a20;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50) = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8) = 0xe16c26;
                uVar5 = runtime_convTstring(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -200), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa8));
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = 0x1042920;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8) = 0xe16c6a;
                fmt_Fprintf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -200), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xc0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0));
                return 0;
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8) = 0xe16c7c;
            in_RAX = runtime_panicSliceB(*(int64_t *)((int64_t)*(undefined **)0x20 + -0xd0), 
                                  *(int64_t *)((int64_t)*(undefined **)0x20 + -200));
        }
        piVar8[1] = in_RAX;
        piVar8[2] = unaff_RBX;
        piVar8[3] = arg4;
        piVar8[4] = arg1;
        *(int16_t *)(piVar8 + 5) = (int16_t)in_RSI;
        piVar8[-1] = 0xe16c9b;
        runtime_morestack_noctxt_abi0(*piVar8, piVar8[1]);
        in_RAX = piVar8[1];
        unaff_RBX = piVar8[2];
        arg4 = piVar8[3];
        arg1 = piVar8[4];
        in_RSI = (uint64_t)*(uint16_t *)(piVar8 + 5);
        *(int64_t **)0x20 = (BADSPACEBASE *)piVar8;
        unaff_RBP = puVar9;
    } while( true );
}

/* CAS-Backend/pkg/agvcontrol.AcquireRobotConfigLock | VA 0xe16cc0 | daohang.go:638
   DWARF parameters and results: conn net.Conn, nickName string, ~r0 error, ~r0 error
   DWARF locals: res *CAS-Backend/pkg/agvcontrol.Response, n int, buf []uint8, err error */
// WARNING: Variable defined which should be unmapped: var_10h
// WARNING: Variable defined which should be unmapped: var_48h
// WARNING: [rz-ghidra] Detected overlap for variable var_88h
// WARNING: [rz-ghidra] Detected overlap for variable var_94h
// WARNING: [rz-ghidra] Detected overlap for variable var_10h
// WARNING: [rz-ghidra] Detected overlap for variable var_eh

int64_t __stdcall
pkg_agvcontrol_AcquireRobotConfigLock
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_58h,
          int64_t arg_b0h)
{
    int64_t in_RAX;
    int64_t iVar1;
    undefined8 uVar2;
    undefined8 uVar3;
    uint64_t extraout_RAX;
    int64_t iVar4;
    int64_t *piVar5;
    undefined8 extraout_RCX;
    int64_t extraout_RCX_00;
    int64_t unaff_RBX;
    undefined8 extraout_RBX;
    int64_t extraout_RBX_00;
    int64_t unaff_R14;
    int64_t in_XMM15_Qa;
    int64_t unaff_retaddr;
    int64_t in_stack_ffffffffffffff38;
    int64_t in_stack_ffffffffffffff40;
    int64_t in_stack_ffffffffffffff48;
    int64_t in_stack_ffffffffffffff50;
    int64_t in_stack_ffffffffffffff58;
    int64_t in_stack_ffffffffffffff60;
    int64_t in_stack_ffffffffffffff68;
    int64_t var_89h;
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
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    if (arg1 == 0) {
        arg1 = 0xf;
        arg4 = 0x117a993;
    }
    iVar4 = in_XMM15_Qa;
    iVar1 = pkg_agvcontrol_SendRobotConfigLockReq
                      (arg1, placeholder_1, placeholder_2, arg4, placeholder_4, placeholder_5, in_stack_ffffffffffffff38
                       , in_stack_ffffffffffffff40, in_stack_ffffffffffffff48, in_stack_ffffffffffffff50, 
                       in_stack_ffffffffffffff58, in_XMM15_Qa);
    if (iVar1 != 0) {
        return iVar1;
    }
    time_Now();
    uVar3 = extraout_RCX;
    uVar2 = time_Time_Add(in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, in_stack_ffffffffffffff48, 
                         in_stack_ffffffffffffff50, in_stack_ffffffffffffff60);
    (**(code **)(in_RAX + 0x40))(unaff_RBX, uVar2, extraout_RBX, uVar3);
    var_58h = 0xe170a0;
    var_10h = (int64_t)&var_58h;
    var_48h = unaff_RBX;
    uVar3 = runtime_makeslice(in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, in_stack_ffffffffffffff48);
    (**(code **)(in_RAX + 0x28))(unaff_RBX, uVar3, 0x400);
    if (extraout_RBX_00 != 0) {
        var_20h = *(int64_t *)(extraout_RBX_00 + 8);
        var_18h = extraout_RCX_00;
        iVar4 = fmt_Errorf(in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, in_stack_ffffffffffffff48, 
                             in_stack_ffffffffffffff50, in_stack_ffffffffffffff58, var_48h);
        (**(code **)var_10h)();
        return iVar4;
    }
    if (extraout_RAX < 0x401) {
        iVar1 = 0x400;
        piVar5 = (int64_t *)
                 pkg_agvcontrol_ParseRobotConfigLockRes(in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, in_stack_ffffffffffffff48, 
                              in_stack_ffffffffffffff60, in_stack_ffffffffffffff68);
        if (extraout_RAX != 0) {
            var_20h = *(int64_t *)(extraout_RAX + 8);
            var_18h = iVar1;
            iVar4 = fmt_Errorf(in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, in_stack_ffffffffffffff48, 
                                 in_stack_ffffffffffffff50, in_stack_ffffffffffffff58, var_48h);
            (**(code **)var_10h)();
            return iVar4;
        }
        if (*piVar5 != 0) {
            var_38h = runtime_convT64(in_stack_ffffffffffffff38);
            var_40h = 0x1042b60;
            var_28h = runtime_convTstring(in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, in_stack_ffffffffffffff60);
            var_30h = 0x1042920;
            iVar4 = fmt_Errorf(in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, in_stack_ffffffffffffff48, 
                                 in_stack_ffffffffffffff50, in_stack_ffffffffffffff58, var_48h);
            (**(code **)var_10h)();
            return iVar4;
        }
        runtime_convT64(in_stack_ffffffffffffff38);
        uVar3 = *(undefined8 *)0x3512080;
        uVar2 = fmt_Fprintf(in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, in_stack_ffffffffffffff48, 
                             in_stack_ffffffffffffff50, in_stack_ffffffffffffff58, in_stack_ffffffffffffff60, 
                             in_stack_ffffffffffffff68);
        (**(code **)var_10h)(uVar2, uVar3);
        return iVar4;
    }
    runtime_panicSliceAcap(in_stack_ffffffffffffff38, in_stack_ffffffffffffff40);
    runtime_deferreturn(in_stack_ffffffffffffff38);
    return in_XMM15_Qa;
}

/* CAS-Backend/pkg/agvcontrol.AcquireRobotConfigLock.deferwrap1 | VA 0xe170a0 | daohang.go:646
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_agvcontrol_AcquireRobotConfigLock_deferwrap1
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

/* CAS-Backend/pkg/agvcontrol.AcquireRobotConfigLockVerified | VA 0xe17100 | daohang.go:665
   DWARF parameters and results: host string, nickName string, ~r0 int, ~r1 error
   DWARF locals: lock int, ok bool, owner *CAS-Backend/pkg/agvcontrol.ControlOwnerResponse, err error */
// WARNING: Variable defined which should be unmapped: var_28h

int64_t __stdcall
pkg_agvcontrol_AcquireRobotConfigLockVerified
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_40h,
          int64_t arg_60h, int64_t arg_70h)
{
    undefined8 in_RAX;
    int64_t iVar1;
    char extraout_BL;
    undefined8 unaff_RBX;
    int64_t unaff_R14;
    undefined auVar2 [16];
    int64_t in_stack_ffffffffffffff58;
    int64_t in_stack_ffffffffffffff60;
    int64_t in_stack_ffffffffffffff68;
    int64_t in_stack_ffffffffffffff70;
    int64_t in_stack_ffffffffffffff78;
    int64_t in_stack_ffffffffffffff80;
    int64_t in_stack_ffffffffffffff88;
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
    
    while (&var_28h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_20h = 0xe17420;
    var_10h = arg1;
    if (arg1 == 0) {
        var_10h = 0xf;
        arg4 = 0x117a993;
    }
    var_18h = arg4;
    auVar2 = pkg_agvcontrol_DoWithConn();
    if (auVar2._0_8_ != 0) {
        var_50h = *(int64_t *)(auVar2._0_8_ + 8);
        var_48h = auVar2._8_8_;
        fmt_Fprintf(in_stack_ffffffffffffff58, in_stack_ffffffffffffff60, in_stack_ffffffffffffff68, 
                     in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, in_stack_ffffffffffffff80, 
                     in_stack_ffffffffffffff88);
    }
    var_68h = 0;
    var_30h = 0xe173a0;
    var_28h = (int64_t)&var_68h;
    auVar2 = pkg_agvcontrol_DoWithConn(in_RAX, unaff_RBX, 0x4b04, &var_30h);
    var_38h = auVar2._8_8_;
    if (auVar2._0_8_ != 0) {
        var_40h = *(int64_t *)(auVar2._0_8_ + 8);
        fmt_Errorf(in_stack_ffffffffffffff58, in_stack_ffffffffffffff60, in_stack_ffffffffffffff68, 
                     in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, var_28h);
        return -1;
    }
    iVar1 = pkg_agvcontrol_ParseCurrentLock(*(undefined8 *)(var_68h + 0x28), *(undefined8 *)(var_68h + 0x30));
    if (extraout_BL == '\0') {
        fmt_Errorf(in_stack_ffffffffffffff58, in_stack_ffffffffffffff60, in_stack_ffffffffffffff68, 
                     in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, var_28h);
        return -1;
    }
    if (iVar1 == 2) {
        var_58h = runtime_convT64(in_stack_ffffffffffffff58);
        var_60h = 0x1042b60;
        fmt_Fprintf(in_stack_ffffffffffffff58, in_stack_ffffffffffffff60, in_stack_ffffffffffffff68, 
                     in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, in_stack_ffffffffffffff80, 
                     in_stack_ffffffffffffff88);
        return 2;
    }
    var_38h = runtime_convT64(in_stack_ffffffffffffff58);
    var_40h = 0x1042b60;
    fmt_Errorf(in_stack_ffffffffffffff58, in_stack_ffffffffffffff60, in_stack_ffffffffffffff68, 
                 in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, var_28h);
    return iVar1;
}

/* CAS-Backend/pkg/agvcontrol.AcquireRobotConfigLockVerified.func1 | VA 0xe17420 | daohang.go:669
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: nickName string */
// WARNING: [rz-ghidra] Detected overlap for variable var_88h

void __stdcall
pkg_agvcontrol_AcquireRobotConfigLockVerified_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h)
{
    int64_t in_RAX;
    int64_t extraout_RDX;
    int64_t unaff_R14;
    undefined8 in_XMM2_Qa;
    undefined8 in_XMM4_Qa;
    undefined8 in_XMM5_Qa;
    int64_t unaff_retaddr;
    int64_t in_stack_00000028;
    int64_t in_stack_00000080;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
        arg3 = extraout_RDX;
    }
    pkg_agvcontrol_AcquireRobotConfigLock
              (*(int64_t *)(arg3 + 0x10), placeholder_1, in_XMM2_Qa, *(int64_t *)(arg3 + 8), in_XMM4_Qa, in_XMM5_Qa, 
               in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, in_stack_ffffffffffffffe8, 
               in_stack_fffffffffffffff0, in_stack_00000028, in_stack_00000080);
    return;
}

/* CAS-Backend/pkg/agvcontrol.AcquireRobotConfigLockVerified.func2 | VA 0xe173a0 | daohang.go:676
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &owner **CAS-Backend/pkg/agvcontrol.ControlOwnerResponse, queryErr error */
undefined8 __stdcall
pkg_agvcontrol_AcquireRobotConfigLockVerified_func2
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h,
          int64_t arg_18h)
{
    undefined8 *puVar1;
    int64_t in_RAX;
    int64_t extraout_RDX;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    undefined auVar2 [16];
    int64_t unaff_retaddr;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
        arg3 = extraout_RDX;
    }
    puVar1 = *(undefined8 **)(arg3 + 8);
    auVar2 = pkg_agvcontrol_QueryControlOwner();
    if (*(int32_t *)0x355db50 != 0) {
        auVar2 = runtime_gcWriteBarrier2();
        *extraout_R11 = auVar2._0_8_;
        extraout_R11[1] = *puVar1;
    }
    *puVar1 = auVar2._0_8_;
    return auVar2._8_8_;
}

/* CAS-Backend/pkg/agvcontrol.ParseProtocolHeader | VA 0xe17480 | daohang.go:696
   DWARF parameters and results: data []uint8, ~r0 *CAS-Backend/pkg/agvcontrol.ProtocolHeader, ~r1 error
   DWARF locals: header *CAS-Backend/pkg/agvcontrol.ProtocolHeader */
undefined * __stdcall
pkg_agvcontrol_ParseProtocolHeader(int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_40h)
{
    undefined2 uVar1;
    uint32_t uVar2;
    undefined *in_RAX;
    undefined *puVar3;
    int64_t unaff_RBX;
    int64_t unaff_R14;
    int64_t in_stack_00000050;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    if (0xf < unaff_RBX) {
        puVar3 = (undefined *)runtime_newobject(in_stack_ffffffffffffffd0);
        *puVar3 = *in_RAX;
        puVar3[1] = in_RAX[1];
        *(uint16_t *)(puVar3 + 2) = *(uint16_t *)(in_RAX + 2) << 8 | *(uint16_t *)(in_RAX + 2) >> 8;
        uVar2 = *(uint32_t *)(in_RAX + 4);
        *(uint32_t *)(puVar3 + 4) = uVar2 >> 0x18 | (uVar2 & 0xff0000) >> 8 | (uVar2 & 0xff00) << 8 | uVar2 << 0x18;
        *(uint16_t *)(puVar3 + 8) = *(uint16_t *)(in_RAX + 8) << 8 | *(uint16_t *)(in_RAX + 8) >> 8;
        if (in_RAX + 10 != puVar3 + 10) {
            uVar1 = *(undefined2 *)(in_RAX + 0xe);
            *(undefined4 *)(puVar3 + 10) = *(undefined4 *)(in_RAX + 10);
            *(undefined2 *)(puVar3 + 0xe) = uVar1;
        }
        return puVar3;
    }
    fmt_Errorf(in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, 
                 in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0, in_stack_00000050);
    return (undefined *)0x0;
}

/* CAS-Backend/pkg/agvcontrol.ParseRobotConfigLockRes | VA 0xe17560 | daohang.go:715
   DWARF parameters and results: data []uint8, ~r0 *CAS-Backend/pkg/agvcontrol.Response, ~r1 error
   DWARF locals: &response *CAS-Backend/pkg/agvcontrol.Response, header *CAS-Backend/pkg/agvcontrol.ProtocolHeader, err error, jsonData []uint8 */
// WARNING: [rz-ghidra] Detected overlap for variable var_10h

undefined8 __stdcall
pkg_agvcontrol_ParseRobotConfigLockRes
          (int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_30h, int64_t arg_38h)
{
    uint32_t uVar1;
    int64_t in_RAX;
    int64_t iVar2;
    undefined8 uVar3;
    uint64_t extraout_RDX;
    uint64_t unaff_RBX;
    int64_t *piVar4;
    undefined *unaff_RBP;
    undefined *puVar5;
    int64_t unaff_R14;
    undefined8 in_XMM15_Qa;
    undefined8 in_XMM15_Qb;
    int64_t var_48h;
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    do {
        piVar4 = (int64_t *)*(undefined **)0x20;
        puVar5 = unaff_RBP;
        if (*(undefined **)(unaff_R14 + 0x10) < *(undefined **)0x20) {
            puVar5 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            piVar4 = (int64_t *)((int64_t)*(undefined **)0x20 + -0x50);
            *(int64_t *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x18) = arg4;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) = 0xe17585;
            iVar2 = pkg_agvcontrol_ParseProtocolHeader(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x50), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x48), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x40), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x18));
            if (unaff_RBX != 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = *(undefined8 *)(unaff_RBX + 8);
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x18) = arg4;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) = 0xe175be;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x50), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x48), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x40), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x38), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x30), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + 0x30));
                return 0;
            }
            if (*(int32_t *)(iVar2 + 4) == 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) = 0xe176ae;
                uVar3 = runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x50));
                return uVar3;
            }
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x28) = iVar2;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) = 0xe175e7;
            uVar3 = runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x50));
            uVar1 = *(uint32_t *)(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x28) + 4);
            arg4 = uVar1 + 0x10;
            unaff_RBX = *(uint64_t *)((int64_t)*(undefined **)0x20 + 0x18);
            if ((uint64_t)arg4 <= unaff_RBX) {
                if (0xf < (uint64_t)arg4) {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = uVar3;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) = 0xe17649;
                    iVar2 = encoding_json_Unmarshal(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x50), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x48), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x40), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x38), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x30), 
                                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x18));
                    if (iVar2 != 0) {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qa;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = in_XMM15_Qb;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = *(undefined8 *)(iVar2 + 8);
                        *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x18) = (uint64_t)uVar1;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) = 0xe17685;
                        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x50), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x48), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x40), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x38), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x30), 
                                     *(int64_t *)((int64_t)*(undefined **)0x20 + 0x30));
                        return 0;
                    }
                    return *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10);
                }
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) = 0xe176c5;
                runtime_panicSliceB(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x50), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x48));
                arg4 = extraout_RDX;
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) = 0xe176d0;
            in_RAX = runtime_panicSliceAcap(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x50), 
                                  *(int64_t *)((int64_t)*(undefined **)0x20 + -0x48));
        }
        piVar4[1] = in_RAX;
        piVar4[2] = unaff_RBX;
        piVar4[3] = arg4;
        piVar4[-1] = 0xe176e5;
        runtime_morestack_noctxt_abi0(*piVar4, piVar4[1]);
        in_RAX = piVar4[1];
        unaff_RBX = piVar4[2];
        arg4 = piVar4[3];
        *(int64_t **)0x20 = (BADSPACEBASE *)piVar4;
        unaff_RBP = puVar5;
    } while( true );
}

/* CAS-Backend/pkg/agvcontrol.UnlockControl | VA 0xe17700 | daohang.go:749
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &response *CAS-Backend/pkg/agvcontrol.UnlockResponse, header CAS-Backend/pkg/agvcontrol.PacketHeader, respHeader CAS-Backend/pkg/agvcontrol.PacketHeader, err error, data []uint8 */
// WARNING: Variable defined which should be unmapped: var_50h
// WARNING: Variable defined which should be unmapped: var_98h
// WARNING: [rz-ghidra] Detected overlap for variable var_9ch

undefined8 __stdcall pkg_agvcontrol_UnlockControl(int64_t arg_8h, int64_t arg_10h, int64_t arg_98h, int64_t arg_b8h)
{
    int64_t iVar1;
    int64_t in_RAX;
    undefined8 extraout_RAX;
    undefined8 uVar2;
    int64_t iVar3;
    uint64_t uVar4;
    undefined8 extraout_RCX;
    int64_t extraout_RCX_00;
    undefined8 unaff_RBX;
    undefined8 extraout_RBX;
    int64_t extraout_RBX_00;
    uint64_t uVar5;
    int64_t unaff_R14;
    int64_t in_XMM15_Qa;
    int64_t in_XMM15_Qb;
    undefined auVar6 [16];
    int64_t unaff_retaddr;
    int64_t in_stack_ffffffffffffff30;
    int64_t in_stack_ffffffffffffff38;
    int64_t in_stack_ffffffffffffff40;
    int64_t in_stack_ffffffffffffff48;
    int64_t in_stack_ffffffffffffff50;
    int64_t var_a0h;
    int64_t var_98h;
    int64_t var_90h;
    int64_t var_88h;
    int64_t var_80h;
    undefined4 uStack_78;
    undefined4 uStack_74;
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
    
    while (&var_50h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    var_90h = 0x1000015a;
    var_88h = 0xfa6;
    if (in_RAX != 0) {
        uVar4 = (uint64_t)*(uint32_t *)(in_RAX + 0x10);
        do {
            uVar5 = uVar4 & **(uint64_t **)0xfbb750;
            if ((*(uint64_t **)0xfbb750)[uVar5 * 2 + 1] == *(uint64_t *)(in_RAX + 8)) goto code_r0x00e1775c;
            uVar4 = uVar4 + 1;
        } while ((*(uint64_t **)0xfbb750)[uVar5 * 2 + 1] != 0);
        runtime_typeAssert(0xfbb750, *(uint64_t *)(in_RAX + 8));
    }
code_r0x00e1775c:
    var_80h._0_4_ = (undefined4)var_90h;
    var_80h._4_4_ = var_90h._4_4_;
    uStack_78 = (undefined4)var_88h;
    uStack_74 = var_88h._4_4_;
    auVar6 = encoding_binary_Write();
    var_18h = auVar6._8_8_;
    if (auVar6._0_8_ != 0) {
        var_20h = *(int64_t *)(auVar6._0_8_ + 8);
        uVar2 = fmt_Errorf(in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, 
                             in_stack_ffffffffffffff48, in_stack_ffffffffffffff50, var_50h);
        return uVar2;
    }
    var_50h = 0x1042920;
    var_48h = 0x2e69060 /* "释放控制权请求已发送" */;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_50h, 1, 1);
    time_Now();
    time_Time_Add();
    (**(code **)(in_RAX + 0x40))(unaff_RBX, extraout_RAX, extraout_RBX, extraout_RCX);
    uVar4 = 0;
    var_a0h = in_XMM15_Qa;
    var_98h = in_XMM15_Qb;
    if (in_RAX != 0) {
        uVar4 = (uint64_t)*(uint32_t *)(in_RAX + 0x10);
        do {
            uVar5 = uVar4 & **(uint64_t **)0xfbb770;
            if ((*(uint64_t **)0xfbb770)[uVar5 * 2 + 1] == *(uint64_t *)(in_RAX + 8)) {
                uVar4 = (*(uint64_t **)0xfbb770)[uVar5 * 2 + 2];
                goto code_r0x00e17878;
            }
            uVar4 = uVar4 + 1;
        } while ((*(uint64_t **)0xfbb770)[uVar5 * 2 + 1] != 0);
        uVar4 = runtime_typeAssert(0xfbb770);
    }
code_r0x00e17878:
    auVar6 = encoding_binary_Read(uVar4, unaff_RBX, 0x2e76f40, 0x355d2a0, 0x1026be0, &var_a0h);
    var_18h = auVar6._8_8_;
    if (auVar6._0_8_ != 0) {
        var_20h = *(int64_t *)(auVar6._0_8_ + 8);
        uVar2 = fmt_Errorf(in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, 
                             in_stack_ffffffffffffff48, in_stack_ffffffffffffff50, var_50h);
        return uVar2;
    }
    if ((int16_t)var_98h != 0x36b6) {
        var_40h = 0x1042b60;
        var_38h = 0x2e67998;
        var_28h = runtime_convT16(var_98h & 0xffff);
        var_30h = 0x1042a20;
        uVar2 = fmt_Errorf(in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, 
                             in_stack_ffffffffffffff48, in_stack_ffffffffffffff50, var_50h);
        return uVar2;
    }
    var_10h = runtime_newobject(in_stack_ffffffffffffff30);
    *(undefined8 *)(var_10h + 8) = 0;
    if (var_a0h._4_4_ == 0) {
        *(undefined8 *)var_10h = 0;
    } else {
        var_68h = runtime_makeslice(0x10429a0, var_a0h._4_4_);
        var_70h = (uint64_t)var_a0h >> 0x20;
        (**(code **)(in_RAX + 0x28))(unaff_RBX, var_68h, var_70h);
        iVar1 = var_70h;
        if (extraout_RBX_00 != 0) {
            var_20h = *(int64_t *)(extraout_RBX_00 + 8);
            var_18h = extraout_RCX_00;
            uVar2 = fmt_Errorf(in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, 
                                 in_stack_ffffffffffffff48, in_stack_ffffffffffffff50, var_50h);
            return uVar2;
        }
        iVar3 = encoding_json_Unmarshal(in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, 
                             in_stack_ffffffffffffff48, in_stack_ffffffffffffff50, var_98h);
        if (iVar3 != 0) {
            var_40h = *(int64_t *)(iVar3 + 8);
            var_38h = iVar1;
            runtime_slicebytetostring(0, var_68h, var_70h);
            var_28h = runtime_convTstring();
            var_30h = 0x1042920;
            uVar2 = fmt_Errorf(in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, 
                                 in_stack_ffffffffffffff48, in_stack_ffffffffffffff50, var_50h);
            return uVar2;
        }
    }
    if (*(int64_t *)var_10h == 0) {
        var_60h = 0x1042920;
        var_58h = 0x2e69070 /* "控制权释放成功" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_60h, 1, 1);
        return 0;
    }
    var_38h = runtime_convT64(*(undefined8 *)var_10h);
    var_40h = 0x1042b60;
    var_28h = runtime_convTstring(*(undefined8 *)(var_10h + 8), *(undefined8 *)(var_10h + 0x10));
    var_30h = 0x1042920;
    uVar2 = fmt_Errorf(in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, 
                         in_stack_ffffffffffffff48, in_stack_ffffffffffffff50, var_50h);
    return uVar2;
}

/* CAS-Backend/pkg/agvcontrol.SendRobotTaskListStatusReq | VA 0xe17c80 | daohang.go:830
   DWARF parameters and results: conn net.Conn, taskListName string, withRobotStatus bool, ~r0 *CAS-Backend/pkg/agvcontrol.RobotTaskListStatusRes, ~r1 error
   DWARF locals: reqData CAS-Backend/pkg/agvcontrol.RobotTaskListStatusReq, n int, &buf *bytes.Buffer, &response *CAS-Backend/pkg/agvcontrol.RobotTaskListStatusRes, headerBuf *bytes.Reader, jsonData []uint8, err error, responseHeaderBytes []uint8, responseData []uint8, header CAS-Backend/pkg/agvcontrol.ProtocolHeader, responseHeader CAS-Backend/pkg/agvcontrol.ProtocolHeader */
// WARNING: [rz-ghidra] Detected overlap for variable var_cch
// WARNING: [rz-ghidra] Removing arg arg_3ch because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_dch
// WARNING: [rz-ghidra] Detected overlap for variable var_88h
// WARNING: [rz-ghidra] Detected overlap for variable var_10h

int64_t __stdcall
pkg_agvcontrol_SendRobotTaskListStatusReq
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h,
          int64_t arg_88h, int64_t arg_d0h, int64_t arg_100h, int64_t arg_128h)
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
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    uint64_t uVar9;
    int64_t unaff_RBX;
    int64_t extraout_RBX;
    undefined8 extraout_RBX_00;
    int64_t *piVar10;
    undefined *unaff_RBP;
    undefined *puVar11;
    uint64_t in_RSI;
    uint64_t uVar12;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    undefined8 in_XMM15_Qa;
    undefined8 in_XMM15_Qb;
    int64_t var_108h;
    int64_t var_100h;
    int64_t var_f8h;
    int64_t var_f0h;
    int64_t var_e8h;
    int64_t var_e0h;
    int64_t var_d0h;
    int64_t var_c8h;
    int64_t var_c0h;
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
        if (*(undefined **)(unaff_R14 + 0x10) < (undefined *)((int64_t)*(undefined **)0x20 + -0x90)) {
            puVar11 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            piVar10 = (int64_t *)((int64_t)*(undefined **)0x20 + -0x110);
            *(int64_t *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x18) = arg4;
            if (in_RAX == 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe17f79;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90));
                return 0;
            }
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x38) = arg4;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x30) = arg1;
            *(char *)((int64_t)*(undefined **)0x20 + -0x28) = (char)in_RSI;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe17cfa;
            uVar5 = runtime_convT(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe17d09;
            uVar6 = encoding_json_Marshal(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x98));
            if (arg1 != 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = *(undefined8 *)(arg1 + 8);
                *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x40) = in_RSI;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe17d4e;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90));
                return 0;
            }
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x98) = arg4;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa0) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = uVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd0) = 0x1015a;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -200) = 0xc1d;
            *(int32_t *)((int64_t)*(undefined **)0x20 + -0xcc) = (int32_t)uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe17d93;
            uVar5 = runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xc0) =
                 *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd0);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = *(undefined8 *)((int64_t)*(undefined **)0x20 + -200)
            ;
            in_RSI = 0x110e8c0;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe17dce;
            iVar7 = encoding_binary_Write(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xc0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x18));
            if (iVar7 != 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = *(undefined8 *)(iVar7 + 8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe17e13;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90));
                return 0;
            }
            unaff_RBX = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x78);
            arg1 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x98);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe17e45;
            bytes___Buffer__Write(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8));
            piVar1 = *(int64_t **)((int64_t)*(undefined **)0x20 + -0x10);
            arg4 = piVar1[1];
            uVar9 = piVar1[3];
            if (uVar9 <= (uint64_t)arg4) break;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe18477;
            in_RAX = runtime_panicSliceB(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                                  *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108));
        }
        piVar10[1] = in_RAX;
        piVar10[2] = unaff_RBX;
        piVar10[3] = arg4;
        piVar10[4] = arg1;
        *(char *)(piVar10 + 5) = (char)in_RSI;
        piVar10[-1] = 0xe18496;
        runtime_morestack_noctxt_abi0(*piVar10, piVar10[1]);
        in_RAX = piVar10[1];
        unaff_RBX = piVar10[2];
        arg4 = piVar10[3];
        arg1 = piVar10[4];
        in_RSI = (uint64_t)*(uint8_t *)(piVar10 + 5);
        *(int64_t **)0x20 = (BADSPACEBASE *)piVar10;
        unaff_RBP = puVar11;
    } while( true );
    pcVar2 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + 8) + 0x50);
    iVar7 = *piVar1;
    iVar3 = piVar1[2];
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe17e93;
    (*pcVar2)(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), iVar7 + (uVar9 & (int64_t)-(iVar3 - uVar9) >> 0x3f)
              , arg4 - uVar9);
    if (extraout_RBX != 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Qb;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = *(undefined8 *)(extraout_RBX + 8);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = extraout_RCX;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe17f4f;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90));
        return 0;
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe17e9d;
    time_Now();
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe17eac;
    uVar5 = extraout_RCX_00;
    uVar6 = time_Time_Add(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8));
    pcVar2 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + 8) + 0x40);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe17ecb;
    (*pcVar2)(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), uVar6, extraout_RBX_00, uVar5);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe17edf;
    uVar5 = runtime_makeslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100));
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar5;
    iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
    if (iVar7 != 0) {
        uVar9 = (uint64_t)*(uint32_t *)(iVar7 + 0x10);
        do {
            uVar12 = uVar9 & **(uint64_t **)0xfbb790;
            if ((*(uint64_t **)0xfbb790)[uVar12 * 2 + 1] == *(uint64_t *)(iVar7 + 8)) goto code_r0x00e17f8a;
            uVar9 = uVar9 + 1;
        } while ((*(uint64_t **)0xfbb790)[uVar12 * 2 + 1] != 0);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe18451;
        runtime_typeAssert(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8));
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
    }
code_r0x00e17f8a:
    iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe17fab;
    uVar6 = io_ReadAtLeast(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0));
    if (iVar7 != 0) {
        iVar3 = iVar7;
        if (*(int64_t *)0xfb6dc0 == iVar7) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa8) = uVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = uVar5;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90) = iVar7;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe17fec;
            cVar4 = runtime_ifaceeq(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100));
            if (cVar4 != '\0') {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe180a6;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90));
                return 0;
            }
            uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70);
            iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90);
            iVar3 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90);
        }
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) = in_XMM15_Qb;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50) = in_XMM15_Qb;
        if (iVar3 != 0) {
            iVar7 = *(int64_t *)(iVar7 + 8);
        }
        *(int64_t *)((int64_t)*(undefined **)0x20 + -0x68) = iVar7;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) = uVar5;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe18045;
        uVar5 = runtime_convT64(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110));
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) = 0x1042b60;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50) = uVar5;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe1807d;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90));
        return 0;
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe0) = in_XMM15_Qa;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8) = in_XMM15_Qb;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe180ca;
    puVar8 = (undefined8 *)runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110));
    puVar8[1] = 0x10;
    puVar8[2] = 0x10;
    if (*(int32_t *)0x355db50 == 0) {
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
    } else {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe180f2;
        puVar8 = (undefined8 *)runtime_gcWriteBarrier1();
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
        *extraout_R11 = uVar5;
    }
    *puVar8 = uVar5;
    puVar8[3] = 0;
    puVar8[4] = 0xffffffffffffffff;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe18139;
    iVar7 = encoding_binary_Read(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x78), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x30));
    if (iVar7 != 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Qb;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = *(undefined8 *)(iVar7 + 8);
        *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x40) = puVar8;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe181d7;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90));
        return 0;
    }
    if (*(int32_t *)((int64_t)*(undefined **)0x20 + -0xdc) == 0) {
        uVar5 = 0;
        uVar6 = 0;
    } else {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe18154;
        uVar5 = runtime_makeslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100));
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar5;
        *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x88) =
             (uint64_t)*(uint32_t *)((int64_t)*(undefined **)0x20 + -0xdc);
        iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
        if (iVar7 != 0) {
            uVar9 = (uint64_t)*(uint32_t *)(iVar7 + 0x10);
            do {
                uVar12 = uVar9 & **(uint64_t **)0xfbb7b0;
                if ((*(uint64_t **)0xfbb7b0)[uVar12 * 2 + 1] == *(uint64_t *)(iVar7 + 8)) goto code_r0x00e1832d;
                uVar9 = uVar9 + 1;
            } while ((*(uint64_t **)0xfbb7b0)[uVar12 * 2 + 1] != 0);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe183ff;
            runtime_typeAssert(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8));
            uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
        }
code_r0x00e1832d:
        iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe18346;
        io_ReadAtLeast(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0));
        if (iVar7 != 0) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = *(undefined8 *)(iVar7 + 8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe18378;
            uVar5 = runtime_convT64(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) = 0x1042b60;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe183b0;
            fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90));
            return 0;
        }
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x88);
        uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb0) = uVar5;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x80) = uVar6;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe18205;
    uVar5 = runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110));
    if (*(int32_t *)((int64_t)*(undefined **)0x20 + -0xdc) == 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe1831c;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90));
        return 0;
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = uVar5;
    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb0);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe18237;
    iVar7 = encoding_json_Unmarshal(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8));
    if (iVar7 == 0) {
        if (*(int64_t *)(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x18) + 0x10) == 0) {
            return *(int64_t *)((int64_t)*(undefined **)0x20 + -0x18);
        }
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Qb;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe182ae;
        uVar5 = runtime_convT64(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110));
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = 0x1042b60;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = uVar5;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe182e6;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90));
        return 0;
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = in_XMM15_Qa;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Qb;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = *(undefined8 *)(iVar7 + 8);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = uVar5;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = 0xe1827c;
    fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8)
                 , *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90));
    return 0;
}

/* CAS-Backend/pkg/agvcontrol.SendRobotTaskStatusReq | VA 0xe184c0 | daohang.go:955
   DWARF parameters and results: conn net.Conn, taskIds []string, ~r0 *CAS-Backend/pkg/agvcontrol.RobotTaskStatusRes, ~r1 error
   DWARF locals: headerBuf *bytes.Reader, &response *CAS-Backend/pkg/agvcontrol.RobotTaskStatusRes, &buf *bytes.Buffer, n int, jsonData []uint8, err error, responseHeaderBytes []uint8, responseData []uint8, reqData CAS-Backend/pkg/agvcontrol.RobotTaskStatusReq, header CAS-Backend/pkg/agvcontrol.ProtocolHeader, responseHeader CAS-Backend/pkg/agvcontrol.ProtocolHeader, errText string */
// WARNING: [rz-ghidra] Detected overlap for variable var_dch
// WARNING: [rz-ghidra] Removing arg arg_3ch because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_ech
// WARNING: [rz-ghidra] Detected overlap for variable var_88h
// WARNING: [rz-ghidra] Detected overlap for variable var_10h

int64_t * __stdcall
pkg_agvcontrol_SendRobotTaskStatusReq
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h,
          int64_t arg_90h, int64_t arg_f8h, int64_t arg_110h, int64_t arg_138h)
{
    int64_t *piVar1;
    code *pcVar2;
    char cVar3;
    int64_t in_RAX;
    undefined8 uVar4;
    undefined8 uVar5;
    int64_t iVar6;
    undefined8 *puVar7;
    int64_t *piVar8;
    int64_t iVar9;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    uint64_t uVar10;
    int64_t unaff_RBX;
    int64_t extraout_RBX;
    undefined8 extraout_RBX_00;
    undefined *unaff_RBP;
    undefined *puVar11;
    uint64_t uVar12;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    bool bVar13;
    undefined8 in_XMM15_Qa;
    undefined8 in_XMM15_Qb;
    int64_t var_118h;
    int64_t var_110h;
    int64_t var_108h;
    int64_t var_100h;
    int64_t var_f8h;
    int64_t var_f0h;
    int64_t var_e0h;
    int64_t var_d8h;
    int64_t var_d0h;
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
        piVar8 = (int64_t *)*(undefined **)0x20;
        puVar11 = unaff_RBP;
        if (*(undefined **)(unaff_R14 + 0x10) < (undefined *)((int64_t)*(undefined **)0x20 + -0xa0)) {
            puVar11 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            piVar8 = (int64_t *)((int64_t)*(undefined **)0x20 + -0x120);
            *(int64_t *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x18) = arg4;
            if (in_RAX == 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe187d9;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0));
                return (int64_t *)0x0;
            }
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            bVar13 = arg1 != 0;
            iVar6 = 0;
            if (bVar13) {
                iVar6 = arg1;
            }
            iVar9 = 0;
            if (bVar13) {
                iVar9 = arg2;
            }
            uVar10 = 0;
            if (bVar13) {
                uVar10 = arg4;
            }
            *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x68) = uVar10;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x60) = iVar6;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x58) = iVar9;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe18554;
            uVar4 = runtime_convTslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe18565;
            uVar5 = encoding_json_Marshal(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa8));
            if (arg1 != 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = *(undefined8 *)(arg1 + 8);
                *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x28) = uVar10;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe185aa;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0));
                return (int64_t *)0x0;
            }
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa8) = iVar9;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb0) = uVar4;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x80) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe0) = 0x1015a;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8) = 0x456;
            *(int32_t *)((int64_t)*(undefined **)0x20 + -0xdc) = (int32_t)uVar4;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe185ef;
            uVar4 = runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = uVar4;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd0) =
                 *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe0);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -200) = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8)
            ;
            arg2 = 0x110e8c0;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1862a;
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
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = uVar4;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1866f;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0));
                return (int64_t *)0x0;
            }
            unaff_RBX = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80);
            arg1 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe186a5;
            bytes___Buffer__Write(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108));
            piVar1 = *(int64_t **)((int64_t)*(undefined **)0x20 + -0x10);
            arg4 = piVar1[1];
            uVar10 = piVar1[3];
            if (uVar10 <= (uint64_t)arg4) break;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe18d0a;
            in_RAX = runtime_panicSliceB(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                                  *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118));
        }
        piVar8[1] = in_RAX;
        piVar8[2] = unaff_RBX;
        piVar8[3] = arg4;
        piVar8[4] = arg1;
        piVar8[5] = arg2;
        piVar8[-1] = 0xe18d29;
        runtime_morestack_noctxt_abi0(*piVar8, piVar8[1]);
        in_RAX = piVar8[1];
        unaff_RBX = piVar8[2];
        arg4 = piVar8[3];
        arg1 = piVar8[4];
        arg2 = piVar8[5];
        *(int64_t **)0x20 = (BADSPACEBASE *)piVar8;
        unaff_RBP = puVar11;
    } while( true );
    pcVar2 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + 8) + 0x50);
    iVar6 = *piVar1;
    iVar9 = piVar1[2];
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe186f3;
    (*pcVar2)(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), 
              iVar6 + (uVar10 & (int64_t)-(iVar9 - uVar10) >> 0x3f), arg4 - uVar10);
    if (extraout_RBX != 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = *(undefined8 *)(extraout_RBX + 8);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = extraout_RCX;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe187af;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0));
        return (int64_t *)0x0;
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe186fd;
    time_Now();
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1870c;
    uVar4 = extraout_RCX_00;
    uVar5 = time_Time_Add(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8));
    pcVar2 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + 8) + 0x40);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1872b;
    (*pcVar2)(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), uVar5, extraout_RBX_00, uVar4);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1873f;
    uVar4 = runtime_makeslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110));
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar4;
    iVar6 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
    if (iVar6 != 0) {
        uVar10 = (uint64_t)*(uint32_t *)(iVar6 + 0x10);
        do {
            uVar12 = uVar10 & **(uint64_t **)0xfbb7d0;
            if ((*(uint64_t **)0xfbb7d0)[uVar12 * 2 + 1] == *(uint64_t *)(iVar6 + 8)) goto code_r0x00e187ea;
            uVar10 = uVar10 + 1;
        } while ((*(uint64_t **)0xfbb7d0)[uVar12 * 2 + 1] != 0);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe18ce5;
        runtime_typeAssert(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8));
        uVar4 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
    }
code_r0x00e187ea:
    iVar6 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1880b;
    uVar5 = io_ReadAtLeast(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0));
    if (iVar6 != 0) {
        iVar9 = iVar6;
        if (*(int64_t *)0xfb6dc0 == iVar6) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = uVar4;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x98) = iVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1884c;
            cVar3 = runtime_ifaceeq(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110));
            if (cVar3 != '\0') {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe18906;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0));
                return (int64_t *)0x0;
            }
            uVar4 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70);
            iVar6 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x98);
            iVar9 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x98);
        }
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = in_XMM15_Qb;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = in_XMM15_Qb;
        if (iVar9 != 0) {
            iVar6 = *(int64_t *)(iVar6 + 8);
        }
        *(int64_t *)((int64_t)*(undefined **)0x20 + -0x50) = iVar6;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = uVar4;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe188a5;
        uVar4 = runtime_convT64(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120));
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = 0x1042b60;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = uVar4;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe188dd;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0));
        return (int64_t *)0x0;
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = in_XMM15_Qa;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe8) = in_XMM15_Qb;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe1892a;
    puVar7 = (undefined8 *)runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120));
    puVar7[1] = 0x10;
    puVar7[2] = 0x10;
    if (*(int32_t *)0x355db50 == 0) {
        uVar4 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
    } else {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe18952;
        puVar7 = (undefined8 *)runtime_gcWriteBarrier1();
        uVar4 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
        *extraout_R11 = uVar4;
    }
    *puVar7 = uVar4;
    puVar7[3] = 0;
    puVar7[4] = 0xffffffffffffffff;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe18999;
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
        *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x28) = puVar7;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe18a37;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0));
        return (int64_t *)0x0;
    }
    if (*(int32_t *)((int64_t)*(undefined **)0x20 + -0xec) == 0) {
        uVar4 = 0;
        uVar5 = 0;
    } else {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe189b4;
        uVar4 = runtime_makeslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110));
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar4;
        *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x90) =
             (uint64_t)*(uint32_t *)((int64_t)*(undefined **)0x20 + -0xec);
        iVar6 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
        if (iVar6 != 0) {
            uVar10 = (uint64_t)*(uint32_t *)(iVar6 + 0x10);
            do {
                uVar12 = uVar10 & **(uint64_t **)0xfbb7f0;
                if ((*(uint64_t **)0xfbb7f0)[uVar12 * 2 + 1] == *(uint64_t *)(iVar6 + 8)) goto code_r0x00e18bc3;
                uVar10 = uVar10 + 1;
            } while ((*(uint64_t **)0xfbb7f0)[uVar12 * 2 + 1] != 0);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe18c9a;
            runtime_typeAssert(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8));
            uVar4 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
        }
code_r0x00e18bc3:
        iVar6 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe18bdc;
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
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = uVar4;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe18c12;
            uVar4 = runtime_convT64(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = 0x1042b60;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = uVar4;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe18c4a;
            fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0));
            return (int64_t *)0x0;
        }
        uVar4 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x90);
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x88) = uVar5;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xc0) = uVar4;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe18a65;
    piVar8 = (int64_t *)runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120));
    if (*(int32_t *)((int64_t)*(undefined **)0x20 + -0xec) != 0) {
        *(int64_t **)((int64_t)*(undefined **)0x20 + -0x18) = piVar8;
        uVar4 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xc0);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe18a97;
        iVar6 = encoding_json_Unmarshal(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8));
        if (iVar6 != 0) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = *(undefined8 *)(iVar6 + 8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = uVar4;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe18adc;
            fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0));
            return (int64_t *)0x0;
        }
        piVar8 = *(int64_t **)((int64_t)*(undefined **)0x20 + -0x18);
        if (*piVar8 != 0) {
            iVar6 = piVar8[4];
            iVar9 = piVar8[3];
            if (iVar6 == 0) {
                iVar9 = piVar8[5];
                iVar6 = piVar8[6];
            }
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0) = iVar6;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x78) = iVar9;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe18b3e;
            uVar4 = runtime_convT64(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50) = 0x1042b60;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = uVar4;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe18b6a;
            uVar4 = runtime_convTstring(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = 0x1042920;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = uVar4;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = 0xe18ba5;
            fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x120), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xa0));
            return (int64_t *)0x0;
        }
    }
    return piVar8;
}

/* CAS-Backend/pkg/agvcontrol.SendForkliftSpecifiedPathNavigation | VA 0xe18d60 | daohang.go:1083
   DWARF parameters and results: conn net.Conn, tasks []CAS-Backend/pkg/agvcontrol.ForkliftTask, ~r0 bool, ~r0 bool, ~r1 error, ~r1 error
   DWARF locals: responseBuf *bytes.Reader, &buf *bytes.Buffer, jsonData []uint8, err error, fullMessage []uint8, responseHeader []uint8, responseData []uint8, requestData CAS-Backend/pkg/agvcontrol.ForkliftSpecifiedPathRequest, ~r0.len int, header CAS-Backend/pkg/agvcontrol.ProtocolHeader, respHeader CAS-Backend/pkg/agvcontrol.ProtocolHeader, &response *CAS-Backend/pkg/agvcontrol.Response */
// WARNING: Variable defined which should be unmapped: var_c0h
// WARNING: Variable defined which should be unmapped: var_c8h
// WARNING: Variable defined which should be unmapped: var_f4h
// WARNING: Variable defined which should be unmapped: var_dch
// WARNING: Variable defined which should be unmapped: var_48h
// WARNING: Variable defined which should be unmapped: var_b0h
// WARNING: Variable defined which should be unmapped: var_a8h
// WARNING: Variable defined which should be unmapped: var_60h
// WARNING: Variable defined which should be unmapped: var_10dh
// WARNING: [rz-ghidra] Detected overlap for variable var_10eh
// WARNING: [rz-ghidra] Detected overlap for variable var_f8h
// WARNING: [rz-ghidra] Detected overlap for variable var_10ch
// WARNING: [rz-ghidra] Detected overlap for variable var_108h
// WARNING: [rz-ghidra] Detected overlap for variable var_d8h
// WARNING: [rz-ghidra] Detected overlap for variable var_88h
// WARNING: [rz-ghidra] Detected overlap for variable var_10h
// WARNING: [rz-ghidra] Detected overlap for variable var_eh

undefined __stdcall
pkg_agvcontrol_SendForkliftSpecifiedPathNavigation
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h,
          int64_t arg_70h, int64_t arg_110h, int64_t arg_120h, int64_t arg_150h)
{
    uint64_t uVar1;
    int64_t in_RAX;
    int64_t iVar2;
    int64_t iVar3;
    int64_t iVar4;
    undefined8 uVar5;
    int64_t *piVar6;
    int64_t extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 uVar7;
    int64_t extraout_RCX_01;
    uint64_t uVar8;
    int64_t extraout_RCX_02;
    uint64_t uVar9;
    undefined8 unaff_RBX;
    int64_t extraout_RBX;
    undefined8 extraout_RBX_00;
    int64_t extraout_RBX_01;
    int64_t extraout_RBX_02;
    int64_t *extraout_R11;
    int64_t unaff_R14;
    undefined8 in_XMM15_Qa;
    uint32_t uVar10;
    undefined4 uVar11;
    int64_t in_XMM15_Qb;
    int64_t unaff_retaddr;
    int64_t in_stack_fffffffffffffec0;
    int64_t in_stack_fffffffffffffec8;
    int64_t in_stack_fffffffffffffed0;
    int64_t in_stack_fffffffffffffed8;
    int64_t in_stack_fffffffffffffee0;
    int64_t in_stack_fffffffffffffee8;
    int64_t var_10dh;
    int64_t var_fch;
    int64_t var_f4h;
    int64_t var_ech;
    int64_t var_dch;
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
    
    while (uVar10 = (uint32_t)((uint64_t)in_XMM15_Qa >> 0x20), &var_c0h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    if (arg1 == 0) {
        fmt_Errorf(in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, in_stack_fffffffffffffed0, 
                     in_stack_fffffffffffffed8, in_stack_fffffffffffffee0, var_c0h);
        return 0;
    }
    var_b0h = in_XMM15_Qb;
    var_70h = arg4;
    var_68h = arg1;
    var_60h = arg2;
    iVar2 = runtime_convTslice(in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, in_stack_fffffffffffffed0);
    uVar11 = (undefined4)in_XMM15_Qb;
    var_a8h = encoding_json_Marshal(in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, var_c8h);
    if (arg1 != 0) {
        var_38h = *(int64_t *)(arg1 + 8);
        var_30h = arg2;
        fmt_Errorf(in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, in_stack_fffffffffffffed0, 
                     in_stack_fffffffffffffed8, in_stack_fffffffffffffee0, var_c0h);
        return 0;
    }
    iVar3 = runtime_newobject(in_stack_fffffffffffffec0);
    var_18h = iVar3;
    iVar4 = encoding_binary_Write(in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, in_stack_fffffffffffffed0, 
                         in_stack_fffffffffffffed8, in_stack_fffffffffffffee0, in_stack_fffffffffffffee8, 
                         0x1015a00000000, stack0xffffffffffffff28, var_48h);
    if (iVar4 != 0) {
        var_38h = *(int64_t *)(iVar4 + 8);
        var_30h = iVar3;
        fmt_Errorf(in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, in_stack_fffffffffffffed0, 
                     in_stack_fffffffffffffed8, in_stack_fffffffffffffee0, var_c0h);
        return 0;
    }
    uVar8 = *(uint64_t *)(var_18h + 0x18);
    if (*(uint64_t *)(var_18h + 8) < uVar8) {
        runtime_panicSliceB(in_stack_fffffffffffffec0, in_stack_fffffffffffffec8);
        runtime_deferreturn(in_stack_fffffffffffffec0);
        return 0;
    }
    uVar9 = *(int64_t *)(var_18h + 0x10) - uVar8;
    iVar3 = *(uint64_t *)(var_18h + 8) - uVar8;
    uVar1 = iVar3 + iVar2;
    var_a0h = (uVar8 & (int64_t)-uVar9 >> 0x3f) + *(int64_t *)var_18h;
    if (uVar9 < uVar1) {
        var_a0h = runtime_growslice(in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, in_stack_fffffffffffffed0, 
                               in_stack_fffffffffffffed8, in_stack_fffffffffffffee0, var_b0h);
    }
    var_c0h = uVar9;
    runtime_memmove(var_a0h + iVar3, var_a8h, iVar2);
    (**(code **)(in_RAX + 0x50))(unaff_RBX, var_a0h, uVar1, var_c0h);
    if (extraout_RBX != 0) {
        var_38h = *(int64_t *)(extraout_RBX + 8);
        var_30h = extraout_RCX;
        fmt_Errorf(in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, in_stack_fffffffffffffed0, 
                     in_stack_fffffffffffffed8, in_stack_fffffffffffffee0, var_c0h);
        return 0;
    }
    time_Now();
    uVar7 = extraout_RCX_00;
    uVar5 = time_Time_Add(in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, in_stack_fffffffffffffed0, 
                         in_stack_fffffffffffffed8, in_stack_fffffffffffffee8);
    (**(code **)(in_RAX + 0x40))(unaff_RBX, uVar5, extraout_RBX_00, uVar7);
    var_88h = 0xe196a0;
    var_10h = (int64_t)&var_88h;
    var_28h = runtime_makeslice(in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, in_stack_fffffffffffffed0);
    (**(code **)(in_RAX + 0x28))(unaff_RBX, var_28h, 0x10);
    if (extraout_RBX_01 != 0) {
        var_38h = *(int64_t *)(extraout_RBX_01 + 8);
        var_30h = extraout_RCX_01;
        var_b8h = fmt_Errorf(in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, in_stack_fffffffffffffed0, 
                               in_stack_fffffffffffffed8, in_stack_fffffffffffffee0, var_c0h);
        var_b0h = 0x1c;
        (**(code **)var_10h)();
        return 0;
    }
    piVar6 = (int64_t *)runtime_newobject(in_stack_fffffffffffffec0);
    piVar6[1] = 0x10;
    piVar6[2] = 0x10;
    if (*(int32_t *)0x355db50 != 0) {
        piVar6 = (int64_t *)runtime_gcWriteBarrier1();
        *extraout_R11 = var_28h;
    }
    *piVar6 = var_28h;
    piVar6[3] = 0;
    piVar6[4] = -1;
    iVar2 = encoding_binary_Read(in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, in_stack_fffffffffffffed0, 
                         in_stack_fffffffffffffed8, in_stack_fffffffffffffee0, in_stack_fffffffffffffee8, var_c0h, 
                         var_a8h, var_60h);
    if (iVar2 == 0) {
        uVar8 = (uint64_t)uVar10;
        iVar2 = runtime_makeslice(in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, in_stack_fffffffffffffed0);
        if (uVar10 != 0) {
            var_28h = iVar2;
            (**(code **)(in_RAX + 0x28))(unaff_RBX, iVar2, uVar10);
            if (extraout_RBX_02 != 0) {
                var_38h = *(int64_t *)(extraout_RBX_02 + 8);
                var_30h = extraout_RCX_02;
                var_b8h = fmt_Errorf(in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, in_stack_fffffffffffffed0, 
                                       in_stack_fffffffffffffed8, in_stack_fffffffffffffee0, var_c0h);
                var_b0h = 0x1c;
                (**(code **)var_10h)();
                return 0;
            }
            var_20h = runtime_newobject(in_stack_fffffffffffffec0);
            uVar8 = 0;
            if (uVar10 != 0) {
                iVar2 = encoding_json_Unmarshal(in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, in_stack_fffffffffffffed0, 
                                     in_stack_fffffffffffffed8, in_stack_fffffffffffffee0, CONCAT44(uVar11, uVar10));
                if (iVar2 != 0) {
                    var_38h = *(int64_t *)(iVar2 + 8);
                    var_30h = (uint64_t)uVar10;
                    var_b8h = fmt_Errorf(in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, 
                                           in_stack_fffffffffffffed0, in_stack_fffffffffffffed8, 
                                           in_stack_fffffffffffffee0, var_c0h);
                    var_b0h = 0x1a;
                    (**(code **)var_10h)();
                    return 0;
                }
                var_90h = runtime_convT(in_stack_fffffffffffffec0, in_stack_fffffffffffffec8);
                uVar8 = *(uint64_t *)0x3512080;
                var_98h = 0x10d5f00;
                fmt_Fprintln(in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, in_stack_fffffffffffffed0, 
                             in_stack_fffffffffffffed8, in_stack_fffffffffffffee0);
            }
            if (*(int64_t *)var_20h != 0) {
                var_50h = runtime_convT64(in_stack_fffffffffffffec0);
                var_58h = 0x1042b60;
                var_40h = runtime_convTstring(in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, in_stack_fffffffffffffee8);
                var_48h = 0x1042920;
                var_b8h = fmt_Errorf(in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, in_stack_fffffffffffffed0, 
                                       in_stack_fffffffffffffed8, in_stack_fffffffffffffee0, var_c0h);
                var_b0h = 0x37;
                (**(code **)var_10h)();
                return 0;
            }
        }
        (**(code **)var_10h)(*(code **)var_10h, uVar8);
        return 1;
    }
    var_38h = *(int64_t *)(iVar2 + 8);
    var_30h = (int64_t)piVar6;
    var_b8h = fmt_Errorf(in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, in_stack_fffffffffffffed0, 
                           in_stack_fffffffffffffed8, in_stack_fffffffffffffee0, var_c0h);
    var_b0h = 0x1c;
    (**(code **)var_10h)();
    return 0;
}

/* CAS-Backend/pkg/agvcontrol.SendForkliftSpecifiedPathNavigation.deferwrap1 | VA 0xe196a0 | daohang.go:1153
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_agvcontrol_SendForkliftSpecifiedPathNavigation_deferwrap1
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

/* CAS-Backend/pkg/agvcontrol.validateForkliftOperation | VA 0xe19700 | daohang.go:1198
   DWARF parameters and results: task CAS-Backend/pkg/agvcontrol.ForkliftTask, ~r0 error
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

undefined8 __stdcall
pkg_agvcontrol_validateForkliftOperation
          (int64_t arg_a0h, int64_t arg_a8h, int64_t arg_b0h, int64_t arg_b8h, int64_t arg_c0h, int64_t arg_c8h,
          int64_t arg_100h)
{
    undefined8 uVar1;
    int64_t unaff_R14;
    int64_t in_XMM15_Qa;
    int64_t in_stack_00000040;
    int64_t in_stack_ffffffffffffffc0;
    int64_t in_stack_ffffffffffffffc8;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    if (arg_a8h < 9) {
        if (arg_a8h != 0) {
            if ((arg_a8h != 8) || (*(int64_t *)arg_a0h != 0x64616f4c6b726f46)) goto code_r0x00e198bf;
            if (((double)arg_b0h < 0.0) || ((double)arg_b8h < 0.0)) {
                uVar1 = fmt_Errorf(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, 
                                     in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, in_stack_00000040);
                return uVar1;
            }
        }
    } else if (arg_a8h == 10) {
        if ((*(int64_t *)arg_a0h == 0x676965486b726f46) && (*(int16_t *)(arg_a0h + 8) == 0x7468)) {
            if (((double)arg_c0h < 0.0) && ((double)arg_b8h < 0.0)) {
                uVar1 = fmt_Errorf(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, 
                                     in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, in_stack_00000040);
                return uVar1;
            }
        } else {
            if ((*(int64_t *)arg_a0h != 0x6f6c6e556b726f46) || (*(int16_t *)(arg_a0h + 8) != 0x6461))
            goto code_r0x00e198bf;
            if (((double)arg_b0h < 0.0) || ((double)arg_b8h < 0.0)) {
                uVar1 = fmt_Errorf(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, 
                                     in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, in_stack_00000040);
                return uVar1;
            }
        }
    } else {
        if ((((arg_a8h != 0xb) || (*(int64_t *)arg_a0h != 0x77726f466b726f46)) || (*(int16_t *)(arg_a0h + 8) != 0x7261))
           || (*(char *)(arg_a0h + 10) != 'd')) {
code_r0x00e198bf:
            runtime_convTstring(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_XMM15_Qa);
            uVar1 = fmt_Errorf(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, 
                                 in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, in_stack_00000040);
            return uVar1;
        }
        if ((double)arg_c8h <= 0.0) {
            uVar1 = fmt_Errorf(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, 
                                 in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, in_stack_00000040);
            return uVar1;
        }
    }
    return 0;
}
