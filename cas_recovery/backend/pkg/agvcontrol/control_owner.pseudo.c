/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/pkg/agvcontrol.ControlOwnerAllowsManualDispatch | VA 0xe13800 | control_owner.go:47
   DWARF parameters and results: owner *CAS-Backend/pkg/agvcontrol.ControlOwnerResponse, ~r0 bool
   DWARF locals: (no entries) */
uint64_t __stdcall pkg_agvcontrol_ControlOwnerAllowsManualDispatch(int64_t arg_8h)
{
    undefined8 uVar1;
    int64_t in_RAX;
    int64_t iVar2;
    undefined8 uVar3;
    uint64_t uVar4;
    int64_t unaff_R14;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    if (in_RAX != 0) {
        uVar3 = *(undefined8 *)(in_RAX + 0x28);
        uVar1 = *(undefined8 *)(in_RAX + 0x30);
        iVar2 = pkg_agvcontrol_ParseCurrentLock(in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0);
        if ((char)uVar1 == '\0') {
            uVar4 = 0;
        } else if (iVar2 == 0) {
            uVar4 = 1;
        } else {
            uVar4 = CONCAT71((unkint7)((uint64_t)uVar3 >> 8), iVar2 == 2);
        }
        return uVar4 & 0xffffffff;
    }
    return 0;
}

/* CAS-Backend/pkg/agvcontrol.QueryControlOwner | VA 0xe13880 | control_owner.go:55
   DWARF parameters and results: conn net.Conn, ~r0 *CAS-Backend/pkg/agvcontrol.ControlOwnerResponse, ~r0 *CAS-Backend/pkg/agvcontrol.ControlOwnerResponse, ~r1 error, ~r1 error
   DWARF locals: &buf *bytes.Buffer, &resp *CAS-Backend/pkg/agvcontrol.ControlOwnerResponse, jsonData []uint8, hdrBytes []uint8, body []uint8, header CAS-Backend/pkg/agvcontrol.ProtocolHeader, respHeader CAS-Backend/pkg/agvcontrol.ProtocolHeader, err error */
// WARNING: Variable defined which should be unmapped: var_88h
// WARNING: Variable defined which should be unmapped: var_b8h
// WARNING: Variable defined which should be unmapped: var_a0h
// WARNING: Variable defined which should be unmapped: var_10h
// WARNING: Variable defined which should be unmapped: var_98h
// WARNING: Variable defined which should be unmapped: var_70h
// WARNING: Variable defined which should be unmapped: var_28h
// WARNING: Variable defined which should be unmapped: var_d1h
// WARNING: Removing unreachable block (ram,0x00e13ffd)
// WARNING: Removing unreachable block (ram,0x00e14008)
// WARNING: Removing unreachable block (ram,0x00e1400c)
// WARNING: [rz-ghidra] Detected overlap for variable var_bch
// WARNING: [rz-ghidra] Detected overlap for variable var_d0h
// WARNING: [rz-ghidra] Removing arg arg_44h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_cch
// WARNING: [rz-ghidra] Detected overlap for variable var_10h
// WARNING: [rz-ghidra] Detected overlap for variable var_eh

int64_t __stdcall pkg_agvcontrol_QueryControlOwner(int64_t arg_8h, int64_t arg_10h, int64_t arg_b8h, int64_t arg_118h)
{
    int64_t in_RAX;
    int64_t iVar1;
    int64_t iVar2;
    undefined8 uVar3;
    int64_t *piVar4;
    uint64_t uVar5;
    int64_t extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 uVar6;
    uint64_t uVar7;
    int64_t unaff_RBX;
    int64_t extraout_RBX;
    undefined8 extraout_RBX_00;
    uint64_t uVar8;
    int64_t *extraout_R11;
    int64_t unaff_R14;
    int64_t in_XMM15_Qa;
    int64_t in_XMM15_Qb;
    int64_t in_stack_fffffffffffffef8;
    int64_t in_stack_ffffffffffffff00;
    int64_t in_stack_ffffffffffffff08;
    int64_t in_stack_ffffffffffffff10;
    int64_t in_stack_ffffffffffffff18;
    int64_t in_stack_ffffffffffffff20;
    int64_t var_d1h;
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
    
    while (&var_88h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_80h = 0;
    if (in_RAX == 0) {
        fmt_Errorf(in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, in_stack_ffffffffffffff08, 
                     in_stack_ffffffffffffff10, in_stack_ffffffffffffff18, in_XMM15_Qb);
        return 0;
    }
    var_88h = in_XMM15_Qb;
    var_10h = in_XMM15_Qa;
    iVar1 = runtime_newobject(in_stack_fffffffffffffef8);
    var_18h = iVar1;
    iVar2 = encoding_binary_Write(in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, in_stack_ffffffffffffff08, 
                         in_stack_ffffffffffffff10, in_stack_ffffffffffffff18, in_stack_ffffffffffffff20, 0x424, var_a0h
                         , var_10h);
    if (iVar2 != 0) {
        var_38h = *(int64_t *)(iVar2 + 8);
        var_30h = iVar1;
        fmt_Errorf(in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, in_stack_ffffffffffffff08, 
                     in_stack_ffffffffffffff10, in_stack_ffffffffffffff18, var_88h);
        return 0;
    }
    bytes___Buffer__Write(in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, in_stack_ffffffffffffff08, 
                 in_stack_ffffffffffffff10);
    uVar5 = *(uint64_t *)(var_18h + 0x18);
    if (*(uint64_t *)(var_18h + 8) < uVar5) {
        runtime_panicSliceB(in_stack_fffffffffffffef8, in_stack_ffffffffffffff00);
        runtime_deferreturn(in_stack_fffffffffffffef8);
        return var_80h;
    }
    (**(code **)(in_RAX + 0x50))
              (unaff_RBX, *(int64_t *)var_18h + (uVar5 & (int64_t)-(*(int64_t *)(var_18h + 0x10) - uVar5) >> 0x3f), 
               *(uint64_t *)(var_18h + 8) - uVar5);
    if (extraout_RBX != 0) {
        var_38h = *(int64_t *)(extraout_RBX + 8);
        var_30h = extraout_RCX;
        fmt_Errorf(in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, in_stack_ffffffffffffff08, 
                     in_stack_ffffffffffffff10, in_stack_ffffffffffffff18, var_88h);
        return 0;
    }
    time_Now();
    uVar6 = extraout_RCX_00;
    uVar3 = time_Time_Add(in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, in_stack_ffffffffffffff08, 
                         in_stack_ffffffffffffff10, in_stack_ffffffffffffff20);
    (**(code **)(in_RAX + 0x40))(unaff_RBX, uVar3, extraout_RBX_00, uVar6);
    var_70h = 0xe14180;
    var_10h = (int64_t)&var_70h;
    var_28h = runtime_makeslice(in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, in_stack_ffffffffffffff08);
    if (in_RAX != 0) {
        uVar5 = (uint64_t)*(uint32_t *)(in_RAX + 0x10);
        do {
            uVar8 = uVar5 & **(uint64_t **)0xfbb690;
            if ((*(uint64_t **)0xfbb690)[uVar8 * 2 + 1] == *(uint64_t *)(in_RAX + 8)) goto code_r0x00e13bad;
            uVar5 = uVar5 + 1;
        } while ((*(uint64_t **)0xfbb690)[uVar8 * 2 + 1] != 0);
        runtime_typeAssert(in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, in_stack_ffffffffffffff18, 
                     in_stack_ffffffffffffff20);
    }
code_r0x00e13bad:
    iVar1 = var_28h;
    io_ReadAtLeast(in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, in_stack_ffffffffffffff08, 
                 in_stack_ffffffffffffff10, in_stack_ffffffffffffff18, in_stack_ffffffffffffff20, var_98h);
    if (unaff_RBX != 0) {
        var_38h = *(int64_t *)(unaff_RBX + 8);
        var_30h = iVar1;
        fmt_Errorf(in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, in_stack_ffffffffffffff08, 
                     in_stack_ffffffffffffff10, in_stack_ffffffffffffff18, var_88h);
        var_80h = 0;
        var_88h = 0x25;
        (**(code **)var_10h)();
        return var_80h;
    }
    piVar4 = (int64_t *)runtime_newobject(in_stack_fffffffffffffef8);
    piVar4[1] = 0x10;
    piVar4[2] = 0x10;
    if (*(int32_t *)0x355db50 != 0) {
        piVar4 = (int64_t *)runtime_gcWriteBarrier1();
        *extraout_R11 = var_28h;
    }
    *piVar4 = var_28h;
    piVar4[3] = 0;
    piVar4[4] = -1;
    iVar1 = encoding_binary_Read(in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, in_stack_ffffffffffffff08, 
                         in_stack_ffffffffffffff10, in_stack_ffffffffffffff18, in_stack_ffffffffffffff20, var_88h, 
                         var_70h, var_28h);
    if (iVar1 != 0) {
        var_38h = *(int64_t *)(iVar1 + 8);
        var_30h = (int64_t)piVar4;
        fmt_Errorf(in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, in_stack_ffffffffffffff08, 
                     in_stack_ffffffffffffff10, in_stack_ffffffffffffff18, var_88h);
        var_80h = 0;
        var_88h = 0x25;
        (**(code **)var_10h)();
        return var_80h;
    }
    stack0xffffffffffffff34 = (uint32_t)((uint64_t)in_XMM15_Qa >> 0x20);
    if (stack0xffffffffffffff34 == 0) {
        uVar5 = 0;
        var_78h = 0;
    } else {
        var_28h = runtime_makeslice(in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, in_stack_ffffffffffffff08);
        uVar5 = (uint64_t)stack0xffffffffffffff34;
        if (in_RAX != 0) {
            uVar8 = (uint64_t)*(uint32_t *)(in_RAX + 0x10);
            do {
                uVar7 = uVar8 & **(uint64_t **)0xfbb6b0;
                if ((*(uint64_t **)0xfbb6b0)[uVar7 * 2 + 1] == *(uint64_t *)(in_RAX + 8)) goto code_r0x00e13fdb;
                uVar8 = uVar8 + 1;
            } while ((*(uint64_t **)0xfbb6b0)[uVar7 * 2 + 1] != 0);
            runtime_typeAssert(in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, in_stack_ffffffffffffff18, 
                         in_stack_ffffffffffffff20);
        }
code_r0x00e13fdb:
        io_ReadAtLeast(in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, in_stack_ffffffffffffff08, 
                     in_stack_ffffffffffffff10, in_stack_ffffffffffffff18, in_stack_ffffffffffffff20, uVar5);
        var_78h = var_28h;
    }
    var_20h = runtime_newobject(in_stack_fffffffffffffef8);
    if ((uVar5 != 0) &&
       (iVar1 = encoding_json_Unmarshal(in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, in_stack_ffffffffffffff08, 
                             in_stack_ffffffffffffff10, in_stack_ffffffffffffff18, in_XMM15_Qa), iVar1 != 0)) {
        var_38h = *(int64_t *)(iVar1 + 8);
        var_30h = uVar5;
        fmt_Errorf(in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, in_stack_ffffffffffffff08, 
                     in_stack_ffffffffffffff10, in_stack_ffffffffffffff18, var_88h);
        var_80h = 0;
        var_88h = 0x23;
        (**(code **)var_10h)();
        return var_80h;
    }
    if (*(int64_t *)(var_20h + 0x60) == 0) {
        var_80h = var_20h;
        (**(code **)var_10h)();
        return var_80h;
    }
    var_50h = runtime_convT64(in_stack_fffffffffffffef8);
    var_58h = 0x1042b60;
    var_40h = runtime_convTstring(in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, in_stack_ffffffffffffff20);
    var_48h = 0x1042920;
    fmt_Errorf(in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, in_stack_ffffffffffffff08, 
                 in_stack_ffffffffffffff10, in_stack_ffffffffffffff18, var_88h);
    var_80h = var_20h;
    var_88h = 0x2e;
    (**(code **)var_10h)();
    return var_80h;
}

/* CAS-Backend/pkg/agvcontrol.QueryControlOwner.deferwrap1 | VA 0xe14180 | control_owner.go:78
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_agvcontrol_QueryControlOwner_deferwrap1
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
