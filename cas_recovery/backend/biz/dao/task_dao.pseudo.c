/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/biz/dao.Task.TableName | VA 0x997a00 | task_dao.go:221
   DWARF parameters and results: ~p0 CAS-Backend/biz/dao.Task, ~r0 string
   DWARF locals: (no entries) */
undefined  [16] biz_dao_Task_TableName(void)
{
    undefined auVar1 [16];
    
    auVar1._8_8_ = 8;
    auVar1._0_8_ = 0x1174083 /* "agv_task" */;
    return auVar1;
}

/* CAS-Backend/biz/dao.(*Task).JSONMarshal | VA 0x997a20 | task_dao.go:225
   DWARF parameters and results: t *CAS-Backend/biz/dao.Task, data interface {}, ~r0 string, ~r1 error
   DWARF locals: jsonBytes []uint8, err error */
// WARNING: [rz-ghidra] Detected overlap for variable var_88h

undefined8 __stdcall biz_dao___Task__JSONMarshal(int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h)
{
    int64_t in_RAX;
    undefined8 uVar1;
    int64_t in_RDI;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000058;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    encoding_json_Marshal(in_stack_ffffffffffffffe0, in_stack_ffffffffffffffe8, in_stack_00000058);
    if (in_RDI != 0) {
        return 0;
    }
    uVar1 = runtime_slicebytetostring(in_stack_ffffffffffffffe0, in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0);
    return uVar1;
}

/* CAS-Backend/biz/dao.(*Task).JSONUnmarshal | VA 0x997aa0 | task_dao.go:234
   DWARF parameters and results: t *CAS-Backend/biz/dao.Task, jsonStr string, target interface {}, ~r0 error
   DWARF locals: (no entries) */
void __stdcall
biz_dao___Task__JSONUnmarshal
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h)
{
    int64_t in_RAX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
        arg_8h = in_RAX;
    }
    runtime_stringtoslicebyte(in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, 
                 in_stack_fffffffffffffff0);
    encoding_json_Unmarshal(in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, 
                 in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0, arg_8h);
    return;
}

/* CAS-Backend/biz/dao.Insert_task | VA 0x997b20 | task_dao.go:238
   DWARF parameters and results: t *CAS-Backend/biz/dao.Task, ~r0 bool
   DWARF locals: result *gorm.io/gorm.DB */
// WARNING: Variable defined which should be unmapped: var_18h

undefined8 __stdcall biz_dao_Insert_task(int64_t arg_8h, int64_t arg_50h)
{
    int64_t in_RAX;
    int64_t iVar1;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_ffffffffffffffa0;
    int64_t in_stack_ffffffffffffffa8;
    int64_t in_stack_ffffffffffffffb0;
    int64_t in_stack_ffffffffffffffb8;
    int64_t in_stack_ffffffffffffffc0;
    int64_t in_stack_ffffffffffffffc8;
    int64_t in_stack_ffffffffffffffd0;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    iVar1 = gorm___DB__Create(in_stack_ffffffffffffffa0, in_stack_ffffffffffffffa8, in_stack_ffffffffffffffb0, var_18h);
    if (*(int64_t *)(iVar1 + 8) != 0) {
        fmt_Fprintf(in_stack_ffffffffffffffa0, in_stack_ffffffffffffffa8, in_stack_ffffffffffffffb0, 
                     in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, 
                     in_stack_ffffffffffffffd0);
        return 0;
    }
    runtime_convT64(in_stack_ffffffffffffffa0);
    fmt_Fprintf(in_stack_ffffffffffffffa0, in_stack_ffffffffffffffa8, in_stack_ffffffffffffffb0, 
                 in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, 
                 in_stack_ffffffffffffffd0);
    return 1;
}

/* CAS-Backend/biz/dao.Delete_task | VA 0x997c40 | task_dao.go:249
   DWARF parameters and results: id int, ~r0 bool
   DWARF locals: result *gorm.io/gorm.DB */
undefined8 __stdcall biz_dao_Delete_task(int64_t arg_8h, int64_t arg_78h)
{
    int64_t in_RAX;
    undefined8 uVar1;
    undefined8 *puVar2;
    undefined8 uVar3;
    int64_t iVar4;
    undefined8 *extraout_RDI;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_ffffffffffffff68;
    int64_t in_stack_ffffffffffffff70;
    int64_t in_stack_ffffffffffffff78;
    int64_t in_stack_ffffffffffffff80;
    int64_t in_stack_ffffffffffffff88;
    int64_t in_stack_ffffffffffffff90;
    int64_t in_stack_ffffffffffffff98;
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
    
    while (&var_18h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    uVar1 = runtime_newobject(0x113baa0);
    puVar2 = (undefined8 *)runtime_newobject(0x104dea0);
    uVar3 = runtime_convT64(in_stack_ffffffffffffff68);
    *puVar2 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        uVar3 = runtime_gcWriteBarrier2();
        *extraout_R11 = uVar3;
        extraout_R11[1] = extraout_RDI[1];
        puVar2 = extraout_RDI;
    }
    puVar2[1] = uVar3;
    iVar4 = gorm___DB__Delete(*(undefined8 *)0x3512040, 0x10a2d00, uVar1, puVar2, 1, 1);
    if (*(int64_t *)(iVar4 + 8) != 0) {
        runtime_convT64(in_stack_ffffffffffffff68);
        var_18h = 0;
        if (*(int64_t *)(iVar4 + 8) != 0) {
            var_18h = *(int64_t *)(*(int64_t *)(iVar4 + 8) + 8);
        }
        var_10h = *(int64_t *)(iVar4 + 0x10);
        fmt_Fprintf(in_stack_ffffffffffffff68, in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, 
                     in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, 
                     in_stack_ffffffffffffff98);
        return 0;
    }
    runtime_convT64(in_stack_ffffffffffffff68);
    runtime_convT64(in_stack_ffffffffffffff68);
    fmt_Fprintf(in_stack_ffffffffffffff68, in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, 
                 in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, 
                 in_stack_ffffffffffffff98);
    return 1;
}

/* CAS-Backend/biz/dao.Update_task | VA 0x997e20 | task_dao.go:261
   DWARF parameters and results: t CAS-Backend/biz/dao.Task, ~r0 bool
   DWARF locals: result *gorm.io/gorm.DB */
undefined8 __stdcall
biz_dao_Update_task(int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
                   int64_t arg_38h, int64_t arg_40h, int64_t arg_48h, int64_t arg_58h, int64_t arg_68h, int64_t arg_80h,
                   int64_t arg_88h, int64_t arg_90h, int64_t arg_98h, int64_t arg_a0h, int64_t arg_a8h, int64_t arg_b0h,
                   int64_t arg_b8h, int64_t arg_c0h, int64_t arg_c8h, int64_t arg_d0h, int64_t arg_d8h, int64_t arg_e0h,
                   int64_t arg_e8h, int64_t arg_f0h)
{
    undefined8 uVar1;
    int64_t iVar2;
    undefined8 *puVar3;
    undefined8 uVar4;
    undefined8 uVar5;
    int64_t iVar6;
    int64_t extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 extraout_RCX_01;
    uint64_t uVar7;
    int64_t extraout_RSI;
    undefined8 *extraout_RDI;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    undefined8 *extraout_R11_03;
    undefined8 *extraout_R11_04;
    undefined8 *extraout_R11_05;
    undefined8 *extraout_R11_06;
    undefined8 *extraout_R11_07;
    undefined8 *extraout_R11_08;
    undefined8 *extraout_R11_09;
    undefined8 *extraout_R11_10;
    undefined8 *extraout_R11_11;
    undefined8 *extraout_R11_12;
    undefined8 *extraout_R11_13;
    undefined8 *extraout_R11_14;
    undefined8 *extraout_R11_15;
    int64_t unaff_R14;
    undefined auVar8 [16];
    int64_t unaff_retaddr;
    int64_t in_stack_ffffffffffffff40;
    int64_t in_stack_ffffffffffffff48;
    int64_t in_stack_ffffffffffffff50;
    int64_t in_stack_ffffffffffffff58;
    int64_t in_stack_ffffffffffffff60;
    int64_t in_stack_ffffffffffffff68;
    int64_t in_stack_ffffffffffffff70;
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
    
    while (&var_40h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, arg_8h);
    }
    uVar1 = runtime_newobject(0x113baa0);
    iVar2 = gorm___DB__getInstance(*(undefined8 *)0x3512040);
    iVar6 = *(int64_t *)(iVar2 + 0x20);
    *(undefined8 *)(iVar6 + 0x20) = 0x10a2d00;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier2();
        *extraout_R11 = uVar1;
        extraout_R11[1] = *(undefined8 *)(extraout_RCX + 0x28);
        iVar6 = extraout_RCX;
    }
    *(undefined8 *)(iVar6 + 0x28) = uVar1;
    puVar3 = (undefined8 *)runtime_newobject(0x104dea0);
    uVar1 = runtime_convT64(in_stack_ffffffffffffff40);
    *puVar3 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        uVar1 = runtime_gcWriteBarrier2();
        *extraout_R11_00 = uVar1;
        extraout_R11_00[1] = extraout_RDI[1];
        puVar3 = extraout_RDI;
    }
    puVar3[1] = uVar1;
    uVar1 = gorm___DB__Where(iVar2, 0x1042920, 0x2e67d60 /* "id = ?" */, puVar3, 1, 1);
    uVar4 = runtime_makemap(0x107d4c0, 0xf, 0);
    uVar5 = runtime_convTstring(arg_10h, arg_18h);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x117408b /* "taskType" */, 8);
    *puVar3 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_01 = uVar5;
        extraout_R11_01[1] = puVar3[1];
    }
    puVar3[1] = uVar5;
    uVar5 = runtime_convT64(in_stack_ffffffffffffff40);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x1172ae4 /* "pubUser" */, 7);
    *puVar3 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_02 = uVar5;
        extraout_R11_02[1] = puVar3[1];
    }
    puVar3[1] = uVar5;
    uVar5 = runtime_convTstring(arg_28h, arg_30h);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x1168a3f /* "pry" */, 3);
    *puVar3 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_03 = uVar5;
        extraout_R11_03[1] = puVar3[1];
    }
    puVar3[1] = uVar5;
    uVar5 = runtime_convT64(in_stack_ffffffffffffff40);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x116f267 /* "status" */, 6);
    *puVar3 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_04 = uVar5;
        extraout_R11_04[1] = puVar3[1];
    }
    puVar3[1] = uVar5;
    uVar5 = runtime_convTstring(arg_40h, arg_48h);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x116a5cb /* "descr" */, 5);
    *puVar3 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_05 = uVar5;
        extraout_R11_05[1] = puVar3[1];
    }
    puVar3[1] = uVar5;
    uVar5 = runtime_convT(0x11502e0, &arg_68h);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x1172acf /* "finTime" */, 7);
    *puVar3 = 0x11502e0;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_06 = uVar5;
        extraout_R11_06[1] = puVar3[1];
    }
    puVar3[1] = uVar5;
    uVar7 = (uint64_t)(uint8_t)arg_80h;
    auVar8 = runtime_mapassign_faststr(0x107d4c0, uVar4, 0x1168a3c /* "del" */, 3);
    puVar3 = auVar8._0_8_;
    *puVar3 = 0x1042d20;
    iVar6 = uVar7 * 8 + 0xf7a720;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, auVar8._8_8_, puVar3[1]);
        *extraout_R11_07 = extraout_RCX_00;
        iVar6 = extraout_RSI;
    }
    puVar3[1] = iVar6;
    uVar5 = runtime_convTstring(arg_88h, arg_90h);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x116a5d0 /* "vehid" */, 5);
    *puVar3 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_08 = uVar5;
        extraout_R11_08[1] = puVar3[1];
    }
    puVar3[1] = uVar5;
    uVar5 = runtime_convTstring(arg_98h, arg_a0h);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x1174093 /* "startPos" */, 8);
    *puVar3 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_09 = uVar5;
        extraout_R11_09[1] = puVar3[1];
    }
    puVar3[1] = uVar5;
    uVar5 = runtime_convTstring(arg_a8h, arg_b0h);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x116f26d /* "endPos" */, 6);
    *puVar3 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_10 = uVar5;
        extraout_R11_10[1] = puVar3[1];
    }
    puVar3[1] = uVar5;
    uVar5 = runtime_convTstring(arg_b8h, arg_c0h);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x11752cd /* "roadPoint" */, 9);
    *puVar3 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_11 = uVar5;
        extraout_R11_11[1] = puVar3[1];
    }
    puVar3[1] = uVar5;
    uVar5 = runtime_convTstring(arg_c8h, arg_d0h);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x117409b /* "taskName" */, 8);
    *puVar3 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_12 = uVar5;
        extraout_R11_12[1] = puVar3[1];
    }
    puVar3[1] = uVar5;
    uVar7 = (uint64_t)(uint8_t)arg_e8h;
    auVar8 = runtime_mapassign_faststr(0x107d4c0, uVar4, 0x1172aeb /* "isCycle" */, 7);
    puVar3 = auVar8._0_8_;
    *puVar3 = 0x1042d20;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, auVar8._8_8_, puVar3[1]);
        *extraout_R11_13 = extraout_RCX_01;
    }
    puVar3[1] = uVar7 * 8 + 0xf7a720;
    uVar5 = runtime_convTstring(arg_d8h, arg_e0h);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x11740a3 /* "endPoint" */, 8);
    *puVar3 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_14 = uVar5;
        extraout_R11_14[1] = puVar3[1];
    }
    puVar3[1] = uVar5;
    uVar5 = runtime_convT64(in_stack_ffffffffffffff40);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x11752d6 /* "runHeight" */, 9);
    *puVar3 = 0x1042ce0;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_15 = uVar5;
        extraout_R11_15[1] = puVar3[1];
    }
    puVar3[1] = uVar5;
    iVar6 = gorm___DB__Updates(uVar1, 0x107d4c0, uVar4);
    if (*(int64_t *)(iVar6 + 8) == 0) {
        var_40h = runtime_convT64(in_stack_ffffffffffffff40);
        var_30h = runtime_convT64(in_stack_ffffffffffffff40);
        var_38h = 0x1042ae0;
        fmt_Fprintf(in_stack_ffffffffffffff40, in_stack_ffffffffffffff48, in_stack_ffffffffffffff50, 
                     in_stack_ffffffffffffff58, in_stack_ffffffffffffff60, in_stack_ffffffffffffff68, 
                     in_stack_ffffffffffffff70);
        return 1;
    }
    var_20h = runtime_convT64(in_stack_ffffffffffffff40);
    var_28h = 0x1042b60;
    var_18h = 0;
    if (*(int64_t *)(iVar6 + 8) != 0) {
        var_18h = *(int64_t *)(*(int64_t *)(iVar6 + 8) + 8);
    }
    var_10h = *(int64_t *)(iVar6 + 0x10);
    fmt_Fprintf(in_stack_ffffffffffffff40, in_stack_ffffffffffffff48, in_stack_ffffffffffffff50, 
                 in_stack_ffffffffffffff58, in_stack_ffffffffffffff60, in_stack_ffffffffffffff68, 
                 in_stack_ffffffffffffff70);
    return 0;
}

/* CAS-Backend/biz/dao.Select1_task | VA 0x9986a0 | task_dao.go:290
   DWARF parameters and results: id int, ~r0 bool, ~r1 CAS-Backend/biz/dao.Task
   DWARF locals: &t *CAS-Backend/biz/dao.Task, result *gorm.io/gorm.DB */
// WARNING: Variable defined which should be unmapped: var_8h

undefined8 __stdcall biz_dao_Select1_task(int64_t arg_8h, int64_t arg_40h, int64_t arg_f8h)
{
    undefined8 uVar1;
    undefined8 *puVar2;
    undefined8 uVar3;
    int64_t iVar4;
    undefined8 *extraout_RDI;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t var_88h;
    int64_t in_stack_ffffffffffffff88;
    int64_t in_stack_ffffffffffffff90;
    int64_t in_stack_ffffffffffffff98;
    int64_t in_stack_ffffffffffffffa0;
    int64_t in_stack_ffffffffffffffa8;
    int64_t in_stack_ffffffffffffffb0;
    int64_t in_stack_ffffffffffffffb8;
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, arg_8h);
    }
    runtime_duffzero_offset_280();
    uVar1 = runtime_newobject(0x113baa0);
    puVar2 = (undefined8 *)runtime_newobject(0x104dea0);
    uVar3 = runtime_convT64(in_stack_ffffffffffffff88);
    *puVar2 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        uVar3 = runtime_gcWriteBarrier2();
        *extraout_R11 = uVar3;
        extraout_R11[1] = extraout_RDI[1];
        puVar2 = extraout_RDI;
    }
    puVar2[1] = uVar3;
    iVar4 = gorm___DB__First(*(undefined8 *)0x3512040, 0x10a2d00, uVar1, puVar2, 1, 1);
    if (*(int64_t *)(iVar4 + 8) != 0) {
        runtime_convT64(in_stack_ffffffffffffff88);
        uVar1 = *(undefined8 *)0x3512080;
        uVar3 = fmt_Fprintf(in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, in_stack_ffffffffffffff98, 
                             in_stack_ffffffffffffffa0, in_stack_ffffffffffffffa8, in_stack_ffffffffffffffb0, 
                             in_stack_ffffffffffffffb8);
        runtime_duffzero_offset_280(uVar3, uVar1);
        return 0;
    }
    runtime_duffcopy_offset_686();
    return 1;
}

/* CAS-Backend/biz/dao.SelectALL_task | VA 0x998880 | task_dao.go:302
   DWARF parameters and results: page int, size int, search1 string, status string, priority string, ~r0 bool, ~r1 int64, ~r2 []CAS-Backend/biz/dao.Task
   DWARF locals: query *gorm.io/gorm.DB, offset int, &total *int64, &ts *[]CAS-Backend/biz/dao.Task, searchCondition string, err error */
undefined8 __stdcall
biz_dao_SelectALL_task
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, int64_t arg5, int64_t arg6,
          int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
          int64_t arg_38h, int64_t arg_40h, undefined8 placeholder_14, undefined8 placeholder_15, int64_t arg_58h,
          int64_t arg_80h, int64_t arg_90h)
{
    int64_t in_RAX;
    undefined8 uVar1;
    int64_t iVar2;
    undefined8 *puVar3;
    undefined8 uVar4;
    int64_t iVar5;
    int64_t extraout_RCX;
    int64_t unaff_RBX;
    undefined8 *extraout_RDI;
    undefined8 *extraout_RDI_00;
    undefined8 *extraout_RDI_01;
    int64_t in_R10;
    undefined8 *extraout_R10;
    undefined8 *puVar7;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    undefined8 *extraout_R11_03;
    undefined8 *extraout_R11_04;
    int64_t unaff_R14;
    undefined auVar8 [16];
    undefined auVar9 [16];
    undefined auVar10 [16];
    int64_t unaff_retaddr;
    int64_t in_stack_ffffffffffffff50;
    int64_t in_stack_ffffffffffffff58;
    int64_t in_stack_ffffffffffffff60;
    int64_t in_stack_ffffffffffffff68;
    int64_t in_stack_ffffffffffffff70;
    int64_t in_stack_ffffffffffffff78;
    int64_t in_stack_ffffffffffffff80;
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
    undefined8 uVar6;
    
    while (&var_30h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    var_10h = runtime_newobject(0x1042ae0);
    var_18h = runtime_newobject(0x1034820);
    *(undefined8 *)var_18h = 0;
    uVar1 = runtime_newobject(0x113baa0);
    iVar2 = gorm___DB__getInstance(*(undefined8 *)0x3512040);
    iVar5 = *(int64_t *)(iVar2 + 0x20);
    *(undefined8 *)(iVar5 + 0x20) = 0x10a2d00;
    if (*(int32_t *)0x355db50 != 0) {
        iVar2 = runtime_gcWriteBarrier2();
        *extraout_R11 = uVar1;
        extraout_R11[1] = *(undefined8 *)(extraout_RCX + 0x28);
        iVar5 = extraout_RCX;
    }
    *(undefined8 *)(iVar5 + 0x28) = uVar1;
    if (arg1 != 0) {
        auVar8 = runtime_concatstring3(0, 0x2e64b30, 1, arg4, arg1, 0x2e64b30, 1);
        uVar6 = auVar8._8_8_;
        uVar1 = auVar8._0_8_;
        puVar3 = (undefined8 *)runtime_newobject(0x104e440);
        uVar4 = runtime_convTstring(uVar1, uVar6);
        *puVar3 = 0x1042920;
        puVar7 = puVar3;
        if (*(int32_t *)0x355db50 != 0) {
            uVar4 = runtime_gcWriteBarrier2();
            *extraout_R11_00 = uVar4;
            extraout_R11_00[1] = extraout_R10[1];
            puVar7 = extraout_R10;
        }
        puVar7[1] = uVar4;
        uVar4 = runtime_convTstring(uVar1, uVar6);
        puVar3[2] = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            uVar4 = runtime_gcWriteBarrier2();
            *extraout_R11_01 = uVar4;
            extraout_R11_01[1] = puVar3[3];
        }
        puVar3[3] = uVar4;
        uVar1 = runtime_convTstring(uVar1, uVar6);
        auVar8._8_8_ = 0x1042920;
        auVar8._0_8_ = uVar1;
        puVar3[4] = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            auVar8 = runtime_gcWriteBarrier2();
            *extraout_R11_02 = auVar8._0_8_;
            extraout_R11_02[1] = extraout_RDI[5];
            puVar3 = extraout_RDI;
        }
        puVar3[5] = auVar8._0_8_;
        iVar2 = gorm___DB__Where(iVar2, auVar8._8_8_, 0x2e67da0 /* "taskType LIKE ? OR vehid LIKE ? OR descr LIKE ?" */, puVar3, 3, 3);
    }
    if (arg5 != 0) {
        puVar3 = (undefined8 *)runtime_newobject(0x104dea0);
        uVar1 = runtime_convTstring(arg2, arg5);
        auVar9._8_8_ = 0x1042920;
        auVar9._0_8_ = uVar1;
        *puVar3 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            auVar9 = runtime_gcWriteBarrier2();
            *extraout_R11_03 = auVar9._0_8_;
            extraout_R11_03[1] = extraout_RDI_00[1];
            puVar3 = extraout_RDI_00;
        }
        puVar3[1] = auVar9._0_8_;
        iVar2 = gorm___DB__Where(iVar2, auVar9._8_8_, 0x2e67db0 /* "status = ?" */, puVar3, 1, 1);
    }
    if (in_R10 != 0) {
        puVar3 = (undefined8 *)runtime_newobject(0x104dea0);
        uVar1 = runtime_convTstring(arg6, in_R10);
        auVar10._8_8_ = 0x1042920;
        auVar10._0_8_ = uVar1;
        *puVar3 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            auVar10 = runtime_gcWriteBarrier2();
            *extraout_R11_04 = auVar10._0_8_;
            extraout_R11_04[1] = extraout_RDI_01[1];
            puVar3 = extraout_RDI_01;
        }
        puVar3[1] = auVar10._0_8_;
        iVar2 = gorm___DB__Where(iVar2, auVar10._8_8_, 0x2e67dc0 /* "pry = ?" */, puVar3, 1, 1);
    }
    puVar3 = (undefined8 *)runtime_newobject(0x104dea0);
    *puVar3 = 0x1042d20;
    puVar3[1] = 0xf7a720;
    uVar1 = gorm___DB__Where(iVar2, 0x1042920, 0x2e67d70 /* "del = ?" */, puVar3, 1, 1);
    iVar5 = gorm___DB__Count(uVar1, var_10h);
    var_20h = *(int64_t *)(iVar5 + 0x10);
    if (*(int64_t *)(iVar5 + 8) == 0) {
        uVar1 = gorm___DB__Order(uVar1, 0x1042920, 0x2e67d40 /* "id ASC" */);
        iVar5 = (in_RAX + -1) * unaff_RBX;
        if (iVar5 < 0) {
            iVar5 = 0;
        }
        uVar1 = gorm___DB__Offset(uVar1, iVar5);
        uVar1 = gorm___DB__Limit(uVar1, unaff_RBX);
        iVar5 = gorm___DB__Find(uVar1, 0x1034860, var_18h, 0, 0, 0);
        var_30h = *(int64_t *)(iVar5 + 0x10);
        if (*(int64_t *)(iVar5 + 8) == 0) {
            return 1;
        }
        fmt_Fprintf(in_stack_ffffffffffffff50, in_stack_ffffffffffffff58, in_stack_ffffffffffffff60, 
                     in_stack_ffffffffffffff68, in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, 
                     in_stack_ffffffffffffff80);
        return 0;
    }
    var_28h = *(int64_t *)(*(int64_t *)(iVar5 + 8) + 8);
    fmt_Fprintf(in_stack_ffffffffffffff50, in_stack_ffffffffffffff58, in_stack_ffffffffffffff60, 
                 in_stack_ffffffffffffff68, in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, 
                 in_stack_ffffffffffffff80);
    return 0;
}

/* CAS-Backend/biz/dao.IsExist_task | VA 0x998dc0 | task_dao.go:350
   DWARF parameters and results: id int, ~r0 bool
   DWARF locals: &count *int64, result *gorm.io/gorm.DB */
bool __stdcall biz_dao_IsExist_task(int64_t arg_8h, int64_t arg_48h)
{
    int64_t in_RAX;
    int64_t *piVar1;
    undefined8 uVar2;
    int64_t iVar3;
    undefined8 *puVar4;
    int64_t iVar5;
    int64_t extraout_RCX;
    undefined8 *extraout_RDI;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_ffffffffffffff78;
    int64_t in_stack_ffffffffffffff80;
    int64_t in_stack_ffffffffffffff88;
    int64_t in_stack_ffffffffffffff90;
    int64_t in_stack_ffffffffffffff98;
    int64_t in_stack_ffffffffffffffa0;
    int64_t in_stack_ffffffffffffffa8;
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
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    piVar1 = (int64_t *)runtime_newobject(0x1042ae0);
    uVar2 = runtime_newobject(0x113baa0);
    iVar3 = gorm___DB__getInstance(*(undefined8 *)0x3512040);
    iVar5 = *(int64_t *)(iVar3 + 0x20);
    *(undefined8 *)(iVar5 + 0x20) = 0x10a2d00;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier2();
        *extraout_R11 = uVar2;
        extraout_R11[1] = *(undefined8 *)(extraout_RCX + 0x28);
        iVar5 = extraout_RCX;
    }
    *(undefined8 *)(iVar5 + 0x28) = uVar2;
    puVar4 = (undefined8 *)runtime_newobject(0x104dea0);
    uVar2 = runtime_convT64(in_stack_ffffffffffffff78);
    *puVar4 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        uVar2 = runtime_gcWriteBarrier2();
        *extraout_R11_00 = uVar2;
        extraout_R11_00[1] = extraout_RDI[1];
        puVar4 = extraout_RDI;
    }
    puVar4[1] = uVar2;
    uVar2 = gorm___DB__Where(iVar3, 0x1042920, 0x2e67d60 /* "id = ?" */, puVar4, 1, 1);
    iVar5 = gorm___DB__Count(uVar2, piVar1);
    if (*(int64_t *)(iVar5 + 8) != 0) {
        runtime_convT64(in_stack_ffffffffffffff78);
        fmt_Fprintf(in_stack_ffffffffffffff78, in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, 
                     in_stack_ffffffffffffff90, in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0, 
                     in_stack_ffffffffffffffa8);
        return false;
    }
    return 0 < *piVar1;
}

/* CAS-Backend/biz/dao.GuaqiTask | VA 0x998f80 | task_dao.go:362
   DWARF parameters and results: id int, ~r0 bool
   DWARF locals: result *gorm.io/gorm.DB */
undefined8 __stdcall biz_dao_GuaqiTask(int64_t arg_8h, int64_t arg_80h)
{
    int64_t in_RAX;
    undefined8 uVar1;
    int64_t iVar2;
    undefined8 *puVar3;
    int64_t iVar4;
    int64_t extraout_RCX;
    undefined8 *extraout_RDI;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_ffffffffffffff60;
    int64_t in_stack_ffffffffffffff68;
    int64_t in_stack_ffffffffffffff70;
    int64_t in_stack_ffffffffffffff78;
    int64_t in_stack_ffffffffffffff80;
    int64_t in_stack_ffffffffffffff88;
    int64_t in_stack_ffffffffffffff90;
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
    
    while (&var_20h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    uVar1 = runtime_newobject(0x113baa0);
    iVar2 = gorm___DB__getInstance(*(undefined8 *)0x3512040);
    iVar4 = *(int64_t *)(iVar2 + 0x20);
    *(undefined8 *)(iVar4 + 0x20) = 0x10a2d00;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier2();
        *extraout_R11 = uVar1;
        extraout_R11[1] = *(undefined8 *)(extraout_RCX + 0x28);
        iVar4 = extraout_RCX;
    }
    *(undefined8 *)(iVar4 + 0x28) = uVar1;
    puVar3 = (undefined8 *)runtime_newobject(0x104dea0);
    uVar1 = runtime_convT64(in_stack_ffffffffffffff60);
    *puVar3 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        uVar1 = runtime_gcWriteBarrier2();
        *extraout_R11_00 = uVar1;
        extraout_R11_00[1] = extraout_RDI[1];
        puVar3 = extraout_RDI;
    }
    puVar3[1] = uVar1;
    uVar1 = gorm___DB__Where(iVar2, 0x1042920, 0x2e67d60 /* "id = ?" */, puVar3, 1, 1);
    iVar4 = gorm___DB__Update(uVar1, 0x116f267 /* "status" */, 6, 0x1042b60, 0x2e67830);
    if (*(int64_t *)(iVar4 + 8) == 0) {
        runtime_convT64(in_stack_ffffffffffffff60);
        runtime_convT64(in_stack_ffffffffffffff60);
        fmt_Fprintf(in_stack_ffffffffffffff60, in_stack_ffffffffffffff68, in_stack_ffffffffffffff70, 
                     in_stack_ffffffffffffff78, in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, 
                     in_stack_ffffffffffffff90);
        return 1;
    }
    var_20h = runtime_convT64(in_stack_ffffffffffffff60);
    var_18h = 0;
    if (*(int64_t *)(iVar4 + 8) != 0) {
        var_18h = *(int64_t *)(*(int64_t *)(iVar4 + 8) + 8);
    }
    var_10h = *(int64_t *)(iVar4 + 0x10);
    fmt_Fprintf(in_stack_ffffffffffffff60, in_stack_ffffffffffffff68, in_stack_ffffffffffffff70, 
                 in_stack_ffffffffffffff78, in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, 
                 in_stack_ffffffffffffff90);
    return 0;
}

/* CAS-Backend/biz/dao.HuifuTask | VA 0x9991e0 | task_dao.go:374
   DWARF parameters and results: id int, ~r0 bool
   DWARF locals: result *gorm.io/gorm.DB */
undefined8 __stdcall biz_dao_HuifuTask(int64_t arg_8h, int64_t arg_80h)
{
    undefined8 in_RAX;
    undefined8 uVar1;
    int64_t iVar2;
    undefined8 *puVar3;
    int64_t iVar4;
    int64_t extraout_RCX;
    undefined8 *extraout_RDI;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t unaff_R14;
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
    
    while (&var_20h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    uVar1 = runtime_newobject(0x113baa0);
    iVar2 = gorm___DB__getInstance(*(undefined8 *)0x3512040);
    iVar4 = *(int64_t *)(iVar2 + 0x20);
    *(undefined8 *)(iVar4 + 0x20) = 0x10a2d00;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier2();
        *extraout_R11 = uVar1;
        extraout_R11[1] = *(undefined8 *)(extraout_RCX + 0x28);
        iVar4 = extraout_RCX;
    }
    *(undefined8 *)(iVar4 + 0x28) = uVar1;
    puVar3 = (undefined8 *)runtime_newobject(0x104dea0);
    uVar1 = runtime_convT64(in_RAX);
    *puVar3 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        uVar1 = runtime_gcWriteBarrier2();
        *extraout_R11_00 = uVar1;
        extraout_R11_00[1] = extraout_RDI[1];
        puVar3 = extraout_RDI;
    }
    puVar3[1] = uVar1;
    uVar1 = gorm___DB__Where(iVar2, 0x1042920, 0x2e67d60 /* "id = ?" */, puVar3, 1, 1);
    iVar4 = gorm___DB__Update(uVar1, 0x116f267 /* "status" */, 6, 0x1042b60, 0x2e64ac0);
    if (*(int64_t *)(iVar4 + 8) == 0) {
        var_40h = runtime_convT64(in_RAX);
        var_48h = 0x1042b60;
        var_30h = runtime_convT64(*(undefined8 *)(iVar4 + 0x18));
        var_38h = 0x1042ae0;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1193b77 /* "恢复成功, ID: %d, 影响行数: %d" */, 0x26, &var_48h, 2, 2);
        return 1;
    }
    var_20h = runtime_convT64(in_RAX);
    var_28h = 0x1042b60;
    var_18h = 0;
    if (*(int64_t *)(iVar4 + 8) != 0) {
        var_18h = *(int64_t *)(*(int64_t *)(iVar4 + 8) + 8);
    }
    var_10h = *(int64_t *)(iVar4 + 0x10);
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x118d8c8 /* "恢复失败, ID: %d, 错误: %v" */, 0x20, &var_28h, 2, 2);
    return 0;
}

/* CAS-Backend/biz/dao.UpdateTaskStatusByID | VA 0x999440 | task_dao.go:386
   DWARF parameters and results: taskID int, status int, ~r0 bool
   DWARF locals: rowsAffected int64, result *gorm.io/gorm.DB */
undefined8 __stdcall biz_dao_UpdateTaskStatusByID(int64_t arg_8h, int64_t arg_10h, int64_t arg_a0h)
{
    undefined8 in_RAX;
    undefined8 uVar1;
    int64_t iVar2;
    undefined8 *puVar3;
    undefined8 uVar4;
    int64_t iVar5;
    int64_t extraout_RCX;
    undefined8 unaff_RBX;
    undefined8 *extraout_RDI;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t unaff_R14;
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
    
    while (&var_50h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    uVar1 = runtime_newobject(0x113baa0);
    iVar2 = gorm___DB__getInstance(*(undefined8 *)0x3512040);
    iVar5 = *(int64_t *)(iVar2 + 0x20);
    *(undefined8 *)(iVar5 + 0x20) = 0x10a2d00;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier2();
        *extraout_R11 = uVar1;
        extraout_R11[1] = *(undefined8 *)(extraout_RCX + 0x28);
        iVar5 = extraout_RCX;
    }
    *(undefined8 *)(iVar5 + 0x28) = uVar1;
    puVar3 = (undefined8 *)runtime_newobject(0x104dea0);
    uVar1 = runtime_convT64(in_RAX);
    *puVar3 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        uVar1 = runtime_gcWriteBarrier2();
        *extraout_R11_00 = uVar1;
        extraout_R11_00[1] = extraout_RDI[1];
        puVar3 = extraout_RDI;
    }
    puVar3[1] = uVar1;
    uVar1 = gorm___DB__Where(iVar2, 0x1042920, 0x2e67d60 /* "id = ?" */, puVar3, 1, 1);
    uVar4 = runtime_convT64(unaff_RBX);
    iVar5 = gorm___DB__Update(uVar1, 0x116f267 /* "status" */, 6, 0x1042b60, uVar4);
    if (*(int64_t *)(iVar5 + 8) != 0) {
        var_20h = runtime_convT64(in_RAX);
        var_28h = 0x1042b60;
        var_18h = 0;
        if (*(int64_t *)(iVar5 + 8) != 0) {
            var_18h = *(int64_t *)(*(int64_t *)(iVar5 + 8) + 8);
        }
        var_10h = *(int64_t *)(iVar5 + 0x10);
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11991c3 /* "更新任务状态失败, ID: %d, 错误: %v" */, 0x2c, &var_28h, 2, 2);
        return 0;
    }
    iVar5 = *(int64_t *)(iVar5 + 0x18);
    if (iVar5 != 0) {
        var_60h = runtime_convT64(in_RAX);
        var_68h = 0x1042b60;
        var_50h = runtime_convT64(unaff_RBX);
        var_58h = 0x1042b60;
        var_40h = runtime_convT64(iVar5);
        var_48h = 0x1042ae0;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x119d488 /* "更新成功, ID: %d, 状态: %d, 影响行数: %d" */, 0x32, &var_68h, 3, 3);
        return 1;
    }
    var_30h = runtime_convT64(in_RAX);
    var_38h = 0x1042b60;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x118123a /* "未找到任务ID: %d" */, 0x15, &var_38h, 1, 1);
    return 0;
}

/* CAS-Backend/biz/dao.UpdateTaskDispatch | VA 0x999760 | task_dao.go:405
   DWARF parameters and results: taskID int, status int, vehID string, ~r0 bool
   DWARF locals: result *gorm.io/gorm.DB, updates map[string]interface {} */
bool __stdcall
biz_dao_UpdateTaskDispatch
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_50h)
{
    undefined8 in_RAX;
    undefined8 uVar1;
    undefined8 uVar2;
    undefined8 *puVar3;
    int64_t iVar4;
    int64_t iVar5;
    int64_t extraout_RCX;
    undefined8 unaff_RBX;
    undefined8 *extraout_RDI;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    int64_t unaff_R14;
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
    
    while (&var_10h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    uVar1 = runtime_makemap_small();
    uVar2 = runtime_convT64(unaff_RBX);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar1, 0x116f267 /* "status" */, 6);
    *puVar3 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11 = uVar2;
        extraout_R11[1] = puVar3[1];
    }
    puVar3[1] = uVar2;
    if (arg1 != 0) {
        uVar2 = runtime_convTstring(arg4);
        puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar1, 0x116a5d0 /* "vehid" */, 5);
        *puVar3 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_00 = uVar2;
            extraout_R11_00[1] = puVar3[1];
        }
        puVar3[1] = uVar2;
    }
    uVar2 = runtime_newobject(0x113baa0);
    iVar4 = gorm___DB__getInstance(*(undefined8 *)0x3512040);
    iVar5 = *(int64_t *)(iVar4 + 0x20);
    *(undefined8 *)(iVar5 + 0x20) = 0x10a2d00;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier2();
        *extraout_R11_01 = uVar2;
        extraout_R11_01[1] = *(undefined8 *)(extraout_RCX + 0x28);
        iVar5 = extraout_RCX;
    }
    *(undefined8 *)(iVar5 + 0x28) = uVar2;
    puVar3 = (undefined8 *)runtime_newobject(0x104dea0);
    uVar2 = runtime_convT64(in_RAX);
    *puVar3 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        uVar2 = runtime_gcWriteBarrier2();
        *extraout_R11_02 = uVar2;
        extraout_R11_02[1] = extraout_RDI[1];
        puVar3 = extraout_RDI;
    }
    puVar3[1] = uVar2;
    uVar2 = gorm___DB__Where(iVar4, 0x1042920, 0x2e67d60 /* "id = ?" */, puVar3, 1, 1);
    iVar5 = gorm___DB__Updates(uVar2, 0x107d4c0, uVar1);
    if (*(int64_t *)(iVar5 + 8) == 0) {
        return 0 < *(int64_t *)(iVar5 + 0x18);
    }
    var_20h = runtime_convT64(in_RAX);
    var_28h = 0x1042b60;
    var_18h = 0;
    if (*(int64_t *)(iVar5 + 8) != 0) {
        var_18h = *(int64_t *)(*(int64_t *)(iVar5 + 8) + 8);
    }
    var_10h = *(int64_t *)(iVar5 + 0x10);
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x119d4ba /* "更新任务派发状态失败, ID: %d, 错误: %v" */, 0x32, &var_28h, 2, 2);
    return false;
}

/* CAS-Backend/biz/dao.UpdateTaskCompletion | VA 0x999a40 | task_dao.go:419
   DWARF parameters and results: taskID int, status int, finTime time.Time, ~r0 bool
   DWARF locals: result *gorm.io/gorm.DB */
undefined8 __stdcall
biz_dao_UpdateTaskCompletion
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h,
          int64_t arg_50h, int64_t arg_98h)
{
    undefined8 in_RAX;
    undefined8 uVar1;
    int64_t iVar2;
    undefined8 *puVar3;
    undefined8 uVar4;
    undefined8 uVar5;
    int64_t iVar6;
    int64_t extraout_RCX;
    undefined8 unaff_RBX;
    undefined8 *extraout_RDI;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    int64_t unaff_R14;
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
    
    arg_18h = arg4;
    arg_28h = arg2;
    arg_20h = arg1;
    while (&var_48h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    uVar1 = runtime_newobject(0x113baa0);
    iVar2 = gorm___DB__getInstance(*(undefined8 *)0x3512040);
    iVar6 = *(int64_t *)(iVar2 + 0x20);
    *(undefined8 *)(iVar6 + 0x20) = 0x10a2d00;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier2();
        *extraout_R11 = uVar1;
        extraout_R11[1] = *(undefined8 *)(extraout_RCX + 0x28);
        iVar6 = extraout_RCX;
    }
    *(undefined8 *)(iVar6 + 0x28) = uVar1;
    puVar3 = (undefined8 *)runtime_newobject(0x104dea0);
    uVar1 = runtime_convT64(in_RAX);
    *puVar3 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        uVar1 = runtime_gcWriteBarrier2();
        *extraout_R11_00 = uVar1;
        extraout_R11_00[1] = extraout_RDI[1];
        puVar3 = extraout_RDI;
    }
    puVar3[1] = uVar1;
    uVar1 = gorm___DB__Where(iVar2, 0x1042920, 0x2e67d60 /* "id = ?" */, puVar3, 1, 1);
    uVar4 = runtime_makemap_small();
    uVar5 = runtime_convT64(unaff_RBX);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x116f267 /* "status" */, 6);
    *puVar3 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_01 = uVar5;
        extraout_R11_01[1] = puVar3[1];
    }
    puVar3[1] = uVar5;
    uVar5 = runtime_convT(0x11502e0, &arg_18h);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d4c0, uVar4, 0x1172acf /* "finTime" */, 7);
    *puVar3 = 0x11502e0;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_02 = uVar5;
        extraout_R11_02[1] = puVar3[1];
    }
    puVar3[1] = uVar5;
    iVar6 = gorm___DB__Updates(uVar1, 0x107d4c0, uVar4);
    if (*(int64_t *)(iVar6 + 8) != 0) {
        var_20h = runtime_convT64(in_RAX);
        var_28h = 0x1042b60;
        var_18h = 0;
        if (*(int64_t *)(iVar6 + 8) != 0) {
            var_18h = *(int64_t *)(*(int64_t *)(iVar6 + 8) + 8);
        }
        var_10h = *(int64_t *)(iVar6 + 0x10);
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x119d4ec /* "更新任务完成状态失败, ID: %d, 错误: %v" */, 0x32, &var_28h, 2, 2);
        return 0;
    }
    if (*(int64_t *)(iVar6 + 0x18) != 0) {
        var_50h = runtime_convT64(in_RAX);
        var_58h = 0x1042b60;
        var_40h = runtime_convT64(unaff_RBX);
        var_48h = 0x1042b60;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x119d51e /* "任务完成已写入数据库, ID: %d, 状态: %d" */, 0x32, &var_58h, 2, 2);
        return 1;
    }
    var_30h = runtime_convT64(in_RAX);
    var_38h = 0x1042b60;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x118123a /* "未找到任务ID: %d" */, 0x15, &var_38h, 1, 1);
    return 0;
}

/* CAS-Backend/biz/dao.GetAllTasks | VA 0x999e40 | task_dao.go:460
   DWARF parameters and results: ~r0 []CAS-Backend/biz/dao.Task, ~r1 error
   DWARF locals: &tasks *[]CAS-Backend/biz/dao.Task, err error */
// WARNING: Removing unreachable block (ram,0x00999eeb)

undefined8 __stdcall biz_dao_GetAllTasks(int64_t arg_40h)
{
    undefined8 *puVar1;
    undefined8 uVar2;
    int64_t iVar3;
    int64_t unaff_R14;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(0x1034820);
    *(undefined8 *)var_10h = 0;
    puVar1 = (undefined8 *)runtime_newobject(0x104dea0);
    *puVar1 = 0x1042d20;
    puVar1[1] = 0xf7a720;
    uVar2 = gorm___DB__Where(*(undefined8 *)0x3512040, 0x1042920, 0x2e67d70 /* "del = ?" */, puVar1, 1, 1);
    iVar3 = gorm___DB__Find(uVar2, 0x1034860, var_10h, 0, 0, 0);
    var_18h = *(int64_t *)(iVar3 + 0x10);
    if (*(int64_t *)(iVar3 + 8) == 0) {
        return *(undefined8 *)var_10h;
    }
    var_20h = *(int64_t *)(*(int64_t *)(iVar3 + 8) + 8);
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x118a380 /* "查询所有任务失败: %v\n" */, 0x1d, &var_20h, 1, 1);
    return 0;
}
