/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/pkg/agvcontrol.SendSltMapRequest | VA 0xe1e800 | map.go:29
   DWARF parameters and results: conn net.Conn, ~r0 *CAS-Backend/pkg/agvcontrol.MapResponse, ~r1 error
   DWARF locals: &buf *bytes.Buffer, n int, headerBuf *bytes.Reader, &response *CAS-Backend/pkg/agvcontrol.MapResponse, jsonData []uint8, err error, responseHeaderBytes []uint8, responseData []uint8, header CAS-Backend/pkg/agvcontrol.ProtocolHeader, responseHeader CAS-Backend/pkg/agvcontrol.ProtocolHeader */
// WARNING: [rz-ghidra] Detected overlap for variable var_ach
// WARNING: [rz-ghidra] Removing arg arg_44h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_bch
// WARNING: [rz-ghidra] Detected overlap for variable var_10h

int64_t __stdcall
pkg_agvcontrol_SendSltMapRequest(int64_t arg_8h, int64_t arg_10h, int64_t arg_80h, int64_t arg_d0h, int64_t arg_e8h)
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
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xa8) = 0x514;
            *(undefined4 *)((int64_t)*(int64_t **)0x20 + -0xac) = 0;
            *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1e850;
            iVar5 = runtime_newobject(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8));
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x10) = iVar5;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xa0) = *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xb0);
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x98) = *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xa8);
            *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1e88b;
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
                *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1e8d0;
                fmt_Errorf(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x78));
                return 0;
            }
            unaff_RBX = (int64_t *)((int64_t)*(int64_t **)0x20 + -0xc0);
            *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1e8f8;
            bytes___Buffer__Write(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0));
            piVar1 = *(int64_t **)((int64_t)*(int64_t **)0x20 + -0x10);
            uVar11 = piVar1[1];
            uVar13 = piVar1[3];
            if (uVar13 <= uVar11) break;
            *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1eed7;
            in_RAX = runtime_panicSliceB(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                                  *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0));
        }
        *(int64_t *)((int64_t)piVar9 + 8) = in_RAX;
        *(int64_t **)((int64_t)piVar9 + 0x10) = unaff_RBX;
        *(undefined8 *)((int64_t)piVar9 + -8) = 0xe1eee7;
        runtime_morestack_noctxt_abi0();
        in_RAX = *(int64_t *)((int64_t)piVar9 + 8);
        unaff_RBX = *(int64_t **)((int64_t)piVar9 + 0x10);
        *(undefined **)0x20 = (BADSPACEBASE *)piVar9;
        unaff_RBP = (undefined *)piVar12;
    } while( true );
    pcVar2 = *(code **)(*(int64_t *)((int64_t)*(int64_t **)0x20 + 8) + 0x50);
    iVar5 = *piVar1;
    iVar6 = piVar1[2];
    *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1e946;
    (*pcVar2)(*(int64_t *)((int64_t)*(int64_t **)0x20 + 0x10), iVar5 + (uVar13 & (int64_t)-(iVar6 - uVar13) >> 0x3f), 
              uVar11 - uVar13);
    if (extraout_RBX != 0) {
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x30) = in_XMM15_Qa;
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x28) = in_XMM15_Qb;
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x30) = *(int64_t *)(extraout_RBX + 8);
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x28) = extraout_RCX;
        *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1e9fe;
        fmt_Errorf(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0)
                     , *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8)
                     , *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x78));
        return 0;
    }
    *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1e950;
    time_Now();
    *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1e95f;
    uVar10 = extraout_RCX_00;
    uVar7 = time_Time_Add(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd0));
    pcVar2 = *(code **)(*(int64_t *)((int64_t)*(int64_t **)0x20 + 8) + 0x40);
    *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1e97e;
    (*pcVar2)(*(int64_t *)((int64_t)*(int64_t **)0x20 + 0x10), uVar7, extraout_RBX_00, uVar10);
    *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1e992;
    iVar6 = runtime_makeslice(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8));
    *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x20) = iVar6;
    iVar5 = *(int64_t *)((int64_t)*(int64_t **)0x20 + 8);
    if (iVar5 != 0) {
        uVar11 = (uint64_t)*(uint32_t *)(iVar5 + 0x10);
        do {
            uVar13 = uVar11 & **(uint64_t **)0xfbbab0;
            if ((*(uint64_t **)0xfbbab0)[uVar13 * 2 + 1] == *(uint64_t *)(iVar5 + 8)) goto code_r0x00e1ea0f;
            uVar11 = uVar11 + 1;
        } while ((*(uint64_t **)0xfbbab0)[uVar13 * 2 + 1] != 0);
        *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1eeb1;
        runtime_typeAssert(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0)
                     , *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8), 
                     *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd0));
        iVar6 = *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x20);
    }
code_r0x00e1ea0f:
    iVar5 = *(int64_t *)((int64_t)*(int64_t **)0x20 + 0x10);
    *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1ea30;
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
            *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1ea75;
            cVar4 = runtime_ifaceeq(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8));
            if (cVar4 != '\0') {
                *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1eb26;
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
        *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1eac5;
        iVar5 = runtime_convT64(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8));
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x40) = 0x1042b60;
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x38) = iVar5;
        *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1eafd;
        fmt_Errorf(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0)
                     , *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8)
                     , *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x78));
        return 0;
    }
    *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x60) = in_XMM15_Qa;
    *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x58) = in_XMM15_Qb;
    *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1eb55;
    iVar5 = runtime_convTslice(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8));
    uVar10 = *(undefined8 *)0x3512080;
    *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x60) = 0x1038240;
    *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x58) = iVar5;
    *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1eb9c;
    fmt_Fprintf(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8), *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe0), 
                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8), *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd0), 
                 *(int64_t *)((int64_t)*(int64_t **)0x20 + -200));
    *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xc0) = in_XMM15_Qa;
    *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xb8) = in_XMM15_Qb;
    *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1ebaf;
    piVar9 = (int64_t *)runtime_newobject(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8));
    piVar9[1] = 0x10;
    piVar9[2] = 0x10;
    if (*(int32_t *)0x355db50 == 0) {
        iVar5 = *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x20);
    } else {
        *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1ebd7;
        piVar9 = (int64_t *)runtime_gcWriteBarrier1(piVar9, uVar10);
        iVar5 = *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x20);
        *extraout_R11 = iVar5;
    }
    *piVar9 = iVar5;
    piVar9[3] = 0;
    piVar9[4] = -1;
    *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1ec1e;
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
        *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1ecc5;
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
        *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1ec3b;
        iVar6 = runtime_makeslice(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xe8));
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x20) = iVar6;
        *(uint64_t *)((int64_t)*(int64_t **)0x20 + -0x78) = (uint64_t)*(uint32_t *)((int64_t)*(int64_t **)0x20 + -0xbc);
        iVar5 = *(int64_t *)((int64_t)*(int64_t **)0x20 + 8);
        if (iVar5 != 0) {
            uVar11 = (uint64_t)*(uint32_t *)(iVar5 + 0x10);
            do {
                uVar13 = uVar11 & **(uint64_t **)0xfbbad0;
                if ((*(uint64_t **)0xfbbad0)[uVar13 * 2 + 1] == *(uint64_t *)(iVar5 + 8)) goto code_r0x00e1ed90;
                uVar11 = uVar11 + 1;
            } while ((*(uint64_t **)0xfbbad0)[uVar13 * 2 + 1] != 0);
            *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1ee65;
            runtime_typeAssert(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd8), 
                         *(int64_t *)((int64_t)*(int64_t **)0x20 + -0xd0));
            iVar6 = *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x20);
        }
code_r0x00e1ed90:
        iVar5 = *(int64_t *)((int64_t)*(int64_t **)0x20 + 0x10);
        *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1eda9;
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
            *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1eddb;
            iVar5 = runtime_convT64(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8));
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x40) = 0x1042b60;
            *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x38) = iVar5;
            *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1ee13;
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
    *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1ecef;
    iVar5 = runtime_newobject(*(int64_t *)((int64_t)*(int64_t **)0x20 + -0xf8));
    if (*(int32_t *)((int64_t)*(int64_t **)0x20 + -0xbc) != 0) {
        *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x18) = iVar5;
        iVar5 = *(int64_t *)((int64_t)*(int64_t **)0x20 + -0x90);
        *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1ed25;
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
            *(undefined8 *)((int64_t)*(int64_t **)0x20 + -0x100) = 0xe1ed6a;
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

/* CAS-Backend/pkg/agvcontrol.DownloadMapRequest | VA 0xe1ef00 | map.go:113
   DWARF parameters and results: conn net.Conn, mapName string, ~r0 bool, ~r1 error
   DWARF locals: n int, &buf *bytes.Buffer, &response *CAS-Backend/pkg/agvcontrol.Response, headerBuf *bytes.Reader, jsonData []uint8, err error, responseHeaderBytes []uint8, responseData []uint8, reqData CAS-Backend/pkg/agvcontrol.DownloadMapReq, header CAS-Backend/pkg/agvcontrol.ProtocolHeader, responseHeader CAS-Backend/pkg/agvcontrol.ProtocolHeader, success bool */
// WARNING: [rz-ghidra] Detected overlap for variable var_c4h
// WARNING: [rz-ghidra] Removing arg arg_3ch because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_d4h
// WARNING: [rz-ghidra] Detected overlap for variable var_88h
// WARNING: [rz-ghidra] Detected overlap for variable var_10h

undefined8 __stdcall
pkg_agvcontrol_DownloadMapRequest
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_88h,
          int64_t arg_e0h, int64_t arg_f8h, int64_t arg_128h)
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
    uint64_t uVar9;
    undefined8 unaff_RBX;
    int64_t extraout_RBX;
    undefined *puVar10;
    undefined *unaff_RBP;
    undefined *puVar11;
    undefined8 in_RSI;
    undefined8 extraout_RSI;
    undefined8 *extraout_R11;
    uint64_t uVar12;
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
            *(undefined8 *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x20) = arg1;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x18) = arg4;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x60) = arg4;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x58) = arg1;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1ef65;
            uVar5 = runtime_convTstring(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1ef74;
            uVar6 = encoding_json_Marshal(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90));
            if (arg1 != 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = *(undefined8 *)(arg1 + 8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_RSI;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1efb9;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88));
                return 0;
            }
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90) = arg4;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x98) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = uVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -200) = 0x1015a;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xc0) = 0xfab;
            *(int32_t *)((int64_t)*(undefined **)0x20 + -0xc4) = (int32_t)uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1effe;
            uVar5 = runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = *(undefined8 *)((int64_t)*(undefined **)0x20 + -200)
            ;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb0) =
                 *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xc0);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f039;
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
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f07e;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88));
                return 0;
            }
            unaff_RBX = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70);
            arg1 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f0ae;
            bytes___Buffer__Write(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0));
            piVar1 = *(int64_t **)((int64_t)*(undefined **)0x20 + -0x10);
            arg4 = piVar1[1];
            uVar9 = piVar1[3];
            if (uVar9 <= (uint64_t)arg4) break;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f6ea;
            in_RAX = runtime_panicSliceB(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                                  *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100));
        }
        *(undefined8 *)(puVar10 + 8) = in_RAX;
        *(undefined8 *)(puVar10 + 0x10) = unaff_RBX;
        *(int64_t *)(puVar10 + 0x18) = arg4;
        *(int64_t *)(puVar10 + 0x20) = arg1;
        *(undefined8 *)(puVar10 + -8) = 0xe1f705;
        runtime_morestack_noctxt_abi0();
        in_RAX = *(undefined8 *)(puVar10 + 8);
        unaff_RBX = *(undefined8 *)(puVar10 + 0x10);
        arg4 = *(int64_t *)(puVar10 + 0x18);
        arg1 = *(int64_t *)(puVar10 + 0x20);
        *(undefined **)0x20 = (BADSPACEBASE *)puVar10;
        unaff_RBP = puVar11;
        in_RSI = extraout_RSI;
    } while( true );
    pcVar2 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + 8) + 0x50);
    iVar7 = *piVar1;
    iVar3 = piVar1[2];
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f0fe;
    (*pcVar2)(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), iVar7 + (uVar9 & (int64_t)-(iVar3 - uVar9) >> 0x3f)
              , arg4 - uVar9);
    if (extraout_RBX != 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = *(undefined8 *)(extraout_RBX + 8);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = extraout_RCX;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f185;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88));
        return 0;
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f119;
    uVar5 = runtime_makeslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8));
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar5;
    iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
    if (iVar7 != 0) {
        uVar9 = (uint64_t)*(uint32_t *)(iVar7 + 0x10);
        do {
            uVar12 = uVar9 & **(uint64_t **)0xfbbaf0;
            if ((*(uint64_t **)0xfbbaf0)[uVar12 * 2 + 1] == *(uint64_t *)(iVar7 + 8)) goto code_r0x00e1f196;
            uVar9 = uVar9 + 1;
        } while ((*(uint64_t **)0xfbbaf0)[uVar12 * 2 + 1] != 0);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f6c5;
        runtime_typeAssert(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0));
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
    }
code_r0x00e1f196:
    iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f1b4;
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
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88) = iVar7;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f1f8;
            cVar4 = runtime_ifaceeq(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8));
            if (cVar4 != '\0') {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f2b6;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88));
                return 0;
            }
            uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68);
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
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f255;
        uVar5 = runtime_convT64(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108));
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = 0x1042b60;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = uVar5;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f28d;
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
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f2da;
    puVar8 = (undefined8 *)runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108));
    puVar8[1] = 0x10;
    puVar8[2] = 0x10;
    if (*(int32_t *)0x355db50 == 0) {
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
    } else {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f305;
        puVar8 = (undefined8 *)runtime_gcWriteBarrier1();
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
        *extraout_R11 = uVar5;
    }
    *puVar8 = uVar5;
    puVar8[3] = 0;
    puVar8[4] = 0xffffffffffffffff;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f34c;
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
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f3eb;
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
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f367;
        uVar5 = runtime_makeslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8));
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar5;
        *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x80) =
             (uint64_t)*(uint32_t *)((int64_t)*(undefined **)0x20 + -0xd4);
        iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
        if (iVar7 != 0) {
            uVar9 = (uint64_t)*(uint32_t *)(iVar7 + 0x10);
            do {
                uVar12 = uVar9 & **(uint64_t **)0xfbbb10;
                if ((*(uint64_t **)0xfbbb10)[uVar12 * 2 + 1] == *(uint64_t *)(iVar7 + 8)) goto code_r0x00e1f59f;
                uVar9 = uVar9 + 1;
            } while ((*(uint64_t **)0xfbbb10)[uVar12 * 2 + 1] != 0);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f674;
            runtime_typeAssert(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0));
            uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
        }
code_r0x00e1f59f:
        iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f5b8;
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
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f5ea;
            uVar5 = runtime_convT64(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = 0x1042b60;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f625;
            fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88));
            return 0;
        }
        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x80);
        uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa8) = uVar5;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = uVar6;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f415;
    uVar5 = runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108));
    if (*(int32_t *)((int64_t)*(undefined **)0x20 + -0xd4) == 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f58e;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88));
        return 0;
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = uVar5;
    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa8);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f44d;
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
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f492;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88));
        return 0;
    }
    if (*(int64_t *)(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x18) + 0x20) != 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f52c;
        uVar5 = runtime_convTstring(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0));
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = 0x1042920;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = uVar5;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f565;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88));
        return 0;
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f4d7;
    uVar5 = biz_dao_SaveMap(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x70), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + 0x20));
    if ((char)uVar5 == '\0') {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x110) = 0xe1f505;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x108), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88));
        return 0;
    }
    return uVar5;
}

/* CAS-Backend/pkg/agvcontrol.SendUploadAndLoadMapCommand | VA 0xe1f720 | map.go:237
   DWARF parameters and results: conn net.Conn, mapFilePath string, ~r0 error
   DWARF locals: n int, mapData []uint8, err error, jsonData []uint8, headerBytes []uint8, fullMessage []uint8, responseHeaderBytes []uint8, header CAS-Backend/pkg/agvcontrol.ProtocolHeader, responseHeader CAS-Backend/pkg/agvcontrol.ProtocolHeader, jsonEnd int, &response *CAS-Backend/pkg/agvcontrol.Response, responseDataBytes []uint8, validJSON []uint8 */
// WARNING: Variable defined which should be unmapped: var_200h
// WARNING: Variable defined which should be unmapped: var_1b0h
// WARNING: Variable defined which should be unmapped: var_190h
// WARNING: Variable defined which should be unmapped: var_170h
// WARNING: Variable defined which should be unmapped: var_168h
// WARNING: Variable defined which should be unmapped: var_1f8h
// WARNING: Variable defined which should be unmapped: var_1f0h
// WARNING: Variable defined which should be unmapped: var_1e8h
// WARNING: Variable defined which should be unmapped: var_188h
// WARNING: Variable defined which should be unmapped: var_178h
// WARNING: Variable defined which should be unmapped: var_198h
// WARNING: Variable defined which should be unmapped: var_1d0h
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: Removing unreachable block (ram,0x00e1ffd2)
// WARNING: Removing unreachable block (ram,0x00e1ffe6)
// WARNING: Removing unreachable block (ram,0x00e1ffea)
// WARNING: [rz-ghidra] Detected overlap for variable var_1ach
// WARNING: [rz-ghidra] Detected overlap for variable var_1bfh
// WARNING: [rz-ghidra] Detected overlap for variable var_1beh
// WARNING: [rz-ghidra] Detected overlap for variable var_1bch
// WARNING: [rz-ghidra] Detected overlap for variable var_1b8h
// WARNING: [rz-ghidra] Detected overlap for variable var_1b6h
// WARNING: [rz-ghidra] Detected overlap for variable var_1ceh
// WARNING: [rz-ghidra] Detected overlap for variable var_1cch
// WARNING: [rz-ghidra] Detected overlap for variable var_1c8h
// WARNING: [rz-ghidra] Detected overlap for variable var_1c6h
// WARNING: [rz-ghidra] Detected overlap for variable var_1c2h
// WARNING: [rz-ghidra] Detected overlap for variable var_1b2h
// WARNING: [rz-ghidra] Detected overlap for variable var_80h
// WARNING: [rz-ghidra] Detected overlap for variable var_22h
// WARNING: [rz-ghidra] Detected overlap for variable var_20h
// WARNING: [rz-ghidra] Detected overlap for variable var_10h

undefined8 __stdcall
pkg_agvcontrol_SendUploadAndLoadMapCommand
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_70h,
          int64_t arg_a8h, int64_t arg_120h, int64_t arg_1c0h, int64_t arg_1d0h, int64_t arg_1f0h)
{
    undefined2 uVar1;
    uint16_t uVar2;
    char cVar3;
    int64_t in_RAX;
    undefined8 uVar4;
    undefined8 uVar5;
    int64_t iVar6;
    undefined *puVar7;
    int64_t iVar8;
    int64_t extraout_RCX;
    undefined8 extraout_RCX_00;
    uint64_t uVar9;
    uint64_t extraout_RDX;
    uint64_t uVar10;
    uint32_t uVar11;
    int64_t unaff_RBX;
    int64_t extraout_RBX;
    undefined8 extraout_RBX_00;
    int64_t extraout_RSI;
    int64_t extraout_RDI;
    int64_t iVar12;
    uint64_t *puVar13;
    uint64_t extraout_R10;
    uint64_t uVar14;
    uint64_t uVar15;
    int64_t unaff_R14;
    undefined4 in_XMM15_Da;
    undefined4 in_XMM15_Db;
    undefined4 in_XMM15_Dc;
    undefined4 in_XMM15_Dd;
    int64_t var_218h;
    int64_t in_stack_fffffffffffffdf8;
    int64_t var_200h;
    int64_t var_1f8h;
    int64_t var_1f0h;
    int64_t var_1e8h;
    int64_t in_stack_fffffffffffffe20;
    int64_t in_stack_fffffffffffffe28;
    int64_t var_1d0h;
    undefined2 var_1c6h;
    undefined2 uStack_1c4;
    undefined2 var_1c2h;
    int64_t var_1c0h;
    undefined8 var_1b8h;
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
    
    while (&var_188h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe203fe;
        runtime_morestack_noctxt_abi0();
    }
    runtime_printlock(var_200h);
    uVar4 = runtime_printstring(in_stack_fffffffffffffdf8, var_200h);
    runtime_printnl(uVar4, arg1);
    runtime_printunlock();
    iVar8 = extraout_RSI;
    iVar12 = extraout_RDI;
    var_178h = os_ReadFile(in_stack_fffffffffffffdf8, var_200h, var_1b0h, var_190h, var_170h, var_168h);
    if (iVar12 != 0) {
        var_20h = *(int64_t *)(iVar12 + 8);
        var_18h = iVar8;
        uVar4 = fmt_Errorf(in_stack_fffffffffffffdf8, var_200h, var_1f8h, 
                             CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), var_1e8h, var_188h);
        return uVar4;
    }
    var_1a0h = arg1;
    cVar3 = encoding_json_Valid(in_stack_fffffffffffffdf8, var_200h, var_1f8h);
    if (cVar3 == '\0') {
        uVar4 = fmt_Errorf(in_stack_fffffffffffffdf8, var_200h, var_1f8h, 
                             CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), var_1e8h, var_188h);
        return uVar4;
    }
    if (0xa00000 < var_1a0h) {
        var_18h = runtime_convT64(in_stack_fffffffffffffdf8);
        var_20h = 0x1042b60;
        uVar4 = fmt_Errorf(in_stack_fffffffffffffdf8, var_200h, var_1f8h, 
                             CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), var_1e8h, var_188h);
        return uVar4;
    }
    var_48h = runtime_convT64(in_stack_fffffffffffffdf8);
    var_50h = 0x1042b60;
    fmt_Fprintf(in_stack_fffffffffffffdf8, var_200h, var_1f8h, CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), var_1e8h
                 , in_stack_fffffffffffffe20, in_stack_fffffffffffffe28);
    var_58h = runtime_convTstring(in_stack_fffffffffffffdf8, var_200h, in_stack_fffffffffffffe20);
    var_60h = 0x1042920;
    fmt_Fprintf(in_stack_fffffffffffffdf8, var_200h, var_1f8h, CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), var_1e8h
                 , in_stack_fffffffffffffe20, in_stack_fffffffffffffe28);
    var_1a8h = 0x7e9;
    var_1b0h = CONCAT44((int32_t)var_1a0h, 0x1015a);
    var_1c0h = var_1b0h;
    var_1b8h = 0x7e9;
    var_168h = runtime_makeslice(in_stack_fffffffffffffdf8, var_200h, var_1f8h);
    *(undefined *)var_168h = (undefined)var_1c0h;
    *(undefined *)(var_168h + 1) = var_1c0h._1_1_;
    *(uint16_t *)(var_168h + 2) = var_1c0h._2_2_ << 8 | var_1c0h._2_2_ >> 8;
    *(uint32_t *)(var_168h + 4) =
         var_1c0h._4_4_ >> 0x18 | (var_1c0h._4_4_ & 0xff0000) >> 8 | (var_1c0h._4_4_ & 0xff00) << 8 |
         var_1c0h._4_4_ << 0x18;
    *(uint16_t *)(var_168h + 8) = (uint16_t)var_1b8h << 8 | (uint16_t)var_1b8h >> 8;
    puVar7 = (undefined *)((int64_t)&var_1b8h + 2);
    if (puVar7 != (undefined *)(var_168h + 10)) {
        puVar7 = (undefined *)(uint64_t)var_1b8h._2_4_;
        *(uint32_t *)(var_168h + 10) = var_1b8h._2_4_;
        *(undefined2 *)(var_168h + 0xe) = var_1b8h._6_2_;
    }
    fcn.00478af0(var_168h, 0x10, puVar7, &var_e0h);
    var_b0h = 0x10429a0;
    var_a8h = (var_1c0h & 0xffU) * 8 + 0xf7a720;
    var_a0h = 0x10429a0;
    var_98h = ((uint64_t)var_1c0h >> 8 & 0xff) * 8 + 0xf7a720;
    var_88h = runtime_convT16(in_stack_fffffffffffffdf8);
    var_90h = 0x1042a20;
    var_78h = runtime_convT32(in_stack_fffffffffffffdf8);
    var_80h = 0x1042aa0;
    var_68h = runtime_convT16(in_stack_fffffffffffffdf8);
    var_70h = 0x1042a20;
    var_180h = var_1a0h + 0x10;
    fmt_Fprintf(in_stack_fffffffffffffdf8, var_200h, var_1f8h, CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), var_1e8h
                 , in_stack_fffffffffffffe20, in_stack_fffffffffffffe28);
    var_b8h = runtime_convTslice(in_stack_fffffffffffffdf8, var_200h, var_1f8h);
    var_c0h = 0x1038240;
    fmt_Fprintf(in_stack_fffffffffffffdf8, var_200h, var_1f8h, CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), var_1e8h
                 , in_stack_fffffffffffffe20, in_stack_fffffffffffffe28);
    var_190h = var_180h;
    if ((uint64_t)var_180h < 0x11) {
        iVar8 = 0x10;
        var_170h = var_168h;
    } else {
        iVar8 = 0x10;
        var_170h = runtime_growslice(in_stack_fffffffffffffdf8, var_200h, var_1f8h, 
                                CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), var_1e8h, var_178h);
    }
    var_188h = iVar8;
    runtime_memmove(var_170h + 0x10, var_178h, var_1a0h);
    var_c8h = runtime_convT64(in_stack_fffffffffffffdf8);
    var_d0h = 0x1042b60;
    fmt_Fprintf(in_stack_fffffffffffffdf8, var_200h, var_1f8h, CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), var_1e8h
                 , in_stack_fffffffffffffe20, in_stack_fffffffffffffe28);
    (**(code **)(in_RAX + 0x50))(unaff_RBX, var_170h, var_190h, var_188h);
    if (extraout_RBX != 0) {
        var_20h = *(int64_t *)(extraout_RBX + 8);
        var_18h = extraout_RCX;
        uVar4 = fmt_Errorf(in_stack_fffffffffffffdf8, var_200h, var_1f8h, 
                             CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), var_1e8h, var_188h);
        return uVar4;
    }
    var_e8h = runtime_convT16(in_stack_fffffffffffffdf8);
    var_f0h = 0x1042a20;
    var_d8h = runtime_convT64(in_stack_fffffffffffffdf8);
    uVar15 = *(uint64_t *)0x3512080;
    var_e0h = 0x1042b60;
    uVar4 = fmt_Fprintf(in_stack_fffffffffffffdf8, var_200h, var_1f8h, CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), 
                         var_1e8h, in_stack_fffffffffffffe20, in_stack_fffffffffffffe28);
    time_Now(uVar4, uVar15);
    uVar4 = extraout_RCX_00;
    uVar5 = time_Time_Add(in_stack_fffffffffffffdf8, var_200h, var_1f8h, CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), 
                         in_stack_fffffffffffffe20);
    (**(code **)(in_RAX + 0x40))(unaff_RBX, uVar5, extraout_RBX_00, uVar4);
    uVar15 = extraout_R10;
    var_168h = runtime_makeslice(in_stack_fffffffffffffdf8, var_200h, var_1f8h);
    if (in_RAX != 0) {
        uVar9 = (uint64_t)*(uint32_t *)(in_RAX + 0x10);
        do {
            uVar14 = uVar9 & **(uint64_t **)0xfbbb30;
            uVar15 = uVar14 * 0x10;
            if ((*(uint64_t **)0xfbbb30)[uVar14 * 2 + 1] == *(uint64_t *)(in_RAX + 8)) goto code_r0x00e1fd9e;
            uVar15 = uVar9 + 1;
            uVar9 = uVar15;
        } while ((*(uint64_t **)0xfbbb30)[uVar14 * 2 + 1] != 0);
        runtime_typeAssert(in_stack_fffffffffffffdf8, var_200h, var_1e8h, in_stack_fffffffffffffe20);
    }
code_r0x00e1fd9e:
    iVar8 = var_168h;
    io_ReadAtLeast(in_stack_fffffffffffffdf8, var_200h, var_1f8h, CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), var_1e8h
                 , in_stack_fffffffffffffe20, var_198h);
    if (unaff_RBX != 0) {
        var_40h = *(int64_t *)(unaff_RBX + 8);
        var_38h = iVar8;
        var_28h = runtime_convT64(in_stack_fffffffffffffdf8);
        var_30h = 0x1042b60;
        uVar4 = fmt_Errorf(in_stack_fffffffffffffdf8, var_200h, var_1f8h, 
                             CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), var_1e8h, var_188h);
        return uVar4;
    }
    uVar1 = *(undefined2 *)var_168h;
    var_1c6h = (undefined2)((uint32_t)in_XMM15_Dc >> 0x10);
    uStack_1c4 = (undefined2)in_XMM15_Dd;
    var_1c2h = (undefined2)((uint32_t)in_XMM15_Dd >> 0x10);
    uVar2 = *(uint16_t *)(var_168h + 2);
    uVar11 = *(uint32_t *)(var_168h + 4);
    uVar11 = uVar11 >> 0x18 | (uVar11 & 0xff0000) >> 8 | (uVar11 & 0xff00) << 8 | uVar11 << 0x18;
    if (&var_1c6h != (undefined2 *)(var_168h + 10)) {
        var_1c2h = *(undefined2 *)(var_168h + 0xe);
        var_1c6h = (undefined2)*(undefined4 *)(var_168h + 10);
        uStack_1c4 = (undefined2)((uint32_t)*(undefined4 *)(var_168h + 10) >> 0x10);
    }
    var_118h = runtime_convT16(in_stack_fffffffffffffdf8);
    var_120h = 0x1042a20;
    var_108h = runtime_convT32(in_stack_fffffffffffffdf8);
    var_110h = 0x1042aa0;
    var_f8h = runtime_convT16(in_stack_fffffffffffffdf8);
    var_100h = 0x1042a20;
    fmt_Fprintf(in_stack_fffffffffffffdf8, var_200h, var_1f8h, CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), var_1e8h
                 , in_stack_fffffffffffffe20, in_stack_fffffffffffffe28);
    if (uVar11 == 0) {
        uVar4 = fmt_Errorf(in_stack_fffffffffffffdf8, var_200h, var_1f8h, 
                             CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), var_1e8h, var_188h);
        return uVar4;
    }
    var_168h = runtime_makeslice(in_stack_fffffffffffffdf8, var_200h, var_1f8h);
    var_180h = (int64_t)uVar11;
    if (in_RAX == 0) goto code_r0x00e1ffb4;
    uVar14 = *(uint64_t *)(in_RAX + 8);
    uVar15 = **(uint64_t **)0xfbbb50;
    uVar9 = (uint64_t)*(uint32_t *)(in_RAX + 0x10);
    puVar13 = *(uint64_t **)0xfbbb50;
code_r0x00e2034c:
    uVar10 = uVar9 & uVar15;
    if (puVar13[uVar10 * 2 + 1] != uVar14) goto code_r0x00e20365;
    goto code_r0x00e1ffb4;
code_r0x00e20365:
    uVar9 = uVar9 + 1;
    if (puVar13[uVar10 * 2 + 1] == 0) {
        runtime_typeAssert(in_stack_fffffffffffffdf8, var_200h, var_1e8h, in_stack_fffffffffffffe20);
code_r0x00e1ffb4:
        io_ReadAtLeast(in_stack_fffffffffffffdf8, var_200h, var_1f8h, CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), 
                     var_1e8h, in_stack_fffffffffffffe20, var_198h);
        var_130h = CONCAT44(in_XMM15_Db, in_XMM15_Da);
        var_128h = CONCAT44(in_XMM15_Dd, in_XMM15_Dc);
        runtime_slicebytetostring(in_stack_fffffffffffffdf8, var_200h, var_1f8h);
        var_128h = runtime_convTstring(in_stack_fffffffffffffdf8, var_200h, in_stack_fffffffffffffe20);
        uVar14 = *(uint64_t *)0x3512080;
        var_130h = 0x1042920;
        puVar13 = (uint64_t *)0x1;
        fmt_Fprintf(in_stack_fffffffffffffdf8, var_200h, var_1f8h, CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), 
                     var_1e8h, in_stack_fffffffffffffe20, in_stack_fffffffffffffe28);
        iVar8 = var_180h;
        var_200h = var_180h;
        var_1f8h = var_180h;
        var_1f0h._0_1_ = 0;
        in_stack_fffffffffffffdf8 = var_168h;
        internal_bytealg_IndexByte_abi0(var_168h, var_180h, (uint64_t)var_1f0h._1_7_ << 8, var_1e8h);
        in_XMM15_Da = 0;
        in_XMM15_Db = 0;
        in_XMM15_Dc = 0;
        in_XMM15_Dd = 0;
        uVar9 = var_1e8h;
        if (var_1e8h == -1) {
            uVar9 = var_180h;
        }
        if (uVar9 <= (uint64_t)var_180h) {
            var_140h = 0;
            var_138h = 0;
            var_198h = uVar9;
            runtime_slicebytetostring(in_stack_fffffffffffffdf8, iVar8, iVar8);
            var_138h = runtime_convTstring(in_stack_fffffffffffffdf8, iVar8, in_stack_fffffffffffffe20);
            var_140h = 0x1042920;
            fmt_Fprintf(in_stack_fffffffffffffdf8, iVar8, iVar8, (uint64_t)var_1f0h._1_7_ << 8, var_1e8h, 
                         in_stack_fffffffffffffe20, in_stack_fffffffffffffe28);
            var_10h = runtime_newobject(in_stack_fffffffffffffdf8);
            iVar12 = var_198h;
            iVar6 = encoding_json_Unmarshal(in_stack_fffffffffffffdf8, iVar8, iVar8, (uint64_t)var_1f0h._1_7_ << 8, var_1e8h, 
                                 CONCAT44(uVar11, CONCAT22(uVar2 << 8 | uVar2 >> 8, uVar1)));
            if (iVar6 != 0) {
                var_30h = CONCAT44(in_XMM15_Db, in_XMM15_Da);
                var_28h = CONCAT44(in_XMM15_Dd, in_XMM15_Dc);
                var_40h = *(int64_t *)(iVar6 + 8);
                var_38h = iVar12;
                runtime_slicebytetostring(in_stack_fffffffffffffdf8, iVar8, iVar8);
                var_28h = runtime_convTstring(in_stack_fffffffffffffdf8, iVar8, in_stack_fffffffffffffe20);
                var_30h = 0x1042920;
                uVar4 = fmt_Errorf(in_stack_fffffffffffffdf8, iVar8, iVar8, (uint64_t)var_1f0h._1_7_ << 8, var_1e8h, 
                                     var_188h);
                return uVar4;
            }
            if (*(int64_t *)(var_10h + 0x20) == 0) {
                var_150h = CONCAT44(in_XMM15_Db, in_XMM15_Da);
                var_148h = CONCAT44(in_XMM15_Dd, in_XMM15_Dc);
                var_148h = runtime_convTstring(in_stack_fffffffffffffdf8, iVar8, in_stack_fffffffffffffe20);
                var_150h = 0x1042920;
                fmt_Fprintf(in_stack_fffffffffffffdf8, iVar8, iVar8, (uint64_t)var_1f0h._1_7_ << 8, var_1e8h, 
                             in_stack_fffffffffffffe20, in_stack_fffffffffffffe28);
                var_160h = 0x1042920;
                var_158h = 0x2e690d0 /* "上传并切换载入地图操作成功完成" */;
                fmt_Fprintln(in_stack_fffffffffffffdf8, iVar8, iVar8, (uint64_t)var_1f0h._1_7_ << 8, var_1e8h);
                return 0;
            }
            var_20h = CONCAT44(in_XMM15_Db, in_XMM15_Da);
            var_18h = CONCAT44(in_XMM15_Dd, in_XMM15_Dc);
            var_18h = runtime_convTstring(in_stack_fffffffffffffdf8, iVar8, in_stack_fffffffffffffe20);
            var_20h = 0x1042920;
            uVar4 = fmt_Errorf(in_stack_fffffffffffffdf8, iVar8, iVar8, (uint64_t)var_1f0h._1_7_ << 8, var_1e8h, 
                                 var_188h);
            return uVar4;
        }
        runtime_panicSliceAcap(in_stack_fffffffffffffdf8, iVar8);
        uVar9 = extraout_RDX;
    }
    goto code_r0x00e2034c;
}

/* CAS-Backend/pkg/agvcontrol.LoadMapRequest | VA 0xe20420 | map.go:391
   DWARF parameters and results: conn net.Conn, mapName string, ~r0 bool, ~r1 error
   DWARF locals: n int, &buf *bytes.Buffer, headerBuf *bytes.Reader, jsonData []uint8, err error, responseHeaderBytes []uint8, responseData []uint8, reqData CAS-Backend/pkg/agvcontrol.DownloadMapReq, header CAS-Backend/pkg/agvcontrol.ProtocolHeader, responseHeader CAS-Backend/pkg/agvcontrol.ProtocolHeader, &response *CAS-Backend/pkg/agvcontrol.Response */
// WARNING: [rz-ghidra] Detected overlap for variable var_bch
// WARNING: [rz-ghidra] Removing arg arg_3ch because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_cch
// WARNING: [rz-ghidra] Detected overlap for variable var_88h
// WARNING: [rz-ghidra] Detected overlap for variable var_10h

undefined8 __stdcall
pkg_agvcontrol_LoadMapRequest
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_80h,
          int64_t arg_c0h, int64_t arg_e0h)
{
    int64_t *piVar1;
    code *pcVar2;
    int64_t iVar3;
    char cVar4;
    undefined8 in_RAX;
    undefined8 uVar5;
    undefined8 uVar6;
    undefined8 uVar7;
    int64_t iVar8;
    undefined8 *puVar9;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    uint64_t uVar10;
    undefined8 unaff_RBX;
    int64_t extraout_RBX;
    undefined8 extraout_RBX_00;
    undefined *puVar11;
    undefined *unaff_RBP;
    undefined *puVar12;
    undefined8 in_RSI;
    undefined8 extraout_RSI;
    uint64_t uVar13;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    undefined8 in_XMM15_Qa;
    undefined8 in_XMM15_Qb;
    int64_t var_f8h;
    int64_t var_f0h;
    int64_t var_e8h;
    int64_t var_e0h;
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
        puVar11 = (undefined *)*(undefined **)0x20;
        puVar12 = unaff_RBP;
        if (*(undefined **)(unaff_R14 + 0x10) < (undefined *)((int64_t)*(undefined **)0x20 + -0x80)) {
            puVar12 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            puVar11 = (undefined *)((int64_t)*(undefined **)0x20 + -0x100);
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x18) = arg4;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x58) = arg4;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x50) = arg1;
            uVar7 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe20475;
            uVar5 = runtime_convTstring(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe20485;
            uVar6 = encoding_json_Marshal(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88));
            if (arg1 != 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = *(undefined8 *)(arg1 + 8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_RSI;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe204ca;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80));
                return 0;
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x90) = uVar7;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x98) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = uVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xc0) = 0x1015a;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0x7e6;
            *(int32_t *)((int64_t)*(undefined **)0x20 + -0xbc) = (int32_t)uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe2050f;
            uVar7 = runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = uVar7;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb0) =
                 *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xc0);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa8) =
                 *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe2054a;
            iVar8 = encoding_binary_Write(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x98), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -8));
            if (iVar8 != 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = *(undefined8 *)(iVar8 + 8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar7;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe2058f;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80));
                return 0;
            }
            unaff_RBX = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78);
            arg1 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe205c5;
            bytes___Buffer__Write(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8));
            piVar1 = *(int64_t **)((int64_t)*(undefined **)0x20 + -0x10);
            arg4 = piVar1[1];
            uVar10 = piVar1[3];
            if (uVar10 <= (uint64_t)arg4) break;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe20b3f;
            in_RAX = runtime_panicSliceB(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                                  *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8));
        }
        *(undefined8 *)(puVar11 + 8) = in_RAX;
        *(undefined8 *)(puVar11 + 0x10) = unaff_RBX;
        *(int64_t *)(puVar11 + 0x18) = arg4;
        *(int64_t *)(puVar11 + 0x20) = arg1;
        *(undefined8 *)(puVar11 + -8) = 0xe20b59;
        runtime_morestack_noctxt_abi0();
        in_RAX = *(undefined8 *)(puVar11 + 8);
        unaff_RBX = *(undefined8 *)(puVar11 + 0x10);
        arg4 = *(int64_t *)(puVar11 + 0x18);
        arg1 = *(int64_t *)(puVar11 + 0x20);
        *(undefined **)0x20 = (BADSPACEBASE *)puVar11;
        unaff_RBP = puVar12;
        in_RSI = extraout_RSI;
    } while( true );
    pcVar2 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + 8) + 0x50);
    iVar8 = *piVar1;
    iVar3 = piVar1[2];
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe20613;
    (*pcVar2)(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), 
              iVar8 + (uVar10 & (int64_t)-(iVar3 - uVar10) >> 0x3f), arg4 - uVar10);
    if (extraout_RBX != 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = *(undefined8 *)(extraout_RBX + 8);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = extraout_RCX;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe206cb;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80));
        return 0;
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe2061d;
    time_Now();
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe2062c;
    uVar7 = extraout_RCX_00;
    uVar5 = time_Time_Add(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8));
    pcVar2 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + 8) + 0x40);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe2064b;
    (*pcVar2)(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), uVar5, extraout_RBX_00, uVar7);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe2065f;
    uVar7 = runtime_makeslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0));
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = uVar7;
    iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
    if (iVar8 != 0) {
        uVar10 = (uint64_t)*(uint32_t *)(iVar8 + 0x10);
        do {
            uVar13 = uVar10 & **(uint64_t **)0xfbbb70;
            if ((*(uint64_t **)0xfbbb70)[uVar13 * 2 + 1] == *(uint64_t *)(iVar8 + 8)) goto code_r0x00e206dc;
            uVar10 = uVar10 + 1;
        } while ((*(uint64_t **)0xfbbb70)[uVar13 * 2 + 1] != 0);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe20b1d;
        runtime_typeAssert(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8));
        uVar7 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
    }
code_r0x00e206dc:
    iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe206fd;
    uVar5 = io_ReadAtLeast(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90));
    if (iVar8 != 0) {
        iVar3 = iVar8;
        if (*(int64_t *)0xfb6dc0 == iVar8) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa0) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = uVar7;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88) = iVar8;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe2073e;
            cVar4 = runtime_ifaceeq(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0));
            if (cVar4 != '\0') {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe207f0;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80));
                return 0;
            }
            uVar7 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70);
            iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88);
            iVar3 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88);
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
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe2078f;
        uVar7 = runtime_convT64(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100));
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = 0x1042b60;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = uVar7;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe207c7;
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
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe20814;
    puVar9 = (undefined8 *)runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100));
    puVar9[1] = 0x10;
    puVar9[2] = 0x10;
    if (*(int32_t *)0x355db50 == 0) {
        uVar7 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
    } else {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe2083c;
        puVar9 = (undefined8 *)runtime_gcWriteBarrier1();
        uVar7 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
        *extraout_R11 = uVar7;
    }
    *puVar9 = uVar7;
    puVar9[3] = 0;
    puVar9[4] = 0xffffffffffffffff;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe20885;
    iVar8 = encoding_binary_Read(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x68), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x20));
    if (iVar8 != 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = *(undefined8 *)(iVar8 + 8);
        *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x20) = puVar9;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe20968;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80));
        return 0;
    }
    if (*(int32_t *)((int64_t)*(undefined **)0x20 + -0xcc) == 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = 0x1042920;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) = 0x2e690a0 /* "响应为空" */;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe20926;
        fmt_Fprintln(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0));
    } else {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe208a5;
        uVar7 = runtime_makeslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0));
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = uVar7;
        *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x80) =
             (uint64_t)*(uint32_t *)((int64_t)*(undefined **)0x20 + -0xcc);
        iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
        if (iVar8 != 0) {
            uVar10 = (uint64_t)*(uint32_t *)(iVar8 + 0x10);
            do {
                uVar13 = uVar10 & **(uint64_t **)0xfbbb90;
                if ((*(uint64_t **)0xfbbb90)[uVar13 * 2 + 1] == *(uint64_t *)(iVar8 + 8)) goto code_r0x00e2098b;
                uVar10 = uVar10 + 1;
            } while ((*(uint64_t **)0xfbbb90)[uVar13 * 2 + 1] != 0);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe20ad2;
            runtime_typeAssert(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8));
            uVar7 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
        }
code_r0x00e2098b:
        iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe209a5;
        io_ReadAtLeast(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90));
        if (iVar8 != 0) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = *(undefined8 *)(iVar8 + 8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = uVar7;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe209d7;
            uVar7 = runtime_convT64(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = 0x1042b60;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = uVar7;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe20a0f;
            fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80));
            return 0;
        }
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe20a2d;
        runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100));
        uVar7 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x80);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe20a4f;
        iVar8 = encoding_json_Unmarshal(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -200));
        if (iVar8 != 0) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = *(undefined8 *)(iVar8 + 8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar7;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe20a98;
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

/* CAS-Backend/pkg/agvcontrol.SendUploadMapCommand | VA 0xe20b80 | map.go:477
   DWARF parameters and results: conn net.Conn, mapFilePath string, ~r0 error
   DWARF locals: n int, mapData []uint8, err error, jsonData []uint8, headerBytes []uint8, fullMessage []uint8, responseHeaderBytes []uint8, header CAS-Backend/pkg/agvcontrol.ProtocolHeader, responseHeader CAS-Backend/pkg/agvcontrol.ProtocolHeader, jsonEnd int, &response *CAS-Backend/pkg/agvcontrol.Response, responseDataBytes []uint8, validJSON []uint8 */
// WARNING: Variable defined which should be unmapped: var_200h
// WARNING: Variable defined which should be unmapped: var_1b0h
// WARNING: Variable defined which should be unmapped: var_190h
// WARNING: Variable defined which should be unmapped: var_170h
// WARNING: Variable defined which should be unmapped: var_168h
// WARNING: Variable defined which should be unmapped: var_1f8h
// WARNING: Variable defined which should be unmapped: var_1f0h
// WARNING: Variable defined which should be unmapped: var_1e8h
// WARNING: Variable defined which should be unmapped: var_178h
// WARNING: Variable defined which should be unmapped: var_188h
// WARNING: Variable defined which should be unmapped: var_198h
// WARNING: Variable defined which should be unmapped: var_1d0h
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: Removing unreachable block (ram,0x00e2135b)
// WARNING: Removing unreachable block (ram,0x00e2136f)
// WARNING: Removing unreachable block (ram,0x00e21373)
// WARNING: [rz-ghidra] Detected overlap for variable var_1ach
// WARNING: [rz-ghidra] Detected overlap for variable var_1bfh
// WARNING: [rz-ghidra] Detected overlap for variable var_1beh
// WARNING: [rz-ghidra] Detected overlap for variable var_1bch
// WARNING: [rz-ghidra] Detected overlap for variable var_1b8h
// WARNING: [rz-ghidra] Detected overlap for variable var_1b6h
// WARNING: [rz-ghidra] Detected overlap for variable var_1ceh
// WARNING: [rz-ghidra] Detected overlap for variable var_1cch
// WARNING: [rz-ghidra] Detected overlap for variable var_1c8h
// WARNING: [rz-ghidra] Detected overlap for variable var_1c6h
// WARNING: [rz-ghidra] Detected overlap for variable var_1c2h
// WARNING: [rz-ghidra] Detected overlap for variable var_1b2h
// WARNING: [rz-ghidra] Detected overlap for variable var_80h
// WARNING: [rz-ghidra] Detected overlap for variable var_10h

undefined8 __stdcall
pkg_agvcontrol_SendUploadMapCommand
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_a8h,
          int64_t arg_120h, int64_t arg_1d0h, int64_t arg_1f0h)
{
    undefined2 uVar1;
    uint16_t uVar2;
    int64_t iVar3;
    int64_t in_RAX;
    undefined8 uVar4;
    undefined8 uVar5;
    int64_t iVar6;
    undefined *puVar7;
    int64_t iVar8;
    int64_t extraout_RCX;
    undefined8 extraout_RCX_00;
    uint64_t uVar9;
    uint64_t extraout_RDX;
    uint64_t uVar10;
    uint32_t uVar11;
    int64_t unaff_RBX;
    int64_t extraout_RBX;
    undefined8 extraout_RBX_00;
    int64_t in_RSI;
    int64_t extraout_RSI;
    uint64_t *puVar12;
    uint64_t extraout_R10;
    uint64_t uVar13;
    uint64_t uVar14;
    int64_t unaff_R14;
    undefined4 in_XMM15_Da;
    undefined4 in_XMM15_Db;
    undefined4 in_XMM15_Dc;
    undefined4 in_XMM15_Dd;
    int64_t var_218h;
    int64_t in_stack_fffffffffffffdf8;
    int64_t var_200h;
    int64_t var_1f8h;
    int64_t var_1f0h;
    int64_t var_1e8h;
    int64_t in_stack_fffffffffffffe20;
    int64_t in_stack_fffffffffffffe28;
    int64_t var_1d0h;
    undefined2 var_1c6h;
    undefined2 uStack_1c4;
    undefined2 var_1c2h;
    int64_t var_1c0h;
    undefined8 var_1b8h;
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
    
    while (&var_188h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe2178b;
        runtime_morestack_noctxt_abi0();
        in_RSI = extraout_RSI;
    }
    iVar8 = arg1;
    var_178h = os_ReadFile(in_stack_fffffffffffffdf8, var_200h, var_1b0h, var_190h, var_170h, var_168h);
    if (iVar8 != 0) {
        var_20h = *(int64_t *)(iVar8 + 8);
        var_18h = in_RSI;
        uVar4 = fmt_Errorf(in_stack_fffffffffffffdf8, var_200h, var_1f8h, 
                             CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), var_1e8h, var_188h);
        return uVar4;
    }
    var_1a0h = arg1;
    var_48h = runtime_convT64(in_stack_fffffffffffffdf8);
    var_50h = 0x1042b60;
    fmt_Fprintf(in_stack_fffffffffffffdf8, var_200h, var_1f8h, CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), var_1e8h
                 , in_stack_fffffffffffffe20, in_stack_fffffffffffffe28);
    var_58h = runtime_convTstring(in_stack_fffffffffffffdf8, var_200h, in_stack_fffffffffffffe20);
    var_60h = 0x1042920;
    fmt_Fprintf(in_stack_fffffffffffffdf8, var_200h, var_1f8h, CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), var_1e8h
                 , in_stack_fffffffffffffe20, in_stack_fffffffffffffe28);
    var_1a8h = 0xfaa;
    var_1b0h = CONCAT44((int32_t)var_1a0h, 0x1015a);
    var_1c0h = var_1b0h;
    var_1b8h = 0xfaa;
    var_168h = runtime_makeslice(in_stack_fffffffffffffdf8, var_200h, var_1f8h);
    *(undefined *)var_168h = (undefined)var_1c0h;
    *(undefined *)(var_168h + 1) = var_1c0h._1_1_;
    *(uint16_t *)(var_168h + 2) = var_1c0h._2_2_ << 8 | var_1c0h._2_2_ >> 8;
    *(uint32_t *)(var_168h + 4) =
         var_1c0h._4_4_ >> 0x18 | (var_1c0h._4_4_ & 0xff0000) >> 8 | (var_1c0h._4_4_ & 0xff00) << 8 |
         var_1c0h._4_4_ << 0x18;
    *(uint16_t *)(var_168h + 8) = (uint16_t)var_1b8h << 8 | (uint16_t)var_1b8h >> 8;
    puVar7 = (undefined *)((int64_t)&var_1b8h + 2);
    if (puVar7 != (undefined *)(var_168h + 10)) {
        puVar7 = (undefined *)(uint64_t)var_1b8h._2_4_;
        *(uint32_t *)(var_168h + 10) = var_1b8h._2_4_;
        *(undefined2 *)(var_168h + 0xe) = var_1b8h._6_2_;
    }
    fcn.00478af0(var_168h, 0x10, puVar7, &var_e0h);
    var_b0h = 0x10429a0;
    var_a8h = (var_1c0h & 0xffU) * 8 + 0xf7a720;
    var_a0h = 0x10429a0;
    var_98h = ((uint64_t)var_1c0h >> 8 & 0xff) * 8 + 0xf7a720;
    var_88h = runtime_convT16(in_stack_fffffffffffffdf8);
    var_90h = 0x1042a20;
    var_78h = runtime_convT32(in_stack_fffffffffffffdf8);
    var_80h = 0x1042aa0;
    var_68h = runtime_convT16(in_stack_fffffffffffffdf8);
    var_70h = 0x1042a20;
    var_180h = var_1a0h + 0x10;
    fmt_Fprintf(in_stack_fffffffffffffdf8, var_200h, var_1f8h, CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), var_1e8h
                 , in_stack_fffffffffffffe20, in_stack_fffffffffffffe28);
    var_b8h = runtime_convTslice(in_stack_fffffffffffffdf8, var_200h, var_1f8h);
    var_c0h = 0x1038240;
    fmt_Fprintf(in_stack_fffffffffffffdf8, var_200h, var_1f8h, CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), var_1e8h
                 , in_stack_fffffffffffffe20, in_stack_fffffffffffffe28);
    var_190h = var_180h;
    if ((uint64_t)var_180h < 0x11) {
        iVar8 = 0x10;
        var_170h = var_168h;
    } else {
        iVar8 = 0x10;
        var_170h = runtime_growslice(in_stack_fffffffffffffdf8, var_200h, var_1f8h, 
                                CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), var_1e8h, var_178h);
    }
    var_188h = iVar8;
    runtime_memmove(var_170h + 0x10, var_178h, var_1a0h);
    var_c8h = runtime_convT64(in_stack_fffffffffffffdf8);
    var_d0h = 0x1042b60;
    fmt_Fprintf(in_stack_fffffffffffffdf8, var_200h, var_1f8h, CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), var_1e8h
                 , in_stack_fffffffffffffe20, in_stack_fffffffffffffe28);
    (**(code **)(in_RAX + 0x50))(unaff_RBX, var_170h, var_190h, var_188h);
    if (extraout_RBX != 0) {
        var_20h = *(int64_t *)(extraout_RBX + 8);
        var_18h = extraout_RCX;
        uVar4 = fmt_Errorf(in_stack_fffffffffffffdf8, var_200h, var_1f8h, 
                             CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), var_1e8h, var_188h);
        return uVar4;
    }
    var_e8h = runtime_convT16(in_stack_fffffffffffffdf8);
    var_f0h = 0x1042a20;
    var_d8h = runtime_convT64(in_stack_fffffffffffffdf8);
    uVar14 = *(uint64_t *)0x3512080;
    var_e0h = 0x1042b60;
    uVar4 = fmt_Fprintf(in_stack_fffffffffffffdf8, var_200h, var_1f8h, CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), 
                         var_1e8h, in_stack_fffffffffffffe20, in_stack_fffffffffffffe28);
    time_Now(uVar4, uVar14);
    uVar4 = extraout_RCX_00;
    uVar5 = time_Time_Add(in_stack_fffffffffffffdf8, var_200h, var_1f8h, CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), 
                         in_stack_fffffffffffffe20);
    (**(code **)(in_RAX + 0x40))(unaff_RBX, uVar5, extraout_RBX_00, uVar4);
    uVar14 = extraout_R10;
    var_168h = runtime_makeslice(in_stack_fffffffffffffdf8, var_200h, var_1f8h);
    if (in_RAX != 0) {
        uVar9 = (uint64_t)*(uint32_t *)(in_RAX + 0x10);
        do {
            uVar13 = uVar9 & **(uint64_t **)0xfbbbb0;
            uVar14 = uVar13 * 0x10;
            if ((*(uint64_t **)0xfbbbb0)[uVar13 * 2 + 1] == *(uint64_t *)(in_RAX + 8)) goto code_r0x00e2112e;
            uVar14 = uVar9 + 1;
            uVar9 = uVar14;
        } while ((*(uint64_t **)0xfbbbb0)[uVar13 * 2 + 1] != 0);
        runtime_typeAssert(in_stack_fffffffffffffdf8, var_200h, var_1e8h, in_stack_fffffffffffffe20);
    }
code_r0x00e2112e:
    iVar8 = var_168h;
    io_ReadAtLeast(in_stack_fffffffffffffdf8, var_200h, var_1f8h, CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), var_1e8h
                 , in_stack_fffffffffffffe20, var_198h);
    if (unaff_RBX != 0) {
        var_40h = *(int64_t *)(unaff_RBX + 8);
        var_38h = iVar8;
        var_28h = runtime_convT64(in_stack_fffffffffffffdf8);
        var_30h = 0x1042b60;
        uVar4 = fmt_Errorf(in_stack_fffffffffffffdf8, var_200h, var_1f8h, 
                             CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), var_1e8h, var_188h);
        return uVar4;
    }
    uVar1 = *(undefined2 *)var_168h;
    var_1c6h = (undefined2)((uint32_t)in_XMM15_Dc >> 0x10);
    uStack_1c4 = (undefined2)in_XMM15_Dd;
    var_1c2h = (undefined2)((uint32_t)in_XMM15_Dd >> 0x10);
    uVar2 = *(uint16_t *)(var_168h + 2);
    uVar11 = *(uint32_t *)(var_168h + 4);
    uVar11 = uVar11 >> 0x18 | (uVar11 & 0xff0000) >> 8 | (uVar11 & 0xff00) << 8 | uVar11 << 0x18;
    if (&var_1c6h != (undefined2 *)(var_168h + 10)) {
        var_1c2h = *(undefined2 *)(var_168h + 0xe);
        var_1c6h = (undefined2)*(undefined4 *)(var_168h + 10);
        uStack_1c4 = (undefined2)((uint32_t)*(undefined4 *)(var_168h + 10) >> 0x10);
    }
    var_118h = runtime_convT16(in_stack_fffffffffffffdf8);
    var_120h = 0x1042a20;
    var_108h = runtime_convT32(in_stack_fffffffffffffdf8);
    var_110h = 0x1042aa0;
    var_f8h = runtime_convT16(in_stack_fffffffffffffdf8);
    var_100h = 0x1042a20;
    fmt_Fprintf(in_stack_fffffffffffffdf8, var_200h, var_1f8h, CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), var_1e8h
                 , in_stack_fffffffffffffe20, in_stack_fffffffffffffe28);
    if (uVar11 == 0) {
        uVar4 = fmt_Errorf(in_stack_fffffffffffffdf8, var_200h, var_1f8h, 
                             CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), var_1e8h, var_188h);
        return uVar4;
    }
    var_168h = runtime_makeslice(in_stack_fffffffffffffdf8, var_200h, var_1f8h);
    var_180h = (int64_t)uVar11;
    if (in_RAX == 0) goto code_r0x00e2133d;
    uVar13 = *(uint64_t *)(in_RAX + 8);
    uVar14 = **(uint64_t **)0xfbbbd0;
    uVar9 = (uint64_t)*(uint32_t *)(in_RAX + 0x10);
    puVar12 = *(uint64_t **)0xfbbbd0;
code_r0x00e216d8:
    uVar10 = uVar9 & uVar14;
    if (puVar12[uVar10 * 2 + 1] != uVar13) goto code_r0x00e216ec;
    goto code_r0x00e2133d;
code_r0x00e216ec:
    uVar9 = uVar9 + 1;
    if (puVar12[uVar10 * 2 + 1] == 0) {
        runtime_typeAssert(in_stack_fffffffffffffdf8, var_200h, var_1e8h, in_stack_fffffffffffffe20);
code_r0x00e2133d:
        io_ReadAtLeast(in_stack_fffffffffffffdf8, var_200h, var_1f8h, CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), 
                     var_1e8h, in_stack_fffffffffffffe20, var_198h);
        var_130h = CONCAT44(in_XMM15_Db, in_XMM15_Da);
        var_128h = CONCAT44(in_XMM15_Dd, in_XMM15_Dc);
        runtime_slicebytetostring(in_stack_fffffffffffffdf8, var_200h, var_1f8h);
        var_128h = runtime_convTstring(in_stack_fffffffffffffdf8, var_200h, in_stack_fffffffffffffe20);
        uVar13 = *(uint64_t *)0x3512080;
        var_130h = 0x1042920;
        puVar12 = (uint64_t *)0x1;
        fmt_Fprintf(in_stack_fffffffffffffdf8, var_200h, var_1f8h, CONCAT71(var_1f0h._1_7_, (undefined)var_1f0h), 
                     var_1e8h, in_stack_fffffffffffffe20, in_stack_fffffffffffffe28);
        iVar8 = var_180h;
        var_200h = var_180h;
        var_1f8h = var_180h;
        var_1f0h._0_1_ = 0;
        in_stack_fffffffffffffdf8 = var_168h;
        internal_bytealg_IndexByte_abi0(var_168h, var_180h, (uint64_t)var_1f0h._1_7_ << 8, var_1e8h);
        in_XMM15_Da = 0;
        in_XMM15_Db = 0;
        in_XMM15_Dc = 0;
        in_XMM15_Dd = 0;
        uVar9 = var_1e8h;
        if (var_1e8h == -1) {
            uVar9 = var_180h;
        }
        if (uVar9 <= (uint64_t)var_180h) {
            var_140h = 0;
            var_138h = 0;
            var_198h = uVar9;
            runtime_slicebytetostring(in_stack_fffffffffffffdf8, iVar8, iVar8);
            var_138h = runtime_convTstring(in_stack_fffffffffffffdf8, iVar8, in_stack_fffffffffffffe20);
            var_140h = 0x1042920;
            fmt_Fprintf(in_stack_fffffffffffffdf8, iVar8, iVar8, (uint64_t)var_1f0h._1_7_ << 8, var_1e8h, 
                         in_stack_fffffffffffffe20, in_stack_fffffffffffffe28);
            var_10h = runtime_newobject(in_stack_fffffffffffffdf8);
            iVar3 = var_198h;
            iVar6 = encoding_json_Unmarshal(in_stack_fffffffffffffdf8, iVar8, iVar8, (uint64_t)var_1f0h._1_7_ << 8, var_1e8h, 
                                 CONCAT44(uVar11, CONCAT22(uVar2 << 8 | uVar2 >> 8, uVar1)));
            if (iVar6 != 0) {
                var_30h = CONCAT44(in_XMM15_Db, in_XMM15_Da);
                var_28h = CONCAT44(in_XMM15_Dd, in_XMM15_Dc);
                var_40h = *(int64_t *)(iVar6 + 8);
                var_38h = iVar3;
                runtime_slicebytetostring(in_stack_fffffffffffffdf8, iVar8, iVar8);
                var_28h = runtime_convTstring(in_stack_fffffffffffffdf8, iVar8, in_stack_fffffffffffffe20);
                var_30h = 0x1042920;
                uVar4 = fmt_Errorf(in_stack_fffffffffffffdf8, iVar8, iVar8, (uint64_t)var_1f0h._1_7_ << 8, var_1e8h, 
                                     var_188h);
                return uVar4;
            }
            if (*(int64_t *)var_10h == 0) {
                var_150h = CONCAT44(in_XMM15_Db, in_XMM15_Da);
                var_148h = CONCAT44(in_XMM15_Dd, in_XMM15_Dc);
                var_148h = runtime_convTstring(in_stack_fffffffffffffdf8, iVar8, in_stack_fffffffffffffe20);
                var_150h = 0x1042920;
                fmt_Fprintf(in_stack_fffffffffffffdf8, iVar8, iVar8, (uint64_t)var_1f0h._1_7_ << 8, var_1e8h, 
                             in_stack_fffffffffffffe20, in_stack_fffffffffffffe28);
                var_160h = 0x1042920;
                var_158h = 0x2e690e0 /* "上传地图操作成功完成" */;
                fmt_Fprintln(in_stack_fffffffffffffdf8, iVar8, iVar8, (uint64_t)var_1f0h._1_7_ << 8, var_1e8h);
                return 0;
            }
            var_20h = CONCAT44(in_XMM15_Db, in_XMM15_Da);
            var_18h = CONCAT44(in_XMM15_Dd, in_XMM15_Dc);
            var_18h = runtime_convT64(in_stack_fffffffffffffdf8);
            var_20h = 0x1042b60;
            uVar4 = fmt_Errorf(in_stack_fffffffffffffdf8, iVar8, iVar8, (uint64_t)var_1f0h._1_7_ << 8, var_1e8h, 
                                 var_188h);
            return uVar4;
        }
        runtime_panicSliceAcap(in_stack_fffffffffffffdf8, iVar8);
        uVar9 = extraout_RDX;
    }
    goto code_r0x00e216d8;
}

/* CAS-Backend/pkg/agvcontrol.DelMapRequest | VA 0xe217c0 | map.go:606
   DWARF parameters and results: conn net.Conn, mapName string, ~r0 bool, ~r1 error
   DWARF locals: n int, &buf *bytes.Buffer, headerBuf *bytes.Reader, jsonData []uint8, err error, responseHeaderBytes []uint8, responseData []uint8, reqData CAS-Backend/pkg/agvcontrol.DownloadMapReq, header CAS-Backend/pkg/agvcontrol.ProtocolHeader, responseHeader CAS-Backend/pkg/agvcontrol.ProtocolHeader, &response *CAS-Backend/pkg/agvcontrol.Response */
// WARNING: [rz-ghidra] Detected overlap for variable var_bch
// WARNING: [rz-ghidra] Removing arg arg_3ch because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_cch
// WARNING: [rz-ghidra] Detected overlap for variable var_88h
// WARNING: [rz-ghidra] Detected overlap for variable var_10h

undefined8 __stdcall
pkg_agvcontrol_DelMapRequest
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_80h,
          int64_t arg_c0h, int64_t arg_e0h)
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
    undefined8 *puVar9;
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
    uint64_t uVar13;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    undefined8 in_XMM15_Qa;
    undefined8 in_XMM15_Qb;
    int64_t var_f8h;
    int64_t var_f0h;
    int64_t var_e8h;
    int64_t var_e0h;
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
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x18) = arg4;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x58) = arg4;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x50) = arg1;
            uVar7 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe21815;
            uVar5 = runtime_convTstring(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe21825;
            uVar6 = encoding_json_Marshal(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88));
            if (arg1 != 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = *(undefined8 *)(arg1 + 8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_RSI;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe2186a;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80));
                return 0;
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x90) = uVar7;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x98) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = uVar6;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xc0) = 0x1015a;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xfac;
            *(int32_t *)((int64_t)*(undefined **)0x20 + -0xbc) = (int32_t)uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe218af;
            uVar7 = runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = uVar7;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb0) =
                 *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xc0);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa8) =
                 *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8);
            in_RSI = 0x110e8c0;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe218ea;
            iVar8 = encoding_binary_Write(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xb0), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0x98), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -8));
            if (iVar8 != 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = *(undefined8 *)(iVar8 + 8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar7;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe2192f;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80));
                return 0;
            }
            unaff_RBX = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x78);
            arg1 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe21965;
            bytes___Buffer__Write(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8));
            piVar1 = *(int64_t **)((int64_t)*(undefined **)0x20 + -0x10);
            arg4 = piVar1[1];
            uVar10 = piVar1[3];
            if (uVar10 <= (uint64_t)arg4) break;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe21edf;
            in_RAX = runtime_panicSliceB(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                                  *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8));
        }
        piVar11[1] = in_RAX;
        piVar11[2] = unaff_RBX;
        piVar11[3] = arg4;
        piVar11[4] = arg1;
        piVar11[-1] = 0xe21ef9;
        runtime_morestack_noctxt_abi0(*piVar11, piVar11[1]);
        in_RAX = piVar11[1];
        unaff_RBX = piVar11[2];
        arg4 = piVar11[3];
        arg1 = piVar11[4];
        *(int64_t **)0x20 = (BADSPACEBASE *)piVar11;
        unaff_RBP = puVar12;
    } while( true );
    pcVar2 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + 8) + 0x50);
    iVar8 = *piVar1;
    iVar3 = piVar1[2];
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe219b3;
    (*pcVar2)(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), 
              iVar8 + (uVar10 & (int64_t)-(iVar3 - uVar10) >> 0x3f), arg4 - uVar10);
    if (extraout_RBX != 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = *(undefined8 *)(extraout_RBX + 8);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = extraout_RCX;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe21a6b;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80));
        return 0;
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe219bd;
    time_Now();
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe219cc;
    uVar7 = extraout_RCX_00;
    uVar5 = time_Time_Add(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8));
    pcVar2 = *(code **)(*(int64_t *)((int64_t)*(undefined **)0x20 + 8) + 0x40);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe219eb;
    (*pcVar2)(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), uVar5, extraout_RBX_00, uVar7);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe219ff;
    uVar7 = runtime_makeslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0));
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = uVar7;
    iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
    if (iVar8 != 0) {
        uVar10 = (uint64_t)*(uint32_t *)(iVar8 + 0x10);
        do {
            uVar13 = uVar10 & **(uint64_t **)0xfbbbf0;
            if ((*(uint64_t **)0xfbbbf0)[uVar13 * 2 + 1] == *(uint64_t *)(iVar8 + 8)) goto code_r0x00e21a7c;
            uVar10 = uVar10 + 1;
        } while ((*(uint64_t **)0xfbbbf0)[uVar13 * 2 + 1] != 0);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe21ebd;
        runtime_typeAssert(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8));
        uVar7 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
    }
code_r0x00e21a7c:
    iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe21a9d;
    uVar5 = io_ReadAtLeast(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90));
    if (iVar8 != 0) {
        iVar3 = iVar8;
        if (*(int64_t *)0xfb6dc0 == iVar8) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xa0) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = uVar7;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88) = iVar8;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe21ade;
            cVar4 = runtime_ifaceeq(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                                 *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0));
            if (cVar4 != '\0') {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe21b90;
                fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80));
                return 0;
            }
            uVar7 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70);
            iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88);
            iVar3 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x88);
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
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe21b2f;
        uVar7 = runtime_convT64(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100));
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = 0x1042b60;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = uVar7;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe21b67;
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
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe21bb4;
    puVar9 = (undefined8 *)runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100));
    puVar9[1] = 0x10;
    puVar9[2] = 0x10;
    if (*(int32_t *)0x355db50 == 0) {
        uVar7 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
    } else {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe21bdc;
        puVar9 = (undefined8 *)runtime_gcWriteBarrier1();
        uVar7 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
        *extraout_R11 = uVar7;
    }
    *puVar9 = uVar7;
    puVar9[3] = 0;
    puVar9[4] = 0xffffffffffffffff;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe21c25;
    iVar8 = encoding_binary_Read(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x68), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x20));
    if (iVar8 != 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = *(undefined8 *)(iVar8 + 8);
        *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x20) = puVar9;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe21d08;
        fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80));
        return 0;
    }
    if (*(int32_t *)((int64_t)*(undefined **)0x20 + -0xcc) == 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = 0x1042920;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) = 0x2e690a0 /* "响应为空" */;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe21cc6;
        fmt_Fprintln(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0));
    } else {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe21c45;
        uVar7 = runtime_makeslice(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0));
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = uVar7;
        *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x80) =
             (uint64_t)*(uint32_t *)((int64_t)*(undefined **)0x20 + -0xcc);
        iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
        if (iVar8 != 0) {
            uVar10 = (uint64_t)*(uint32_t *)(iVar8 + 0x10);
            do {
                uVar13 = uVar10 & **(uint64_t **)0xfbbc10;
                if ((*(uint64_t **)0xfbbc10)[uVar13 * 2 + 1] == *(uint64_t *)(iVar8 + 8)) goto code_r0x00e21d2b;
                uVar10 = uVar10 + 1;
            } while ((*(uint64_t **)0xfbbc10)[uVar13 * 2 + 1] != 0);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe21e72;
            runtime_typeAssert(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8));
            uVar7 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
        }
code_r0x00e21d2b:
        iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe21d45;
        io_ReadAtLeast(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0xd8), 
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90));
        if (iVar8 != 0) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = *(undefined8 *)(iVar8 + 8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = uVar7;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe21d77;
            uVar7 = runtime_convT64(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = 0x1042b60;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = uVar7;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe21daf;
            fmt_Errorf(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                         *(int64_t *)((int64_t)*(undefined **)0x20 + -0x80));
            return 0;
        }
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe21dcd;
        runtime_newobject(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100));
        uVar7 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x80);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe21def;
        iVar8 = encoding_json_Unmarshal(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x100), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xf0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe8), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -0xe0), 
                             *(int64_t *)((int64_t)*(undefined **)0x20 + -200));
        if (iVar8 != 0) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = *(undefined8 *)(iVar8 + 8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar7;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = 0xe21e38;
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
