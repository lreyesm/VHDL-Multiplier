/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_822(char*, char *);
IKI_DLLESPEC extern void execute_821(char*, char *);
IKI_DLLESPEC extern void execute_11(char*, char *);
IKI_DLLESPEC extern void execute_13(char*, char *);
IKI_DLLESPEC extern void execute_15(char*, char *);
IKI_DLLESPEC extern void execute_17(char*, char *);
IKI_DLLESPEC extern void execute_19(char*, char *);
IKI_DLLESPEC extern void execute_21(char*, char *);
IKI_DLLESPEC extern void execute_23(char*, char *);
IKI_DLLESPEC extern void execute_25(char*, char *);
IKI_DLLESPEC extern void execute_28(char*, char *);
IKI_DLLESPEC extern void execute_30(char*, char *);
IKI_DLLESPEC extern void execute_32(char*, char *);
IKI_DLLESPEC extern void execute_34(char*, char *);
IKI_DLLESPEC extern void execute_36(char*, char *);
IKI_DLLESPEC extern void execute_38(char*, char *);
IKI_DLLESPEC extern void execute_40(char*, char *);
IKI_DLLESPEC extern void execute_42(char*, char *);
IKI_DLLESPEC extern void execute_45(char*, char *);
IKI_DLLESPEC extern void execute_47(char*, char *);
IKI_DLLESPEC extern void execute_49(char*, char *);
IKI_DLLESPEC extern void execute_51(char*, char *);
IKI_DLLESPEC extern void execute_53(char*, char *);
IKI_DLLESPEC extern void execute_55(char*, char *);
IKI_DLLESPEC extern void execute_57(char*, char *);
IKI_DLLESPEC extern void execute_59(char*, char *);
IKI_DLLESPEC extern void execute_62(char*, char *);
IKI_DLLESPEC extern void execute_64(char*, char *);
IKI_DLLESPEC extern void execute_66(char*, char *);
IKI_DLLESPEC extern void execute_68(char*, char *);
IKI_DLLESPEC extern void execute_70(char*, char *);
IKI_DLLESPEC extern void execute_72(char*, char *);
IKI_DLLESPEC extern void execute_84(char*, char *);
IKI_DLLESPEC extern void execute_208(char*, char *);
IKI_DLLESPEC extern void execute_331(char*, char *);
IKI_DLLESPEC extern void execute_454(char*, char *);
IKI_DLLESPEC extern void execute_577(char*, char *);
IKI_DLLESPEC extern void execute_700(char*, char *);
IKI_DLLESPEC extern void execute_718(char*, char *);
IKI_DLLESPEC extern void execute_734(char*, char *);
IKI_DLLESPEC extern void execute_750(char*, char *);
IKI_DLLESPEC extern void execute_766(char*, char *);
IKI_DLLESPEC extern void execute_782(char*, char *);
IKI_DLLESPEC extern void execute_798(char*, char *);
IKI_DLLESPEC extern void execute_817(char*, char *);
IKI_DLLESPEC extern void execute_818(char*, char *);
IKI_DLLESPEC extern void execute_78(char*, char *);
IKI_DLLESPEC extern void execute_79(char*, char *);
IKI_DLLESPEC extern void execute_80(char*, char *);
IKI_DLLESPEC extern void execute_81(char*, char *);
IKI_DLLESPEC extern void execute_82(char*, char *);
IKI_DLLESPEC extern void execute_83(char*, char *);
IKI_DLLESPEC extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[53] = {(funcp)execute_822, (funcp)execute_821, (funcp)execute_11, (funcp)execute_13, (funcp)execute_15, (funcp)execute_17, (funcp)execute_19, (funcp)execute_21, (funcp)execute_23, (funcp)execute_25, (funcp)execute_28, (funcp)execute_30, (funcp)execute_32, (funcp)execute_34, (funcp)execute_36, (funcp)execute_38, (funcp)execute_40, (funcp)execute_42, (funcp)execute_45, (funcp)execute_47, (funcp)execute_49, (funcp)execute_51, (funcp)execute_53, (funcp)execute_55, (funcp)execute_57, (funcp)execute_59, (funcp)execute_62, (funcp)execute_64, (funcp)execute_66, (funcp)execute_68, (funcp)execute_70, (funcp)execute_72, (funcp)execute_84, (funcp)execute_208, (funcp)execute_331, (funcp)execute_454, (funcp)execute_577, (funcp)execute_700, (funcp)execute_718, (funcp)execute_734, (funcp)execute_750, (funcp)execute_766, (funcp)execute_782, (funcp)execute_798, (funcp)execute_817, (funcp)execute_818, (funcp)execute_78, (funcp)execute_79, (funcp)execute_80, (funcp)execute_81, (funcp)execute_82, (funcp)execute_83, (funcp)vhdl_transfunc_eventcallback};
const int NumRelocateId= 53;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/Nombre_Entidad_testbench_behav/xsim.reloc",  (void **)funcTab, 53);
	iki_vhdl_file_variable_register(dp + 55016);
	iki_vhdl_file_variable_register(dp + 55072);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/Nombre_Entidad_testbench_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/Nombre_Entidad_testbench_behav/xsim.reloc");

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/Nombre_Entidad_testbench_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/Nombre_Entidad_testbench_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/Nombre_Entidad_testbench_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
