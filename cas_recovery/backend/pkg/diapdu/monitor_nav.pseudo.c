/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/pkg/diapdu.currentStationForVehicle | VA 0xe2c4e0 | monitor_nav.go:4
   DWARF parameters and results: vehicleID string, ip string, ~r0 string, ~r1 error
   DWARF locals: ok bool, st string, dt *CAS-Backend/pkg/diapdu.DynamicTrafficController, snap *CAS-Backend/pkg/diapdu.MonitorTaskStatusPackage */
undefined8 __stdcall
pkg_diapdu_currentStationForVehicle
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h,
          undefined8 placeholder_10, undefined8 placeholder_11, int64_t arg_38h)
{
    undefined8 in_RAX;
    undefined8 uVar1;
    int64_t iVar2;
    undefined8 *puVar3;
    char extraout_CL;
    char extraout_BL;
    undefined8 unaff_RBX;
    int64_t unaff_R14;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    uVar1 = pkg_diapdu___VehicleRuntimeHub__CurrentStation(*(undefined8 *)0xfb4b70, in_RAX, unaff_RBX);
    if (extraout_CL != '\0') {
        return uVar1;
    }
    iVar2 = pkg_diapdu_GetGlobalDynamicTraffic();
    if (iVar2 != 0) {
        puVar3 = (undefined8 *)pkg_diapdu___DynamicTrafficController__FreshMonitorSnap(iVar2, in_RAX, unaff_RBX, 15000000000);
        if (extraout_BL != '\0') {
            if (puVar3 == (undefined8 *)0x0) {
                iVar2 = 0;
                uVar1 = 0;
            } else {
                iVar2 = puVar3[1];
                if (iVar2 == 0) {
                    iVar2 = puVar3[9];
                    if (iVar2 == 0) {
                        iVar2 = puVar3[7];
                        uVar1 = puVar3[6];
                    } else {
                        uVar1 = puVar3[8];
                    }
                } else {
                    uVar1 = *puVar3;
                }
            }
            if (iVar2 != 0) {
                return uVar1;
            }
        }
    }
    uVar1 = pkg_diapdu_queryVehicleStationQuiet(placeholder_11, arg1);
    return uVar1;
}
