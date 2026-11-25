/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/biz/service.SlAllMap | VA 0xe48ea0 | map_service.go:8
   DWARF parameters and results: page int, size int, search1 string, ~r0 bool, ~r1 int64, ~r2 []CAS-Backend/biz/dao.Map
   DWARF locals: sucess bool, num int64, ms []CAS-Backend/biz/dao.Map */
// WARNING: Variable defined which should be unmapped: var_28h
// WARNING: Variable defined which should be unmapped: var_20h
// WARNING: Variable defined which should be unmapped: var_10h

undefined8 __stdcall
biz_service_SlAllMap
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_40h)
{
    char cVar1;
    int64_t unaff_R14;
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
        runtime_morestack_noctxt_abi0();
    }
    cVar1 = biz_dao_SelectALL_map(in_stack_ffffffffffffffa0, in_stack_ffffffffffffffa8, in_stack_ffffffffffffffb0, 
                         in_stack_ffffffffffffffb8, var_28h, var_20h, var_10h);
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
