/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/biz/router.mountPrometheusProxy.NewSingleHostReverseProxy.func3 | VA 0xe95780 | reverseproxy.go:263
   DWARF parameters and results: req *net/http.Request
   DWARF locals: target *net/url.URL */
void __stdcall
biz_router_mountPrometheusProxy_NewSingleHostReverseProxy_func3
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int64_t in_RAX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
    }
    net_http_httputil_rewriteRequestURL(in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0);
    return;
}
