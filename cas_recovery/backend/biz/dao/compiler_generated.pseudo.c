/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/biz/dao.(*Map).TableName | VA 0x99b8c0 | compiler_generated.go:1
   DWARF parameters and results: ~p0 *CAS-Backend/biz/dao.Map, ~r0 string
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_8h

undefined8 __stdcall biz_dao___Map__TableName(int64_t arg_8h)
{
    int64_t in_RAX;
    int64_t *piVar1;
    int64_t unaff_R14;
    int64_t var_8h;
    
    piVar1 = *(int64_t **)(unaff_R14 + 0x20);
    if (piVar1 != (int64_t *)0x0) goto code_r0x0099b8e7;
    while (in_RAX == 0) {
        in_RAX = runtime_panicwrap();
code_r0x0099b8e7:
        if ((int64_t *)*piVar1 == &arg_8h) {
            *piVar1 = (int64_t)&var_8h;
        }
    }
    return 0x1172aba /* "agv_map" */;
}

/* CAS-Backend/biz/dao.(*TaskChain).TableName | VA 0x99b900 | compiler_generated.go:1
   DWARF parameters and results: ~p0 *CAS-Backend/biz/dao.TaskChain, ~r0 string
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_8h

undefined8 __stdcall biz_dao___TaskChain__TableName(int64_t arg_8h)
{
    int64_t in_RAX;
    int64_t *piVar1;
    int64_t unaff_R14;
    int64_t var_8h;
    
    piVar1 = *(int64_t **)(unaff_R14 + 0x20);
    if (piVar1 != (int64_t *)0x0) goto code_r0x0099b927;
    while (in_RAX == 0) {
        in_RAX = runtime_panicwrap();
code_r0x0099b927:
        if ((int64_t *)*piVar1 == &arg_8h) {
            *piVar1 = (int64_t)&var_8h;
        }
    }
    return 0x11799c5 /* "agv_task_chain" */;
}

/* CAS-Backend/biz/dao.(*Task).TableName | VA 0x99b940 | compiler_generated.go:1
   DWARF parameters and results: ~p0 *CAS-Backend/biz/dao.Task, ~r0 string
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_8h

undefined8 __stdcall biz_dao___Task__TableName(int64_t arg_8h)
{
    int64_t in_RAX;
    int64_t *piVar1;
    int64_t unaff_R14;
    int64_t var_8h;
    
    piVar1 = *(int64_t **)(unaff_R14 + 0x20);
    if (piVar1 != (int64_t *)0x0) goto code_r0x0099b967;
    while (in_RAX == 0) {
        in_RAX = runtime_panicwrap();
code_r0x0099b967:
        if ((int64_t *)*piVar1 == &arg_8h) {
            *piVar1 = (int64_t)&var_8h;
        }
    }
    return 0x1174083 /* "agv_task" */;
}

/* CAS-Backend/biz/dao.(*User).TableName | VA 0x99b980 | compiler_generated.go:1
   DWARF parameters and results: ~p0 *CAS-Backend/biz/dao.User, ~r0 string
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_8h

undefined8 __stdcall biz_dao___User__TableName(int64_t arg_8h)
{
    int64_t in_RAX;
    int64_t *piVar1;
    int64_t unaff_R14;
    int64_t var_8h;
    
    piVar1 = *(int64_t **)(unaff_R14 + 0x20);
    if (piVar1 != (int64_t *)0x0) goto code_r0x0099b9a7;
    while (in_RAX == 0) {
        in_RAX = runtime_panicwrap();
code_r0x0099b9a7:
        if ((int64_t *)*piVar1 == &arg_8h) {
            *piVar1 = (int64_t)&var_8h;
        }
    }
    return 0x11740ab /* "agv_user" */;
}

/* CAS-Backend/biz/dao.(*Vehicle).TableName | VA 0x99b9c0 | compiler_generated.go:1
   DWARF parameters and results: ~p0 *CAS-Backend/biz/dao.Vehicle, ~r0 string
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_8h

undefined8 __stdcall biz_dao___Vehicle__TableName(int64_t arg_8h)
{
    int64_t in_RAX;
    int64_t *piVar1;
    int64_t unaff_R14;
    int64_t var_8h;
    
    piVar1 = *(int64_t **)(unaff_R14 + 0x20);
    if (piVar1 != (int64_t *)0x0) goto code_r0x0099b9e7;
    while (in_RAX == 0) {
        in_RAX = runtime_panicwrap();
code_r0x0099b9e7:
        if ((int64_t *)*piVar1 == &arg_8h) {
            *piVar1 = (int64_t)&var_8h;
        }
    }
    return 0x1176f24 /* "agv_vehicle" */;
}
