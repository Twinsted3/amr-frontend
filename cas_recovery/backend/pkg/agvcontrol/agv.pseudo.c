/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/pkg/agvcontrol.(*AGVClient).dialLocked | VA 0xe121c0 | agv.go:140
   DWARF parameters and results: c *CAS-Backend/pkg/agvcontrol.AGVClient, ~r0 error
   DWARF locals: addr string, conn net.Conn, err error */
// WARNING: Variable defined which should be unmapped: var_48h
// WARNING: Variable defined which should be unmapped: var_40h

undefined8 __stdcall pkg_agvcontrol___AGVClient__dialLocked(int64_t arg_8h, int64_t arg_30h)
{
    int64_t in_RAX;
    int64_t iVar1;
    int64_t iVar2;
    undefined8 uVar3;
    int64_t extraout_RCX;
    undefined8 extraout_RBX;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000010;
    int64_t in_stack_ffffffffffffff90;
    int64_t in_stack_ffffffffffffff98;
    int64_t in_stack_ffffffffffffffa0;
    int64_t in_stack_ffffffffffffffa8;
    int64_t in_stack_ffffffffffffffb0;
    int64_t var_48h;
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    runtime_convTstring(in_stack_ffffffffffffff90, in_stack_ffffffffffffff98, var_48h);
    runtime_convT64(in_stack_ffffffffffffff90);
    iVar1 = fmt_Sprintf(in_stack_ffffffffffffff90, in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0, 
                         in_stack_ffffffffffffffa8, in_stack_ffffffffffffffb0);
    iVar2 = net_DialTimeout(in_stack_ffffffffffffff90, in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0, 
                         in_stack_ffffffffffffffa8, in_stack_ffffffffffffffb0);
    if (iVar1 == 0) {
        if (iVar2 == 0x2e77878) {
            net___TCPConn__SetKeepAlive(in_stack_ffffffffffffff90, in_stack_ffffffffffffff98, in_stack_ffffffffffffffa8, 3);
            net___TCPConn__SetKeepAlivePeriod(in_stack_ffffffffffffff90, in_stack_ffffffffffffff98, in_stack_ffffffffffffffa8, 3);
        }
        uVar3 = 3;
        *(int64_t *)(in_RAX + 8) = iVar2;
        if (*(int32_t *)0x355db50 != 0) {
            runtime_gcWriteBarrier2();
            *extraout_R11 = extraout_RBX;
            extraout_R11[1] = *(undefined8 *)(extraout_RCX + 0x10);
            in_RAX = extraout_RCX;
            uVar3 = extraout_RBX;
        }
        *(undefined8 *)(in_RAX + 0x10) = uVar3;
        return 0;
    }
    uVar3 = fmt_Errorf(in_stack_ffffffffffffff90, in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0, 
                         in_stack_ffffffffffffffa8, in_stack_ffffffffffffffb0, in_stack_00000010);
    return uVar3;
}

/* CAS-Backend/pkg/agvcontrol.ClearConnDeadlines | VA 0xe12340 | agv.go:155
   DWARF parameters and results: conn net.Conn
   DWARF locals: (no entries) */
void __stdcall pkg_agvcontrol_ClearConnDeadlines(int64_t arg_8h, int64_t arg_10h, int64_t arg_40h)
{
    int64_t in_RAX;
    undefined8 unaff_RBX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    if (in_RAX != 0) {
        (**(code **)(in_RAX + 0x40))(unaff_RBX, 0, 0, 0);
        (**(code **)(in_RAX + 0x48))(unaff_RBX, 0, 0, 0);
        return;
    }
    return;
}

/* CAS-Backend/pkg/agvcontrol.isRetryableConnErr | VA 0xe123c0 | agv.go:163
   DWARF parameters and results: err error, ~r0 bool
   DWARF locals: &ne *net.Error, msg string */
// WARNING: [rz-ghidra] Detected overlap for variable var_60h
// WARNING: [rz-ghidra] Detected overlap for variable var_54h
// WARNING: [rz-ghidra] Detected overlap for variable var_50h
// WARNING: [rz-ghidra] Detected overlap for variable var_52h
// WARNING: [rz-ghidra] Detected overlap for variable var_53h

uint64_t __stdcall pkg_agvcontrol_isRetryableConnErr(int64_t arg_8h, int64_t arg_10h, int64_t arg_50h)
{
    char cVar1;
    int64_t in_RAX;
    int64_t *piVar2;
    int64_t iVar3;
    uint64_t uVar4;
    undefined8 unaff_RBX;
    int64_t unaff_R14;
    bool bVar5;
    int64_t in_XMM15_Qa;
    int64_t in_XMM15_Qb;
    undefined auVar6 [16];
    int64_t unaff_retaddr;
    int64_t in_stack_00000028;
    int64_t in_stack_00000048;
    int64_t in_stack_00000060;
    int64_t in_stack_00000078;
    int64_t in_stack_ffffffffffffffc0;
    int64_t in_stack_ffffffffffffffc8;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    if (in_RAX != 0) {
        cVar1 = errors_Is(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, 
                             in_stack_ffffffffffffffd8);
        if (cVar1 == '\0') {
            cVar1 = errors_Is(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, 
                                 in_stack_ffffffffffffffd8);
            if (cVar1 == '\0') {
                piVar2 = (int64_t *)runtime_newobject(in_stack_ffffffffffffffc0);
                *piVar2 = in_XMM15_Qa;
                piVar2[1] = in_XMM15_Qb;
                cVar1 = errors_As(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, 
                                     in_stack_ffffffffffffffd8);
                if (cVar1 != '\0') {
                    cVar1 = (**(code **)(*piVar2 + 0x28))(piVar2[1], unaff_RBX);
                    if (cVar1 != '\0') {
                        return 1;
                    }
                }
                (**(code **)(in_RAX + 0x18))(unaff_RBX);
                strings_ToLower(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_00000078);
                iVar3 = internal_stringslite_Index(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, 
                                     in_stack_ffffffffffffffd8, unaff_retaddr, in_RAX, in_stack_00000028, 
                                     in_stack_00000048, in_stack_00000060);
                if (iVar3 < 0) {
                    iVar3 = internal_stringslite_Index(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0
                                         , in_stack_ffffffffffffffd8, unaff_retaddr, in_RAX, in_stack_00000028, 
                                         in_stack_00000048, in_stack_00000060);
                    if (iVar3 < 0) {
                        iVar3 = internal_stringslite_Index(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, 
                                             in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, unaff_retaddr, in_RAX
                                             , in_stack_00000028, in_stack_00000048, in_stack_00000060);
                        bVar5 = -1 < iVar3;
                    } else {
                        bVar5 = true;
                    }
                } else {
                    bVar5 = true;
                }
                if (bVar5) {
                    bVar5 = true;
                } else {
                    iVar3 = internal_stringslite_Index(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0
                                         , in_stack_ffffffffffffffd8, unaff_retaddr, in_RAX, in_stack_00000028, 
                                         in_stack_00000048, in_stack_00000060);
                    if (iVar3 < 0) {
                        iVar3 = internal_stringslite_Index(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, 
                                             in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, unaff_retaddr, in_RAX
                                             , in_stack_00000028, in_stack_00000048, in_stack_00000060);
                        bVar5 = -1 < iVar3;
                    } else {
                        bVar5 = true;
                    }
                }
                if (bVar5) {
                    uVar4 = 1;
                } else {
                    iVar3 = internal_stringslite_Index(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0
                                         , in_stack_ffffffffffffffd8, unaff_retaddr, in_RAX, in_stack_00000028, 
                                         in_stack_00000048, in_stack_00000060);
                    if (iVar3 < 0) {
                        auVar6 = internal_stringslite_Index(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, 
                                              in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, unaff_retaddr, 
                                              in_RAX, in_stack_00000028, in_stack_00000048, in_stack_00000060);
                        uVar4 = CONCAT71(auVar6._9_7_, -1 < auVar6._0_8_);
                    } else {
                        uVar4 = 1;
                    }
                }
                return uVar4 & 0xffffffff;
            }
        }
        return 1;
    }
    return 0;
}

/* CAS-Backend/pkg/agvcontrol.(*AGVClient).Run | VA 0xe12600 | agv.go:201
   DWARF parameters and results: c *CAS-Backend/pkg/agvcontrol.AGVClient, fn func(net.Conn) error, ~r0 error, ~r0 error
   DWARF locals: lastErr error, attempt int, err error */
// WARNING: Variable defined which should be unmapped: var_20h
// WARNING: [rz-ghidra] Detected overlap for variable var_50h

int64_t __stdcall pkg_agvcontrol___AGVClient__Run(int64_t arg_8h, int64_t arg_10h, int64_t arg_28h, int64_t arg_48h)
{
    int32_t iVar1;
    char cVar2;
    int32_t *in_RAX;
    int64_t iVar3;
    int32_t *extraout_RAX;
    int32_t *piVar4;
    undefined8 extraout_RCX;
    int64_t iVar5;
    undefined8 *unaff_RBX;
    undefined8 extraout_RBX;
    undefined8 extraout_RBX_00;
    undefined8 uVar6;
    undefined8 uVar7;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    int64_t in_XMM15_Qa;
    undefined auVar8 [16];
    int64_t unaff_retaddr;
    int64_t in_stack_ffffffffffffff98;
    int64_t in_stack_ffffffffffffffa0;
    int64_t var_51h;
    int64_t var_48h;
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, (int64_t)in_RAX);
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
    var_20h = 0xe128a0;
    var_10h = (int64_t)&var_20h;
    iVar5 = 0;
    iVar3 = 0;
    do {
        if (1 < iVar5) {
            (**(code **)var_10h)();
            return iVar3;
        }
        if (*(int64_t *)(in_RAX + 2) == 0) {
            iVar3 = pkg_agvcontrol___AGVClient__dialLocked(in_RAX);
        } else {
            iVar3 = 0;
        }
        if (iVar3 != 0) {
            (**(code **)var_10h)();
            return iVar3;
        }
        pkg_agvcontrol_ClearConnDeadlines(*(undefined8 *)(in_RAX + 2), *(undefined8 *)(in_RAX + 4));
        auVar8 = (*(code *)*unaff_RBX)(*(undefined8 *)(in_RAX + 2), *(undefined8 *)(in_RAX + 4));
        uVar7 = auVar8._8_8_;
        iVar3 = auVar8._0_8_;
        if (iVar3 == 0) {
            pkg_agvcontrol_ClearConnDeadlines(*(undefined8 *)(in_RAX + 2), *(undefined8 *)(in_RAX + 4));
            (**(code **)var_10h)();
            return in_XMM15_Qa;
        }
        (**(code **)(*(int64_t *)(in_RAX + 2) + 0x18))(*(undefined8 *)(in_RAX + 4));
        in_RAX[2] = 0;
        in_RAX[3] = 0;
        piVar4 = in_RAX;
        uVar6 = extraout_RBX;
        if (*(int32_t *)0x355db50 != 0) {
            runtime_gcWriteBarrier1(in_RAX, extraout_RBX, *(undefined8 *)(in_RAX + 4));
            *extraout_R11 = extraout_RCX;
            piVar4 = extraout_RAX;
            uVar6 = extraout_RBX_00;
        }
        piVar4[4] = 0;
        piVar4[5] = 0;
        iVar5 = iVar5 + 1;
        if (iVar5 < 2) {
            cVar2 = pkg_agvcontrol_isRetryableConnErr(in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0, var_20h);
        } else {
            cVar2 = '\0';
            uVar7 = uVar6;
        }
    } while (cVar2 != '\0');
    (**(code **)var_10h)(*(code **)var_10h, uVar7);
    return iVar3;
}

/* CAS-Backend/pkg/agvcontrol.(*AGVClient).Run.deferwrap1 | VA 0xe128a0 | agv.go:203
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_agvcontrol___AGVClient__Run_deferwrap1
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
