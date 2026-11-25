/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/pkg/logger.InitLogger.AddCaller.WithCaller.func1 | VA 0x887ea0 | options.go:99
   DWARF parameters and results: log *go.uber.org/zap.Logger
   DWARF locals: enabled bool */
void __stdcall
pkg_logger_InitLogger_AddCaller_WithCaller_func1(undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3)
{
    int64_t in_RAX;
    
    *(undefined *)(in_RAX + 0x11) = *(undefined *)(arg3 + 8);
    return;
}
