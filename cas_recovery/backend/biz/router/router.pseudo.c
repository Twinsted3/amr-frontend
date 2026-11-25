/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/biz/router.InitRouter | VA 0xe957c0 | router.go:17
   DWARF parameters and results: staticRoot io/fs.FS, ~r0 *github.com/gin-gonic/gin.Engine
   DWARF locals: r *github.com/gin-gonic/gin.Engine, api *github.com/gin-gonic/gin.RouterGroup, user *github.com/gin-gonic/gin.RouterGroup, traffic *github.com/gin-gonic/gin.RouterGroup, userGroup *github.com/gin-gonic/gin.RouterGroup, map1 *github.com/gin-gonic/gin.RouterGroup, vehicle *github.com/gin-gonic/gin.RouterGroup, task *github.com/gin-gonic/gin.RouterGroup, controll *github.com/gin-gonic/gin.RouterGroup, taskChain *github.com/gin-gonic/gin.RouterGroup, target string */
// WARNING: Removing unreachable block (ram,0x00e9708b)
// WARNING: Variable defined which should be unmapped: var_1d8h
// WARNING: Variable defined which should be unmapped: var_1d0h
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: Restarted to delay deadcode elimination for space: stack

undefined8 __stdcall biz_router_InitRouter(int64_t arg_8h, int64_t arg_10h, int64_t arg_f0h)
{
    int64_t in_RAX;
    undefined8 uVar1;
    undefined8 *puVar2;
    undefined8 uVar3;
    undefined8 uVar4;
    int64_t arg4;
    undefined8 unaff_RBX;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    undefined8 in_XMM15_Qa;
    undefined8 in_XMM15_Qb;
    int64_t var_1f0h;
    int64_t in_stack_fffffffffffffe20;
    int64_t var_1d8h;
    int64_t var_1d0h;
    int64_t in_stack_fffffffffffffe58;
    undefined auStack_160 [64];
    int64_t var_120h;
    int64_t var_118h;
    int64_t var_110h;
    int64_t var_108h;
    int64_t var_100h;
    int64_t var_f8h;
    int64_t var_f0h;
    int64_t var_e8h;
    int64_t var_e0h;
    int64_t var_d8h;
    int64_t var_d0h;
    int64_t var_c8h;
    int64_t var_c0h;
    int64_t var_b8h;
    int64_t var_a8h;
    int64_t var_a0h;
    int64_t var_98h;
    int64_t var_90h;
    int64_t var_80h;
    int64_t var_78h;
    int64_t var_70h;
    int64_t var_60h;
    int64_t var_58h;
    int64_t var_50h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (uVar1 = *(undefined8 *)0xfb6af0, auStack_160 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    *(undefined8 *)0x355d3e0 = 1;
    *(undefined8 *)0xfb6af8 = 7;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier1();
        *extraout_R11 = uVar1;
    }
    *(undefined8 *)0xfb6af0 = 0x1172af9 /* "release" */;
    uVar1 = gin_gonic_gin_New(0, 0, 0);
    gin_gonic_gin_RecoveryWithWriter(*(undefined8 *)0xfb6ae0, *(undefined8 *)0xfb6ae8, 0, 0, 0);
    gin_gonic_gin___Engine__Use(uVar1, &var_10h, 1, 1);
    gin_gonic_gin_LoggerWithConfig(in_XMM15_Qa, 0, in_XMM15_Qb, in_XMM15_Qa, 0, 0, 0x2cd7060);
    gin_gonic_gin___Engine__Use(uVar1, &var_10h, 1, 1);
    runtime_duffcopy_offset_728();
    puVar2 = (undefined8 *)runtime_newobject(0x104df00);
    puVar2[1] = 1;
    *puVar2 = 0x2e64b08;
    puVar2 = (undefined8 *)runtime_newobject(0x104e860);
    puVar2[1] = 3;
    *puVar2 = 0x1168a42 /* "GET" */;
    puVar2[3] = 4;
    puVar2[2] = 0x116953c /* "POST" */;
    puVar2[5] = 3;
    puVar2[4] = 0x1168a45;
    puVar2[7] = 5;
    puVar2[6] = 0x116a5e4;
    puVar2[9] = 6;
    puVar2[8] = 0x116f285 /* "DELETE" */;
    puVar2[0xb] = 4;
    puVar2[10] = 0x1169540;
    puVar2 = (undefined8 *)runtime_newobject(0x104e800);
    puVar2[1] = 6;
    *puVar2 = 0x116f28b;
    puVar2[3] = 0xe;
    puVar2[2] = 0x11799d3;
    puVar2[5] = 0xc;
    puVar2[4] = 0x1177d32;
    puVar2[7] = 0xd;
    puVar2[6] = 0x1178caa;
    puVar2 = (undefined8 *)runtime_newobject(0x104df00);
    puVar2[1] = 0xe;
    *puVar2 = 0x11799d3;
    runtime_duffcopy_offset_728();
    gin_contrib_cors_New();
    gin_gonic_gin___Engine__Use(uVar1, &var_10h, 1, 1);
    uVar3 = gin_gonic_gin___RouterGroup__Group(uVar1, 0x1176f2f /* "/cas/biz/v1" */, 0xb, 0, 0, 0);
    uVar4 = gin_gonic_gin___RouterGroup__Group(uVar3, 0x116a5e9 /* "/user" */, 5, 0, 0, 0);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6f40;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x11740c3 /* "/sign_in" */, 8, puVar2, 1, 1);
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x1168a42 /* "GET" */, 3, 0x11752df /* "/sign_out" */, 9, 0, 0, 0);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6fb0;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x11740cb /* "/sign_up" */, 8, puVar2, 1, 1);
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x1169544, 4, 0, 0, 0);
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116f285 /* "DELETE" */, 6, 0x1169548 /* "/del" */, 4, 0, 0, 0);
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x116f291 /* "/alter" */, 6, 0, 0, 0);
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x1168a42 /* "GET" */, 3, 0, 0, 0, 0, 0);
    uVar4 = gin_gonic_gin___RouterGroup__Group(uVar3, 0x1176f3a /* "/user_group" */, 0xb, 0, 0, 0);
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x1169544, 4, 0, 0, 0);
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116f285 /* "DELETE" */, 6, 0x1169548 /* "/del" */, 4, 0, 0, 0);
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x116f291 /* "/alter" */, 6, 0, 0, 0);
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x1168a42 /* "GET" */, 3, 0, 0, 0, 0, 0);
    uVar4 = gin_gonic_gin___RouterGroup__Group(uVar3, 0x116a5ee /* "/task" */, 5, 0, 0, 0);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6f70;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x1169544, 4, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6ea0;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116f285 /* "DELETE" */, 6, 0x1169548 /* "/del" */, 4, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd7020;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x116f291 /* "/alter" */, 6, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6ed8;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x1168a42 /* "GET" */, 3, 0, 0, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6f10;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x1168a42 /* "GET" */, 3, 0x11740d3 /* "/status1" */, 8, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6f00;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x1168a42 /* "GET" */, 3, 0x11740db /* "/status0" */, 8, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6ec0;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x116954c, 4, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6ff8;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x1168a42 /* "GET" */, 3, 0x1172b00 /* "/status" */, 7, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6f80;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x116f297 /* "/pause" */, 6, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6fb8;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x1172b07 /* "/resume" */, 7, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6e68;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x1172b0e /* "/cancel" */, 7, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6ee8;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x1168a42 /* "GET" */, 3, 0x1177d3e /* "/auto/status" */, 0xc, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6e60;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x116a5f3 /* "/auto" */, 5, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6fe0;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x1176144 /* "/auto/stop" */, 10, puVar2, 1, 1);
    uVar4 = gin_gonic_gin___RouterGroup__Group(uVar3, 0x1176f45 /* "/task-chain" */, 0xb, 0, 0, 0);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6f68;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x1169544, 4, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6e98;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116f285 /* "DELETE" */, 6, 0x1169548 /* "/del" */, 4, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd7018;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x116f291 /* "/alter" */, 6, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6ed0;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x1168a42 /* "GET" */, 3, 0, 0, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6eb8;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x116954c, 4, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6ff0;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x1168a42 /* "GET" */, 3, 0x1172b00 /* "/status" */, 7, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6f88;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x116f297 /* "/pause" */, 6, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6fc0;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x1172b07 /* "/resume" */, 7, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6e70;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x1172b0e /* "/cancel" */, 7, puVar2, 1, 1);
    uVar4 = gin_gonic_gin___RouterGroup__Group(uVar3, 0x11740e3 /* "/traffic" */, 8, 0, 0, 0);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6f50;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x1178cb7 /* "/monitor-push" */, 0xd, puVar2, 1, 1);
    uVar4 = gin_gonic_gin___RouterGroup__Group(uVar3, 0x11740eb /* "/vehicle" */, 8, 0, 0, 0);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6f78;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x1169544, 4, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6ea8;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116f285 /* "DELETE" */, 6, 0x1169548 /* "/del" */, 4, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd7028;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x116f291 /* "/alter" */, 6, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6ee0;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x1168a42 /* "GET" */, 3, 0x1168508 /* "/" */, 1, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd7048;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x1168a42 /* "GET" */, 3, 0x1176f50 /* "/runtime/ws" */, 0xb, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd7040;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x1178cc4 /* "/runtime-push" */, 0xd, puVar2, 1, 1);
    uVar4 = gin_gonic_gin___RouterGroup__Group(uVar3, 0x11740f3 /* "/control" */, 8, 0, 0, 0);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6f60;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x11740fb /* "/forward" */, 8, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6fa8;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x1178cd1 /* "/take-control" */, 0xd, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6fd0;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x117b7c3 /* "/release-control" */, 0x10, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6f58;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x11752e8 /* "/backward" */, 9, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd7000;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x116a5f8 /* "/left" */, 5, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd7008;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x116f29d /* "/right" */, 6, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6f28;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x116a5fd /* "/lift" */, 5, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6f20;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x116f2a3 /* "/hcset" */, 6, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6f18;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x116f2a9 /* "/lower" */, 6, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6f08;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x1174103 /* "/guiling" */, 8, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6e78;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x1176f5b /* "/relocation" */, 0xb, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6fc8;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x116a602 /* "/stop" */, 5, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6f90;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x117614e /* "/translate" */, 10, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd7058;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x1172b15 /* "/rotate" */, 7, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd7050;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x117410b /* "/arcMove" */, 8, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6e80;
    gin_gonic_gin___RouterGroup__handle(uVar4, 0x116953c /* "POST" */, 4, 0x117a72c /* "/manurelocation" */, 0xf, puVar2, 1, 1);
    uVar3 = gin_gonic_gin___RouterGroup__Group(uVar3, 0x1169550 /* "/map" */, 4, 0, 0, 0);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6fd8;
    gin_gonic_gin___RouterGroup__handle(uVar3, 0x116953c /* "POST" */, 4, 0x1169544, 4, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6fe8;
    gin_gonic_gin___RouterGroup__handle(uVar3, 0x116953c /* "POST" */, 4, 0x1174113 /* "/stopnew" */, 8, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6f48;
    gin_gonic_gin___RouterGroup__handle(uVar3, 0x1168a42 /* "GET" */, 3, 0x1172b1c /* "/stream" */, 7, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6e90;
    gin_gonic_gin___RouterGroup__handle(uVar3, 0x116953c /* "POST" */, 4, 0x1169548 /* "/del" */, 4, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd7010;
    gin_gonic_gin___RouterGroup__handle(uVar3, 0x116953c /* "POST" */, 4, 0x116f291 /* "/alter" */, 6, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6ec8;
    gin_gonic_gin___RouterGroup__handle(uVar3, 0x1168a42 /* "GET" */, 3, 0x1168508 /* "/" */, 1, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6ef8;
    gin_gonic_gin___RouterGroup__handle(uVar3, 0x1168a42 /* "GET" */, 3, 0x11752f1 /* "/overview" */, 9, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6ef0;
    gin_gonic_gin___RouterGroup__handle(uVar3, 0x1168a42 /* "GET" */, 3, 0x116a607 /* "/file" */, 5, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6f30;
    gin_gonic_gin___RouterGroup__handle(uVar3, 0x116953c /* "POST" */, 4, 0x116a60c /* "/push" */, 5, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6fa0;
    gin_gonic_gin___RouterGroup__handle(uVar3, 0x116953c /* "POST" */, 4, 0x116f2af /* "/query" */, 6, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6eb0;
    gin_gonic_gin___RouterGroup__handle(uVar3, 0x116953c /* "POST" */, 4, 0x116a611 /* "/save" */, 5, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd7038;
    gin_gonic_gin___RouterGroup__handle(uVar3, 0x116953c /* "POST" */, 4, 0x1172b23 /* "/upload" */, 7, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6f38;
    gin_gonic_gin___RouterGroup__handle(uVar3, 0x116953c /* "POST" */, 4, 0x116a616 /* "/load" */, 5, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd7030;
    gin_gonic_gin___RouterGroup__handle(uVar3, 0x116953c /* "POST" */, 4, 0x1176f66 /* "/uploadload" */, 0xb, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6f98;
    gin_gonic_gin___RouterGroup__handle(uVar3, 0x116953c /* "POST" */, 4, 0x116a61b /* "/list" */, 5, puVar2, 1, 1);
    puVar2 = (undefined8 *)runtime_newobject(0x104e7a0);
    *puVar2 = 0x2cd6e88;
    gin_gonic_gin___RouterGroup__handle(uVar3, 0x116953c /* "POST" */, 4, 0x1172b2a /* "/delete" */, 7, puVar2, 1, 1);
    if (*(char *)0x3516448 != '\0') {
        arg4 = *(int64_t *)0x3516440;
        if (*(int64_t *)0x3516440 == 0) {
            arg4 = 0x15;
        }
        biz_router_mountPrometheusProxy(arg4, in_stack_fffffffffffffe20, var_1d8h, var_1d0h, in_stack_fffffffffffffe58);
    }
    if (in_RAX != 0) {
        biz_router_mountEmbeddedFrontend(uVar1, in_RAX, unaff_RBX);
    }
    return uVar1;
}

/* CAS-Backend/biz/router.InitRouter.func1 | VA 0xe98040 | router.go:24
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context, ~r0 bool
   DWARF locals: uri string */
uint64_t __stdcall biz_router_InitRouter_func1(int64_t arg_8h)
{
    int64_t iVar1;
    undefined8 uVar2;
    char cVar3;
    int64_t in_RAX;
    int64_t iVar4;
    int64_t iVar5;
    unkbyte7 Var7;
    uint64_t uVar6;
    int64_t unaff_R14;
    bool bVar8;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    iVar5 = *(int64_t *)(in_RAX + 0x20);
    iVar1 = *(int64_t *)(iVar5 + 200);
    uVar2 = *(undefined8 *)(iVar5 + 0xc0);
    if (iVar1 < 0xb) {
        cVar3 = '\0';
    } else {
        cVar3 = runtime_memequal(uVar2, 0x1176f71 /* "/prometheus" */, 0xb);
    }
    if (cVar3 == '\0') {
        iVar4 = internal_stringslite_Index(uVar2, iVar1, 0x1181279 /* "/vehicle/runtime-push" */, 0x15);
        if (iVar4 < 0) {
            iVar4 = internal_stringslite_Index(uVar2, iVar1, 0x117ed10 /* "/vehicle/runtime/ws" */, 0x13);
            bVar8 = -1 < iVar4;
            Var7 = (unkbyte7)((uint64_t)iVar5 >> 8);
        } else {
            Var7 = 0;
            bVar8 = true;
        }
    } else {
        Var7 = 0;
        bVar8 = true;
    }
    if (bVar8) {
        uVar6 = 1;
    } else {
        iVar5 = internal_stringslite_Index(uVar2, iVar1, 0x117c9b6 /* "/task/auto/status" */, 0x11);
        if (iVar5 < 0) {
            iVar5 = internal_stringslite_Index(uVar2, iVar1, 0x1178ceb /* "/map/overview" */, 0xd);
            uVar6 = CONCAT71(Var7, -1 < iVar5);
        } else {
            uVar6 = 1;
        }
    }
    return uVar6 & 0xffffffff;
}

/* CAS-Backend/biz/router.mountEmbeddedFrontend | VA 0xe97100 | router.go:164
   DWARF parameters and results: r *github.com/gin-gonic/gin.Engine, staticRoot io/fs.FS
   DWARF locals: serveIndex func(*github.com/gin-gonic/gin.Context), serveEmbedFile func(string) github.com/gin-gonic/gin.HandlerFunc, httpFS net/http.FileSystem, indexHTML []uint8, err error */
void __stdcall
biz_router_mountEmbeddedFrontend(int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_a8h)
{
    int64_t iVar1;
    int64_t iVar2;
    uint64_t uVar3;
    code *pcVar4;
    int64_t in_RAX;
    undefined8 uVar5;
    undefined8 extraout_RAX;
    undefined8 *puVar6;
    undefined8 uVar7;
    int64_t extraout_RAX_00;
    undefined8 extraout_RCX;
    int64_t extraout_RCX_00;
    undefined8 unaff_RBX;
    undefined8 extraout_RBX;
    undefined8 extraout_RBX_00;
    undefined *puVar8;
    undefined *unaff_RBP;
    undefined *puVar9;
    undefined8 extraout_RSI;
    undefined8 uVar10;
    undefined8 extraout_RSI_00;
    int64_t extraout_RDI;
    int64_t extraout_RDI_00;
    int64_t iVar11;
    undefined8 *extraout_R8;
    undefined8 *puVar12;
    int64_t extraout_R8_00;
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
    int64_t unaff_R14;
    undefined auVar13 [16];
    int64_t var_a8h;
    int64_t var_a0h;
    int64_t var_98h;
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
    
    do {
        puVar8 = (undefined *)*(undefined **)0x20;
        puVar9 = unaff_RBP;
        if (*(undefined **)(unaff_R14 + 0x10) < (undefined *)((int64_t)*(undefined **)0x20 + -0x30)) {
            puVar9 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            puVar8 = (undefined *)((int64_t)*(undefined **)0x20 + -0xb0);
            *(int64_t *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x18) = arg4;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
            *(undefined2 *)(in_RAX + 0x38) = 0;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = unaff_RBX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x38) = arg4;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe97154;
            uVar5 = runtime_convT(0x10b6680, (undefined *)((int64_t)*(undefined **)0x20 + -0x40));
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = uVar5;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe9717d;
            io_fs_ReadFile(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10), 
                            *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x18), 0x117611c /* "index.html" */, 10);
            uVar5 = extraout_RSI;
            iVar11 = extraout_RDI;
            if (extraout_RDI == 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68) = extraout_RCX;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = extraout_RBX;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50) = extraout_RAX;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe971a5;
                puVar6 = (undefined8 *)runtime_newobject(0x10b0ec0);
                *puVar6 = 0xe97f80;
                puVar6[2] = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70);
                puVar6[3] = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x68);
                if (*(int32_t *)0x355db50 == 0) {
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50);
                } else {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe971d6;
                    puVar6 = (undefined8 *)runtime_gcWriteBarrier1();
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x50);
                    *extraout_R11 = uVar5;
                }
                *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x18) = puVar6;
                puVar6[1] = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe971f6;
                puVar6 = (undefined8 *)runtime_newobject(0x10b0f40);
                *puVar6 = 0xe97e80;
                puVar6[1] = 0x2e6bb00;
                if (*(int32_t *)0x355db50 == 0) {
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10);
                } else {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe97225;
                    puVar6 = (undefined8 *)runtime_gcWriteBarrier1();
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10);
                    *extraout_R11_00 = uVar5;
                }
                *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x20) = puVar6;
                puVar6[2] = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe97248;
                uVar5 = runtime_newobject(0x104e7a0);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe9725c;
                puVar6 = (undefined8 *)runtime_newobject(0x10cdd80);
                *puVar6 = 0xe97ce0;
                if (*(int32_t *)0x355db50 == 0) {
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
                    puVar12 = *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x28);
                    uVar10 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
                } else {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe9728e;
                    puVar6 = (undefined8 *)runtime_gcWriteBarrier4();
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
                    *extraout_R11_01 = uVar5;
                    uVar10 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
                    extraout_R11_01[1] = uVar10;
                    extraout_R11_01[2] = puVar6;
                    puVar12 = *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x28);
                    extraout_R11_01[3] = *puVar12;
                }
                puVar6[1] = uVar5;
                puVar6[2] = uVar10;
                *puVar12 = puVar6;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe972f1;
                gin_gonic_gin___RouterGroup__handle(*(undefined8 *)((int64_t)*(undefined **)0x20 + 8), 0x1168a42 /* "GET" */, 3, 0x117c983 /* "/assets/*filepath" */, 0x11, 
                                puVar12, 1, 1);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe972fd;
                uVar5 = runtime_newobject(0x104e7a0);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe97311;
                puVar6 = (undefined8 *)runtime_newobject(0x10cdd80);
                *puVar6 = 0xe97b40;
                if (*(int32_t *)0x355db50 == 0) {
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
                    puVar12 = *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x28);
                    uVar10 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
                } else {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe97345;
                    puVar6 = (undefined8 *)runtime_gcWriteBarrier4();
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
                    *extraout_R11_02 = uVar5;
                    uVar10 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
                    extraout_R11_02[1] = uVar10;
                    extraout_R11_02[2] = puVar6;
                    puVar12 = *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x28);
                    extraout_R11_02[3] = *puVar12;
                }
                puVar6[1] = uVar5;
                puVar6[2] = uVar10;
                *puVar12 = puVar6;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe973a8;
                gin_gonic_gin___RouterGroup__handle(*(undefined8 *)((int64_t)*(undefined **)0x20 + 8), 0x1168a42 /* "GET" */, 3, 0x117c994 /* "/vendor/*filepath" */, 0x11, 
                                puVar12, 1, 1);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe973b4;
                puVar6 = (undefined8 *)runtime_newobject(0x10cdce0);
                *puVar6 = 0xe97b00;
                puVar6[2] = 8;
                puVar6[1] = 0x117411b;
                puVar6[3] = 0x2e6bb00;
                if (*(int32_t *)0x355db50 == 0) {
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10);
                } else {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe973f4;
                    puVar6 = (undefined8 *)runtime_gcWriteBarrier1();
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10);
                    *extraout_R11_03 = uVar5;
                }
                *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x30) = puVar6;
                puVar6[4] = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe97417;
                puVar6 = (undefined8 *)runtime_newobject(0x104e7a0);
                if (*(int32_t *)0x355db50 == 0) {
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30);
                } else {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe97431;
                    puVar6 = (undefined8 *)runtime_gcWriteBarrier1();
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30);
                    *extraout_R11_04 = uVar5;
                }
                *puVar6 = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe97470;
                gin_gonic_gin___RouterGroup__handle(*(undefined8 *)((int64_t)*(undefined **)0x20 + 8), 0x1168a42 /* "GET" */, 3, 0x11752fa /* "/vite.svg" */, 9, puVar6, 1
                                , 1);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe9747c;
                puVar6 = (undefined8 *)runtime_newobject(0x104e7a0);
                if (*(int32_t *)0x355db50 == 0) {
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
                } else {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe97494;
                    puVar6 = (undefined8 *)runtime_gcWriteBarrier1();
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
                    *extraout_R11_05 = uVar5;
                }
                *puVar6 = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe974d0;
                gin_gonic_gin___RouterGroup__handle(*(undefined8 *)((int64_t)*(undefined **)0x20 + 8), 0x1168a42 /* "GET" */, 3, 0x1168508 /* "/" */, 1, puVar6, 1
                                , 1);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe974dc;
                uVar5 = runtime_newobject(0x104e7a0);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe974f0;
                puVar6 = (undefined8 *)runtime_newobject(0x10e3900);
                *puVar6 = 0xe97780;
                if (*(int32_t *)0x355db50 == 0) {
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
                    uVar10 = *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x18);
                    uVar7 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10);
                    puVar12 = *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x28);
                } else {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe9752a;
                    puVar6 = (undefined8 *)runtime_gcWriteBarrier5();
                    uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
                    *extraout_R11_06 = uVar5;
                    uVar10 = *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x18);
                    extraout_R11_06[1] = uVar10;
                    uVar7 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10);
                    extraout_R11_06[2] = uVar7;
                    extraout_R11_06[3] = puVar6;
                    puVar12 = *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x28);
                    extraout_R11_06[4] = *puVar12;
                }
                puVar6[1] = uVar5;
                puVar6[2] = *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10);
                puVar6[3] = uVar10;
                puVar6[4] = 0x2e6bb00;
                puVar6[5] = uVar7;
                *puVar12 = puVar6;
                iVar11 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
                *(undefined8 *)(iVar11 + 0xf8) = 1;
                *(undefined8 *)(iVar11 + 0x100) = 1;
                if (*(int32_t *)0x355db50 != 0) {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe975b2;
                    runtime_gcWriteBarrier2();
                    *extraout_R11_07 = extraout_R8;
                    extraout_R11_07[1] = *(undefined8 *)(iVar11 + 0xf0);
                    puVar12 = extraout_R8;
                }
                *(undefined8 **)(iVar11 + 0xf0) = puVar12;
                iVar2 = *(int64_t *)(iVar11 + 8);
                iVar1 = iVar2 + 1;
                if (iVar1 < 0x3f) {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48) = *(undefined8 *)(iVar11 + 0xf0);
                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x58) = iVar2;
                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x60) = iVar1;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe97608;
                    uVar7 = runtime_makeslice(0x1067800, iVar1, iVar1);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = uVar7;
                    uVar5 = **(undefined8 **)((int64_t)*(undefined **)0x20 + 8);
                    uVar10 = (*(undefined8 **)((int64_t)*(undefined **)0x20 + 8))[1];
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe97633;
                    runtime_typedslicecopy(0x1067800, uVar7, *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60), uVar5, 
                                    uVar10);
                    uVar3 = *(uint64_t *)(*(int64_t *)((int64_t)*(undefined **)0x20 + 8) + 8);
                    if (uVar3 <= *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x60)) {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe9768b;
                        runtime_typedslicecopy(0x1067800, 
                                        *(int64_t *)((int64_t)*(undefined **)0x20 + -0x10) +
                                        (uVar3 << 3 &
                                        (int64_t)-((*(int64_t *)((int64_t)*(undefined **)0x20 + -0x58) - uVar3) + 1) >>
                                        0x3f), (*(int64_t *)((int64_t)*(undefined **)0x20 + -0x58) - uVar3) + 1, 
                                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48), 1);
                        uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60);
                        iVar11 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
                        *(undefined8 *)(iVar11 + 200) = uVar5;
                        *(undefined8 *)(iVar11 + 0xd0) = uVar5;
                        if (*(int32_t *)0x355db50 == 0) {
                            uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10);
                        } else {
                            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe976be;
                            runtime_gcWriteBarrier2();
                            uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10);
                            *extraout_R11_08 = uVar5;
                            extraout_R11_08[1] = *(undefined8 *)(extraout_R8_00 + 0xc0);
                            iVar11 = extraout_R8_00;
                        }
                        *(undefined8 *)(iVar11 + 0xc0) = uVar5;
                        return;
                    }
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe976e9;
                    runtime_panicSliceB();
                }
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe976fa;
                uVar5 = runtime_convTstring(0x117c9a5 /* "too many handlers" */, 0x11);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe97709;
                runtime_gopanic(0x1042920, uVar5);
                uVar5 = extraout_RSI_00;
                iVar11 = extraout_RDI_00;
            }
            pcVar4 = *(code **)(iVar11 + 0x18);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe97712;
            auVar13 = (*pcVar4)(uVar5);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe9772b;
            runtime_concatstring2(0, 0x117d9b8, 0x12, auVar13._0_8_, auVar13._8_8_);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe97730;
            uVar5 = runtime_convTstring();
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe9773f;
            runtime_gopanic(0x1042920, uVar5);
            in_RAX = extraout_RAX_00;
            arg4 = extraout_RCX_00;
            unaff_RBX = extraout_RBX_00;
        }
        *(int64_t *)(puVar8 + 8) = in_RAX;
        *(undefined8 *)(puVar8 + 0x10) = unaff_RBX;
        *(int64_t *)(puVar8 + 0x18) = arg4;
        *(undefined8 *)(puVar8 + -8) = 0xe97754;
        runtime_morestack_noctxt_abi0();
        in_RAX = *(int64_t *)(puVar8 + 8);
        unaff_RBX = *(undefined8 *)(puVar8 + 0x10);
        arg4 = *(int64_t *)(puVar8 + 0x18);
        *(undefined **)0x20 = (BADSPACEBASE *)puVar8;
        unaff_RBP = puVar9;
    } while( true );
}

/* CAS-Backend/biz/router.mountEmbeddedFrontend.func1 | VA 0xe97f80 | router.go:174
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: indexHTML []uint8 */
// WARNING: Variable defined which should be unmapped: var_20h

void __stdcall
biz_router_mountEmbeddedFrontend_func1(undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    undefined8 uVar1;
    int64_t arg_30h;
    undefined8 uVar2;
    int64_t in_RAX;
    int64_t extraout_RDX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000020;
    int64_t in_stack_ffffffffffffffb8;
    int64_t in_stack_ffffffffffffffc0;
    int64_t in_stack_ffffffffffffffc8;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
        arg3 = extraout_RDX;
    }
    uVar1 = *(undefined8 *)(arg3 + 8);
    arg_30h = *(int64_t *)(arg3 + 0x10);
    uVar2 = *(undefined8 *)(arg3 + 0x18);
    gin_gonic_gin___Context__Header(in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, 
                 in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, arg_30h, in_stack_00000020);
    (**(code **)(*(int64_t *)(in_RAX + 0x28) + 0x58))(*(undefined8 *)(in_RAX + 0x30), 200);
    (**(code **)(*(int64_t *)(in_RAX + 0x28) + 0x50))(*(undefined8 *)(in_RAX + 0x30), uVar1, arg_30h, uVar2);
    return;
}

/* CAS-Backend/biz/router.mountEmbeddedFrontend.func2 | VA 0xe97e80 | router.go:181
   DWARF parameters and results: rel string, ~r0 github.com/gin-gonic/gin.HandlerFunc
   DWARF locals: httpFS net/http.FileSystem */
void __stdcall
biz_router_mountEmbeddedFrontend_func2
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h,
          int64_t arg_38h)
{
    undefined8 uVar1;
    undefined8 uVar2;
    undefined8 in_RAX;
    undefined8 *puVar3;
    undefined8 unaff_RBX;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0();
    }
    uVar1 = *(undefined8 *)(arg3 + 0x10);
    uVar2 = *(undefined8 *)(arg3 + 8);
    puVar3 = (undefined8 *)runtime_newobject(0x10cdce0);
    *puVar3 = 0xe97f40;
    puVar3[2] = unaff_RBX;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11 = in_RAX;
        extraout_R11[1] = uVar1;
    }
    puVar3[1] = in_RAX;
    puVar3[3] = uVar2;
    puVar3[4] = uVar1;
    return;
}

/* CAS-Backend/biz/router.mountEmbeddedFrontend.mountEmbeddedFrontend.func2.func6 | VA 0xe97b00 | router.go:182
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: rel string, httpFS net/http.FileSystem */
// WARNING: [rz-ghidra] Detected overlap for variable var_58h

void __stdcall
biz_router_mountEmbeddedFrontend_mountEmbeddedFrontend_func2_func6
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
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
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
    }
    gin_gonic_gin___Context__FileFromFS(in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, 
                 in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0);
    return;
}

/* CAS-Backend/biz/router.mountEmbeddedFrontend.func2.1 | VA 0xe97f40 | router.go:182
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: rel string, httpFS net/http.FileSystem */
// WARNING: [rz-ghidra] Detected overlap for variable var_58h

void __stdcall
biz_router_mountEmbeddedFrontend_func2_1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
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
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
    }
    gin_gonic_gin___Context__FileFromFS(in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, 
                 in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0);
    return;
}

/* CAS-Backend/biz/router.mountEmbeddedFrontend.func3 | VA 0xe97ce0 | router.go:187
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: serveIndex func(*github.com/gin-gonic/gin.Context), serveEmbedFile func(string) github.com/gin-gonic/gin.HandlerFunc, fp string */
void __stdcall
biz_router_mountEmbeddedFrontend_func3(undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    undefined8 uVar1;
    undefined8 uVar2;
    code *pcVar3;
    char cVar4;
    int64_t in_RAX;
    undefined8 *puVar5;
    char *pcVar6;
    undefined *puVar7;
    undefined *unaff_RBP;
    undefined *puVar8;
    undefined8 uVar9;
    int64_t iVar10;
    int64_t unaff_R14;
    bool bVar11;
    undefined8 in_XMM15_Qa;
    undefined8 in_XMM15_Qb;
    int64_t var_68h;
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
    
    do {
        puVar7 = (undefined *)*(undefined **)0x20;
        puVar8 = unaff_RBP;
        if (*(undefined **)(unaff_R14 + 0x10) < *(undefined **)0x20) {
            puVar8 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            puVar7 = (undefined *)((int64_t)*(undefined **)0x20 + -0x70);
            *(int64_t *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            puVar5 = *(undefined8 **)(in_RAX + 0x38);
            uVar9 = *(undefined8 *)(arg3 + 0x10);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = uVar9;
            arg3 = *(undefined8 *)(arg3 + 8);
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x48) = arg3;
            for (iVar10 = *(int64_t *)(in_RAX + 0x40); 0 < iVar10; iVar10 = iVar10 + -1) {
                uVar1 = puVar5[2];
                uVar2 = puVar5[3];
                if (puVar5[1] == 8) {
                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x50) = iVar10;
                    *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x30) = puVar5;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) = uVar2;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = uVar1;
                    uVar1 = *puVar5;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe97d5c;
                    cVar4 = runtime_memequal(uVar1, 0x11740bb /* "filepath" */, 8, uVar9);
                    if (cVar4 != '\0') {
                        arg3 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48);
                        uVar9 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40);
                        iVar10 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x58);
                        pcVar6 = *(char **)((int64_t)*(undefined **)0x20 + -0x38);
                        goto code_r0x00e97da0;
                    }
                    arg3 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48);
                    puVar5 = *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x30);
                    uVar9 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40);
                    iVar10 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x50);
                }
                puVar5 = puVar5 + 4;
            }
            iVar10 = 0;
            pcVar6 = (char *)0x0;
code_r0x00e97da0:
            if (iVar10 == 0) {
                bVar11 = false;
            } else {
                bVar11 = *pcVar6 == '/';
            }
            if (!bVar11) goto code_r0x00e97dd2;
            if (iVar10 != 0) {
                iVar10 = iVar10 + -1;
                pcVar6 = pcVar6 + ((uint32_t)(-iVar10 >> 0x3f) & 1);
code_r0x00e97dd2:
                if (iVar10 == 0) {
                    pcVar3 = *(code **)arg3;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe97ddc;
                    (*pcVar3)();
                    return;
                }
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = 6;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = 0x116f2bb;
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x10) = iVar10;
                *(char **)((int64_t)*(undefined **)0x20 + -0x18) = pcVar6;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe97e1f;
                path_Join((undefined *)((int64_t)*(undefined **)0x20 + -0x28), 2, 2);
                pcVar3 = (code *)**(undefined8 **)((int64_t)*(undefined **)0x20 + -0x40);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe97e29;
                puVar5 = (undefined8 *)(*pcVar3)();
                pcVar3 = (code *)*puVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe97e3c;
                (*pcVar3)(*(undefined8 *)((int64_t)*(undefined **)0x20 + 8));
                return;
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe97e4e;
            in_RAX = runtime_panicSliceB(1, pcVar6, 0, uVar9);
        }
        *(int64_t *)(puVar7 + 8) = in_RAX;
        *(undefined8 *)(puVar7 + -8) = 0xe97e59;
        runtime_morestack_abi0();
        in_RAX = *(int64_t *)(puVar7 + 8);
        *(undefined **)0x20 = (BADSPACEBASE *)puVar7;
        unaff_RBP = puVar8;
    } while( true );
}

/* CAS-Backend/biz/router.mountEmbeddedFrontend.func4 | VA 0xe97b40 | router.go:195
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: serveIndex func(*github.com/gin-gonic/gin.Context), serveEmbedFile func(string) github.com/gin-gonic/gin.HandlerFunc, fp string */
void __stdcall
biz_router_mountEmbeddedFrontend_func4(undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    undefined8 uVar1;
    undefined8 uVar2;
    code *pcVar3;
    char cVar4;
    int64_t in_RAX;
    undefined8 *puVar5;
    undefined8 *puVar6;
    int64_t extraout_RDX;
    char *pcVar7;
    int64_t *piVar8;
    undefined *unaff_RBP;
    undefined *puVar9;
    undefined8 uVar10;
    int64_t iVar11;
    int64_t unaff_R14;
    bool bVar12;
    undefined8 in_XMM15_Qa;
    undefined8 in_XMM15_Qb;
    int64_t var_68h;
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
    
    do {
        piVar8 = (int64_t *)*(undefined **)0x20;
        puVar9 = unaff_RBP;
        if (*(undefined **)(unaff_R14 + 0x10) < *(undefined **)0x20) {
            puVar9 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            piVar8 = (int64_t *)((int64_t)*(undefined **)0x20 + -0x70);
            *(int64_t *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            puVar5 = *(undefined8 **)(in_RAX + 0x38);
            uVar10 = *(undefined8 *)(arg3 + 0x10);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = uVar10;
            puVar6 = *(undefined8 **)(arg3 + 8);
            *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x48) = puVar6;
            for (iVar11 = *(int64_t *)(in_RAX + 0x40); 0 < iVar11; iVar11 = iVar11 + -1) {
                uVar1 = puVar5[2];
                uVar2 = puVar5[3];
                if (puVar5[1] == 8) {
                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x50) = iVar11;
                    *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x30) = puVar5;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58) = uVar2;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = uVar1;
                    uVar1 = *puVar5;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe97bbc;
                    cVar4 = runtime_memequal(uVar1, 0x11740bb /* "filepath" */, 8, uVar10);
                    if (cVar4 != '\0') {
                        puVar6 = *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x48);
                        uVar10 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40);
                        iVar11 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x58);
                        pcVar7 = *(char **)((int64_t)*(undefined **)0x20 + -0x38);
                        goto code_r0x00e97c00;
                    }
                    puVar6 = *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x48);
                    puVar5 = *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x30);
                    uVar10 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40);
                    iVar11 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x50);
                }
                puVar5 = puVar5 + 4;
            }
            iVar11 = 0;
            pcVar7 = (char *)0x0;
code_r0x00e97c00:
            if (iVar11 == 0) {
                bVar12 = false;
            } else {
                bVar12 = *pcVar7 == '/';
            }
            if (!bVar12) goto code_r0x00e97c32;
            if (iVar11 != 0) {
                iVar11 = iVar11 + -1;
                pcVar7 = pcVar7 + ((uint32_t)(-iVar11 >> 0x3f) & 1);
code_r0x00e97c32:
                if (iVar11 == 0) {
                    pcVar3 = (code *)*puVar6;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe97c3c;
                    (*pcVar3)();
                    return;
                }
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = 6;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = 0x116f2b5;
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x10) = iVar11;
                *(char **)((int64_t)*(undefined **)0x20 + -0x18) = pcVar7;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe97c7f;
                path_Join((undefined *)((int64_t)*(undefined **)0x20 + -0x28), 2, 2);
                pcVar3 = (code *)**(undefined8 **)((int64_t)*(undefined **)0x20 + -0x40);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe97c89;
                puVar5 = (undefined8 *)(*pcVar3)();
                pcVar3 = (code *)*puVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe97c9c;
                (*pcVar3)(*(undefined8 *)((int64_t)*(undefined **)0x20 + 8));
                return;
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x78) = 0xe97cae;
            in_RAX = runtime_panicSliceB(1, pcVar7, 0, uVar10);
        }
        piVar8[1] = in_RAX;
        piVar8[-1] = 0xe97cb9;
        runtime_morestack_abi0(*piVar8, piVar8[1]);
        in_RAX = piVar8[1];
        arg3 = extraout_RDX;
        *(int64_t **)0x20 = (BADSPACEBASE *)piVar8;
        unaff_RBP = puVar9;
    } while( true );
}

/* CAS-Backend/biz/router.mountEmbeddedFrontend.func5 | VA 0xe97780 | router.go:207
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: serveIndex func(*github.com/gin-gonic/gin.Context), staticRoot io/fs.FS, httpFS net/http.FileSystem, reqPath string, rel string, f io/fs.File, openErr error, st io/fs.FileInfo, statErr error, ~r0.ptr *uint8, ~r0.len int */
// WARNING: [rz-ghidra] Detected overlap for variable var_88h

void __stdcall
biz_router_mountEmbeddedFrontend_func5
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_38h,
          int64_t arg_68h, int64_t arg_c8h)
{
    int64_t iVar1;
    undefined8 uVar2;
    undefined8 uVar3;
    char cVar4;
    int64_t in_RAX;
    int64_t extraout_RAX;
    int64_t extraout_RAX_00;
    int64_t iVar5;
    undefined8 *puVar6;
    undefined8 uVar7;
    int64_t extraout_RCX;
    int64_t extraout_RCX_00;
    undefined8 extraout_RCX_01;
    int64_t extraout_RDX;
    int64_t extraout_RBX;
    undefined8 extraout_RBX_00;
    char *pcVar8;
    int64_t iVar9;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    bool bVar10;
    undefined auVar11 [16];
    int64_t unaff_retaddr;
    int64_t var_89h;
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
    
    while (&var_38h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
        arg3 = extraout_RDX;
    }
    iVar5 = *(int64_t *)(*(int64_t *)(in_RAX + 0x20) + 0x10);
    iVar9 = *(int64_t *)(iVar5 + 0x40);
    puVar6 = *(undefined8 **)(arg3 + 8);
    iVar1 = *(int64_t *)(arg3 + 0x10);
    uVar7 = *(undefined8 *)(arg3 + 0x18);
    uVar2 = *(undefined8 *)(arg3 + 0x20);
    uVar3 = *(undefined8 *)(arg3 + 0x28);
    pcVar8 = *(char **)(iVar5 + 0x38);
    if ((4 < iVar9) && (cVar4 = runtime_memequal(pcVar8, 0x116a620 /* "/cas/" */, 5), cVar4 != '\0')) {
        iVar5 = runtime_makemap_small();
        auVar11 = runtime_mapassign_faststr(0x10a4880, iVar5, 0x116a5c1 /* "error" */, 5);
        puVar6 = auVar11._0_8_;
        *puVar6 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar6 = (undefined8 *)runtime_gcWriteBarrier1(puVar6, auVar11._8_8_, puVar6[1]);
            *extraout_R11 = extraout_RCX_01;
        }
        puVar6[1] = 0x2e67e10 /* "API not found" */;
        var_20h = 0x10a4880;
        var_18h = iVar5;
        uVar7 = runtime_convT(0x10cbee0, &var_20h);
        gin_gonic_gin___Context__Render(in_RAX, 0x194, 0x2e6f230, uVar7);
        return;
    }
    if (iVar9 == 0) {
        bVar10 = false;
    } else {
        bVar10 = *pcVar8 == '/';
    }
    if (bVar10) {
        if (iVar9 == 0) {
            runtime_panicSliceB(1);
            runtime_deferreturn();
            return;
        }
        iVar9 = iVar9 + -1;
        pcVar8 = pcVar8 + ((uint32_t)(-iVar9 >> 0x3f) & 1);
    }
    if (iVar9 != 0) {
        (**(code **)(iVar1 + 0x18))(uVar7, pcVar8, iVar9);
        if (extraout_RCX != 0) {
            (*(code *)*puVar6)(in_RAX);
            return;
        }
        var_38h = 0xe97aa0;
        var_10h = (int64_t)&var_38h;
        var_30h = extraout_RAX;
        var_28h = extraout_RBX;
        (**(code **)(extraout_RAX + 0x28))(extraout_RBX);
        if (extraout_RCX_00 == 0) {
            cVar4 = (**(code **)(extraout_RAX_00 + 0x18))(extraout_RBX_00);
        } else {
            cVar4 = '\x01';
        }
        if (cVar4 == '\0') {
            gin_gonic_gin___Context__FileFromFS(in_RAX, pcVar8, iVar9, uVar2, uVar3);
            (**(code **)var_10h)();
            return;
        }
        (*(code *)*puVar6)(in_RAX);
        (**(code **)var_10h)();
        return;
    }
    (*(code *)*puVar6)();
    return;
}

/* CAS-Backend/biz/router.mountEmbeddedFrontend.func5.deferwrap1 | VA 0xe97aa0 | router.go:225
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
void __stdcall
biz_router_mountEmbeddedFrontend_func5_deferwrap1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int64_t *piVar1;
    int64_t extraout_RDX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, arg_8h);
        arg3 = extraout_RDX;
    }
    piVar1 = *(int64_t **)(unaff_R14 + 0x20);
    if ((piVar1 != (int64_t *)0x0) && ((int64_t *)*piVar1 == &arg_8h)) {
        *piVar1 = (int64_t)&var_10h;
    }
    (**(code **)(*(int64_t *)(arg3 + 8) + 0x18))(*(undefined8 *)(arg3 + 0x10));
    return;
}
