/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/biz/service.Register | VA 0xe49700 | user_service.go:33
   DWARF parameters and results: u CAS-Backend/biz/dao.User, ~r0 bool
   DWARF locals: hashedPassword string, err error */
// WARNING: Removing unreachable block (ram,0x00e497c8)

undefined8 __stdcall
biz_service_Register
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, int64_t arg5, int64_t arg6,
          int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
          int64_t arg_38h, int64_t arg_40h, int64_t arg_88h, int64_t arg_98h, int64_t arg_f0h)
{
    char cVar1;
    int64_t in_RAX;
    undefined8 unaff_RBX;
    int64_t extraout_RSI;
    int64_t extraout_RDI;
    int64_t unaff_R14;
    undefined auVar2 [16];
    int64_t unaff_retaddr;
    int64_t in_stack_ffffffffffffff48;
    int64_t in_stack_ffffffffffffff50;
    int64_t in_stack_ffffffffffffff58;
    int64_t in_stack_ffffffffffffff60;
    int64_t in_stack_ffffffffffffff68;
    int64_t in_stack_ffffffffffffff70;
    int64_t in_stack_ffffffffffffff78;
    int64_t var_70h;
    int64_t var_50h;
    int64_t var_48h;
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&var_38h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    cVar1 = biz_dao_IsExist_user(arg1, arg2);
    if (cVar1 != '\0') {
        var_10h = runtime_convTstring(arg1, arg2);
        var_18h = 0x1042920;
        fmt_Fprintf(in_stack_ffffffffffffff48, in_stack_ffffffffffffff50, in_stack_ffffffffffffff58, 
                     in_stack_ffffffffffffff60, in_stack_ffffffffffffff68, in_stack_ffffffffffffff70, 
                     in_stack_ffffffffffffff78);
        return 0;
    }
    runtime_stringtoslicebyte(&var_70h, arg5, arg6);
    auVar2 = golang_org_x_crypto_bcrypt_GenerateFromPassword();
    var_50h = extraout_RDI;
    var_40h = extraout_RSI;
    auVar2 = runtime_slicebytetostring(0, auVar2._0_8_, auVar2._8_8_);
    if (var_50h != 0) {
        var_28h = *(int64_t *)(var_50h + 8);
        var_20h = var_40h;
        fmt_Fprintf(in_stack_ffffffffffffff48, in_stack_ffffffffffffff50, in_stack_ffffffffffffff58, 
                     in_stack_ffffffffffffff60, in_stack_ffffffffffffff68, in_stack_ffffffffffffff70, 
                     in_stack_ffffffffffffff78);
        return 0;
    }
    cVar1 = biz_dao_Insert_user(arg1, arg2, unaff_RBX, arg4, auVar2._0_8_, auVar2._8_8_, &var_48h, 1, 1);
    if (cVar1 == '\0') {
        return 0;
    }
    var_30h = runtime_convTstring(unaff_RBX, arg4);
    var_38h = 0x1042920;
    fmt_Fprintf(in_stack_ffffffffffffff48, in_stack_ffffffffffffff50, in_stack_ffffffffffffff58, 
                 in_stack_ffffffffffffff60, in_stack_ffffffffffffff68, in_stack_ffffffffffffff70, 
                 in_stack_ffffffffffffff78);
    return 1;
}

/* CAS-Backend/biz/service.Login | VA 0xe499c0 | user_service.go:57
   DWARF parameters and results: no string, pwd string, ~r0 bool, ~r1 string, ~r2 CAS-Backend/biz/dao.User
   DWARF locals: user CAS-Backend/biz/dao.User */
// WARNING: [rz-ghidra] Detected overlap for variable var_fh

undefined8 __stdcall
biz_service_Login(int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4,
                 undefined8 placeholder_4, undefined8 placeholder_5, int64_t arg_8h, undefined8 placeholder_7,
                 int64_t arg_18h, int64_t placeholder_9, int64_t arg_28h, int64_t placeholder_11, int64_t arg_38h,
                 int64_t placeholder_13, int64_t arg_48h, int64_t arg_50h, int64_t arg_58h, int64_t arg_60h,
                 int64_t arg_160h)
{
    char cVar1;
    int64_t iVar2;
    int64_t unaff_R14;
    int64_t in_XMM15_Qb;
    int64_t unaff_retaddr;
    int64_t in_stack_fffffffffffffef0;
    int64_t in_stack_fffffffffffffef8;
    int64_t in_stack_ffffffffffffff00;
    int64_t in_stack_ffffffffffffff08;
    int64_t in_stack_ffffffffffffff10;
    int64_t in_stack_ffffffffffffff18;
    int64_t in_stack_ffffffffffffff20;
    int64_t var_d8h;
    int64_t in_stack_ffffffffffffff30;
    int64_t in_stack_ffffffffffffff38;
    int64_t in_stack_ffffffffffffff40;
    int64_t var_b8h;
    int64_t var_b0h;
    int64_t var_a8h;
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
    
    while (&var_90h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, arg_8h);
    }
    cVar1 = biz_dao_IsExist_user(in_stack_fffffffffffffef0, in_stack_fffffffffffffef8, in_stack_ffffffffffffff30);
    if (cVar1 != '\0') {
        var_68h = biz_dao_Select1_user(in_stack_fffffffffffffef0, in_stack_fffffffffffffef8, in_XMM15_Qb);
        var_90h = placeholder_9;
        var_80h = placeholder_13;
        var_58h = placeholder_11;
        var_50h = arg1;
        var_48h = placeholder_9;
        var_38h = placeholder_13;
        runtime_stringtoslicebyte(in_stack_fffffffffffffef0, in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, 
                     in_stack_ffffffffffffff10);
        iVar2 = golang_org_x_crypto_bcrypt_CompareHashAndPassword(in_stack_fffffffffffffef0, in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, 
                             in_stack_ffffffffffffff08, in_stack_ffffffffffffff10, in_stack_ffffffffffffff18, 
                             in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, in_stack_ffffffffffffff40);
        if (iVar2 != 0) {
            fmt_Fprintf(in_stack_fffffffffffffef0, in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, 
                         in_stack_ffffffffffffff08, in_stack_ffffffffffffff10, in_stack_ffffffffffffff18, 
                         in_stack_ffffffffffffff20);
            return 0;
        }
        var_10h = runtime_convTstring(in_stack_fffffffffffffef0, in_stack_fffffffffffffef8, in_stack_ffffffffffffff18);
        var_18h = 0x1042920;
        fmt_Fprintf(in_stack_fffffffffffffef0, in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, 
                     in_stack_ffffffffffffff08, in_stack_ffffffffffffff10, in_stack_ffffffffffffff18, 
                     in_stack_ffffffffffffff20);
        return 1;
    }
    var_28h = 0x1042920;
    var_20h = 0x2e6a0e0 /* "用户不存在" */;
    fmt_Fprintln(in_stack_fffffffffffffef0, in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, 
                 in_stack_ffffffffffffff08, in_stack_ffffffffffffff10);
    return 0;
}
