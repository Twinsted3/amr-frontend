/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/biz/router.mountPrometheusProxy | VA 0xe95260 | prometheus_proxy.go:13
   DWARF parameters and results: r *github.com/gin-gonic/gin.Engine, target string
   DWARF locals: u *net/url.URL, origDirector func(*net/http.Request), proxy *net/http/httputil.ReverseProxy, err error */
void __stdcall
biz_router_mountPrometheusProxy(int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_40h)
{
    code *pcVar1;
    char cVar2;
    int64_t in_RAX;
    undefined8 extraout_RAX;
    undefined8 *puVar3;
    int64_t iVar4;
    undefined8 uVar5;
    int64_t extraout_RAX_00;
    uint64_t uVar6;
    undefined8 extraout_RCX;
    int64_t extraout_RCX_00;
    undefined8 uVar7;
    int64_t unaff_RBX;
    int64_t iVar8;
    int64_t extraout_RBX;
    int64_t extraout_RBX_00;
    int64_t *piVar9;
    undefined *unaff_RBP;
    undefined *puVar10;
    undefined8 *puVar11;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    int64_t unaff_R14;
    bool bVar12;
    undefined auVar13 [16];
    int64_t var_68h;
    int64_t var_60h;
    int64_t var_58h;
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    do {
        piVar9 = (int64_t *)*(undefined **)0x20;
        puVar10 = unaff_RBP;
        if (*(undefined **)(unaff_R14 + 0x10) < *(undefined **)0x20) {
            puVar10 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            piVar9 = (int64_t *)((int64_t)*(undefined **)0x20 + -0x70);
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe9528a;
            auVar13 = strings_TrimSpace(unaff_RBX, arg4);
            iVar8 = auVar13._8_8_;
            iVar4 = auVar13._0_8_;
            if (iVar8 == 0) {
                cVar2 = '\0';
                uVar6 = 0;
            } else {
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x28) = iVar4;
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x40) = iVar8;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe952ba;
                cVar2 = runtime_memequal(iVar8 + iVar4 + -1, 0x1168508, 1);
                uVar6 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x40);
                iVar4 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x28);
            }
            if ((cVar2 == '\0') || (bVar12 = uVar6 - 1 <= uVar6, uVar6 = uVar6 - 1, bVar12)) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe952e5;
                net_url_Parse(iVar4, uVar6);
                if (extraout_RBX == 0) {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = extraout_RAX;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe95305;
                    puVar3 = (undefined8 *)runtime_newobject(0x10b0e40);
                    *puVar3 = 0xe95780;
                    if (*(int32_t *)0x355db50 == 0) {
                        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30);
                    } else {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe95325;
                        puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
                        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30);
                        *extraout_R11 = uVar5;
                    }
                    *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x10) = puVar3;
                    puVar3[1] = uVar5;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe95345;
                    iVar4 = runtime_newobject(0x111e1c0);
                    if (*(int32_t *)0x355db50 == 0) {
                        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10);
                    } else {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe9535a;
                        iVar4 = runtime_gcWriteBarrier1();
                        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10);
                        *extraout_R11_00 = uVar5;
                    }
                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x38) = iVar4;
                    *(undefined8 *)(iVar4 + 8) = uVar5;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = *(undefined8 *)(iVar4 + 8);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe95385;
                    puVar3 = (undefined8 *)runtime_newobject(0x10cde20);
                    *puVar3 = 0xe95700;
                    if (*(int32_t *)0x355db50 == 0) {
                        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
                        uVar7 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30);
                        iVar4 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x38);
                    } else {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe953ae;
                        puVar3 = (undefined8 *)runtime_gcWriteBarrier4();
                        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
                        *extraout_R11_01 = uVar5;
                        uVar7 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30);
                        extraout_R11_01[1] = uVar7;
                        extraout_R11_01[2] = puVar3;
                        iVar4 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x38);
                        extraout_R11_01[3] = *(undefined8 *)(iVar4 + 8);
                    }
                    puVar3[1] = uVar5;
                    puVar3[2] = uVar7;
                    *(undefined8 **)(iVar4 + 8) = puVar3;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe953e8;
                    uVar5 = runtime_newobject(0x104e7a0);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = uVar5;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe953f9;
                    puVar3 = (undefined8 *)runtime_newobject(0x10b0fc0);
                    *puVar3 = 0xe954e0;
                    if (*(int32_t *)0x355db50 == 0) {
                        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38);
                        puVar11 = *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x18);
                    } else {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe9541d;
                        puVar3 = (undefined8 *)runtime_gcWriteBarrier3();
                        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38);
                        *extraout_R11_02 = uVar5;
                        extraout_R11_02[1] = puVar3;
                        puVar11 = *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x18);
                        extraout_R11_02[2] = *puVar11;
                    }
                    puVar3[1] = uVar5;
                    *puVar11 = puVar3;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe9545c;
                    gin_gonic_gin___RouterGroup__Any(*(undefined8 *)((int64_t)*(undefined **)0x20 + 8), 0x118124f /* "/prometheus/*filepath" */, 0x15, puVar11, 1, 1);
                    return;
                }
                pcVar1 = *(code **)(extraout_RBX + 0x18);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe9546b;
                auVar13 = (*pcVar1)(extraout_RCX);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe95485;
                runtime_concatstring2(0, 0x1182378, 0x16, auVar13._0_8_, auVar13._8_8_);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe9548a;
                uVar5 = runtime_convTstring();
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe95499;
                runtime_gopanic(0x1042920, uVar5);
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe954a5;
            runtime_panicSliceAlen();
            in_RAX = extraout_RAX_00;
            arg4 = extraout_RCX_00;
            unaff_RBX = extraout_RBX_00;
        }
        piVar9[1] = in_RAX;
        piVar9[2] = unaff_RBX;
        piVar9[3] = arg4;
        piVar9[-1] = 0xe954ba;
        runtime_morestack_noctxt_abi0(*piVar9, piVar9[1]);
        in_RAX = piVar9[1];
        unaff_RBX = piVar9[2];
        arg4 = piVar9[3];
        *(int64_t **)0x20 = (BADSPACEBASE *)piVar9;
        unaff_RBP = puVar10;
    } while( true );
}

/* CAS-Backend/biz/router.mountPrometheusProxy.func1 | VA 0xe95700 | prometheus_proxy.go:22
   DWARF parameters and results: req *net/http.Request
   DWARF locals: origDirector func(*net/http.Request), u *net/url.URL */
void __stdcall
biz_router_mountPrometheusProxy_func1(undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int64_t iVar1;
    int64_t in_RAX;
    undefined8 extraout_RCX;
    undefined8 uVar2;
    int64_t extraout_RDX;
    int64_t extraout_RSI;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
        arg3 = extraout_RDX;
    }
    iVar1 = *(int64_t *)(arg3 + 0x10);
    (*(code *)**(undefined8 **)(arg3 + 8))();
    uVar2 = *(undefined8 *)(iVar1 + 0x28);
    *(undefined8 *)(in_RAX + 0x88) = *(undefined8 *)(iVar1 + 0x30);
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier2();
        *extraout_R11 = extraout_RCX;
        extraout_R11[1] = *(undefined8 *)(extraout_RSI + 0x80);
        uVar2 = extraout_RCX;
        in_RAX = extraout_RSI;
    }
    *(undefined8 *)(in_RAX + 0x80) = uVar2;
    return;
}

/* CAS-Backend/biz/router.mountPrometheusProxy.func2 | VA 0xe954e0 | prometheus_proxy.go:27
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: proxy *net/http/httputil.ReverseProxy, rest string */
void __stdcall
biz_router_mountPrometheusProxy_func2(undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    undefined8 uVar1;
    char cVar2;
    int64_t in_RAX;
    undefined8 uVar3;
    uint64_t uVar4;
    char *pcVar5;
    undefined *puVar6;
    undefined *unaff_RBP;
    undefined *puVar7;
    int64_t extraout_RSI;
    uint64_t uVar8;
    undefined8 *puVar9;
    undefined8 extraout_R8;
    int64_t extraout_R8_00;
    int64_t iVar10;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t unaff_R14;
    bool bVar11;
    undefined auVar12 [16];
    int64_t var_50h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    do {
        puVar6 = (undefined *)*(undefined **)0x20;
        puVar7 = unaff_RBP;
        if (*(undefined **)(unaff_R14 + 0x10) < *(undefined **)0x20) {
            puVar7 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            puVar6 = (undefined *)((int64_t)*(undefined **)0x20 + -0x58);
            *(int64_t *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            puVar9 = *(undefined8 **)(in_RAX + 0x38);
            arg3 = *(int64_t *)(arg3 + 8);
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x20) = arg3;
            for (iVar10 = *(int64_t *)(in_RAX + 0x40); 0 < iVar10; iVar10 = iVar10 + -1) {
                uVar3 = puVar9[2];
                uVar1 = puVar9[3];
                if (puVar9[1] == 8) {
                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x28) = iVar10;
                    *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x10) = puVar9;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = uVar1;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = uVar3;
                    uVar3 = *puVar9;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) = 0xe9554e;
                    cVar2 = runtime_memequal(uVar3, 0x11740bb /* "filepath" */, 8);
                    if (cVar2 != '\0') {
                        in_RAX = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
                        arg3 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x20);
                        iVar10 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x30);
                        pcVar5 = *(char **)((int64_t)*(undefined **)0x20 + -0x18);
                        goto code_r0x00e95584;
                    }
                    in_RAX = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
                    arg3 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x20);
                    puVar9 = *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x10);
                    iVar10 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x28);
                }
                puVar9 = puVar9 + 4;
            }
            iVar10 = 0;
            pcVar5 = (char *)0x0;
code_r0x00e95584:
            if (iVar10 == 0) {
                bVar11 = false;
            } else {
                bVar11 = *pcVar5 == '/';
            }
            if (!bVar11) goto code_r0x00e955c0;
            if (iVar10 != 0) break;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) = 0xe956d0;
            in_RAX = runtime_panicSliceB(1, pcVar5, 0);
        }
        *(int64_t *)(puVar6 + 8) = in_RAX;
        *(undefined8 *)(puVar6 + -8) = 0xe956db;
        runtime_morestack_abi0();
        in_RAX = *(int64_t *)(puVar6 + 8);
        *(undefined **)0x20 = (BADSPACEBASE *)puVar6;
        unaff_RBP = puVar7;
    } while( true );
    iVar10 = iVar10 + -1;
    pcVar5 = pcVar5 + ((uint32_t)(-iVar10 >> 0x3f) & 1);
code_r0x00e955c0:
    if (iVar10 == 0) {
        iVar10 = *(int64_t *)(*(int64_t *)(in_RAX + 0x20) + 0x10);
        *(undefined8 *)(iVar10 + 0x40) = 1;
        if (*(int32_t *)0x355db50 != 0) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) = 0xe955e7;
            in_RAX = runtime_gcWriteBarrier1();
            *extraout_R11 = extraout_R8;
            iVar10 = extraout_RSI;
        }
        *(undefined8 *)(iVar10 + 0x38) = 0x1168508 /* "/" */;
    } else {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) = 0xe95610;
        auVar12 = runtime_concatstring2(0, 0x1168508 /* "/" */, 1, pcVar5, iVar10);
        uVar3 = auVar12._0_8_;
        in_RAX = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
        iVar10 = *(int64_t *)(*(int64_t *)(in_RAX + 0x20) + 0x10);
        *(int64_t *)(iVar10 + 0x40) = auVar12._8_8_;
        if (*(int32_t *)0x355db50 != 0) {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) = 0xe9562f;
            uVar3 = runtime_gcWriteBarrier2();
            *extraout_R11_00 = uVar3;
            extraout_R11_00[1] = *(undefined8 *)(extraout_R8_00 + 0x38);
            iVar10 = extraout_R8_00;
        }
        *(undefined8 *)(iVar10 + 0x38) = uVar3;
        arg3 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x20);
    }
    iVar10 = *(int64_t *)(in_RAX + 0x28);
    uVar3 = *(undefined8 *)(in_RAX + 0x30);
    uVar4 = 0;
    if (iVar10 != 0) {
        uVar4 = (uint64_t)*(uint32_t *)(iVar10 + 0x10);
        do {
            uVar8 = uVar4 & **(uint64_t **)0xfb8e30;
            if ((*(uint64_t **)0xfb8e30)[uVar8 * 2 + 1] == *(uint64_t *)(iVar10 + 8)) {
                uVar4 = (*(uint64_t **)0xfb8e30)[uVar8 * 2 + 2];
                goto code_r0x00e95666;
            }
            uVar4 = uVar4 + 1;
        } while ((*(uint64_t **)0xfb8e30)[uVar8 * 2 + 1] != 0);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = uVar3;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) = 0xe956a9;
        uVar4 = runtime_typeAssert(0xfb8e30);
        uVar3 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
        arg3 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x20);
        in_RAX = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
    }
code_r0x00e95666:
    uVar1 = *(undefined8 *)(in_RAX + 0x20);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) = 0xe95675;
    net_http_httputil___ReverseProxy__ServeHTTP(arg3, uVar4, uVar3, uVar1);
    return;
}
