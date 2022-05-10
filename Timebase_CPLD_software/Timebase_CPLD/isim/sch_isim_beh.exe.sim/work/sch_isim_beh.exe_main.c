/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *UNISIM_P_0947159679;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    unisim_p_0947159679_init();
    unisim_a_1823427465_3721267009_init();
    unisim_a_2077515722_3691801974_init();
    unisim_a_1113154319_3729445679_init();
    unisim_a_4207005572_0559031411_init();
    unisim_a_0147727936_3632337348_init();
    work_a_0897150575_3212880686_init();
    unisim_a_1801614988_1818890047_init();
    unisim_a_2472646025_1397528790_init();
    unisim_a_2661327437_0605893366_init();
    unisim_a_4147737283_2967259552_init();
    unisim_a_3828308815_1222000726_init();
    unisim_a_2867636556_1359619727_init();
    unisim_a_2904659017_3769511665_init();
    unisim_a_2211953871_3811244703_init();
    unisim_a_2312877582_0635394241_init();
    unisim_a_3988446151_0546328132_init();
    work_a_0418817255_3212880686_init();
    work_a_2267817849_3212880686_init();
    work_a_3409553495_3212880686_init();
    work_a_1424174025_3212880686_init();
    unisim_a_3055263662_1392679692_init();
    unisim_a_3762448000_2971575191_init();
    unisim_a_1717296735_4086321779_init();
    unisim_a_1391413833_1848422758_init();
    unisim_a_1947232985_2580864354_init();
    unisim_a_3056901965_2640411640_init();
    work_a_3195776209_3212880686_init();
    work_a_3463945714_3212880686_init();
    work_a_0098054934_3212880686_init();
    unisim_a_2562466605_1496654361_init();
    work_a_2857804981_3212880686_init();
    unisim_a_2211589156_2274105955_init();
    work_a_4223124715_3212880686_init();
    work_a_2808649626_3212880686_init();
    unisim_a_1490675510_1976025627_init();
    unisim_a_2233457742_0889792898_init();
    work_a_2451983098_3212880686_init();
    work_a_1497938270_3212880686_init();


    xsi_register_tops("work_a_1497938270_3212880686");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");

    return xsi_run_simulation(argc, argv);

}
