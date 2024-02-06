---
date: "2019-05-05T00:00:00+01:00"
title: "Create mass_dataset class from other tools"
linktitle: "3 Create mass_dataset class from other tools"
author: admin
type: book
weight: 3
commentable: true
---
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />





If you don't want to use the `massprocesser` for raw data processing, you can absolutely use other tools (mzMine or MS-DIAL). Then you can just use the functions from `massdataset` convert results from them to `mass_dataset` class.

## mzMine feature table to `mass_dataset` class

We can also directory convert feature table from [mzMine](http://mzmine.github.io/) to `mass_dataset` class.

An example feature table from mzMine.

<div style="border: 1px solid #ddd; padding: 0px; overflow-y: scroll; height:600px; overflow-x: scroll; width:100%; "><table class="table table-striped table-hover table-condensed table-responsive" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> row ID </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> row m/z </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> row retention time </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> 10232_P4_RE4_01_476.mzXML Peak area </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> 10765_P4_RE9_01_482.mzXML Peak area </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> 10546_P4_RG11_01_515.mzXML Peak area </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> 11035_P4_RB4_01_431.mzXML Peak area </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> 11163_P4_RB11_01_439.mzXML Peak area </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> 13541_P4_RG3_01_506.mzXML Peak area </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> 10712_P4_RH3_01_521.mzXML Peak area </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> 10715_P4_RA4_01_415.mzXML Peak area </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> 11111_P4_RB1_01_428.mzXML Peak area </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> 14153_P4_RH8_01_526.mzXML Peak area </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> 18404_P3_RF6_01_370.mzXML Peak area </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> 16500_P2_RD8_01_209.mzXML Peak area </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> 13917_P4_RA10_01_423.mzXML Peak area </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> 16501_P2_RD9_01_210.mzXML Peak area </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> 14880_P3_RA3_01_290.mzXML Peak area </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> 15581_P2_RD4_01_203.mzXML Peak area </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> 29342_P5_RF3_01_620.mzXML Peak area </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> 15623_P2_RC3_01_187.mzXML Peak area </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> 12262_P1_RE5_01_94.mzXML Peak area </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> 27373_P2_RD5_01_204.mzXML Peak area </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> 31878_P1_RH3_01_131.mzXML Peak area </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> 14563_P1_RE10_01_99.mzXML Peak area </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 108.51790 </td>
   <td style="text-align:right;"> 10.2450500 </td>
   <td style="text-align:right;"> 1389687.3 </td>
   <td style="text-align:right;"> 1401752.8480 </td>
   <td style="text-align:right;"> 1402784.636 </td>
   <td style="text-align:right;"> 1655499.2620 </td>
   <td style="text-align:right;"> 1426946.493 </td>
   <td style="text-align:right;"> 1405055.9660 </td>
   <td style="text-align:right;"> 1301424.669 </td>
   <td style="text-align:right;"> 1662174.681 </td>
   <td style="text-align:right;"> 1669773.721 </td>
   <td style="text-align:right;"> 1292471.387 </td>
   <td style="text-align:right;"> 1401058.637 </td>
   <td style="text-align:right;"> 1255984.4230 </td>
   <td style="text-align:right;"> 1790633.057 </td>
   <td style="text-align:right;"> 1239958.238 </td>
   <td style="text-align:right;"> 1384508.9720 </td>
   <td style="text-align:right;"> 1321642.0710 </td>
   <td style="text-align:right;"> 1342898.3700 </td>
   <td style="text-align:right;"> 1428609.6720 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 1309347.2150 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 0.0000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 184.98560 </td>
   <td style="text-align:right;"> 10.2452886 </td>
   <td style="text-align:right;"> 824854.7 </td>
   <td style="text-align:right;"> 879329.1425 </td>
   <td style="text-align:right;"> 810711.735 </td>
   <td style="text-align:right;"> 918538.3715 </td>
   <td style="text-align:right;"> 904935.909 </td>
   <td style="text-align:right;"> 863844.4710 </td>
   <td style="text-align:right;"> 813936.417 </td>
   <td style="text-align:right;"> 959157.637 </td>
   <td style="text-align:right;"> 975521.439 </td>
   <td style="text-align:right;"> 819906.655 </td>
   <td style="text-align:right;"> 802451.828 </td>
   <td style="text-align:right;"> 805424.3155 </td>
   <td style="text-align:right;"> 999066.451 </td>
   <td style="text-align:right;"> 797460.926 </td>
   <td style="text-align:right;"> 859813.0540 </td>
   <td style="text-align:right;"> 821147.7515 </td>
   <td style="text-align:right;"> 764305.2440 </td>
   <td style="text-align:right;"> 859406.4050 </td>
   <td style="text-align:right;"> 319453.1235 </td>
   <td style="text-align:right;"> 812621.5885 </td>
   <td style="text-align:right;"> 321342.3140 </td>
   <td style="text-align:right;"> 343921.0690 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 99.51304 </td>
   <td style="text-align:right;"> 10.2443175 </td>
   <td style="text-align:right;"> 779963.5 </td>
   <td style="text-align:right;"> 809016.6085 </td>
   <td style="text-align:right;"> 784838.328 </td>
   <td style="text-align:right;"> 918355.9300 </td>
   <td style="text-align:right;"> 869348.549 </td>
   <td style="text-align:right;"> 825338.7765 </td>
   <td style="text-align:right;"> 757906.488 </td>
   <td style="text-align:right;"> 890287.086 </td>
   <td style="text-align:right;"> 945978.115 </td>
   <td style="text-align:right;"> 779467.920 </td>
   <td style="text-align:right;"> 784715.819 </td>
   <td style="text-align:right;"> 698338.0110 </td>
   <td style="text-align:right;"> 995229.289 </td>
   <td style="text-align:right;"> 690797.471 </td>
   <td style="text-align:right;"> 755029.1590 </td>
   <td style="text-align:right;"> 725875.2240 </td>
   <td style="text-align:right;"> 727123.4860 </td>
   <td style="text-align:right;"> 804957.7900 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 729996.3135 </td>
   <td style="text-align:right;"> 38.4895 </td>
   <td style="text-align:right;"> 0.0000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:right;"> 176.97199 </td>
   <td style="text-align:right;"> 10.4564667 </td>
   <td style="text-align:right;"> 3371036.7 </td>
   <td style="text-align:right;"> 3594238.9280 </td>
   <td style="text-align:right;"> 3335427.676 </td>
   <td style="text-align:right;"> 4762133.1830 </td>
   <td style="text-align:right;"> 4446552.344 </td>
   <td style="text-align:right;"> 4146207.5600 </td>
   <td style="text-align:right;"> 3450606.135 </td>
   <td style="text-align:right;"> 4270036.005 </td>
   <td style="text-align:right;"> 4082635.767 </td>
   <td style="text-align:right;"> 3346233.572 </td>
   <td style="text-align:right;"> 3600719.191 </td>
   <td style="text-align:right;"> 2005356.8930 </td>
   <td style="text-align:right;"> 5118346.235 </td>
   <td style="text-align:right;"> 1864347.092 </td>
   <td style="text-align:right;"> 3200536.9310 </td>
   <td style="text-align:right;"> 2686899.6920 </td>
   <td style="text-align:right;"> 2419853.5010 </td>
   <td style="text-align:right;"> 2592535.6610 </td>
   <td style="text-align:right;"> 28303.9595 </td>
   <td style="text-align:right;"> 2038650.7540 </td>
   <td style="text-align:right;"> 83238.3495 </td>
   <td style="text-align:right;"> 83362.9450 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 186.95641 </td>
   <td style="text-align:right;"> 10.4707553 </td>
   <td style="text-align:right;"> 3649387.6 </td>
   <td style="text-align:right;"> 2918579.6220 </td>
   <td style="text-align:right;"> 3566568.107 </td>
   <td style="text-align:right;"> 3498499.8270 </td>
   <td style="text-align:right;"> 4051221.114 </td>
   <td style="text-align:right;"> 3776597.5020 </td>
   <td style="text-align:right;"> 3112944.981 </td>
   <td style="text-align:right;"> 4300303.555 </td>
   <td style="text-align:right;"> 3604041.890 </td>
   <td style="text-align:right;"> 3146833.394 </td>
   <td style="text-align:right;"> 2953320.137 </td>
   <td style="text-align:right;"> 2684677.9820 </td>
   <td style="text-align:right;"> 4608083.237 </td>
   <td style="text-align:right;"> 2684874.606 </td>
   <td style="text-align:right;"> 2989385.9440 </td>
   <td style="text-align:right;"> 2762750.3290 </td>
   <td style="text-align:right;"> 2746261.2350 </td>
   <td style="text-align:right;"> 2481040.2540 </td>
   <td style="text-align:right;"> 100953.5900 </td>
   <td style="text-align:right;"> 2617117.6550 </td>
   <td style="text-align:right;"> 430218.5365 </td>
   <td style="text-align:right;"> 368020.7355 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 7 </td>
   <td style="text-align:right;"> 108.51790 </td>
   <td style="text-align:right;"> 12.7904623 </td>
   <td style="text-align:right;"> 799957.0 </td>
   <td style="text-align:right;"> 761629.1865 </td>
   <td style="text-align:right;"> 746393.253 </td>
   <td style="text-align:right;"> 899613.6160 </td>
   <td style="text-align:right;"> 790027.581 </td>
   <td style="text-align:right;"> 766091.8005 </td>
   <td style="text-align:right;"> 671510.760 </td>
   <td style="text-align:right;"> 944502.539 </td>
   <td style="text-align:right;"> 971766.830 </td>
   <td style="text-align:right;"> 685098.196 </td>
   <td style="text-align:right;"> 849756.571 </td>
   <td style="text-align:right;"> 542205.9105 </td>
   <td style="text-align:right;"> 1032801.917 </td>
   <td style="text-align:right;"> 545116.523 </td>
   <td style="text-align:right;"> 638052.1745 </td>
   <td style="text-align:right;"> 597619.4125 </td>
   <td style="text-align:right;"> 794760.3465 </td>
   <td style="text-align:right;"> 720902.4030 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 588069.0120 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 0.0000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 8 </td>
   <td style="text-align:right;"> 385.34662 </td>
   <td style="text-align:right;"> 8.7025212 </td>
   <td style="text-align:right;"> 381404.3 </td>
   <td style="text-align:right;"> 6020.1035 </td>
   <td style="text-align:right;"> 3911035.531 </td>
   <td style="text-align:right;"> 3824098.1500 </td>
   <td style="text-align:right;"> 1132826.624 </td>
   <td style="text-align:right;"> 1292241.2550 </td>
   <td style="text-align:right;"> 473024.037 </td>
   <td style="text-align:right;"> 382329.680 </td>
   <td style="text-align:right;"> 5004038.667 </td>
   <td style="text-align:right;"> 447072.791 </td>
   <td style="text-align:right;"> 993039.140 </td>
   <td style="text-align:right;"> 232988.1335 </td>
   <td style="text-align:right;"> 670940.829 </td>
   <td style="text-align:right;"> 1643522.567 </td>
   <td style="text-align:right;"> 189589.2720 </td>
   <td style="text-align:right;"> 368272.7385 </td>
   <td style="text-align:right;"> 1522168.9890 </td>
   <td style="text-align:right;"> 3761.5005 </td>
   <td style="text-align:right;"> 3138.2980 </td>
   <td style="text-align:right;"> 406.4040 </td>
   <td style="text-align:right;"> 1945.7660 </td>
   <td style="text-align:right;"> 1093.3310 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 11 </td>
   <td style="text-align:right;"> 204.96686 </td>
   <td style="text-align:right;"> 10.4736500 </td>
   <td style="text-align:right;"> 3034650.4 </td>
   <td style="text-align:right;"> 3095215.5970 </td>
   <td style="text-align:right;"> 2913787.388 </td>
   <td style="text-align:right;"> 3498463.5280 </td>
   <td style="text-align:right;"> 2065412.106 </td>
   <td style="text-align:right;"> 3052362.2980 </td>
   <td style="text-align:right;"> 2899885.748 </td>
   <td style="text-align:right;"> 3253480.456 </td>
   <td style="text-align:right;"> 2813586.168 </td>
   <td style="text-align:right;"> 2165733.182 </td>
   <td style="text-align:right;"> 3151294.446 </td>
   <td style="text-align:right;"> 1734535.7960 </td>
   <td style="text-align:right;"> 3801018.652 </td>
   <td style="text-align:right;"> 1835146.810 </td>
   <td style="text-align:right;"> 2629039.2080 </td>
   <td style="text-align:right;"> 2245447.8240 </td>
   <td style="text-align:right;"> 1867941.1940 </td>
   <td style="text-align:right;"> 1696709.7900 </td>
   <td style="text-align:right;"> 241538.4625 </td>
   <td style="text-align:right;"> 692056.1335 </td>
   <td style="text-align:right;"> 503664.3570 </td>
   <td style="text-align:right;"> 243778.7115 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 13 </td>
   <td style="text-align:right;"> 338.34191 </td>
   <td style="text-align:right;"> 7.3854864 </td>
   <td style="text-align:right;"> 303027.7 </td>
   <td style="text-align:right;"> 1006307.2360 </td>
   <td style="text-align:right;"> 999990.067 </td>
   <td style="text-align:right;"> 989577.2140 </td>
   <td style="text-align:right;"> 933082.105 </td>
   <td style="text-align:right;"> 1015312.4380 </td>
   <td style="text-align:right;"> 896753.114 </td>
   <td style="text-align:right;"> 1203514.041 </td>
   <td style="text-align:right;"> 1282705.642 </td>
   <td style="text-align:right;"> 1145951.757 </td>
   <td style="text-align:right;"> 944308.115 </td>
   <td style="text-align:right;"> 2276.4715 </td>
   <td style="text-align:right;"> 1495901.279 </td>
   <td style="text-align:right;"> 2283.024 </td>
   <td style="text-align:right;"> 1180343.8770 </td>
   <td style="text-align:right;"> 2166.8290 </td>
   <td style="text-align:right;"> 422690.5625 </td>
   <td style="text-align:right;"> 6598.3380 </td>
   <td style="text-align:right;"> 6388.0065 </td>
   <td style="text-align:right;"> 912.4290 </td>
   <td style="text-align:right;"> 2231.9690 </td>
   <td style="text-align:right;"> 2095.7065 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 16 </td>
   <td style="text-align:right;"> 413.37818 </td>
   <td style="text-align:right;"> 9.1966913 </td>
   <td style="text-align:right;"> 210327.6 </td>
   <td style="text-align:right;"> 479.1205 </td>
   <td style="text-align:right;"> 786950.833 </td>
   <td style="text-align:right;"> 26748.8650 </td>
   <td style="text-align:right;"> 139136.774 </td>
   <td style="text-align:right;"> 186177.9465 </td>
   <td style="text-align:right;"> 50304.317 </td>
   <td style="text-align:right;"> 53174.656 </td>
   <td style="text-align:right;"> 628098.439 </td>
   <td style="text-align:right;"> 92549.659 </td>
   <td style="text-align:right;"> 0.000 </td>
   <td style="text-align:right;"> 1465.6875 </td>
   <td style="text-align:right;"> 189928.009 </td>
   <td style="text-align:right;"> 118.002 </td>
   <td style="text-align:right;"> 18649.2475 </td>
   <td style="text-align:right;"> 1474.5875 </td>
   <td style="text-align:right;"> 327756.8435 </td>
   <td style="text-align:right;"> 1630.4785 </td>
   <td style="text-align:right;"> 3405.3670 </td>
   <td style="text-align:right;"> 2328.2380 </td>
   <td style="text-align:right;"> 117.6780 </td>
   <td style="text-align:right;"> 4244.3370 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 17 </td>
   <td style="text-align:right;"> 182.98522 </td>
   <td style="text-align:right;"> 10.8992432 </td>
   <td style="text-align:right;"> 2475759.3 </td>
   <td style="text-align:right;"> 2404859.6370 </td>
   <td style="text-align:right;"> 2097261.452 </td>
   <td style="text-align:right;"> 1926445.7900 </td>
   <td style="text-align:right;"> 1975307.181 </td>
   <td style="text-align:right;"> 1911980.2000 </td>
   <td style="text-align:right;"> 2000412.664 </td>
   <td style="text-align:right;"> 2078662.325 </td>
   <td style="text-align:right;"> 2282092.591 </td>
   <td style="text-align:right;"> 1125846.391 </td>
   <td style="text-align:right;"> 2219811.100 </td>
   <td style="text-align:right;"> 1716983.2250 </td>
   <td style="text-align:right;"> 2133813.440 </td>
   <td style="text-align:right;"> 1743594.472 </td>
   <td style="text-align:right;"> 1157099.5610 </td>
   <td style="text-align:right;"> 1820168.8180 </td>
   <td style="text-align:right;"> 1539026.4870 </td>
   <td style="text-align:right;"> 1287213.0250 </td>
   <td style="text-align:right;"> 201414.1055 </td>
   <td style="text-align:right;"> 1783111.6970 </td>
   <td style="text-align:right;"> 71438.3140 </td>
   <td style="text-align:right;"> 378266.7025 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 19 </td>
   <td style="text-align:right;"> 133.97465 </td>
   <td style="text-align:right;"> 10.2386129 </td>
   <td style="text-align:right;"> 337881.9 </td>
   <td style="text-align:right;"> 356574.0285 </td>
   <td style="text-align:right;"> 345000.317 </td>
   <td style="text-align:right;"> 366412.4590 </td>
   <td style="text-align:right;"> 356841.915 </td>
   <td style="text-align:right;"> 359269.9585 </td>
   <td style="text-align:right;"> 357298.280 </td>
   <td style="text-align:right;"> 381860.237 </td>
   <td style="text-align:right;"> 371393.549 </td>
   <td style="text-align:right;"> 346286.859 </td>
   <td style="text-align:right;"> 354765.566 </td>
   <td style="text-align:right;"> 318203.7765 </td>
   <td style="text-align:right;"> 376205.781 </td>
   <td style="text-align:right;"> 322735.553 </td>
   <td style="text-align:right;"> 335437.6750 </td>
   <td style="text-align:right;"> 335219.5500 </td>
   <td style="text-align:right;"> 356433.1045 </td>
   <td style="text-align:right;"> 339622.0840 </td>
   <td style="text-align:right;"> 87.0705 </td>
   <td style="text-align:right;"> 324784.6100 </td>
   <td style="text-align:right;"> 49.0280 </td>
   <td style="text-align:right;"> 72.8740 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 20 </td>
   <td style="text-align:right;"> 98.51249 </td>
   <td style="text-align:right;"> 10.2775263 </td>
   <td style="text-align:right;"> 477431.3 </td>
   <td style="text-align:right;"> 567034.7915 </td>
   <td style="text-align:right;"> 539719.467 </td>
   <td style="text-align:right;"> 660605.9185 </td>
   <td style="text-align:right;"> 611086.740 </td>
   <td style="text-align:right;"> 585832.5370 </td>
   <td style="text-align:right;"> 551825.500 </td>
   <td style="text-align:right;"> 726973.096 </td>
   <td style="text-align:right;"> 719105.168 </td>
   <td style="text-align:right;"> 470520.271 </td>
   <td style="text-align:right;"> 753253.574 </td>
   <td style="text-align:right;"> 804104.3385 </td>
   <td style="text-align:right;"> 708266.139 </td>
   <td style="text-align:right;"> 705101.297 </td>
   <td style="text-align:right;"> 554312.1600 </td>
   <td style="text-align:right;"> 698823.3445 </td>
   <td style="text-align:right;"> 585776.2505 </td>
   <td style="text-align:right;"> 491097.7935 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 700518.6085 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 0.0000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 21 </td>
   <td style="text-align:right;"> 159.96892 </td>
   <td style="text-align:right;"> 10.8786371 </td>
   <td style="text-align:right;"> 2536098.9 </td>
   <td style="text-align:right;"> 2373284.0680 </td>
   <td style="text-align:right;"> 2052707.733 </td>
   <td style="text-align:right;"> 2282023.8930 </td>
   <td style="text-align:right;"> 2348547.121 </td>
   <td style="text-align:right;"> 1958789.6540 </td>
   <td style="text-align:right;"> 1957354.485 </td>
   <td style="text-align:right;"> 1392103.616 </td>
   <td style="text-align:right;"> 2521347.853 </td>
   <td style="text-align:right;"> 2015996.332 </td>
   <td style="text-align:right;"> 2424475.604 </td>
   <td style="text-align:right;"> 1081063.7040 </td>
   <td style="text-align:right;"> 2442871.263 </td>
   <td style="text-align:right;"> 928332.461 </td>
   <td style="text-align:right;"> 711932.2725 </td>
   <td style="text-align:right;"> 1216824.7770 </td>
   <td style="text-align:right;"> 1493565.8430 </td>
   <td style="text-align:right;"> 1478105.3220 </td>
   <td style="text-align:right;"> 26531.3235 </td>
   <td style="text-align:right;"> 1190544.6290 </td>
   <td style="text-align:right;"> 11216.9805 </td>
   <td style="text-align:right;"> 15382.3895 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 22 </td>
   <td style="text-align:right;"> 99.51303 </td>
   <td style="text-align:right;"> 12.7897175 </td>
   <td style="text-align:right;"> 364675.2 </td>
   <td style="text-align:right;"> 360762.0600 </td>
   <td style="text-align:right;"> 350452.278 </td>
   <td style="text-align:right;"> 441401.9600 </td>
   <td style="text-align:right;"> 411673.976 </td>
   <td style="text-align:right;"> 368512.6920 </td>
   <td style="text-align:right;"> 317427.356 </td>
   <td style="text-align:right;"> 429594.177 </td>
   <td style="text-align:right;"> 461436.189 </td>
   <td style="text-align:right;"> 343874.694 </td>
   <td style="text-align:right;"> 384480.580 </td>
   <td style="text-align:right;"> 260183.6600 </td>
   <td style="text-align:right;"> 487178.915 </td>
   <td style="text-align:right;"> 245550.917 </td>
   <td style="text-align:right;"> 295977.1505 </td>
   <td style="text-align:right;"> 283125.6330 </td>
   <td style="text-align:right;"> 373506.8825 </td>
   <td style="text-align:right;"> 345653.3585 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 273542.2850 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 0.0000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 23 </td>
   <td style="text-align:right;"> 98.51249 </td>
   <td style="text-align:right;"> 11.1271017 </td>
   <td style="text-align:right;"> 2811707.6 </td>
   <td style="text-align:right;"> 2409694.1500 </td>
   <td style="text-align:right;"> 2810571.182 </td>
   <td style="text-align:right;"> 2678722.8960 </td>
   <td style="text-align:right;"> 1080832.956 </td>
   <td style="text-align:right;"> 842189.7105 </td>
   <td style="text-align:right;"> 2411242.115 </td>
   <td style="text-align:right;"> 3057559.873 </td>
   <td style="text-align:right;"> 3050088.436 </td>
   <td style="text-align:right;"> 2475310.321 </td>
   <td style="text-align:right;"> 2709779.242 </td>
   <td style="text-align:right;"> 826372.7355 </td>
   <td style="text-align:right;"> 3345877.774 </td>
   <td style="text-align:right;"> 685805.500 </td>
   <td style="text-align:right;"> 324162.3740 </td>
   <td style="text-align:right;"> 383597.2180 </td>
   <td style="text-align:right;"> 1310254.1130 </td>
   <td style="text-align:right;"> 1149616.3270 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 834062.4165 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 0.0000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 24 </td>
   <td style="text-align:right;"> 447.21543 </td>
   <td style="text-align:right;"> 2.5947281 </td>
   <td style="text-align:right;"> 135417.8 </td>
   <td style="text-align:right;"> 164.6025 </td>
   <td style="text-align:right;"> 267.900 </td>
   <td style="text-align:right;"> 176.0155 </td>
   <td style="text-align:right;"> 0.000 </td>
   <td style="text-align:right;"> 565.5915 </td>
   <td style="text-align:right;"> 741.492 </td>
   <td style="text-align:right;"> 370.140 </td>
   <td style="text-align:right;"> 255.925 </td>
   <td style="text-align:right;"> 247.660 </td>
   <td style="text-align:right;"> 115.302 </td>
   <td style="text-align:right;"> 270.9930 </td>
   <td style="text-align:right;"> 106.020 </td>
   <td style="text-align:right;"> 454.279 </td>
   <td style="text-align:right;"> 526.8805 </td>
   <td style="text-align:right;"> 204.8480 </td>
   <td style="text-align:right;"> 453.5600 </td>
   <td style="text-align:right;"> 1035.0480 </td>
   <td style="text-align:right;"> 177.7845 </td>
   <td style="text-align:right;"> 207.0310 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 0.0000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 25 </td>
   <td style="text-align:right;"> 871.57373 </td>
   <td style="text-align:right;"> 8.3381961 </td>
   <td style="text-align:right;"> 1567446.1 </td>
   <td style="text-align:right;"> 1399.8105 </td>
   <td style="text-align:right;"> 0.000 </td>
   <td style="text-align:right;"> 20866.8830 </td>
   <td style="text-align:right;"> 3193476.540 </td>
   <td style="text-align:right;"> 1087.9305 </td>
   <td style="text-align:right;"> 0.000 </td>
   <td style="text-align:right;"> 1486.704 </td>
   <td style="text-align:right;"> 0.000 </td>
   <td style="text-align:right;"> 377.151 </td>
   <td style="text-align:right;"> 208.999 </td>
   <td style="text-align:right;"> 46.7725 </td>
   <td style="text-align:right;"> 22451.526 </td>
   <td style="text-align:right;"> 255.354 </td>
   <td style="text-align:right;"> 32466.3965 </td>
   <td style="text-align:right;"> 61.3795 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 118.8725 </td>
   <td style="text-align:right;"> 15076.7875 </td>
   <td style="text-align:right;"> 49.5330 </td>
   <td style="text-align:right;"> 120.5640 </td>
   <td style="text-align:right;"> 0.0000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 26 </td>
   <td style="text-align:right;"> 357.20582 </td>
   <td style="text-align:right;"> 3.0335262 </td>
   <td style="text-align:right;"> 136862.5 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 666.610 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 0.000 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 0.000 </td>
   <td style="text-align:right;"> 0.000 </td>
   <td style="text-align:right;"> 0.000 </td>
   <td style="text-align:right;"> 0.000 </td>
   <td style="text-align:right;"> 0.000 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 0.000 </td>
   <td style="text-align:right;"> 0.000 </td>
   <td style="text-align:right;"> 8092.7955 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 844.4815 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 1022.8685 </td>
   <td style="text-align:right;"> 104.8575 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 615.2790 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 29 </td>
   <td style="text-align:right;"> 393.20995 </td>
   <td style="text-align:right;"> 0.5518856 </td>
   <td style="text-align:right;"> 121932.3 </td>
   <td style="text-align:right;"> 176115.6000 </td>
   <td style="text-align:right;"> 8493.925 </td>
   <td style="text-align:right;"> 124530.8300 </td>
   <td style="text-align:right;"> 104427.173 </td>
   <td style="text-align:right;"> 12292.5340 </td>
   <td style="text-align:right;"> 6158.963 </td>
   <td style="text-align:right;"> 278391.628 </td>
   <td style="text-align:right;"> 179791.062 </td>
   <td style="text-align:right;"> 9735.081 </td>
   <td style="text-align:right;"> 10738.406 </td>
   <td style="text-align:right;"> 3722.4390 </td>
   <td style="text-align:right;"> 188255.017 </td>
   <td style="text-align:right;"> 3414.198 </td>
   <td style="text-align:right;"> 9248.9905 </td>
   <td style="text-align:right;"> 18936.5590 </td>
   <td style="text-align:right;"> 24746.5015 </td>
   <td style="text-align:right;"> 49611.9400 </td>
   <td style="text-align:right;"> 87366.9360 </td>
   <td style="text-align:right;"> 484193.4165 </td>
   <td style="text-align:right;"> 85908.7555 </td>
   <td style="text-align:right;"> 349196.5750 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 31 </td>
   <td style="text-align:right;"> 411.46452 </td>
   <td style="text-align:right;"> 9.0068700 </td>
   <td style="text-align:right;"> 137582.7 </td>
   <td style="text-align:right;"> 39.9600 </td>
   <td style="text-align:right;"> 0.000 </td>
   <td style="text-align:right;"> 203.8250 </td>
   <td style="text-align:right;"> 67.412 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 0.000 </td>
   <td style="text-align:right;"> 0.000 </td>
   <td style="text-align:right;"> 0.000 </td>
   <td style="text-align:right;"> 0.000 </td>
   <td style="text-align:right;"> 0.000 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 45.135 </td>
   <td style="text-align:right;"> 0.000 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 0.0000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 32 </td>
   <td style="text-align:right;"> 184.98559 </td>
   <td style="text-align:right;"> 12.7923212 </td>
   <td style="text-align:right;"> 293752.4 </td>
   <td style="text-align:right;"> 279865.5165 </td>
   <td style="text-align:right;"> 274058.393 </td>
   <td style="text-align:right;"> 304633.0195 </td>
   <td style="text-align:right;"> 314037.853 </td>
   <td style="text-align:right;"> 290866.0935 </td>
   <td style="text-align:right;"> 273975.148 </td>
   <td style="text-align:right;"> 326616.632 </td>
   <td style="text-align:right;"> 355877.351 </td>
   <td style="text-align:right;"> 264291.512 </td>
   <td style="text-align:right;"> 300207.093 </td>
   <td style="text-align:right;"> 237039.2250 </td>
   <td style="text-align:right;"> 341764.035 </td>
   <td style="text-align:right;"> 238545.271 </td>
   <td style="text-align:right;"> 248141.9795 </td>
   <td style="text-align:right;"> 241958.5585 </td>
   <td style="text-align:right;"> 294486.2310 </td>
   <td style="text-align:right;"> 269652.0685 </td>
   <td style="text-align:right;"> 6947.7850 </td>
   <td style="text-align:right;"> 238827.1015 </td>
   <td style="text-align:right;"> 83577.3550 </td>
   <td style="text-align:right;"> 5454.8470 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 33 </td>
   <td style="text-align:right;"> 615.44470 </td>
   <td style="text-align:right;"> 6.4225622 </td>
   <td style="text-align:right;"> 132136.5 </td>
   <td style="text-align:right;"> 1245505.2600 </td>
   <td style="text-align:right;"> 542554.946 </td>
   <td style="text-align:right;"> 1368812.3350 </td>
   <td style="text-align:right;"> 1403810.964 </td>
   <td style="text-align:right;"> 1111533.9980 </td>
   <td style="text-align:right;"> 1290913.407 </td>
   <td style="text-align:right;"> 1469172.077 </td>
   <td style="text-align:right;"> 1518376.365 </td>
   <td style="text-align:right;"> 1166968.540 </td>
   <td style="text-align:right;"> 1380307.257 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 1399206.037 </td>
   <td style="text-align:right;"> 0.000 </td>
   <td style="text-align:right;"> 341.4515 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 837021.2285 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 38.6550 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 0.0000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 34 </td>
   <td style="text-align:right;"> 435.36014 </td>
   <td style="text-align:right;"> 7.7489563 </td>
   <td style="text-align:right;"> 1247269.0 </td>
   <td style="text-align:right;"> 5240747.4210 </td>
   <td style="text-align:right;"> 2032023.113 </td>
   <td style="text-align:right;"> 3440603.1120 </td>
   <td style="text-align:right;"> 3548071.192 </td>
   <td style="text-align:right;"> 3043349.5800 </td>
   <td style="text-align:right;"> 1690926.606 </td>
   <td style="text-align:right;"> 6534732.539 </td>
   <td style="text-align:right;"> 3731569.384 </td>
   <td style="text-align:right;"> 4179282.688 </td>
   <td style="text-align:right;"> 0.000 </td>
   <td style="text-align:right;"> 751278.9935 </td>
   <td style="text-align:right;"> 5239632.762 </td>
   <td style="text-align:right;"> 2669582.139 </td>
   <td style="text-align:right;"> 2517724.2480 </td>
   <td style="text-align:right;"> 4464557.1850 </td>
   <td style="text-align:right;"> 240098.6915 </td>
   <td style="text-align:right;"> 4509217.5600 </td>
   <td style="text-align:right;"> 4317.4965 </td>
   <td style="text-align:right;"> 942459.1670 </td>
   <td style="text-align:right;"> 27287.7135 </td>
   <td style="text-align:right;"> 3718.7000 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 35 </td>
   <td style="text-align:right;"> 183.14917 </td>
   <td style="text-align:right;"> 1.5937167 </td>
   <td style="text-align:right;"> 309109.7 </td>
   <td style="text-align:right;"> 3374933.3530 </td>
   <td style="text-align:right;"> 618040.840 </td>
   <td style="text-align:right;"> 3889709.7480 </td>
   <td style="text-align:right;"> 3975855.755 </td>
   <td style="text-align:right;"> 563427.4185 </td>
   <td style="text-align:right;"> 369182.430 </td>
   <td style="text-align:right;"> 4248180.394 </td>
   <td style="text-align:right;"> 4052203.486 </td>
   <td style="text-align:right;"> 562000.563 </td>
   <td style="text-align:right;"> 0.000 </td>
   <td style="text-align:right;"> 41.5950 </td>
   <td style="text-align:right;"> 3315841.836 </td>
   <td style="text-align:right;"> 42.864 </td>
   <td style="text-align:right;"> 216.0570 </td>
   <td style="text-align:right;"> 50.7990 </td>
   <td style="text-align:right;"> 188935.4440 </td>
   <td style="text-align:right;"> 96.0400 </td>
   <td style="text-align:right;"> 81.2210 </td>
   <td style="text-align:right;"> 39.8360 </td>
   <td style="text-align:right;"> 65.9340 </td>
   <td style="text-align:right;"> 72.8640 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 36 </td>
   <td style="text-align:right;"> 199.98827 </td>
   <td style="text-align:right;"> 10.4552318 </td>
   <td style="text-align:right;"> 1032875.8 </td>
   <td style="text-align:right;"> 1052741.0510 </td>
   <td style="text-align:right;"> 934411.663 </td>
   <td style="text-align:right;"> 1364244.3160 </td>
   <td style="text-align:right;"> 1198619.018 </td>
   <td style="text-align:right;"> 1010374.8110 </td>
   <td style="text-align:right;"> 1070194.290 </td>
   <td style="text-align:right;"> 1122750.608 </td>
   <td style="text-align:right;"> 1240329.854 </td>
   <td style="text-align:right;"> 1052170.080 </td>
   <td style="text-align:right;"> 832657.392 </td>
   <td style="text-align:right;"> 496033.1395 </td>
   <td style="text-align:right;"> 979455.905 </td>
   <td style="text-align:right;"> 512230.071 </td>
   <td style="text-align:right;"> 786755.2620 </td>
   <td style="text-align:right;"> 629015.8010 </td>
   <td style="text-align:right;"> 793128.4455 </td>
   <td style="text-align:right;"> 575261.3235 </td>
   <td style="text-align:right;"> 20655.5365 </td>
   <td style="text-align:right;"> 505920.8165 </td>
   <td style="text-align:right;"> 70010.5250 </td>
   <td style="text-align:right;"> 49574.7835 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 37 </td>
   <td style="text-align:right;"> 659.46937 </td>
   <td style="text-align:right;"> 6.3133606 </td>
   <td style="text-align:right;"> 126106.9 </td>
   <td style="text-align:right;"> 1224379.3570 </td>
   <td style="text-align:right;"> 545108.120 </td>
   <td style="text-align:right;"> 1349786.2700 </td>
   <td style="text-align:right;"> 1399897.939 </td>
   <td style="text-align:right;"> 1092496.2670 </td>
   <td style="text-align:right;"> 1212709.718 </td>
   <td style="text-align:right;"> 1324502.266 </td>
   <td style="text-align:right;"> 1371245.299 </td>
   <td style="text-align:right;"> 1106027.508 </td>
   <td style="text-align:right;"> 248.360 </td>
   <td style="text-align:right;"> 331.2660 </td>
   <td style="text-align:right;"> 1338991.475 </td>
   <td style="text-align:right;"> 435.783 </td>
   <td style="text-align:right;"> 306.7460 </td>
   <td style="text-align:right;"> 1893.7900 </td>
   <td style="text-align:right;"> 875276.6465 </td>
   <td style="text-align:right;"> 1941.8170 </td>
   <td style="text-align:right;"> 149.8560 </td>
   <td style="text-align:right;"> 35178.0625 </td>
   <td style="text-align:right;"> 176.5525 </td>
   <td style="text-align:right;"> 686.8490 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 41 </td>
   <td style="text-align:right;"> 437.23568 </td>
   <td style="text-align:right;"> 0.7294127 </td>
   <td style="text-align:right;"> 251688.0 </td>
   <td style="text-align:right;"> 254337.6520 </td>
   <td style="text-align:right;"> 3076.227 </td>
   <td style="text-align:right;"> 209911.7130 </td>
   <td style="text-align:right;"> 273798.994 </td>
   <td style="text-align:right;"> 2233.6355 </td>
   <td style="text-align:right;"> 2620.829 </td>
   <td style="text-align:right;"> 0.000 </td>
   <td style="text-align:right;"> 243153.171 </td>
   <td style="text-align:right;"> 3149.220 </td>
   <td style="text-align:right;"> 15149.290 </td>
   <td style="text-align:right;"> 11930.1700 </td>
   <td style="text-align:right;"> 257056.893 </td>
   <td style="text-align:right;"> 14713.915 </td>
   <td style="text-align:right;"> 33252.3475 </td>
   <td style="text-align:right;"> 6387.7255 </td>
   <td style="text-align:right;"> 3711.4570 </td>
   <td style="text-align:right;"> 182004.6630 </td>
   <td style="text-align:right;"> 31916.6870 </td>
   <td style="text-align:right;"> 300966.0480 </td>
   <td style="text-align:right;"> 307247.9265 </td>
   <td style="text-align:right;"> 87625.0990 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 42 </td>
   <td style="text-align:right;"> 161.96989 </td>
   <td style="text-align:right;"> 10.2466242 </td>
   <td style="text-align:right;"> 166107.5 </td>
   <td style="text-align:right;"> 178005.3280 </td>
   <td style="text-align:right;"> 157328.800 </td>
   <td style="text-align:right;"> 191854.1110 </td>
   <td style="text-align:right;"> 180384.318 </td>
   <td style="text-align:right;"> 169002.0985 </td>
   <td style="text-align:right;"> 156984.945 </td>
   <td style="text-align:right;"> 194923.011 </td>
   <td style="text-align:right;"> 196609.408 </td>
   <td style="text-align:right;"> 152586.954 </td>
   <td style="text-align:right;"> 174015.041 </td>
   <td style="text-align:right;"> 159536.7670 </td>
   <td style="text-align:right;"> 201442.686 </td>
   <td style="text-align:right;"> 149753.025 </td>
   <td style="text-align:right;"> 169450.2010 </td>
   <td style="text-align:right;"> 161910.2545 </td>
   <td style="text-align:right;"> 155136.2035 </td>
   <td style="text-align:right;"> 170660.4625 </td>
   <td style="text-align:right;"> 11687.2405 </td>
   <td style="text-align:right;"> 157486.3565 </td>
   <td style="text-align:right;"> 13134.1855 </td>
   <td style="text-align:right;"> 14617.0605 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 43 </td>
   <td style="text-align:right;"> 205.13128 </td>
   <td style="text-align:right;"> 1.5854183 </td>
   <td style="text-align:right;"> 271715.7 </td>
   <td style="text-align:right;"> 1941118.8280 </td>
   <td style="text-align:right;"> 88382.410 </td>
   <td style="text-align:right;"> 2075290.7580 </td>
   <td style="text-align:right;"> 2067457.850 </td>
   <td style="text-align:right;"> 315575.7665 </td>
   <td style="text-align:right;"> 195645.760 </td>
   <td style="text-align:right;"> 2300091.398 </td>
   <td style="text-align:right;"> 1903253.730 </td>
   <td style="text-align:right;"> 327983.192 </td>
   <td style="text-align:right;"> 0.000 </td>
   <td style="text-align:right;"> 132.0750 </td>
   <td style="text-align:right;"> 2416404.630 </td>
   <td style="text-align:right;"> 64.080 </td>
   <td style="text-align:right;"> 266.2295 </td>
   <td style="text-align:right;"> 176.2385 </td>
   <td style="text-align:right;"> 80856.5185 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 141.6120 </td>
   <td style="text-align:right;"> 90.9300 </td>
   <td style="text-align:right;"> 199.9160 </td>
   <td style="text-align:right;"> 297.5195 </td>
  </tr>
</tbody>
</table></div>




```r
data("mzmine_table")
object =
   convet_mzmine2mass_dataset(x = mzmine_table)
object
#> -------------------- 
#> massdataset version: 1.0.25 
#> -------------------- 
#> 1.expression_data:[ 3443 x 22 data.frame]
#> 2.sample_info:[ 22 x 2 data.frame]
#> 22 samples:10232_P4_RE4_01_476.mzXML Peak area 10765_P4_RE9_01_482.mzXML Peak area 10546_P4_RG11_01_515.mzXML Peak area ... 31878_P1_RH3_01_131.mzXML Peak area 14563_P1_RE10_01_99.mzXML Peak area
#> 3.variable_info:[ 3443 x 3 data.frame]
#> 3443 variables:1 2 3 ... 12248 12382
#> 4.sample_info_note:[ 2 x 2 data.frame]
#> 5.variable_info_note:[ 3 x 2 data.frame]
#> 6.ms2_data:[ 0 variables x 0 MS2 spectra]
#> -------------------- 
#> Processing information
#> 1 processings in total
#> create_mass_dataset ---------- 
#>       Package                Function.used                Time
#> 1 massdataset convet_mzmine2mass_dataset() 2023-09-03 10:28:19
```

## MS-DIAL feature table to `mass_dataset` class

We can also directory convert feature table from [MS-DIAL](http://prime.psc.riken.jp/compms/msdial/main.html) to `mass_dataset` class.

An example feature table from MS-DIAL.

<div style="border: 1px solid #ddd; padding: 0px; overflow-y: scroll; height:600px; overflow-x: scroll; width:100%; "><table class="table table-striped table-hover table-condensed table-responsive" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V1 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V2 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V3 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V4 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V5 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V6 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V7 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V8 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V9 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V10 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V11 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V12 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V13 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V14 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V15 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V16 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V17 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V18 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V19 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V20 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V21 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V22 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V23 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V24 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V25 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V26 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V27 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V28 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V29 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V30 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V31 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V32 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V33 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V34 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V35 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V36 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V37 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V38 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V39 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V40 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V41 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V42 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V43 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V44 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V45 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V46 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V47 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V48 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V49 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V50 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V51 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V52 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V53 </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> V54 </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> Class </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> File type </td>
   <td style="text-align:left;"> Sample </td>
   <td style="text-align:left;"> Sample </td>
   <td style="text-align:left;"> Sample </td>
   <td style="text-align:left;"> Sample </td>
   <td style="text-align:left;"> Sample </td>
   <td style="text-align:left;"> Sample </td>
   <td style="text-align:left;"> Sample </td>
   <td style="text-align:left;"> Sample </td>
   <td style="text-align:left;"> Sample </td>
   <td style="text-align:left;"> Sample </td>
   <td style="text-align:left;"> Sample </td>
   <td style="text-align:left;"> Sample </td>
   <td style="text-align:left;"> Sample </td>
   <td style="text-align:left;"> Sample </td>
   <td style="text-align:left;"> Sample </td>
   <td style="text-align:left;"> Sample </td>
   <td style="text-align:left;"> Sample </td>
   <td style="text-align:left;"> Sample </td>
   <td style="text-align:left;"> Sample </td>
   <td style="text-align:left;"> Sample </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> Injection order </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> 13 </td>
   <td style="text-align:left;"> 14 </td>
   <td style="text-align:left;"> 15 </td>
   <td style="text-align:left;"> 16 </td>
   <td style="text-align:left;"> 17 </td>
   <td style="text-align:left;"> 18 </td>
   <td style="text-align:left;"> 19 </td>
   <td style="text-align:left;"> 20 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> Batch ID </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> Average </td>
   <td style="text-align:left;"> Stdev </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Alignment ID </td>
   <td style="text-align:left;"> Average Rt(min) </td>
   <td style="text-align:left;"> Average Mz </td>
   <td style="text-align:left;"> Metabolite name </td>
   <td style="text-align:left;"> Adduct type </td>
   <td style="text-align:left;"> Post curation result </td>
   <td style="text-align:left;"> Fill % </td>
   <td style="text-align:left;"> MS/MS assigned </td>
   <td style="text-align:left;"> Reference RT </td>
   <td style="text-align:left;"> Reference m/z </td>
   <td style="text-align:left;"> Formula </td>
   <td style="text-align:left;"> Ontology </td>
   <td style="text-align:left;"> INCHIKEY </td>
   <td style="text-align:left;"> SMILES </td>
   <td style="text-align:left;"> Annotation tag (VS1.0) </td>
   <td style="text-align:left;"> RT matched </td>
   <td style="text-align:left;"> m/z matched </td>
   <td style="text-align:left;"> MS/MS matched </td>
   <td style="text-align:left;"> Comment </td>
   <td style="text-align:left;"> Manually modified for quantification </td>
   <td style="text-align:left;"> Manually modified for annotation </td>
   <td style="text-align:left;"> Isotope tracking parent ID </td>
   <td style="text-align:left;"> Isotope tracking weight number </td>
   <td style="text-align:left;"> Total score </td>
   <td style="text-align:left;"> RT similarity </td>
   <td style="text-align:left;"> Dot product </td>
   <td style="text-align:left;"> Reverse dot product </td>
   <td style="text-align:left;"> Fragment presence % </td>
   <td style="text-align:left;"> S/N average </td>
   <td style="text-align:left;"> Spectrum reference file name </td>
   <td style="text-align:left;"> MS1 isotopic spectrum </td>
   <td style="text-align:left;"> MS/MS spectrum </td>
   <td style="text-align:left;"> W03.01 </td>
   <td style="text-align:left;"> W03.02 </td>
   <td style="text-align:left;"> W03.03 </td>
   <td style="text-align:left;"> W03.04 </td>
   <td style="text-align:left;"> W03.05 </td>
   <td style="text-align:left;"> W03.06 </td>
   <td style="text-align:left;"> W03.07 </td>
   <td style="text-align:left;"> W03.08 </td>
   <td style="text-align:left;"> W03.09 </td>
   <td style="text-align:left;"> W03.10 </td>
   <td style="text-align:left;"> W30.01 </td>
   <td style="text-align:left;"> W30.02 </td>
   <td style="text-align:left;"> W30.03 </td>
   <td style="text-align:left;"> W30.04 </td>
   <td style="text-align:left;"> W30.05 </td>
   <td style="text-align:left;"> W30.06 </td>
   <td style="text-align:left;"> W30.07 </td>
   <td style="text-align:left;"> W30.08 </td>
   <td style="text-align:left;"> W30.09 </td>
   <td style="text-align:left;"> W30.10 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 1.091 </td>
   <td style="text-align:left;"> 60.04458 </td>
   <td style="text-align:left;"> Unknown </td>
   <td style="text-align:left;"> [M+H]+ </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> 0.6 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 999 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 15.17 </td>
   <td style="text-align:left;"> W30.08 </td>
   <td style="text-align:left;"> 60.04458:6394 61.04793:179 62.05129:0 </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> 72102 </td>
   <td style="text-align:left;"> 59455 </td>
   <td style="text-align:left;"> 61155 </td>
   <td style="text-align:left;"> 75126 </td>
   <td style="text-align:left;"> 70122 </td>
   <td style="text-align:left;"> 69224 </td>
   <td style="text-align:left;"> 71378 </td>
   <td style="text-align:left;"> 69357 </td>
   <td style="text-align:left;"> 76841 </td>
   <td style="text-align:left;"> 63669 </td>
   <td style="text-align:left;"> 71999 </td>
   <td style="text-align:left;"> 44361 </td>
   <td style="text-align:left;"> 71829 </td>
   <td style="text-align:left;"> 68214 </td>
   <td style="text-align:left;"> 46249 </td>
   <td style="text-align:left;"> 73209 </td>
   <td style="text-align:left;"> 39180 </td>
   <td style="text-align:left;"> 70302 </td>
   <td style="text-align:left;"> 47150 </td>
   <td style="text-align:left;"> 44413 </td>
   <td style="text-align:left;"> 63266.802734375 </td>
   <td style="text-align:left;"> 12079.2830605498 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> 8.132 </td>
   <td style="text-align:left;"> 60.07921 </td>
   <td style="text-align:left;"> Unknown </td>
   <td style="text-align:left;"> [M+H]+ </td>
   <td style="text-align:left;"> found in higher mzs MsMs_115; found in higher mzs MsMs_3482 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> True </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 999 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 40.32 </td>
   <td style="text-align:left;"> W03.01 </td>
   <td style="text-align:left;"> 60.08072:10877 61.08407:315 62.08743:0 </td>
   <td style="text-align:left;"> 42.03227:122 43.01649:1202 43.03581:98 44.0484:592 60.08133:49 </td>
   <td style="text-align:left;"> 124220 </td>
   <td style="text-align:left;"> 117089 </td>
   <td style="text-align:left;"> 134748 </td>
   <td style="text-align:left;"> 117222 </td>
   <td style="text-align:left;"> 116787 </td>
   <td style="text-align:left;"> 129138 </td>
   <td style="text-align:left;"> 117582 </td>
   <td style="text-align:left;"> 124574 </td>
   <td style="text-align:left;"> 117542 </td>
   <td style="text-align:left;"> 112126 </td>
   <td style="text-align:left;"> 64263 </td>
   <td style="text-align:left;"> 136636 </td>
   <td style="text-align:left;"> 119736 </td>
   <td style="text-align:left;"> 125756 </td>
   <td style="text-align:left;"> 142278 </td>
   <td style="text-align:left;"> 130580 </td>
   <td style="text-align:left;"> 127754 </td>
   <td style="text-align:left;"> 129261 </td>
   <td style="text-align:left;"> 135510 </td>
   <td style="text-align:left;"> 129017 </td>
   <td style="text-align:left;"> 122590.935742188 </td>
   <td style="text-align:left;"> 15891.7745234752 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> 9.774 </td>
   <td style="text-align:left;"> 62.05778 </td>
   <td style="text-align:left;"> Unknown </td>
   <td style="text-align:left;"> [M+H]+ </td>
   <td style="text-align:left;"> found in higher mzs MsMs_2161	0.7	False	null	null	null	null	null	null	999	False	False	False		False	False	null	null	null	null	null	null	null	44.14	W30.05	62.05778:1475 63.06113:48 64.06449:24		10943	9937	12202	10017	6119	11312	7882	8187	8962	5981	6566	10109	12496	10490	12740	9885	12126	9681	11821	10344	9890.04211425781	2066.62842477435
3	12.136	62.06028	Unknown	[M+H]+	similar chromatogram in higher mz_1235; found in higher mzs MsMs_3358; similar chromatogram in higher mz_843; similar chromatogram in higher mz_4808; similar chromatogram in higher mz_816; similar chromatogram in higher mz_3546; similar chromatogram in higher mz_1618; similar chromatogram in higher mz_5524; similar chromatogram in higher mz_5372; similar chromatogram in higher mz_6394; similar chromatogram in higher mz_3976; similar chromatogram in higher mz_1177; similar chromatogram in higher mz_5805; similar chromatogram in higher mz_2245; similar chromatogram in higher mz_5657; similar chromatogram in higher mz_4859; similar chromatogram in higher mz_6427; similar chromatogram in higher mz_4707; similar chromatogram in higher mz_4631; found in higher mzs MsMs_4631; similar chromatogram in higher mz_6544; similar chromatogram in higher mz_1005; similar chromatogram in higher mz_3738; similar chromatogram in higher mz_3897; similar chromatogram in higher mz_5619; similar chromatogram in higher mz_5772; similar chromatogram in higher mz_5866; similar chromatogram in higher mz_6128; similar chromatogram in higher mz_6478; similar chromatogram in higher mz_6535; similar chromatogram in higher mz_6642; similar chromatogram in higher mz_6457; similar chromatogram in higher mz_5835; similar chromatogram in higher mz_5473; similar chromatogram in higher mz_5724; similar chromatogram in higher mz_6447; similar chromatogram in higher mz_4848; similar chromatogram in higher mz_6423; similar chromatogram in higher mz_4912; similar chromatogram in higher mz_6571; similar chromatogram in higher mz_6210	0.95	True	null	null	null	null	null	null	999	False	False	False		False	False	null	null	null	null	null	null	null	140.8	W03.08	62.05892:5556 63.06227:409 64.06563:32	29.01328:21	18129	25006	24462	24663	31669	25478	23404	27956	21560	33020	327	9224	13759	10514	13640	9334	19107	19344	10181	14575	18767.5538040161	8479.76424251574
4	10.699	62.98056	Unknown	[M+H]+	found in higher mzs MsMs_1114; similar chromatogram in higher mz_3268; similar chromatogram in higher mz_418; similar chromatogram in higher mz_3092; similar chromatogram in higher mz_747; similar chromatogram in higher mz_757; similar chromatogram in higher mz_960; similar chromatogram in higher mz_1627; similar chromatogram in higher mz_1708; similar chromatogram in higher mz_1923; similar chromatogram in higher mz_1962; similar chromatogram in higher mz_2195; similar chromatogram in higher mz_2235; similar chromatogram in higher mz_2479; similar chromatogram in higher mz_2642; similar chromatogram in higher mz_2664; similar chromatogram in higher mz_2829; similar chromatogram in higher mz_2901; similar chromatogram in higher mz_3070; similar chromatogram in higher mz_3106; similar chromatogram in higher mz_3200; similar chromatogram in higher mz_3283; similar chromatogram in higher mz_3394; similar chromatogram in higher mz_3485; similar chromatogram in higher mz_3633; similar chromatogram in higher mz_3648; similar chromatogram in higher mz_3664; similar chromatogram in higher mz_3843; similar chromatogram in higher mz_3862; similar chromatogram in higher mz_3980; similar chromatogram in higher mz_4084; similar chromatogram in higher mz_4103; similar chromatogram in higher mz_4208; similar chromatogram in higher mz_4333; similar chromatogram in higher mz_4346; similar chromatogram in higher mz_4440; similar chromatogram in higher mz_4499; similar chromatogram in higher mz_4564; similar chromatogram in higher mz_4580; similar chromatogram in higher mz_4731; similar chromatogram in higher mz_4737; similar chromatogram in higher mz_4820; similar chromatogram in higher mz_4877; similar chromatogram in higher mz_5018; similar chromatogram in higher mz_5033; similar chromatogram in higher mz_5049; similar chromatogram in higher mz_5159; similar chromatogram in higher mz_5172; similar chromatogram in higher mz_5187; similar chromatogram in higher mz_5290; similar chromatogram in higher mz_5312; similar chromatogram in higher mz_5430; similar chromatogram in higher mz_5550; similar chromatogram in higher mz_5563; similar chromatogram in higher mz_5714; similar chromatogram in higher mz_5731; similar chromatogram in higher mz_5738; similar chromatogram in higher mz_5830; similar chromatogram in higher mz_5939; similar chromatogram in higher mz_5958; similar chromatogram in higher mz_5974; similar chromatogram in higher mz_6042; similar chromatogram in higher mz_6062; similar chromatogram in higher mz_6153; similar chromatogram in higher mz_6177; similar chromatogram in higher mz_6219; similar chromatogram in higher mz_6265; similar chromatogram in higher mz_6433; similar chromatogram in higher mz_6462; similar chromatogram in higher mz_6542; found in higher mzs MsMs_2009; found in higher mzs MsMs_1142 </td>
   <td style="text-align:left;"> 0.95 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 999 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 40.8 </td>
   <td style="text-align:left;"> W30.05 </td>
   <td style="text-align:left;"> 62.98056:3047 63.98391:60 64.98727:78 </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> 14753 </td>
   <td style="text-align:left;"> 16758 </td>
   <td style="text-align:left;"> 14582 </td>
   <td style="text-align:left;"> 18096 </td>
   <td style="text-align:left;"> 18003 </td>
   <td style="text-align:left;"> 15747 </td>
   <td style="text-align:left;"> 16758 </td>
   <td style="text-align:left;"> 20014 </td>
   <td style="text-align:left;"> 15702 </td>
   <td style="text-align:left;"> 16615 </td>
   <td style="text-align:left;"> 8753 </td>
   <td style="text-align:left;"> 21164 </td>
   <td style="text-align:left;"> 16493 </td>
   <td style="text-align:left;"> 18392 </td>
   <td style="text-align:left;"> 22598 </td>
   <td style="text-align:left;"> 21285 </td>
   <td style="text-align:left;"> 17265 </td>
   <td style="text-align:left;"> 16322 </td>
   <td style="text-align:left;"> 22414 </td>
   <td style="text-align:left;"> 18386 </td>
   <td style="text-align:left;"> 17504.9524414063 </td>
   <td style="text-align:left;"> 3159.11442535889 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> 11.586 </td>
   <td style="text-align:left;"> 67.04201 </td>
   <td style="text-align:left;"> Unknown </td>
   <td style="text-align:left;"> [M+H]+ </td>
   <td style="text-align:left;"> found in higher mzs MsMs_81	0.7	False	null	null	null	null	null	null	999	False	False	False		False	False	null	null	null	null	null	null	null	12.47	W03.07	67.04201:1395 68.04536:12236 69.04872:1395		16481	16328	16694	19801	16327	19707	17584	19727	18115	15118	10802	17516	16268	17623	16177	9946	14359	17952	18529	14878	16496.6124023438	2602.56082283677
6	9.4	68.04762	Unknown	[M+H]+	similar chromatogram in higher mz_13; similar chromatogram in higher mz_15; similar chromatogram in higher mz_195; similar chromatogram in higher mz_200; similar chromatogram in higher mz_531; similar chromatogram in higher mz_2426; similar chromatogram in higher mz_2980; similar chromatogram in higher mz_3260; similar chromatogram in higher mz_4149; similar chromatogram in higher mz_4641; similar chromatogram in higher mz_4698; similar chromatogram in higher mz_5059; found in higher mzs MsMs_15; similar chromatogram in higher mz_2758; similar chromatogram in higher mz_2171; similar chromatogram in higher mz_3800 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> True </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 999 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 303.61 </td>
   <td style="text-align:left;"> W03.01 </td>
   <td style="text-align:left;"> 68.04974:22671 69.05309:964 70.05645:907946 </td>
   <td style="text-align:left;"> 39.0199:98 39.02165:265 41.02618:24 41.03876:73 67.04482:24 68.05009:312 </td>
   <td style="text-align:left;"> 141738 </td>
   <td style="text-align:left;"> 148617 </td>
   <td style="text-align:left;"> 193914 </td>
   <td style="text-align:left;"> 154214 </td>
   <td style="text-align:left;"> 150546 </td>
   <td style="text-align:left;"> 193661 </td>
   <td style="text-align:left;"> 174458 </td>
   <td style="text-align:left;"> 117452 </td>
   <td style="text-align:left;"> 175490 </td>
   <td style="text-align:left;"> 165887 </td>
   <td style="text-align:left;"> 62266 </td>
   <td style="text-align:left;"> 151925 </td>
   <td style="text-align:left;"> 155921 </td>
   <td style="text-align:left;"> 191708 </td>
   <td style="text-align:left;"> 134875 </td>
   <td style="text-align:left;"> 134780 </td>
   <td style="text-align:left;"> 163511 </td>
   <td style="text-align:left;"> 161250 </td>
   <td style="text-align:left;"> 130959 </td>
   <td style="text-align:left;"> 161493 </td>
   <td style="text-align:left;"> 153233.367578125 </td>
   <td style="text-align:left;"> 29923.7538447131 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> 11.581 </td>
   <td style="text-align:left;"> 68.0479 </td>
   <td style="text-align:left;"> Unknown </td>
   <td style="text-align:left;"> [M+H]+ </td>
   <td style="text-align:left;"> found in higher mzs MsMs_170; found in higher mzs MsMs_81; found in higher mzs MsMs_165; found in higher mzs MsMs_759; found in higher mzs MsMs_1497	1	True	null	null	null	null	null	null	999	False	False	False		False	False	null	null	null	null	null	null	null	141.37	W03.02	68.04971:11094 69.05306:996 70.05642:3412	39.01896:24 39.0251:24	158573	171982	165931	185563	169561	187873	185445	191220	185114	169136	118826	165136	163369	179192	175428	170813	152302	178475	184666	164198	171140.071875	16286.4581889059
8	11.413	68.04813	Unknown	[M+H]+		0.95	True	null	null	null	null	null	null	999	False	False	False		False	False	null	null	null	null	null	null	null	127.7	W03.01	68.04986:10332 69.05321:3733 70.05657:4777	37.00759:49 39.01991:49 39.02166:386 41.03428:49 41.03697:98 42.03136:49 68.0478:354	70527	62101	75703	78202	59119	69889	70523	63844	74950	62300	32370	94345	65726	69321	80589	57664	69145	73333	65792	63155	67929.8420898437	11888.327618559
9	8.021	68.04961	Unknown	[M+H]+		0.85	False	null	null	null	null	null	null	999	False	False	False		False	False	null	null	null	null	null	null	null	36.1	W03.07	68.04961:3885 69.05296:303 70.05632:129783		23357	28647	25536	23746	38907	36582	41196	34186	40954	42843	3391	37863	28630	43596	32768	30610	23877	39461	38216	29868	32211.7107177734	9505.57693995744
10	11.412	69.03178	Unknown	[M+H]+	similar chromatogram in higher mz_64; similar chromatogram in higher mz_118; found in higher mzs MsMs_118; similar chromatogram in higher mz_55; similar chromatogram in higher mz_1180; similar chromatogram in higher mz_874; similar chromatogram in higher mz_2620; similar chromatogram in higher mz_3574; similar chromatogram in higher mz_5536; similar chromatogram in higher mz_4979 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> True </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 999 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 163.89 </td>
   <td style="text-align:left;"> W03.01 </td>
   <td style="text-align:left;"> 69.03352:27144 70.03687:1896 71.04023:150 </td>
   <td style="text-align:left;"> 37.0042:49 37.00847:122 38.01361:98 39.0217:2215 40.02434:24 41.03791:359 55.0018:21 </td>
   <td style="text-align:left;"> 181394 </td>
   <td style="text-align:left;"> 162288 </td>
   <td style="text-align:left;"> 187964 </td>
   <td style="text-align:left;"> 198937 </td>
   <td style="text-align:left;"> 156747 </td>
   <td style="text-align:left;"> 184717 </td>
   <td style="text-align:left;"> 175418 </td>
   <td style="text-align:left;"> 177185 </td>
   <td style="text-align:left;"> 187652 </td>
   <td style="text-align:left;"> 160180 </td>
   <td style="text-align:left;"> 79467 </td>
   <td style="text-align:left;"> 182179 </td>
   <td style="text-align:left;"> 172591 </td>
   <td style="text-align:left;"> 177537 </td>
   <td style="text-align:left;"> 203612 </td>
   <td style="text-align:left;"> 170405 </td>
   <td style="text-align:left;"> 183907 </td>
   <td style="text-align:left;"> 179515 </td>
   <td style="text-align:left;"> 191930 </td>
   <td style="text-align:left;"> 177527 </td>
   <td style="text-align:left;"> 174557.5484375 </td>
   <td style="text-align:left;"> 25313.3788454173 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> 1.823 </td>
   <td style="text-align:left;"> 69.0449 </td>
   <td style="text-align:left;"> Unknown </td>
   <td style="text-align:left;"> [M+H]+ </td>
   <td style="text-align:left;"> found in higher mzs MsMs_1324; found in higher mzs MsMs_1746 </td>
   <td style="text-align:left;"> 0.9 </td>
   <td style="text-align:left;"> True </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 999 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 54.76 </td>
   <td style="text-align:left;"> W03.01 </td>
   <td style="text-align:left;"> 69.044:16134 70.04735:521 71.05071:491 </td>
   <td style="text-align:left;"> 39.02432:9 40.0199:12 41.02711:69 42.03503:1271 68.83579:15 69.04427:2828 </td>
   <td style="text-align:left;"> 201944 </td>
   <td style="text-align:left;"> 84881 </td>
   <td style="text-align:left;"> 123522 </td>
   <td style="text-align:left;"> 29659 </td>
   <td style="text-align:left;"> 4210 </td>
   <td style="text-align:left;"> 135264 </td>
   <td style="text-align:left;"> 233998 </td>
   <td style="text-align:left;"> 148146 </td>
   <td style="text-align:left;"> 150756 </td>
   <td style="text-align:left;"> 159698 </td>
   <td style="text-align:left;"> 193054 </td>
   <td style="text-align:left;"> 89712 </td>
   <td style="text-align:left;"> 108359 </td>
   <td style="text-align:left;"> 133002 </td>
   <td style="text-align:left;"> 115872 </td>
   <td style="text-align:left;"> 134186 </td>
   <td style="text-align:left;"> 104373 </td>
   <td style="text-align:left;"> 110038 </td>
   <td style="text-align:left;"> 98031 </td>
   <td style="text-align:left;"> 73906 </td>
   <td style="text-align:left;"> 121630.570849609 </td>
   <td style="text-align:left;"> 54166.6677449702 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> 1.388 </td>
   <td style="text-align:left;"> 69.04494 </td>
   <td style="text-align:left;"> Unknown </td>
   <td style="text-align:left;"> [M+H]+ </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> 0.95 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 999 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 67.4 </td>
   <td style="text-align:left;"> W03.07 </td>
   <td style="text-align:left;"> 69.04494:27759 70.04829:396 71.05165:216 </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> 120898 </td>
   <td style="text-align:left;"> 53351 </td>
   <td style="text-align:left;"> 73423 </td>
   <td style="text-align:left;"> 49196 </td>
   <td style="text-align:left;"> 19089 </td>
   <td style="text-align:left;"> 64294 </td>
   <td style="text-align:left;"> 180890 </td>
   <td style="text-align:left;"> 73086 </td>
   <td style="text-align:left;"> 100174 </td>
   <td style="text-align:left;"> 97069 </td>
   <td style="text-align:left;"> 6230 </td>
   <td style="text-align:left;"> 43377 </td>
   <td style="text-align:left;"> 78592 </td>
   <td style="text-align:left;"> 62713 </td>
   <td style="text-align:left;"> 39003 </td>
   <td style="text-align:left;"> 45900 </td>
   <td style="text-align:left;"> 61256 </td>
   <td style="text-align:left;"> 59153 </td>
   <td style="text-align:left;"> 36233 </td>
   <td style="text-align:left;"> 41773 </td>
   <td style="text-align:left;"> 65285.0764648437 </td>
   <td style="text-align:left;"> 38399.8910356429 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 13 </td>
   <td style="text-align:left;"> 9.4 </td>
   <td style="text-align:left;"> 69.85059 </td>
   <td style="text-align:left;"> Unknown </td>
   <td style="text-align:left;"> [M+H]+ </td>
   <td style="text-align:left;"> similar chromatogram in higher mz_3138 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 999 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 178.35 </td>
   <td style="text-align:left;"> W03.03 </td>
   <td style="text-align:left;"> 69.85059:5727 70.85394:509 71.8573:230 </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> 27686 </td>
   <td style="text-align:left;"> 30734 </td>
   <td style="text-align:left;"> 40419 </td>
   <td style="text-align:left;"> 31656 </td>
   <td style="text-align:left;"> 31407 </td>
   <td style="text-align:left;"> 39225 </td>
   <td style="text-align:left;"> 35460 </td>
   <td style="text-align:left;"> 22336 </td>
   <td style="text-align:left;"> 34851 </td>
   <td style="text-align:left;"> 32063 </td>
   <td style="text-align:left;"> 11683 </td>
   <td style="text-align:left;"> 29514 </td>
   <td style="text-align:left;"> 27906 </td>
   <td style="text-align:left;"> 34323 </td>
   <td style="text-align:left;"> 27401 </td>
   <td style="text-align:left;"> 25588 </td>
   <td style="text-align:left;"> 30083 </td>
   <td style="text-align:left;"> 30809 </td>
   <td style="text-align:left;"> 25159 </td>
   <td style="text-align:left;"> 32731 </td>
   <td style="text-align:left;"> 30051.6227539062 </td>
   <td style="text-align:left;"> 6228.7421165747 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 14 </td>
   <td style="text-align:left;"> 1.296 </td>
   <td style="text-align:left;"> 70.06375 </td>
   <td style="text-align:left;"> Unknown </td>
   <td style="text-align:left;"> [M+H]+ </td>
   <td style="text-align:left;"> similar chromatogram in higher mz_2573; found in higher mzs MsMs_2033; similar chromatogram in higher mz_2814; similar chromatogram in higher mz_2607; similar chromatogram in higher mz_2660; similar chromatogram in higher mz_742; similar chromatogram in higher mz_6385; similar chromatogram in higher mz_6377	1	False	null	null	null	null	null	null	999	False	False	False		False	False	null	null	null	null	null	null	null	15.53	W30.06	70.06375:3660 71.0671:364 72.07046:504		11618	12362	13346	11896	10166	9137	10861	11055	14989	13980	16550	14752	11287	11936	14294	15846	12762	13411	12555	13664	12823.3122070312	1914.47066745522
15	9.4	70.06413	Unknown	[M+H]+	found in higher mzs MsMs_200; found in higher mzs MsMs_1632; found in higher mzs MsMs_1528; found in higher mzs MsMs_1165; found in higher mzs MsMs_988; found in higher mzs MsMs_531; found in higher mzs MsMs_2758; similar chromatogram in higher mz_1440; found in higher mzs MsMs_1440; found in higher mzs MsMs_2171; found in higher mzs MsMs_3800	1	True	null	null	null	null	null	null	999	False	False	False		False	False	null	null	null	null	null	null	null	4650.75	W03.01	70.06639:809461 71.06974:45346 72.0731:1387	28.01759:1961 29.01303:1754 30.03277:755 30.79006:21 31.98848:189 39.01813:49 39.02251:326 41.03784:905 42.03315:122 43.00542:73 43.05327:1107 44.04931:122 53.03677:122 58.83743:21 68.0489:1348 70.0631:9203	4897931	5194146	6821479	5449870	5347568	6640286	6071122	4011793	6012765	5535082	1996647	5035342	4776464	5816138	4647054	4423606	5172081	5291634	4306327	5632739	5154003.6125	1039523.42783772
16	16.023	70.065	Unknown	[M+H]+	found in higher mzs MsMs_655; found in higher mzs MsMs_202; found in higher mzs MsMs_2583; found in higher mzs MsMs_1036; found in higher mzs MsMs_836; found in higher mzs MsMs_642; found in higher mzs MsMs_516; found in higher mzs MsMs_513; found in higher mzs MsMs_314; found in higher mzs MsMs_171	0.95	True	null	null	null	null	null	null	999	False	False	False		False	False	null	null	null	null	null	null	null	141.32	W03.01	70.06517:24335 71.06852:757 72.07188:1610	52.87342:21 55.04017:24 70.06658:98	350034	226732	364269	340037	304235	327483	519223	210826	207122	458558	44666	308341	351644	486452	204388	217692	167879	407689	460974	177745	306799.518359375	123917.535287325
17	8.947	70.06603	Unknown	[M+H]+		0.65	False	null	null	null	null	null	null	999	False	False	False		False	False	null	null	null	null	null	null	null	129.6	W30.04	70.06603:51650 71.06938:2856 72.07274:688		646621	683571	672213	365553	331017	721630	807467	778492	812305	682613	181100	876071	806924	898718	723818	552364	670727	850308	719843	428250	660480.19375	195068.946397968
18	9.689	70.06616	Unknown	[M+H]+	found in higher mzs MsMs_203 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> True </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 999 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 276.65 </td>
   <td style="text-align:left;"> W03.01 </td>
   <td style="text-align:left;"> 70.06644:63607 71.06979:4366 72.07315:947 </td>
   <td style="text-align:left;"> 28.01834:73 29.01229:98 39.02691:24 68.04662:49 70.06314:933 </td>
   <td style="text-align:left;"> 1491928 </td>
   <td style="text-align:left;"> 1583940 </td>
   <td style="text-align:left;"> 1560250 </td>
   <td style="text-align:left;"> 1540114 </td>
   <td style="text-align:left;"> 1432975 </td>
   <td style="text-align:left;"> 1620120 </td>
   <td style="text-align:left;"> 1586224 </td>
   <td style="text-align:left;"> 1455605 </td>
   <td style="text-align:left;"> 1435632 </td>
   <td style="text-align:left;"> 1543896 </td>
   <td style="text-align:left;"> 697579 </td>
   <td style="text-align:left;"> 1329002 </td>
   <td style="text-align:left;"> 1069840 </td>
   <td style="text-align:left;"> 1521141 </td>
   <td style="text-align:left;"> 1580980 </td>
   <td style="text-align:left;"> 1492519 </td>
   <td style="text-align:left;"> 1771661 </td>
   <td style="text-align:left;"> 1353915 </td>
   <td style="text-align:left;"> 1567323 </td>
   <td style="text-align:left;"> 1645294 </td>
   <td style="text-align:left;"> 1463996.9125 </td>
   <td style="text-align:left;"> 230197.216478646 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 19 </td>
   <td style="text-align:left;"> 8.396 </td>
   <td style="text-align:left;"> 70.06622 </td>
   <td style="text-align:left;"> Unknown </td>
   <td style="text-align:left;"> [M+H]+ </td>
   <td style="text-align:left;"> found in higher mzs MsMs_316; found in higher mzs MsMs_3420; found in higher mzs MsMs_515; found in higher mzs MsMs_304; found in higher mzs MsMs_4106	1	True	null	null	null	null	null	null	999	False	False	False		False	False	null	null	null	null	null	null	null	384.79	W03.01	70.06532:83703 71.06867:4250 72.07203:862	28.01682:98 29.01527:73 41.0387:73 43.05415:98 54.03535:24 68.04884:98 70.06422:2202	2751747	1872075	2844237	909384	2489225	1493517	3426262	1222921	988135	2039099	699910	3622036	1431944	3577634	3026731	2922602	2606602	3565582	3195881	1514869	2310019.60625	979889.324418271
20	8.024	70.06625	Unknown	[M+H]+	found in higher mzs MsMs_315; found in higher mzs MsMs_4105; found in higher mzs MsMs_3565; found in higher mzs MsMs_3419; found in higher mzs MsMs_1379; found in higher mzs MsMs_175	0.95	True	null	null	null	null	null	null	999	False	False	False		False	False	null	null	null	null	null	null	null	506.38	W03.01	70.06523:66913 71.06858:4002 72.07194:816	28.01908:73 29.0138:73 37.00843:24 42.03317:73 43.05237:73 53.03884:24 70.06432:1172	891878	1195393	983816	930249	1020217	1244685	1536690	1429955	1326104	1160256	78856	1425082	825525	1597865	1291927	1186820	939906	1374358	1318996	1077795	1141818.6015625	332986.732412463
21	8.012	71.95018	Unknown	[M+H]+		0.55	False	null	null	null	null	null	null	999	False	False	False		False	False	null	null	null	null	null	null	null	14.67	W30.06	71.95018:4029 72.95353:30 73.95689:42		30818	18858	23915	38173	42467	25006	30958	57380	47453	19816	6893	23047	12582	48192	26714	71242	49989	19347	26880	28780	32425.4715087891	16063.6443169374
22	11.151	72.0431	Unknown	[M+H]+	similar chromatogram in higher mz_71; similar chromatogram in higher mz_338; similar chromatogram in higher mz_2822; similar chromatogram in higher mz_3233; found in higher mzs MsMs_3233; found in higher mzs MsMs_3220; found in higher mzs MsMs_2474; similar chromatogram in higher mz_3794 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> True </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 999 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 34.63 </td>
   <td style="text-align:left;"> W03.01 </td>
   <td style="text-align:left;"> 72.04466:15073 73.04801:720 74.05137:4845 </td>
   <td style="text-align:left;"> 31.99407:21 42.03319:49 </td>
   <td style="text-align:left;"> 165904 </td>
   <td style="text-align:left;"> 155847 </td>
   <td style="text-align:left;"> 172681 </td>
   <td style="text-align:left;"> 181589 </td>
   <td style="text-align:left;"> 168892 </td>
   <td style="text-align:left;"> 168763 </td>
   <td style="text-align:left;"> 150521 </td>
   <td style="text-align:left;"> 163180 </td>
   <td style="text-align:left;"> 144680 </td>
   <td style="text-align:left;"> 162232 </td>
   <td style="text-align:left;"> 68413 </td>
   <td style="text-align:left;"> 159758 </td>
   <td style="text-align:left;"> 128588 </td>
   <td style="text-align:left;"> 185450 </td>
   <td style="text-align:left;"> 233718 </td>
   <td style="text-align:left;"> 252730 </td>
   <td style="text-align:left;"> 127447 </td>
   <td style="text-align:left;"> 149554 </td>
   <td style="text-align:left;"> 171043 </td>
   <td style="text-align:left;"> 175727 </td>
   <td style="text-align:left;"> 164335.84609375 </td>
   <td style="text-align:left;"> 37270.1763088648 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 23 </td>
   <td style="text-align:left;"> 1.11 </td>
   <td style="text-align:left;"> 72.04314 </td>
   <td style="text-align:left;"> Unknown </td>
   <td style="text-align:left;"> [M+H]+ </td>
   <td style="text-align:left;"> found in higher mzs MsMs_3216; found in higher mzs MsMs_1182 </td>
   <td style="text-align:left;"> 0.65 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 999 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 10.28 </td>
   <td style="text-align:left;"> W03.08 </td>
   <td style="text-align:left;"> 72.04314:8473 73.04649:262 74.04985:19938 </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> 79084 </td>
   <td style="text-align:left;"> 55881 </td>
   <td style="text-align:left;"> 78858 </td>
   <td style="text-align:left;"> 64073 </td>
   <td style="text-align:left;"> 91281 </td>
   <td style="text-align:left;"> 51208 </td>
   <td style="text-align:left;"> 80051 </td>
   <td style="text-align:left;"> 114948 </td>
   <td style="text-align:left;"> 86659 </td>
   <td style="text-align:left;"> 85331 </td>
   <td style="text-align:left;"> 77737 </td>
   <td style="text-align:left;"> 93140 </td>
   <td style="text-align:left;"> 89245 </td>
   <td style="text-align:left;"> 41356 </td>
   <td style="text-align:left;"> 75753 </td>
   <td style="text-align:left;"> 113698 </td>
   <td style="text-align:left;"> 53822 </td>
   <td style="text-align:left;"> 81580 </td>
   <td style="text-align:left;"> 105887 </td>
   <td style="text-align:left;"> 60205 </td>
   <td style="text-align:left;"> 78990.0166015625 </td>
   <td style="text-align:left;"> 20167.1100634731 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 24 </td>
   <td style="text-align:left;"> 1.495 </td>
   <td style="text-align:left;"> 72.04316 </td>
   <td style="text-align:left;"> Unknown </td>
   <td style="text-align:left;"> [M+H]+ </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> 0.6 </td>
   <td style="text-align:left;"> True </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 999 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 12.06 </td>
   <td style="text-align:left;"> W03.04 </td>
   <td style="text-align:left;"> 72.04454:8891 73.04789:329 74.05125:21836 </td>
   <td style="text-align:left;"> 42.03044:24 42.03226:73 57.05113:24 </td>
   <td style="text-align:left;"> 57145 </td>
   <td style="text-align:left;"> 45413 </td>
   <td style="text-align:left;"> 105883 </td>
   <td style="text-align:left;"> 110510 </td>
   <td style="text-align:left;"> 97394 </td>
   <td style="text-align:left;"> 152306 </td>
   <td style="text-align:left;"> 94803 </td>
   <td style="text-align:left;"> 132595 </td>
   <td style="text-align:left;"> 124918 </td>
   <td style="text-align:left;"> 80864 </td>
   <td style="text-align:left;"> 126579 </td>
   <td style="text-align:left;"> 43127 </td>
   <td style="text-align:left;"> 49598 </td>
   <td style="text-align:left;"> 51500 </td>
   <td style="text-align:left;"> 73923 </td>
   <td style="text-align:left;"> 105590 </td>
   <td style="text-align:left;"> 49437 </td>
   <td style="text-align:left;"> 56678 </td>
   <td style="text-align:left;"> 84802 </td>
   <td style="text-align:left;"> 42584 </td>
   <td style="text-align:left;"> 84282.5228515625 </td>
   <td style="text-align:left;"> 34294.1060755127 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 25 </td>
   <td style="text-align:left;"> 9.079 </td>
   <td style="text-align:left;"> 72.08152 </td>
   <td style="text-align:left;"> Unknown </td>
   <td style="text-align:left;"> [M+H]+ </td>
   <td style="text-align:left;"> found in higher mzs MsMs_631	1	True	null	null	null	null	null	null	999	False	False	False		False	False	null	null	null	null	null	null	null	42.07	W03.01	72.08153:19832 73.08488:1492 74.08824:1451	29.03797:24 39.02252:24 42.03225:710 44.05025:24 53.03883:49 56.04799:350 57.05748:598	169459	181917	216640	272145	164355	190177	159776	183882	171051	155322	41938	167148	139473	156747	208245	201476	178715	129783	195582	151173	171750.318945312	43717.9550124595
26	11.247	74.02146	Unknown	[M+H]+	found in higher mzs MsMs_572; similar chromatogram in higher mz_1319; found in higher mzs MsMs_952; similar chromatogram in higher mz_590; found in higher mzs MsMs_590; similar chromatogram in higher mz_5374 </td>
   <td style="text-align:left;"> 0.9 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 999 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 11.64 </td>
   <td style="text-align:left;"> W03.06 </td>
   <td style="text-align:left;"> 74.02146:12667 75.02481:11352 76.02817:679 </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> 85441 </td>
   <td style="text-align:left;"> 71069 </td>
   <td style="text-align:left;"> 93710 </td>
   <td style="text-align:left;"> 90744 </td>
   <td style="text-align:left;"> 85894 </td>
   <td style="text-align:left;"> 99659 </td>
   <td style="text-align:left;"> 90145 </td>
   <td style="text-align:left;"> 92046 </td>
   <td style="text-align:left;"> 76230 </td>
   <td style="text-align:left;"> 80353 </td>
   <td style="text-align:left;"> 2270 </td>
   <td style="text-align:left;"> 59981 </td>
   <td style="text-align:left;"> 46087 </td>
   <td style="text-align:left;"> 57120 </td>
   <td style="text-align:left;"> 69425 </td>
   <td style="text-align:left;"> 81103 </td>
   <td style="text-align:left;"> 60310 </td>
   <td style="text-align:left;"> 59165 </td>
   <td style="text-align:left;"> 83358 </td>
   <td style="text-align:left;"> 61906 </td>
   <td style="text-align:left;"> 72300.7423095703 </td>
   <td style="text-align:left;"> 22124.8569059998 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 27 </td>
   <td style="text-align:left;"> 1.522 </td>
   <td style="text-align:left;"> 74.05772 </td>
   <td style="text-align:left;"> Unknown </td>
   <td style="text-align:left;"> [M+H]+ </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> 0.95 </td>
   <td style="text-align:left;"> True </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 999 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 17.05 </td>
   <td style="text-align:left;"> W03.01 </td>
   <td style="text-align:left;"> 74.06006:20844 75.06341:1609 76.06677:68 </td>
   <td style="text-align:left;"> 28.01762:73 29.01382:219 30.03358:699 31.04045:98 35.08842:21 41.02531:73 42.03411:1187 43.0156:73 44.04844:258 46.06038:24 46.06323:628 58.02903:190 74.05775:122 </td>
   <td style="text-align:left;"> 156634 </td>
   <td style="text-align:left;"> 258711 </td>
   <td style="text-align:left;"> 449689 </td>
   <td style="text-align:left;"> 419582 </td>
   <td style="text-align:left;"> 100188 </td>
   <td style="text-align:left;"> 449226 </td>
   <td style="text-align:left;"> 320717 </td>
   <td style="text-align:left;"> 141294 </td>
   <td style="text-align:left;"> 450554 </td>
   <td style="text-align:left;"> 299726 </td>
   <td style="text-align:left;"> 577020 </td>
   <td style="text-align:left;"> 260825 </td>
   <td style="text-align:left;"> 470213 </td>
   <td style="text-align:left;"> 271885 </td>
   <td style="text-align:left;"> 213161 </td>
   <td style="text-align:left;"> 225083 </td>
   <td style="text-align:left;"> 217252 </td>
   <td style="text-align:left;"> 249293 </td>
   <td style="text-align:left;"> 236667 </td>
   <td style="text-align:left;"> 208568 </td>
   <td style="text-align:left;"> 298814.537890625 </td>
   <td style="text-align:left;"> 128225.589697237 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 28 </td>
   <td style="text-align:left;"> 1.292 </td>
   <td style="text-align:left;"> 74.05773 </td>
   <td style="text-align:left;"> Unknown </td>
   <td style="text-align:left;"> [M+H]+ </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> 0.55 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 999 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 18.77 </td>
   <td style="text-align:left;"> W30.03 </td>
   <td style="text-align:left;"> 74.05773:23433 75.06108:1106 76.06444:0 </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> 140324 </td>
   <td style="text-align:left;"> 129230 </td>
   <td style="text-align:left;"> 188224 </td>
   <td style="text-align:left;"> 78155 </td>
   <td style="text-align:left;"> 90657 </td>
   <td style="text-align:left;"> 109236 </td>
   <td style="text-align:left;"> 97117 </td>
   <td style="text-align:left;"> 95887 </td>
   <td style="text-align:left;"> 126462 </td>
   <td style="text-align:left;"> 118182 </td>
   <td style="text-align:left;"> 209728 </td>
   <td style="text-align:left;"> 97404 </td>
   <td style="text-align:left;"> 168671 </td>
   <td style="text-align:left;"> 114414 </td>
   <td style="text-align:left;"> 209285 </td>
   <td style="text-align:left;"> 137741 </td>
   <td style="text-align:left;"> 112013 </td>
   <td style="text-align:left;"> 145975 </td>
   <td style="text-align:left;"> 95501 </td>
   <td style="text-align:left;"> 130338 </td>
   <td style="text-align:left;"> 129727.340625 </td>
   <td style="text-align:left;"> 38273.4751808096 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 29 </td>
   <td style="text-align:left;"> 11.055 </td>
   <td style="text-align:left;"> 76.03835 </td>
   <td style="text-align:left;"> Unknown </td>
   <td style="text-align:left;"> [M+H]+ </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> 0.75 </td>
   <td style="text-align:left;"> True </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 999 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 26.5 </td>
   <td style="text-align:left;"> W03.02 </td>
   <td style="text-align:left;"> 76.03944:1450 77.04279:741 78.04615:271 </td>
   <td style="text-align:left;"> 29.01226:157 30.03352:879 31.99005:73 </td>
   <td style="text-align:left;"> 10138 </td>
   <td style="text-align:left;"> 10013 </td>
   <td style="text-align:left;"> 9140 </td>
   <td style="text-align:left;"> 12541 </td>
   <td style="text-align:left;"> 8244 </td>
   <td style="text-align:left;"> 8537 </td>
   <td style="text-align:left;"> 8485 </td>
   <td style="text-align:left;"> 10808 </td>
   <td style="text-align:left;"> 9571 </td>
   <td style="text-align:left;"> 7335 </td>
   <td style="text-align:left;"> 1129 </td>
   <td style="text-align:left;"> 11616 </td>
   <td style="text-align:left;"> 9822 </td>
   <td style="text-align:left;"> 9559 </td>
   <td style="text-align:left;"> 12229 </td>
   <td style="text-align:left;"> 11449 </td>
   <td style="text-align:left;"> 10014 </td>
   <td style="text-align:left;"> 9038 </td>
   <td style="text-align:left;"> 12253 </td>
   <td style="text-align:left;"> 9173 </td>
   <td style="text-align:left;"> 9554.73967285156 </td>
   <td style="text-align:left;"> 2449.46658513728 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 30 </td>
   <td style="text-align:left;"> 1.244 </td>
   <td style="text-align:left;"> 77.03858 </td>
   <td style="text-align:left;"> Unknown </td>
   <td style="text-align:left;"> [M+H]+ </td>
   <td style="text-align:left;"> found in higher mzs MsMs_331; found in higher mzs MsMs_232; found in higher mzs MsMs_793; found in higher mzs MsMs_700 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 999 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 26.53 </td>
   <td style="text-align:left;"> W03.04 </td>
   <td style="text-align:left;"> 77.03858:5014 78.04193:975 79.04529:4549 </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> 35379 </td>
   <td style="text-align:left;"> 22673 </td>
   <td style="text-align:left;"> 23741 </td>
   <td style="text-align:left;"> 33303 </td>
   <td style="text-align:left;"> 23575 </td>
   <td style="text-align:left;"> 34167 </td>
   <td style="text-align:left;"> 24469 </td>
   <td style="text-align:left;"> 18168 </td>
   <td style="text-align:left;"> 27723 </td>
   <td style="text-align:left;"> 27497 </td>
   <td style="text-align:left;"> 34158 </td>
   <td style="text-align:left;"> 30366 </td>
   <td style="text-align:left;"> 32158 </td>
   <td style="text-align:left;"> 20994 </td>
   <td style="text-align:left;"> 18622 </td>
   <td style="text-align:left;"> 17771 </td>
   <td style="text-align:left;"> 23005 </td>
   <td style="text-align:left;"> 23047 </td>
   <td style="text-align:left;"> 17257 </td>
   <td style="text-align:left;"> 25046 </td>
   <td style="text-align:left;"> 25655.9747070313 </td>
   <td style="text-align:left;"> 5904.46460003033 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 31 </td>
   <td style="text-align:left;"> 6.475 </td>
   <td style="text-align:left;"> 78.04411 </td>
   <td style="text-align:left;"> Unknown </td>
   <td style="text-align:left;"> [M+H]+ </td>
   <td style="text-align:left;"> found in higher mzs MsMs_249; similar chromatogram in higher mz_5324	0.7	False	null	null	null	null	null	null	999	False	False	False		False	False	null	null	null	null	null	null	null	21.49	W03.06	78.04411:3229 79.04746:1361 80.05082:350		10843	8826	11041	11348	7997	16365	4884	1587	10020	4732	1058	12399	14790	12039	15204	12830	13636	12303	14136	10540	10328.9157714844	4327.81468397417
32	1.249	79.05121	Unknown	[M+H]+	found in higher mzs MsMs_331; found in higher mzs MsMs_566; found in higher mzs MsMs_583; found in higher mzs MsMs_2150	0.5	False	null	null	null	null	null	null	999	False	False	False		False	False	null	null	null	null	null	null	null	12.78	W03.06	79.05121:3246 80.05456:3113 81.05792:9190		23007	22147	26309	21513	21936	29584	31932	13746	24104	27566	19689	20902	21020	19249	18449	19556	22945	22490	14452	22778	22168.7768066406	4420.78312304694
33	0.876	79.05251	Unknown	[M+H]+	found in higher mzs MsMs_2156; found in higher mzs MsMs_1404; found in higher mzs MsMs_2411; found in higher mzs MsMs_2223; found in higher mzs MsMs_958; found in higher mzs MsMs_1599; similar chromatogram in higher mz_601; found in higher mzs MsMs_1804; similar chromatogram in higher mz_736 </td>
   <td style="text-align:left;"> 0.85 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 999 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 24.57 </td>
   <td style="text-align:left;"> W03.03 </td>
   <td style="text-align:left;"> 79.05251:8761 80.05586:6196 81.05922:154539 </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> 22603 </td>
   <td style="text-align:left;"> 24916 </td>
   <td style="text-align:left;"> 43933 </td>
   <td style="text-align:left;"> 28178 </td>
   <td style="text-align:left;"> 29612 </td>
   <td style="text-align:left;"> 40566 </td>
   <td style="text-align:left;"> 38288 </td>
   <td style="text-align:left;"> 19989 </td>
   <td style="text-align:left;"> 32678 </td>
   <td style="text-align:left;"> 35056 </td>
   <td style="text-align:left;"> 25564 </td>
   <td style="text-align:left;"> 18717 </td>
   <td style="text-align:left;"> 23179 </td>
   <td style="text-align:left;"> 19861 </td>
   <td style="text-align:left;"> 14734 </td>
   <td style="text-align:left;"> 12505 </td>
   <td style="text-align:left;"> 20292 </td>
   <td style="text-align:left;"> 23838 </td>
   <td style="text-align:left;"> 12623 </td>
   <td style="text-align:left;"> 17919 </td>
   <td style="text-align:left;"> 25252.4870117187 </td>
   <td style="text-align:left;"> 9050.29104264045 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 34 </td>
   <td style="text-align:left;"> 1.502 </td>
   <td style="text-align:left;"> 80.04709 </td>
   <td style="text-align:left;"> Unknown </td>
   <td style="text-align:left;"> [M+H]+ </td>
   <td style="text-align:left;"> found in higher mzs MsMs_241	0.5	True	null	null	null	null	null	null	999	False	False	False		False	False	null	null	null	null	null	null	null	18.77	W03.06	80.04709:8302 81.05044:37760 82.0538:5554	27.02122:24 42.03402:24 53.03165:24 53.03574:200 78.02789:24 80.0481:1252	47774	36788	61703	100100	31202	112965	89751	38671	91981	54113	72168	49857	73580	36244	48679	51956	42168	66593	62099	23458	59592.583203125	24302.7037587157
35	6.485	80.04959	Unknown	[M+H]+	found in higher mzs MsMs_249; found in higher mzs MsMs_146; similar chromatogram in higher mz_5192; similar chromatogram in higher mz_5079	0.9	True	null	null	null	null	null	null	999	False	False	False		False	False	null	null	null	null	null	null	null	12.21	W03.01	80.04948:4995 81.05283:4992 82.05619:4003	53.01839:24 53.0378:73 80.04553:98	60530	41919	47298	45793	43601	71182	61565	61829	57759	22822	31735	57421	61176	58742	60118	67817	59299	67668	49818	54870	54148.1216796875	12250.4939892623
36	13.4	80.97187	Unknown	[M+H]+	found in higher mzs MsMs_623 </td>
   <td style="text-align:left;"> 0.95 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 999 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 24.01 </td>
   <td style="text-align:left;"> W30.09 </td>
   <td style="text-align:left;"> 80.97187:9407 81.97522:0 82.97858:221 </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> 106887 </td>
   <td style="text-align:left;"> 77255 </td>
   <td style="text-align:left;"> 74230 </td>
   <td style="text-align:left;"> 97915 </td>
   <td style="text-align:left;"> 88781 </td>
   <td style="text-align:left;"> 57018 </td>
   <td style="text-align:left;"> 67485 </td>
   <td style="text-align:left;"> 87236 </td>
   <td style="text-align:left;"> 107946 </td>
   <td style="text-align:left;"> 121047 </td>
   <td style="text-align:left;"> 9230 </td>
   <td style="text-align:left;"> 118694 </td>
   <td style="text-align:left;"> 53474 </td>
   <td style="text-align:left;"> 90190 </td>
   <td style="text-align:left;"> 105907 </td>
   <td style="text-align:left;"> 111621 </td>
   <td style="text-align:left;"> 80071 </td>
   <td style="text-align:left;"> 79307 </td>
   <td style="text-align:left;"> 146483 </td>
   <td style="text-align:left;"> 101831 </td>
   <td style="text-align:left;"> 89130.4934570312 </td>
   <td style="text-align:left;"> 29539.1721163162 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 37 </td>
   <td style="text-align:left;"> 3.103 </td>
   <td style="text-align:left;"> 81.04301 </td>
   <td style="text-align:left;"> Unknown </td>
   <td style="text-align:left;"> [M+H]+ </td>
   <td style="text-align:left;"> found in higher mzs MsMs_1113; found in higher mzs MsMs_1454 </td>
   <td style="text-align:left;"> 0.75 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 999 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 14.82 </td>
   <td style="text-align:left;"> W03.03 </td>
   <td style="text-align:left;"> 81.04301:51239 82.04636:35902 83.04972:31328 </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> 245711 </td>
   <td style="text-align:left;"> 476853 </td>
   <td style="text-align:left;"> 560724 </td>
   <td style="text-align:left;"> 437794 </td>
   <td style="text-align:left;"> 791578 </td>
   <td style="text-align:left;"> 217783 </td>
   <td style="text-align:left;"> 515005 </td>
   <td style="text-align:left;"> 508318 </td>
   <td style="text-align:left;"> 625319 </td>
   <td style="text-align:left;"> 402330 </td>
   <td style="text-align:left;"> 486815 </td>
   <td style="text-align:left;"> 230758 </td>
   <td style="text-align:left;"> 616656 </td>
   <td style="text-align:left;"> 448238 </td>
   <td style="text-align:left;"> 268555 </td>
   <td style="text-align:left;"> 502391 </td>
   <td style="text-align:left;"> 415904 </td>
   <td style="text-align:left;"> 515542 </td>
   <td style="text-align:left;"> 441558 </td>
   <td style="text-align:left;"> 323603 </td>
   <td style="text-align:left;"> 451571.66796875 </td>
   <td style="text-align:left;"> 145171.971145535 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 38 </td>
   <td style="text-align:left;"> 9.712 </td>
   <td style="text-align:left;"> 81.04366 </td>
   <td style="text-align:left;"> Unknown </td>
   <td style="text-align:left;"> [M+H]+ </td>
   <td style="text-align:left;"> found in higher mzs MsMs_270	1	False	null	null	null	null	null	null	999	False	False	False		False	False	null	null	null	null	null	null	null	7.08	W30.05	81.04366:10472 82.04701:6498 83.05037:2139		82180	139180	106074	94460	148091	180831	105700	182740	103462	126369	81818	80939	167492	97485	191691	175480	157196	126399	191328	108928	132392.279296875	39146.0692524197
39	1.287	81.04376	Unknown	[M+H]+	similar chromatogram in higher mz_4776; similar chromatogram in higher mz_4954; similar chromatogram in higher mz_4550; found in higher mzs MsMs_4759; similar chromatogram in higher mz_6094; found in higher mzs MsMs_4923; found in higher mzs MsMs_2521; similar chromatogram in higher mz_4529; found in higher mzs MsMs_4529; found in higher mzs MsMs_1745; similar chromatogram in higher mz_1018; similar chromatogram in higher mz_6113; found in higher mzs MsMs_1521; found in higher mzs MsMs_2209; found in higher mzs MsMs_2341; found in higher mzs MsMs_2033; found in higher mzs MsMs_1956; found in higher mzs MsMs_2814; similar chromatogram in higher mz_2089; similar chromatogram in higher mz_2394; similar chromatogram in higher mz_2573; similar chromatogram in higher mz_2660; similar chromatogram in higher mz_2795; similar chromatogram in higher mz_2814; similar chromatogram in higher mz_4728; similar chromatogram in higher mz_4743; similar chromatogram in higher mz_4759; similar chromatogram in higher mz_4761; similar chromatogram in higher mz_4794; similar chromatogram in higher mz_4945; similar chromatogram in higher mz_5623; similar chromatogram in higher mz_6005; similar chromatogram in higher mz_6295; similar chromatogram in higher mz_6385; found in higher mzs MsMs_1698; found in higher mzs MsMs_2795; found in higher mzs MsMs_1778; found in higher mzs MsMs_1971; found in higher mzs MsMs_3312; found in higher mzs MsMs_2607; similar chromatogram in higher mz_6135; similar chromatogram in higher mz_5327; found in higher mzs MsMs_2240; found in higher mzs MsMs_3165; similar chromatogram in higher mz_4275; similar chromatogram in higher mz_2111; similar chromatogram in higher mz_4181; similar chromatogram in higher mz_6002 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> True </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 999 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 56.45 </td>
   <td style="text-align:left;"> W30.01 </td>
   <td style="text-align:left;"> 81.04391:27982 82.04726:4268 83.05062:3381 </td>
   <td style="text-align:left;"> 29.01297:49 37.99877:24 38.0005:161 39.02331:49 40.0171:3335 54.03323:428 81.04242:49 </td>
   <td style="text-align:left;"> 201173 </td>
   <td style="text-align:left;"> 226192 </td>
   <td style="text-align:left;"> 206665 </td>
   <td style="text-align:left;"> 201428 </td>
   <td style="text-align:left;"> 180315 </td>
   <td style="text-align:left;"> 164659 </td>
   <td style="text-align:left;"> 190191 </td>
   <td style="text-align:left;"> 203881 </td>
   <td style="text-align:left;"> 230852 </td>
   <td style="text-align:left;"> 226365 </td>
   <td style="text-align:left;"> 156483 </td>
   <td style="text-align:left;"> 243848 </td>
   <td style="text-align:left;"> 261186 </td>
   <td style="text-align:left;"> 206485 </td>
   <td style="text-align:left;"> 280042 </td>
   <td style="text-align:left;"> 292376 </td>
   <td style="text-align:left;"> 227984 </td>
   <td style="text-align:left;"> 208836 </td>
   <td style="text-align:left;"> 216214 </td>
   <td style="text-align:left;"> 226223 </td>
   <td style="text-align:left;"> 217569.9640625 </td>
   <td style="text-align:left;"> 34265.5933815573 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 40 </td>
   <td style="text-align:left;"> 0.874 </td>
   <td style="text-align:left;"> 81.06825 </td>
   <td style="text-align:left;"> Unknown </td>
   <td style="text-align:left;"> [M+H]+ </td>
   <td style="text-align:left;"> found in higher mzs MsMs_2615; found in higher mzs MsMs_2156; found in higher mzs MsMs_1489; found in higher mzs MsMs_1404; similar chromatogram in higher mz_3347; found in higher mzs MsMs_2202; found in higher mzs MsMs_2411; found in higher mzs MsMs_2603; found in higher mzs MsMs_2182; found in higher mzs MsMs_2223; found in higher mzs MsMs_2788; found in higher mzs MsMs_2468; found in higher mzs MsMs_2809; similar chromatogram in higher mz_5119; found in higher mzs MsMs_1599; found in higher mzs MsMs_4796; found in higher mzs MsMs_2340; similar chromatogram in higher mz_1214; similar chromatogram in higher mz_3827; similar chromatogram in higher mz_3832; found in higher mzs MsMs_3677; found in higher mzs MsMs_1831; similar chromatogram in higher mz_2716; similar chromatogram in higher mz_5755; similar chromatogram in higher mz_1073; similar chromatogram in higher mz_4715; similar chromatogram in higher mz_3835; similar chromatogram in higher mz_1896; similar chromatogram in higher mz_2993; similar chromatogram in higher mz_2938; similar chromatogram in higher mz_1897; similar chromatogram in higher mz_5073; similar chromatogram in higher mz_3948; similar chromatogram in higher mz_3160; similar chromatogram in higher mz_2638; similar chromatogram in higher mz_4502; similar chromatogram in higher mz_4497; similar chromatogram in higher mz_3159; similar chromatogram in higher mz_6223; similar chromatogram in higher mz_3949; similar chromatogram in higher mz_4042; similar chromatogram in higher mz_1903; similar chromatogram in higher mz_5027; similar chromatogram in higher mz_3517; similar chromatogram in higher mz_5072; similar chromatogram in higher mz_3274; similar chromatogram in higher mz_3184; similar chromatogram in higher mz_5515; similar chromatogram in higher mz_6225; similar chromatogram in higher mz_2318; similar chromatogram in higher mz_4566; similar chromatogram in higher mz_4764; similar chromatogram in higher mz_6221; similar chromatogram in higher mz_2323; similar chromatogram in higher mz_3178; similar chromatogram in higher mz_5293; similar chromatogram in higher mz_3953; similar chromatogram in higher mz_4887; similar chromatogram in higher mz_2198; similar chromatogram in higher mz_2823; similar chromatogram in higher mz_4355; similar chromatogram in higher mz_4357; similar chromatogram in higher mz_6402; similar chromatogram in higher mz_4285; similar chromatogram in higher mz_3536; similar chromatogram in higher mz_1818; similar chromatogram in higher mz_6564; similar chromatogram in higher mz_811; similar chromatogram in higher mz_3191; similar chromatogram in higher mz_3328	0.95	True	null	null	null	null	null	null	999	False	False	False		False	False	null	null	null	null	null	null	null	53.9	W03.04	81.07053:30377 82.07388:4167 83.07724:3958	28.01833:98 31.99086:24 38.00316:188 40.01805:4560 41.02795:49 53.01122:49 54.03331:700 81.04756:49	136198	144491	292405	128819	154240	261143	276349	97818	169661	174282	159327	87762	123985	120602	50454	57389	123555	120502	57866	107928	142238.908398437	67898.4593649895
41	11.584	83.05811	Unknown	[M+H]+	found in higher mzs MsMs_170; found in higher mzs MsMs_1497; found in higher mzs MsMs_165 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> True </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 999 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 40.52 </td>
   <td style="text-align:left;"> W03.01 </td>
   <td style="text-align:left;"> 83.06063:23882 84.06398:2196 85.06734:1309 </td>
   <td style="text-align:left;"> 42.03316:2585 43.70182:21 83.05898:24 </td>
   <td style="text-align:left;"> 405479 </td>
   <td style="text-align:left;"> 364898 </td>
   <td style="text-align:left;"> 376771 </td>
   <td style="text-align:left;"> 377526 </td>
   <td style="text-align:left;"> 332098 </td>
   <td style="text-align:left;"> 370673 </td>
   <td style="text-align:left;"> 387048 </td>
   <td style="text-align:left;"> 409005 </td>
   <td style="text-align:left;"> 394663 </td>
   <td style="text-align:left;"> 352762 </td>
   <td style="text-align:left;"> 308577 </td>
   <td style="text-align:left;"> 381957 </td>
   <td style="text-align:left;"> 415044 </td>
   <td style="text-align:left;"> 389459 </td>
   <td style="text-align:left;"> 373774 </td>
   <td style="text-align:left;"> 367205 </td>
   <td style="text-align:left;"> 398131 </td>
   <td style="text-align:left;"> 390207 </td>
   <td style="text-align:left;"> 379175 </td>
   <td style="text-align:left;"> 341550 </td>
   <td style="text-align:left;"> 375800.1046875 </td>
   <td style="text-align:left;"> 26465.083775056 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 42 </td>
   <td style="text-align:left;"> 2.474 </td>
   <td style="text-align:left;"> 83.0588 </td>
   <td style="text-align:left;"> Unknown </td>
   <td style="text-align:left;"> [M+H]+ </td>
   <td style="text-align:left;"> found in higher mzs MsMs_2208	0.6	False	null	null	null	null	null	null	999	False	False	False		False	False	null	null	null	null	null	null	null	19.78	W30.05	83.0588:43887 84.06215:1873 85.06551:644		485716	398397	541415	162960	330419	517198	826186	514407	809281	431437	596040	467593	460871	266567	1103396	576708	790756	346316	549853	337744	525662.965625	220277.064203634
43	10.991	83.05886	Unknown	[M+H]+	found in higher mzs MsMs_299; found in higher mzs MsMs_589; found in higher mzs MsMs_835 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> True </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 999 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 10.88 </td>
   <td style="text-align:left;"> W03.03 </td>
   <td style="text-align:left;"> 83.0581:8206 84.06145:581 85.06481:864 </td>
   <td style="text-align:left;"> 42.03218:5497 54.03019:49 54.03947:24 83.06153:49 </td>
   <td style="text-align:left;"> 73111 </td>
   <td style="text-align:left;"> 77403 </td>
   <td style="text-align:left;"> 88874 </td>
   <td style="text-align:left;"> 97629 </td>
   <td style="text-align:left;"> 79424 </td>
   <td style="text-align:left;"> 94653 </td>
   <td style="text-align:left;"> 90501 </td>
   <td style="text-align:left;"> 97624 </td>
   <td style="text-align:left;"> 125690 </td>
   <td style="text-align:left;"> 87636 </td>
   <td style="text-align:left;"> 42741 </td>
   <td style="text-align:left;"> 113178 </td>
   <td style="text-align:left;"> 64660 </td>
   <td style="text-align:left;"> 94912 </td>
   <td style="text-align:left;"> 120145 </td>
   <td style="text-align:left;"> 108099 </td>
   <td style="text-align:left;"> 93163 </td>
   <td style="text-align:left;"> 95565 </td>
   <td style="text-align:left;"> 110675 </td>
   <td style="text-align:left;"> 89738 </td>
   <td style="text-align:left;"> 92270.952734375 </td>
   <td style="text-align:left;"> 19212.4068778317 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 44 </td>
   <td style="text-align:left;"> 12.193 </td>
   <td style="text-align:left;"> 83.05902 </td>
   <td style="text-align:left;"> Unknown </td>
   <td style="text-align:left;"> [M+H]+ </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> 0.7 </td>
   <td style="text-align:left;"> True </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 999 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 13.41 </td>
   <td style="text-align:left;"> W03.10 </td>
   <td style="text-align:left;"> 83.06035:18869 84.0637:10814 85.06706:3614 </td>
   <td style="text-align:left;"> 42.02855:24 42.03309:4222 56.0437:24 </td>
   <td style="text-align:left;"> 228061 </td>
   <td style="text-align:left;"> 226721 </td>
   <td style="text-align:left;"> 133224 </td>
   <td style="text-align:left;"> 189963 </td>
   <td style="text-align:left;"> 233236 </td>
   <td style="text-align:left;"> 250131 </td>
   <td style="text-align:left;"> 344140 </td>
   <td style="text-align:left;"> 321431 </td>
   <td style="text-align:left;"> 302994 </td>
   <td style="text-align:left;"> 252366 </td>
   <td style="text-align:left;"> 19748 </td>
   <td style="text-align:left;"> 307215 </td>
   <td style="text-align:left;"> 313804 </td>
   <td style="text-align:left;"> 423197 </td>
   <td style="text-align:left;"> 559147 </td>
   <td style="text-align:left;"> 466750 </td>
   <td style="text-align:left;"> 193967 </td>
   <td style="text-align:left;"> 335135 </td>
   <td style="text-align:left;"> 517406 </td>
   <td style="text-align:left;"> 211637 </td>
   <td style="text-align:left;"> 291513.703515625 </td>
   <td style="text-align:left;"> 129194.217116536 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 45 </td>
   <td style="text-align:left;"> 8.67 </td>
   <td style="text-align:left;"> 84.0421 </td>
   <td style="text-align:left;"> Unknown </td>
   <td style="text-align:left;"> [M+H]+ </td>
   <td style="text-align:left;"> similar chromatogram in higher mz_1095; found in higher mzs MsMs_1095; similar chromatogram in higher mz_904; found in higher mzs MsMs_904; similar chromatogram in higher mz_750; found in higher mzs MsMs_750; similar chromatogram in higher mz_2508; similar chromatogram in higher mz_940; similar chromatogram in higher mz_1363; similar chromatogram in higher mz_2897; found in higher mzs MsMs_2897; found in higher mzs MsMs_442	1	True	null	null	null	null	null	null	999	False	False	False		False	False	null	null	null	null	null	null	null	24.34	W03.08	84.04245:4742 85.0458:3564 86.04916:1533	27.02228:6 39.02199:33 41.03732:94 42.03353:447 43.03526:55 43.05274:53 53.01273:3 56.04951:9	20520	24524	21997	18156	29794	22657	28633	26084	22501	25825	6492	38623	21061	31032	28578	33731	28939	31194	30576	31139	26102.7930908203	6856.83464735485
46	12.206	84.04248	Unknown	[M+H]+	found in higher mzs MsMs_452; found in higher mzs MsMs_307; found in higher mzs MsMs_3886; found in higher mzs MsMs_105; found in higher mzs MsMs_1384 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> True </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 999 </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> False </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> null </td>
   <td style="text-align:left;"> 215.7 </td>
   <td style="text-align:left;"> W03.02 </td>
   <td style="text-align:left;"> 84.0452:44332 85.04855:4622 86.05191:855 </td>
   <td style="text-align:left;"> 27.00958:24 29.01525:49 30.03349:24 41.03508:73 42.034:122 43.05321:73 56.04264:24 56.04684:98 66.03092:21 84.04484:49 </td>
   <td style="text-align:left;"> 282380 </td>
   <td style="text-align:left;"> 336170 </td>
   <td style="text-align:left;"> 285536 </td>
   <td style="text-align:left;"> 355917 </td>
   <td style="text-align:left;"> 365456 </td>
   <td style="text-align:left;"> 263255 </td>
   <td style="text-align:left;"> 374506 </td>
   <td style="text-align:left;"> 480192 </td>
   <td style="text-align:left;"> 287161 </td>
   <td style="text-align:left;"> 416396 </td>
   <td style="text-align:left;"> 24524 </td>
   <td style="text-align:left;"> 329591 </td>
   <td style="text-align:left;"> 242058 </td>
   <td style="text-align:left;"> 322418 </td>
   <td style="text-align:left;"> 397668 </td>
   <td style="text-align:left;"> 431040 </td>
   <td style="text-align:left;"> 354598 </td>
   <td style="text-align:left;"> 306617 </td>
   <td style="text-align:left;"> 401446 </td>
   <td style="text-align:left;"> 379258 </td>
   <td style="text-align:left;"> 331809.394628906 </td>
   <td style="text-align:left;"> 94316.6545169962 </td>
  </tr>
</tbody>
</table></div>




```r
data("msdial_table")
object =
   convert_msdial2mass_dataset(x = msdial_table)
object
#> -------------------- 
#> massdataset version: 1.0.25 
#> -------------------- 
#> 1.expression_data:[ 3751 x 20 data.frame]
#> 2.sample_info:[ 20 x 5 data.frame]
#> 20 samples:W03.01 W03.02 W03.03 ... W30.09 W30.10
#> 3.variable_info:[ 3751 x 32 data.frame]
#> 3751 variables:0 1 2 ... 6716 6717
#> 4.sample_info_note:[ 5 x 2 data.frame]
#> 5.variable_info_note:[ 32 x 2 data.frame]
#> 6.ms2_data:[ 0 variables x 0 MS2 spectra]
#> -------------------- 
#> Processing information
#> 1 processings in total
#> create_mass_dataset ---------- 
#>       Package                 Function.used                Time
#> 1 massdataset convert_msdial2mass_dataset() 2023-09-03 10:28:20
```

## Session information


```r
sessionInfo()
#> R version 4.3.0 (2023-04-21)
#> Platform: x86_64-apple-darwin20 (64-bit)
#> Running under: macOS Ventura 13.5.1
#> 
#> Matrix products: default
#> BLAS:   /Library/Frameworks/R.framework/Versions/4.3-x86_64/Resources/lib/libRblas.0.dylib 
#> LAPACK: /Library/Frameworks/R.framework/Versions/4.3-x86_64/Resources/lib/libRlapack.dylib;  LAPACK version 3.11.0
#> 
#> locale:
#> [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
#> 
#> time zone: America/Los_Angeles
#> tzcode source: internal
#> 
#> attached base packages:
#> [1] stats     graphics  grDevices utils     datasets  methods   base     
#> 
#> other attached packages:
#> [1] kableExtra_1.3.4   ggplot2_3.4.2      dplyr_1.1.2        magrittr_2.0.3    
#> [5] masstools_1.0.10   massdataset_1.0.25
#> 
#> loaded via a namespace (and not attached):
#>   [1] bitops_1.0-7                pbapply_1.7-0              
#>   [3] remotes_2.4.2               rlang_1.1.1                
#>   [5] clue_0.3-64                 GetoptLong_1.0.5           
#>   [7] matrixStats_1.0.0           compiler_4.3.0             
#>   [9] systemfonts_1.0.4           png_0.1-8                  
#>  [11] vctrs_0.6.2                 rvest_1.0.3                
#>  [13] stringr_1.5.0               ProtGenerics_1.32.0        
#>  [15] pkgconfig_2.0.3             shape_1.4.6                
#>  [17] crayon_1.5.2                fastmap_1.1.1              
#>  [19] XVector_0.40.0              utf8_1.2.3                 
#>  [21] rmarkdown_2.22              tzdb_0.4.0                 
#>  [23] preprocessCore_1.62.1       purrr_1.0.1                
#>  [25] xfun_0.39                   zlibbioc_1.46.0            
#>  [27] cachem_1.0.8                GenomeInfoDb_1.36.0        
#>  [29] jsonlite_1.8.5              highr_0.10                 
#>  [31] DelayedArray_0.26.3         BiocParallel_1.34.2        
#>  [33] parallel_4.3.0              cluster_2.1.4              
#>  [35] R6_2.5.1                    stringi_1.7.12             
#>  [37] bslib_0.5.0                 RColorBrewer_1.1-3         
#>  [39] limma_3.56.2                GenomicRanges_1.52.0       
#>  [41] jquerylib_0.1.4             Rcpp_1.0.10                
#>  [43] bookdown_0.34               SummarizedExperiment_1.30.2
#>  [45] iterators_1.0.14            knitr_1.43                 
#>  [47] readr_2.1.4                 IRanges_2.34.0             
#>  [49] Matrix_1.5-4                tidyselect_1.2.0           
#>  [51] rstudioapi_0.14             yaml_2.3.7                 
#>  [53] doParallel_1.0.17           codetools_0.2-19           
#>  [55] affy_1.78.0                 blogdown_1.18.1            
#>  [57] lattice_0.21-8              tibble_3.2.1               
#>  [59] plyr_1.8.8                  withr_2.5.0                
#>  [61] Biobase_2.60.0              evaluate_0.21              
#>  [63] xml2_1.3.4                  zip_2.3.0                  
#>  [65] circlize_0.4.15             pillar_1.9.0               
#>  [67] affyio_1.70.0               BiocManager_1.30.21        
#>  [69] MatrixGenerics_1.12.2       foreach_1.5.2              
#>  [71] stats4_4.3.0                MSnbase_2.26.0             
#>  [73] MALDIquant_1.22.1           ncdf4_1.21                 
#>  [75] generics_0.1.3              rprojroot_2.0.3            
#>  [77] RCurl_1.98-1.12             hms_1.1.3                  
#>  [79] S4Vectors_0.38.1            munsell_0.5.0              
#>  [81] scales_1.2.1                glue_1.6.2                 
#>  [83] tools_4.3.0                 mzID_1.38.0                
#>  [85] vsn_3.68.0                  mzR_2.34.0                 
#>  [87] webshot_0.5.5               openxlsx_4.2.5.2           
#>  [89] XML_3.99-0.14               grid_4.3.0                 
#>  [91] impute_1.74.1               tidyr_1.3.0                
#>  [93] MsCoreUtils_1.12.0          colorspace_2.1-0           
#>  [95] GenomeInfoDbData_1.2.10     cli_3.6.1                  
#>  [97] fansi_1.0.4                 viridisLite_0.4.2          
#>  [99] S4Arrays_1.0.4              svglite_2.1.1              
#> [101] ComplexHeatmap_2.16.0       pcaMethods_1.92.0          
#> [103] gtable_0.3.3                sass_0.4.6                 
#> [105] digest_0.6.31               BiocGenerics_0.46.0        
#> [107] rjson_0.2.21                htmltools_0.5.5            
#> [109] lifecycle_1.0.3             httr_1.4.6                 
#> [111] here_1.0.1                  GlobalOptions_0.1.2        
#> [113] Rdisop_1.60.0               MASS_7.3-58.4
```
