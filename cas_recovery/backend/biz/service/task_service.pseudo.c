/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/biz/service.GuaqiTask | VA 0xe48fa0 | task_service.go:9
   DWARF parameters and results: id int, ~r0 bool
   DWARF locals: ok bool */
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Detected overlap for variable var_21h

undefined8 __stdcall biz_service_GuaqiTask(int64_t arg_8h, int64_t arg_100h)
{
    char cVar1;
    int64_t unaff_R14;
    int64_t var_200h;
    int64_t in_stack_fffffffffffffe10;
    int64_t in_stack_fffffffffffffe40;
    int64_t in_stack_fffffffffffffe48;
    int64_t in_stack_fffffffffffffe88;
    undefined auStack_170 [112];
    int64_t in_stack_ffffffffffffff00;
    int64_t var_f8h;
    int64_t var_8h;
    
    while (auStack_170 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    cVar1 = biz_dao_GuaqiTask(in_stack_fffffffffffffe10, in_stack_fffffffffffffe88);
    if (cVar1 != '\0') {
        fcn.00478ab8();
        biz_dao_Select1_task(in_stack_fffffffffffffe10, in_stack_fffffffffffffe48, in_stack_ffffffffffffff00);
        cVar1 = fcn.00478dce();
        if (cVar1 != '\0') {
            fcn.00478dce();
            pkg_diapdu_EnqueuePendingTask(in_stack_fffffffffffffe10, in_stack_fffffffffffffe40);
        }
        return 1;
    }
    return 0;
}

/* CAS-Backend/biz/service.HuifuTask | VA 0xe490a0 | task_service.go:19
   DWARF parameters and results: id int, ~r0 bool
   DWARF locals: ok bool */
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Detected overlap for variable var_21h

undefined8 __stdcall biz_service_HuifuTask(int64_t arg_8h, int64_t arg_100h)
{
    char cVar1;
    int64_t in_RAX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t var_200h;
    int64_t in_stack_fffffffffffffe10;
    int64_t in_stack_fffffffffffffe40;
    int64_t in_stack_fffffffffffffe48;
    int64_t in_stack_fffffffffffffe88;
    undefined auStack_170 [112];
    int64_t in_stack_ffffffffffffff00;
    int64_t var_f8h;
    int64_t var_8h;
    
    while (auStack_170 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    cVar1 = biz_dao_HuifuTask(in_stack_fffffffffffffe10, in_stack_fffffffffffffe88);
    if (cVar1 != '\0') {
        fcn.00478ab8();
        biz_dao_Select1_task(in_stack_fffffffffffffe10, in_stack_fffffffffffffe48, in_stack_ffffffffffffff00);
        cVar1 = fcn.00478dce();
        if (cVar1 != '\0') {
            fcn.00478dce();
            pkg_diapdu_EnqueuePendingTask(in_stack_fffffffffffffe10, in_stack_fffffffffffffe40);
        }
        return 1;
    }
    return 0;
}

/* CAS-Backend/biz/service.AddTask | VA 0xe491a0 | task_service.go:29
   DWARF parameters and results: t CAS-Backend/biz/dao.Task, ~r0 bool
   DWARF locals: &t *CAS-Backend/biz/dao.Task */
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Detected overlap for variable var_21h

undefined8 __stdcall biz_service_AddTask(int64_t arg_8h, int64_t arg_f8h)
{
    undefined8 uVar1;
    char cVar2;
    int64_t *piVar3;
    undefined8 uVar4;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t var_130h;
    int64_t in_stack_fffffffffffffee0;
    int64_t in_stack_fffffffffffffee8;
    int64_t in_stack_fffffffffffffef0;
    int64_t in_stack_fffffffffffffef8;
    int64_t in_stack_ffffffffffffff00;
    int64_t in_stack_ffffffffffffff08;
    int64_t in_stack_ffffffffffffff10;
    undefined auStack_a0 [112];
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (auStack_a0 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe4935c;
        runtime_morestack_noctxt_abi0(unaff_retaddr, arg_8h);
    }
    var_10h = runtime_newobject(0x113baa0);
    if (*(int32_t *)0x355db50 != 0) {
        runtime_wbMove(0x113baa0, var_10h, &arg_8h);
    }
    piVar3 = (int64_t *)fcn.00478dce();
    if (*piVar3 == 0) {
        cVar2 = '\0';
    } else {
        cVar2 = biz_dao_IsExist_task(*piVar3);
    }
    if (cVar2 == '\0') {
        cVar2 = biz_dao_Insert_task();
        if (cVar2 != '\0') {
            var_28h = runtime_convT64(in_stack_fffffffffffffee0);
            uVar1 = *(undefined8 *)0x3512080;
            var_30h = 0x1042b60;
            uVar4 = fmt_Fprintf(in_stack_fffffffffffffee0, in_stack_fffffffffffffee8, in_stack_fffffffffffffef0, 
                                 in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, in_stack_ffffffffffffff08, 
                                 in_stack_ffffffffffffff10);
            fcn.00478dce(uVar4, uVar1);
            pkg_diapdu_EnqueuePendingTask(in_stack_fffffffffffffee0, in_stack_ffffffffffffff10);
            return 1;
        }
        return 0;
    }
    var_18h = runtime_convT64(in_stack_fffffffffffffee0);
    var_20h = 0x1042b60;
    fmt_Fprintf(in_stack_fffffffffffffee0, in_stack_fffffffffffffee8, in_stack_fffffffffffffef0, 
                 in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, in_stack_ffffffffffffff08, 
                 in_stack_ffffffffffffff10);
    return 0;
}

/* CAS-Backend/biz/service.DelTask | VA 0xe49380 | task_service.go:43
   DWARF parameters and results: id int, ~r0 bool
   DWARF locals: sucess bool */
undefined8 __stdcall biz_service_DelTask(int64_t arg_8h, int64_t arg_50h)
{
    char cVar1;
    int64_t in_RAX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000010;
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
    cVar1 = biz_dao_Delete_task(in_stack_ffffffffffffffa0, in_stack_00000010);
    if (cVar1 != '\0') {
        runtime_convT64(in_stack_ffffffffffffffa0);
        fmt_Fprintf(in_stack_ffffffffffffffa0, in_stack_ffffffffffffffa8, in_stack_ffffffffffffffb0, 
                     in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, 
                     in_stack_ffffffffffffffd0);
        return 1;
    }
    runtime_convT64(in_stack_ffffffffffffffa0);
    fmt_Fprintf(in_stack_ffffffffffffffa0, in_stack_ffffffffffffffa8, in_stack_ffffffffffffffb0, 
                 in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, 
                 in_stack_ffffffffffffffd0);
    return 0;
}

/* CAS-Backend/biz/service.UpdateTask | VA 0xe49480 | task_service.go:54
   DWARF parameters and results: t CAS-Backend/biz/dao.Task, ~r0 bool
   DWARF locals: sucess bool */
// WARNING: Variable defined which should be unmapped: var_8h

undefined8 __stdcall biz_service_UpdateTask(int64_t arg_8h, int64_t arg_108h)
{
    char cVar1;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t var_128h;
    int64_t in_stack_fffffffffffffee8;
    int64_t in_stack_fffffffffffffef0;
    int64_t in_stack_fffffffffffffef8;
    int64_t in_stack_ffffffffffffff00;
    int64_t in_stack_ffffffffffffff08;
    int64_t in_stack_ffffffffffffff10;
    int64_t in_stack_ffffffffffffff18;
    int64_t in_stack_ffffffffffffff20;
    int64_t in_stack_ffffffffffffff28;
    int64_t in_stack_ffffffffffffff38;
    int64_t in_stack_ffffffffffffff48;
    int64_t in_stack_ffffffffffffff60;
    int64_t in_stack_ffffffffffffff68;
    int64_t in_stack_ffffffffffffff70;
    int64_t in_stack_ffffffffffffff78;
    int64_t in_stack_ffffffffffffff80;
    int64_t in_stack_ffffffffffffff88;
    int64_t in_stack_ffffffffffffff90;
    int64_t in_stack_ffffffffffffff98;
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
    int64_t var_8h;
    
    while (&stack0xffffffffffffff68 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, arg_8h);
    }
    fcn.00478dce();
    cVar1 = biz_dao_Update_task(in_stack_fffffffffffffee8, in_stack_fffffffffffffef0, in_stack_fffffffffffffef8, 
                         in_stack_ffffffffffffff00, in_stack_ffffffffffffff08, in_stack_ffffffffffffff10, 
                         in_stack_ffffffffffffff18, in_stack_ffffffffffffff20, in_stack_ffffffffffffff28, 
                         in_stack_ffffffffffffff38, in_stack_ffffffffffffff48, in_stack_ffffffffffffff60, 
                         in_stack_ffffffffffffff68, in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, 
                         in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, 
                         in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0, in_stack_ffffffffffffffa8, 
                         in_stack_ffffffffffffffb0, in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, 
                         in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0);
    if (cVar1 != '\0') {
        runtime_convT64(in_stack_fffffffffffffee8);
        fmt_Fprintf(in_stack_fffffffffffffee8, in_stack_fffffffffffffef0, in_stack_fffffffffffffef8, 
                     in_stack_ffffffffffffff00, in_stack_ffffffffffffff08, in_stack_ffffffffffffff10, 
                     in_stack_ffffffffffffff18);
        return 1;
    }
    runtime_convT64(in_stack_fffffffffffffee8);
    fmt_Fprintf(in_stack_fffffffffffffee8, in_stack_fffffffffffffef0, in_stack_fffffffffffffef8, 
                 in_stack_ffffffffffffff00, in_stack_ffffffffffffff08, in_stack_ffffffffffffff10, 
                 in_stack_ffffffffffffff18);
    return 0;
}

/* CAS-Backend/biz/service.SlAllTask | VA 0xe495c0 | task_service.go:79
   DWARF parameters and results: page int, size int, search1 string, status string, priority string, ~r0 bool, ~r1 int64, ~r2 []CAS-Backend/biz/dao.Task
   DWARF locals: sucess bool, num int64, ts []CAS-Backend/biz/dao.Task */
// WARNING: Variable defined which should be unmapped: var_18h

undefined8 __stdcall
biz_service_SlAllTask
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, int64_t arg5, int64_t arg6,
          int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
          int64_t arg_38h, int64_t arg_40h, undefined8 placeholder_14, undefined8 placeholder_15, int64_t arg_58h)
{
    char cVar1;
    int64_t in_RAX;
    int64_t unaff_RBX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_ffffffffffffff98;
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
        arg_10h = unaff_RBX;
        arg_20h = arg1;
    }
    cVar1 = biz_dao_SelectALL_task(in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0, in_stack_ffffffffffffffa8, 
                         in_stack_ffffffffffffffb0, in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, 
                         in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, var_18h, arg_10h, arg_20h);
    if (cVar1 != '\0') {
        fmt_Fprintf(in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0, in_stack_ffffffffffffffa8, 
                     in_stack_ffffffffffffffb0, in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, 
                     in_stack_ffffffffffffffc8);
        return 1;
    }
    fmt_Fprintf(in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0, in_stack_ffffffffffffffa8, 
                 in_stack_ffffffffffffffb0, in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, 
                 in_stack_ffffffffffffffc8);
    return 0;
}
