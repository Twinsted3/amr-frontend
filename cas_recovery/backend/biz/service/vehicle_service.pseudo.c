/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/biz/service.AddVeh | VA 0xe49d20 | vehicle_service.go:8
   DWARF parameters and results: v CAS-Backend/biz/dao.Vehicle, ~r0 bool
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_98h
// WARNING: Variable defined which should be unmapped: var_10h
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Detected overlap for variable var_60h

undefined8 __stdcall biz_service_AddVeh(int64_t arg_8h, int64_t arg_10h, int64_t arg_80h, int64_t arg_b0h)
{
    char cVar1;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t var_b0h;
    int64_t in_stack_ffffffffffffff60;
    int64_t var_98h;
    int64_t in_stack_ffffffffffffff70;
    int64_t in_stack_ffffffffffffff78;
    int64_t in_stack_ffffffffffffff80;
    int64_t in_stack_ffffffffffffff88;
    int64_t in_stack_ffffffffffffff90;
    int64_t in_stack_ffffffffffffffa0;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (&var_20h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe49e86;
        runtime_morestack_noctxt_abi0(unaff_retaddr, arg_8h);
    }
    cVar1 = biz_dao_IsExist_veh(in_stack_ffffffffffffff60, var_98h, in_stack_ffffffffffffffa0);
    if (cVar1 == '\0') {
        fcn.00478e3e(arg_8h, arg_10h);
        cVar1 = biz_dao_Insert_veh(arg_8h, var_98h, var_10h);
        if (cVar1 != '\0') {
            var_20h = runtime_convTstring(arg_8h, var_98h, in_stack_ffffffffffffff88);
            fmt_Fprintf(arg_8h, var_98h, in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, 
                         in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, in_stack_ffffffffffffff90);
            return 1;
        }
        return 0;
    }
    var_10h = runtime_convTstring(in_stack_ffffffffffffff60, var_98h, in_stack_ffffffffffffff88);
    var_18h = 0x1042920;
    fmt_Fprintf(in_stack_ffffffffffffff60, var_98h, in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, 
                 in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, in_stack_ffffffffffffff90);
    return 0;
}

/* CAS-Backend/biz/service.DelVeh | VA 0xe49ea0 | vehicle_service.go:22
   DWARF parameters and results: id string, ~r0 bool
   DWARF locals: sucess bool */
undefined8 __stdcall biz_service_DelVeh(int64_t arg_8h, int64_t arg_10h, int64_t arg_50h)
{
    char cVar1;
    int64_t in_RAX;
    int64_t unaff_RBX;
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
    cVar1 = biz_dao_Delete_veh(in_stack_ffffffffffffffa0, in_stack_ffffffffffffffa8, unaff_RBX);
    if (cVar1 != '\0') {
        runtime_convTstring(in_stack_ffffffffffffffa0, in_stack_ffffffffffffffa8, in_stack_ffffffffffffffc8);
        fmt_Fprintf(in_stack_ffffffffffffffa0, in_stack_ffffffffffffffa8, in_stack_ffffffffffffffb0, 
                     in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, 
                     in_stack_ffffffffffffffd0);
        return 1;
    }
    runtime_convTstring(in_stack_ffffffffffffffa0, in_stack_ffffffffffffffa8, in_stack_ffffffffffffffc8);
    fmt_Fprintf(in_stack_ffffffffffffffa0, in_stack_ffffffffffffffa8, in_stack_ffffffffffffffb0, 
                 in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, 
                 in_stack_ffffffffffffffd0);
    return 0;
}

/* CAS-Backend/biz/service.UpdateVeh | VA 0xe49fc0 | vehicle_service.go:33
   DWARF parameters and results: v CAS-Backend/biz/dao.Vehicle, ~r0 bool
   DWARF locals: sucess bool */
// WARNING: Variable defined which should be unmapped: var_98h
// WARNING: Variable defined which should be unmapped: var_10h
// WARNING: Variable defined which should be unmapped: var_8h

undefined8 __stdcall biz_service_UpdateVeh(int64_t arg_8h, int64_t arg_10h, int64_t arg_90h)
{
    char cVar1;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t var_b0h;
    int64_t var_98h;
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
    
    while (&var_20h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe4a0ff;
        runtime_morestack_noctxt_abi0(unaff_retaddr, arg_8h);
    }
    fcn.00478e3e();
    cVar1 = biz_dao_Update_veh(arg_8h, var_98h, in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, 
                         in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, 
                         in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0, in_stack_ffffffffffffffa8, 
                         in_stack_ffffffffffffffb0, in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, 
                         in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, var_10h);
    if (cVar1 != '\0') {
        var_10h = runtime_convTstring(arg_8h, var_98h, in_stack_ffffffffffffff88);
        var_18h = 0x1042920;
        fmt_Fprintf(arg_8h, var_98h, in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, in_stack_ffffffffffffff80, 
                     in_stack_ffffffffffffff88, in_stack_ffffffffffffff90);
        return 1;
    }
    var_20h = runtime_convTstring(arg_8h, var_98h, in_stack_ffffffffffffff88);
    fmt_Fprintf(arg_8h, var_98h, in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, in_stack_ffffffffffffff80, 
                 in_stack_ffffffffffffff88, in_stack_ffffffffffffff90);
    return 0;
}

/* CAS-Backend/biz/service.SlAllVeh | VA 0xe4a120 | vehicle_service.go:58
   DWARF parameters and results: page int, size int, search1 string, ip string, port int, ~r0 bool, ~r1 int64, ~r2 []CAS-Backend/biz/dao.Vehicle
   DWARF locals: num int64, sucess bool, vs []CAS-Backend/biz/dao.Vehicle */
undefined8 __stdcall
biz_service_SlAllVeh
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, int64_t arg5, int64_t arg6,
          int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
          int64_t arg_38h, undefined8 placeholder_13, undefined8 placeholder_14, int64_t arg_50h)
{
    char cVar1;
    int64_t in_RAX;
    int64_t unaff_RBP;
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
    cVar1 = biz_dao_SelectALL_veh(in_stack_ffffffffffffffa0, in_stack_ffffffffffffffa8, in_stack_ffffffffffffffb0, 
                         in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, 
                         in_stack_ffffffffffffffd0, unaff_RBP, arg4, arg2);
    if (cVar1 != '\0') {
        fmt_Fprintf(in_stack_ffffffffffffffa0, in_stack_ffffffffffffffa8, in_stack_ffffffffffffffb0, 
                     in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, 
                     in_stack_ffffffffffffffd0);
        return 1;
    }
    fmt_Fprintf(in_stack_ffffffffffffffa0, in_stack_ffffffffffffffa8, in_stack_ffffffffffffffb0, 
                 in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, 
                 in_stack_ffffffffffffffd0);
    return 0;
}
