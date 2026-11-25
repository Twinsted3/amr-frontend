/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* main.main | VA 0xe98160 | main.go:18
   DWARF parameters and results: (no entries)
   DWARF locals: r *github.com/gin-gonic/gin.Engine, distFS io/fs.FS, err error, entries []io/fs.DirEntry */
void __stdcall main_main(int64_t arg_48h, int64_t arg_98h)
{
    int64_t extraout_RAX;
    undefined8 uVar1;
    int64_t extraout_RCX;
    int64_t extraout_RCX_00;
    undefined8 extraout_RBX;
    undefined8 extraout_RBX_00;
    int64_t extraout_RDI;
    int64_t extraout_RDI_00;
    int64_t extraout_RDI_01;
    int64_t unaff_R14;
    undefined auVar2 [16];
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
    
    while (&var_28h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    auVar2 = pkg_appdir_InitExe();
    if (auVar2._0_8_ != 0) {
        var_18h = *(int64_t *)(auVar2._0_8_ + 8);
        var_10h = auVar2._8_8_;
        log_Fatalf(0x118c80c /* "初始化应用目录失败: %v" */, 0x1f, &var_18h, 1, 1);
    }
    config_InitConfig();
    pkg_logger_InitLogger();
    biz_dao_InitDB();
    io_fs_Sub(0x2e6bac0, *(undefined8 *)0xfb4b68, 0x1176f0e /* "static/dist" */, 0xb);
    if (extraout_RCX != 0) {
        var_18h = *(int64_t *)(extraout_RCX + 8);
        var_10h = extraout_RDI;
        log_Fatalf(0x1188df0 /* "加载嵌入前端失败: %v" */, 0x1c, &var_18h, 1, 1);
    }
    (**(code **)(extraout_RAX + 0x18))(extraout_RBX, 0x117611c, 10);
    if (extraout_RCX_00 != 0) {
        var_18h = *(int64_t *)(extraout_RCX_00 + 8);
        var_10h = extraout_RDI_00;
        log_Fatalf(0x11aae86 /* "前端未打入二进制: %v（请在 cmd 目录执行 go build，并确认 cmd/static/dist/index.html 存在）" */, 0x70, &var_18h, 1, 1);
    }
    io_fs_ReadDir(extraout_RAX, extraout_RBX, 0x2e64ac8, 1);
    if (extraout_RDI_01 == 0) {
        var_60h = runtime_convT64(extraout_RBX_00);
        var_68h = 0x1042b60;
        var_48h = 0xe983e0;
        var_38h = 0x27;
        var_40h = 0x1194d93;
        var_28h = 1;
        var_20h = 1;
        var_30h = (int64_t)&var_68h;
        log___Logger__output(*(undefined8 *)0x3512070, 0, 2, &var_48h);
    }
    uVar1 = biz_router_InitRouter(extraout_RAX, extraout_RBX);
    pkg_diapdu_ConfigureDiaodu(*(undefined8 *)0x3516450, *(undefined8 *)0x3516458, *(undefined8 *)0x3516460, 
                    *(undefined8 *)0x3516468);
    pkg_diapdu_Initdiaodu();
    var_50h = 5;
    var_58h = 0x116a5bc;
    gin_gonic_gin___Engine__Run(uVar1, &var_58h, 1, 1);
    return;
}
