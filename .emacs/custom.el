(custom-set-variables
 '(auto-save-directory nil)
 '(auto-save-interval 150)
 '(bkup-backup-directory-info (quote ((".*" ".emacs_backup_dir" ok-create))) nil (backup-dir))
 '(column-number-mode t)
 '(default-toolbar-position (quote top))
 '(delete-key-deletes-forward t)
 '(ediff-grab-mouse t)
 '(ediff-prefer-iconified-control-frame t)
 '(ediff-use-toolbar-p t)
 '(ediff-window-setup-function (quote ediff-setup-windows-plain))
 '(find-file-run-dired t)
 '(line-number-mode t)
 '(lpr-switches nil t)
 '(modeline-scrolling-method (quote scrollbar))
 '(mouse-yank-at-point nil)
 '(paren-mode (quote sexp) nil (paren))
 '(query-user-mail-address nil)
 '(recent-files-number-of-entries 25)
 '(shell-completion-execonly nil)
 '(speedbar-supported-extension-expressions (quote ("\\.v?\\'" "\\.v$" "\\.vhdl?\\'" "\\.vhd$" "\\.vhdl$" ".[ch]\\(\\+\\+\\|pp\\|c\\|h\\|xx\\)?" ".tex\\(i\\(nfo\\)?\\)?" ".el" ".emacs" ".l" ".lsp" ".p" ".java" ".f\\(90\\|77\\|or\\)?" ".ada" ".p[lm]" ".tcl" ".m" ".scm" ".pm" ".py" ".s?html" "[Mm]akefile\\(\\.in\\)?")))
 '(speedbar-tag-hierarchy-method (quote (speedbar-trim-words-tag-hierarchy speedbar-prefix-group-tag-hierarchy speedbar-sort-tag-hierarchy)))
 '(truncate-lines t)
 '(user-mail-address "dwhill@rockwellcollins.com")
 '(verilog-compiler " $EDATOOLDIR/vhdl/$EDATOOLLEVEL/bin/mtiverilogcomp.perl -fwparmfile $EDADATAPATH/bluelight/dev/.fwparms/mtivlog.fwparms -fwcontext mtiverilogcomp")
 '(vhdl-company-name " <address>
-- ROCKWELL COLLINS, INC.
-- 400 COLLINS ROAD NE
-- CEDAR RAPIDS, IA  52498
-- </address>")
 '(vhdl-compiler-alist (quote (("Cadence Leapfrog" "cv" "-explicit -work \\1 -file" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "leapfrog" ("duluth: \\*E,[0-9]+ (\\(.+\\),\\([0-9]+\\)):" 1 2 0) ("" 0) ("\\1/entity" "\\2/\\1" "\\1/configuration" "\\1/package" "\\1/body" downcase)) ("Cadence NC" "ncvhdl" "-work \\1" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "ncvhdl" ("ncvhdl_p: \\*E,\\w+ (\\(.+\\),\\([0-9]+\\)|[0-9]+):" 1 2 0) ("" 0) nil) ("Ikos" "analyze" "-l \\1" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "ikos" ("E L\\([0-9]+\\)/C[0-9]+:" 0 1 0) ("^analyze +\\(.+ +\\)*\\(.+\\)$" 2) nil) ("ModelSim" "vcom" "-93 -bindAtCompile -work \\1" "make" "-f \\1" nil "vlib \\1; vmap \\2 \\1" "./" "/gsadc_vobs/hms/sim/" "Makefile" "modelsim" ("\\(ERROR\\|WARNING\\|\\*\\* Error\\|\\*\\* Warning\\)[^:]*: \\(.+\\)(\\([0-9]+\\)):" 2 3 0) ("" 0) ("\\1/_primary.dat" "\\2/\\1.dat" "\\1/_primary.dat" "\\1/_primary.dat" "\\1/body.dat" downcase)) ("LEDA ProVHDL" "provhdl" "-w \\1 -f" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "provhdl" ("\\([^ 	
]+\\):\\([0-9]+\\): " 1 2 0) ("" 0) ("ENTI/\\1.vif" "ARCH/\\1-\\2.vif" "CONF/\\1.vif" "PACK/\\1.vif" "BODY/BODY-\\1.vif" upcase)) ("QuickHDL" "qvhcom" "-work \\1" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "quickhdl" ("\\(ERROR\\|WARNING\\)[^:]*: \\(.+\\)(\\([0-9]+\\)):" 2 3 0) ("" 0) ("\\1/_primary.dat" "\\2/\\1.dat" "\\1/_primary.dat" "\\1/_primary.dat" "\\1/body.dat" downcase)) ("Savant" "scram" "-publish-cc -design-library-name \\1" "make" "-f \\1" nil "mkdir \\1" "./" "work._savant_lib/" "Makefile" "savant" ("\\([^ 	
]+\\):\\([0-9]+\\): " 1 2 0) ("" 0) ("\\1_entity.vhdl" "\\2_secondary_units._savant_lib/\\2_\\1.vhdl" "\\1_config.vhdl" "\\1_package.vhdl" "\\1_secondary_units._savant_lib/\\1_package_body.vhdl" downcase)) ("Synopsys" "vhdlan" "-nc -work \\1" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "synopsys" ("\\*\\*Error: vhdlan,[0-9]+ \\(.+\\)(\\([0-9]+\\)):" 1 2 0) ("" 0) ("\\1.sim" "\\2__\\1.sim" "\\1.sim" "\\1.sim" "\\1__.sim" upcase)) ("Synopsys Design Compiler" "vhdlan" "-nc -spc -work \\1" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "synopsys_dc" ("\\*\\*Error: vhdlan,[0-9]+ \\(.+\\)(\\([0-9]+\\)):" 1 2 0) ("" 0) ("\\1.syn" "\\2__\\1.syn" "\\1.syn" "\\1.syn" "\\1__.syn" upcase)) ("Vantage" "analyze" "-libfile vsslib.ini -src" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "vantage" ("\\*\\*Error: LINE \\([0-9]+\\) \\*\\*\\*" 0 1 0) ("^ *Compiling \"\\(.+\\)\" " 1) nil) ("VeriBest" "vc" "vhdl" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "veribest" ("^ +\\([0-9]+\\): +[^ ]" 0 1 0) ("" 0) nil) ("Viewlogic" "analyze" "-libfile vsslib.ini -src" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "viewlogic" ("\\*\\*Error: LINE \\([0-9]+\\) \\*\\*\\*" 0 1 0) ("^ *Compiling \"\\(.+\\)\" " 1) nil))))
 '(vhdl-compose-create-files (quote separate))
 '(vhdl-conditions-in-parenthesis t)
 '(vhdl-copyright-string "-- <copyright_statement>
-- � COPYRIGHT 2010  ROCKWELL COLLINS, INC.
-- </copyright_statement>
-- <rights>
-- ALL RIGHTS RESERVED.
-- </rights>
")
 '(vhdl-file-header "--------------------------------------------------------------------------------
<copyright>
--
-- <company>
--  
-- <authors>
-- Author   : David Hill ( <author> )
-- </authors>
--  
-- FILENAME : <filename>
--
-- Created    : <date>
-- Last update: <date>
--  
-- Title      : <title string>
-- Project    : <project>
-- <description>
-- Description: <cursor>
-- </description>
--
-- <change_log>
-- Revisions  : --<RCS>Log<RCS>--
-- -- Date        Version  Author  Description
--
-- <date>  1.0      <login>	Created--  
-- </change_log>
--
--------------------------------------------------------------------------------
--
--------------------------------------------------------------------------------
-- Libraries:
")
 '(vhdl-highlight-forbidden-words t)
 '(vhdl-highlight-special-words t)
 '(vhdl-include-direction-comments t)
 '(vhdl-include-group-comments (quote always))
 '(vhdl-include-port-comments t)
 '(vhdl-include-type-comments nil)
 '(vhdl-insert-empty-lines (quote all))
 '(vhdl-optional-labels (quote all))
 '(vhdl-project "JPALS")
 '(vhdl-project-alist (quote (("Common Core_WFF" "Common Core Elements CCE" "/rfs/proj/gs_adcnas1_exrestricted/dwhill/common_core/SANR/modem/wff/src/" ("-r ./*" "-r ../../../common/src/*") "" nil "./" "wff_dsn" "../sim/" "makefile" "") ("Common_Core_Muos_Proto_pff" "Common_Core_Muos_Proto_pff" "/rfs/proj/gs_adcnas1_exrestricted/dwhill/common_core/muos_proto/" ("-r ./*") "" nil "./modem/pff/src/" "pff_dsn" "./modem/pff/sim/dsn/" "makefile" "") ("ARC210 MUOS MODEM" "ARC210 MUOS MODEM" "/rfs/proj/gs_adcnas1_exrestricted/dwhill/arc210_muos/modem/" ("-r ./*") "archive" nil "/rfs/proj/gs_adcnas1_exrestricted/dwhill/arc210_muos/modem/pff/src/tb/" "pff_dsn" "./pff/sim/" "Makefile" "") ("2channel ARC 210" "" "/rfs/proj/gs_adcnas1_exrestricted/dwhill/arc210-2ch/" ("-r ./src/cic/*" "-r ./src/dsn/*" "-r ./src/fir/*" "-r ./src/interpolator/*" "-r ./src/legacy_coproc_fpga/*" "-r ./src/legacy_core_fpga/*" "-r ./src/mhal_fpga/*" "-r ./src/rc/*" "-r ./src/sample_chain/*" "-r ./src/srw_wf/*") "Stratix" nil "./verification/src/tb/" "srw_dsn" "./sim/" "Makefile" "") ("TTNT_QDR" "TTNT_QDR" "/rfs/proj/gs_adcnas1_exrestricted/dwhill/ttnt/1.2_FPGA/qdr_if/" ("./src/dsn/" "./qdr_bit/src/dsn/" "./rd_datapath/src/dsn/" "./wr_datapath/src/dsn/" "./common/src/dsn/" "./qdr_ctlr/src/dsn/") "" nil "./" "qdr_if_dsn" "./sim/qdr_if_dsn/" "Makefile" "") ("JPALS_WINDOWS" "JPALS_MS_PROJ" "K:/jpals_fpga/ExportRestricted/jpals/views/dwhill/jpals/" ("./diu_fpga/docs/headers/" "./interface_fpga/docs/headers/" "./sis_fpga/viterbi/src/dsn/" "./interface_fpga/src/dsn/" "./interface_fpga/src/tb/" "./legacy_core_fpga/coremodem_core/gpmc_subsys/src/dsn/" "./legacy_core_fpga/coremodem_core/link4a_piso/src/dsn/" "./legacy_core_fpga/coremodem_core/maximas_legacy/src/dsn/" "./legacy_core_fpga/coremodem_core/nbdither/src/dsn/" "./legacy_core_fpga/coremodem_core/phoebe_legacy/src/dsn/" "./legacy_core_fpga/coremodem_core/phoebe_legacy/src/tb/" "./legacy_core_fpga/coremodem_core/readmuxes/src/dsn/" "./legacy_core_fpga/coremodem_core/saturn_legacy/src/dsn/" "./legacy_core_fpga/coremodem_core/saxon_legacy/src/dsn/" "./legacy_core_fpga/coremodem_core/uif_subsys/src/dsn/" "./legacy_core_fpga/coremodem_core/waveshape_sm/src/dsn/" "./legacy_core_fpga/src/dsn/" "./legacy_core_fpga/src/dsn/megafunctions/" "./legacy_core_fpga/src/tb/" "./sis_fpga/src/dsn/" "./sis_fpga/src/tb/" "./" "./" "./" "./" "./") "" nil "./" "mhal_dsn" "./interface_fpga/sim/" "Makefile" "") ("JPALS" "JPALS_PROJ" "/rfs/proj/jpals_fpga_exrestricted/jpals/views/dwhill/jpals/" ("./diu_fpga/docs/headers/" "./sis_fpga/viterbi/src/dsn/" "./interface_fpga/src/dsn/" "./legacy_core_fpga/coremodem_core/gpmc_subsys/src/dsn/" "./legacy_core_fpga/coremodem_core/link4a_piso/src/dsn/" "./legacy_core_fpga/coremodem_core/maximas_legacy/src/dsn/" "./legacy_core_fpga/coremodem_core/nbdither/src/dsn/" "./legacy_core_fpga/coremodem_core/phoebe_legacy/src/dsn/" "./legacy_core_fpga/coremodem_core/phoebe_legacy/src/tb/" "./legacy_core_fpga/coremodem_core/readmuxes/src/dsn/" "./legacy_core_fpga/coremodem_core/saturn_legacy/src/dsn/" "./legacy_core_fpga/coremodem_core/saxon_legacy/src/dsn/" "./legacy_core_fpga/coremodem_core/uif_subsys/src/dsn/" "./legacy_core_fpga/coremodem_core/waveshape_sm/src/dsn/" "./legacy_core_fpga/src/dsn/" "./legacy_core_fpga/src/dsn/megafunctions/" "./legacy_core_fpga/src/tb/" "./sis_fpga/src/dsn/" "./sis_fpga/src/tb/" "./sis_fpga/aes_core/src/dsn/" "./interface_fpga/src/dsn/megawizard_cores/" "./sis_fpga/sample_chain/src/dsn/" "./legacy_core_fpga/src/dsn/switch_ip/sw_p3a/SC/src/dv/" "./legacy_core_fpga/src/dsn/switch_ip/sw_p3a/SC/src/packages/" "./legacy_core_fpga/src/dsn/switch_ip/sw_p3a/SC/src/slink_core/c_interface/c_memory_manager/" "./legacy_core_fpga/src/dsn/switch_ip/sw_p3a/SC/src/slink_core/c_interface/cam/" "./legacy_core_fpga/src/dsn/switch_ip/sw_p3a/SC/src/slink_core/c_interface/switch_manager/traffic_police/token_manager/multiplier/" "./legacy_core_fpga/src/dsn/switch_ip/sw_p3a/SC/src/slink_core/c_interface/switch_manager/traffic_police/token_manager/" "./legacy_core_fpga/src/dsn/switch_ip/sw_p3a/SC/src/slink_core/c_interface/switch_manager/traffic_police/" "./legacy_core_fpga/src/dsn/switch_ip/sw_p3a/SC/src/slink_core/c_interface/switch_manager/sc_counters/true_dual_port_ram-stratixii.vhd		   " "./legacy_core_fpga/src/dsn/switch_ip/sw_p3a/SC/src/slink_core/c_interface/switch_manager/" "./legacy_core_fpga/src/dsn/switch_ip/sw_p3a/SC/src/slink_core/c_interface/switch_timer/" "./legacy_core_fpga/src/dsn/switch_ip/sw_p3a/SC/src/slink_core/c_interface/ramcam/cam_element-stratixii.vhd					   " "./legacy_core_fpga/src/dsn/switch_ip/sw_p3a/SC/src/slink_core/c_interface/" "./legacy_core_fpga/src/dsn/switch_ip/sw_p3a/SC/src/slink_core/l_interface/slave_controller/" "./legacy_core_fpga/src/dsn/switch_ip/sw_p3a/SC/src/slink_core/l_interface/switch_register/" "./legacy_core_fpga/src/dsn/switch_ip/sw_p3a/SC/src/slink_core/s_interface/frame_manager/dual_port_2w1r_ram/" "./legacy_core_fpga/src/dsn/switch_ip/sw_p3a/SC/src/slink_core/s_interface/frame_manager/table_busy_manager/" "./legacy_core_fpga/src/dsn/switch_ip/sw_p3a/SC/src/slink_core/s_interface/frame_manager/" "./legacy_core_fpga/src/dsn/switch_ip/sw_p3a/SC/src/slink_core/s_interface/memory_manager/" "./legacy_core_fpga/src/dsn/switch_ip/sw_p3a/SC/src/slink_core/s_interface/port_arbiter/robin_arbiter/smpl_pe/" "./legacy_core_fpga/src/dsn/switch_ip/sw_p3a/SC/src/slink_core/s_interface/port_arbiter/robin_arbiter/" "./legacy_core_fpga/src/dsn/switch_ip/sw_p3a/SC/src/slink_core/s_interface/port_arbiter/" "./legacy_core_fpga/src/dsn/switch_ip/sw_p3a/SC/src/slink_core/s_interface/queue_manager/fifo/" "./legacy_core_fpga/src/dsn/switch_ip/sw_p3a/SC/src/slink_core/s_interface/queue_manager/" "./legacy_core_fpga/src/dsn/switch_ip/sw_p3a/SC/src/slink_core/" "./legacy_core_fpga/src/dsn/switch_ip/sw_p3a/SC/src/tb/" "./legacy_core_fpga/src/dsn/switch_ip/sw_p3a/SC/src/" "-r ./legacy_core_fpga/src/dsn/switch_ip/*/" "") "" nil "./verification/src/tb/" "mhal_dsn" "./interface_fpga/sim/" "Makefile" "") ("HMS_SATCOM_SNAPSHOT" "HMS_SATCOM_SNAPSHOT_PROJECT" "/rfs/proj/gs_adcnas7_exrestricted/dwhill/dwhill_hms_satcom_snapshot_view/" ("./" "./cic/src/dsn/" "./fir/src/dsn/" "./hms/GD/gd_project_dir/cl5_fpga/Rockwell_MHAL/RCI_FPGA_Drop5/hms/common/RAMS/fifo_async_clk/" "./hms/GD/gd_project_dir/cl5_fpga/Rockwell_MHAL/RCI_FPGA_Drop5/hms/common/RAMS/fifo_sync_clk/" "./hms/GD/gd_project_dir/cl5_fpga/Rockwell_MHAL/RCI_FPGA_Drop5/hms/common/RAMS/sync_mem_1r1w/" "./hms/GD/gd_project_dir/cl5_fpga/Rockwell_MHAL/RCI_FPGA_Drop5/hms/fpga_core/mhal_interface/agc_interface/src/dsn/" "./hms/GD/gd_project_dir/cl5_fpga/Rockwell_MHAL/RCI_FPGA_Drop5/hms/fpga_core/mhal_interface/pdi_interface/src/dsn/" "./hms/GD/gd_project_dir/cl5_fpga/Rockwell_MHAL/RCI_FPGA_Drop5/hms/fpga_core/mhal_interface/if_interface/src/dsn/" "./hms/GD/gd_project_dir/cl5_fpga/Rockwell_MHAL/RCI_FPGA_Drop5/hms/fpga_core/mhal_interface/ppi_interface/src/dsn/" "./hms/GD/gd_project_dir/cl5_fpga/Rockwell_MHAL/RCI_FPGA_Drop5/hms/fpga_core/mhal_interface/src/dsn/" "./hms/GD/gd_project_dir/cl5_fpga/Rockwell_MHAL/RCI_FPGA_Drop5/hms/fpga_core/mhal_interface/timer/src/dsn/" "./hms/GD/gd_project_dir/cl5_fpga/INFRASTRUCTURE/SRC/GPPSPI_DSPSPI/" "./hms/GD/gd_project_dir/cl5_fpga/INFRASTRUCTURE/SRC/RCVRD_CLK/" "./hms/GD/gd_project_dir/cl5_fpga/INFRASTRUCTURE/SRC/Generic_memory/" "./hms/GD/gd_project_dir/cl5_fpga/INFRASTRUCTURE/SRC/PRI_COM/" "./hms/GD/gd_project_dir/cl5_fpga/INFRASTRUCTURE/SRC/PRI_PER/" "./hms/GD/gd_project_dir/cl5_fpga/INFRASTRUCTURE/SRC/PRI_TOP_CORE/" "./hms/GD/gd_project_dir/cl5_fpga/INFRASTRUCTURE/SRC/PRI_WVFM_IF/" "./hms/GD/gd_project_dir/cl5_fpga/INFRASTRUCTURE/SRC/T1C/" "./hms/GD/gd_project_dir/cl5_fpga/INFRASTRUCTURE/SRC/T1C/SRC/" "./hms/GD/gd_project_dir/cl5_fpga/INFRASTRUCTURE/SRC/PRI_WVFM_TEST/" "./hms/GD/gd_project_dir/cl5_fpga/INFRASTRUCTURE/SRC/VLIO/" "./hms/GD/gd_project_dir/cl5_fpga/INFRASTRUCTURE/SRC/AGC/" "./hms/GD/gd_project_dir/cl5_fpga/INFRASTRUCTURE/SRC/REI/" "./hms/GD/gd_project_dir/cl5_fpga/Rockwell_MHAL/RCI_FPGA_Drop5/hms/mhal_comm_nodes/src/dsn/" "./hms/GD/gd_project_dir/cl5_fpga/Rockwell_MHAL/RCI_FPGA_Drop5/jtrs/mhal_fpga/Source_Code/fpga/adc_interface/src/dsn/" "./hms/GD/gd_project_dir/cl5_fpga/Rockwell_MHAL/RCI_FPGA_Drop5/jtrs/mhal_fpga/Source_Code/fpga/dac_interface/src/dsn/" "./interpolator/src/dsn/" "./jtrs/veh_adapter/ut/modem/wf_fpga/" "./jtrs/veh_adapter/ut/modem/wf_fpga/common/mhal_ocb_bridge/src/dsn/" "./jtrs/veh_adapter/ut/modem/wf_fpga/common/sample_chain/src/dsn/" "./jtrs/veh_adapter/ut/modem/wf_fpga/common/src/dsn/" "./jtrs/veh_adapter/ut/modem/wf_fpga/common/timers/src/dsn/" "./jtrs/veh_adapter/ut/modem/wf_fpga/common/wb_agc/src/dsn/" "./jtrs/veh_adapter/ut/modem/wf_fpga/common/wb_agc_msg_intf/src/dsn/" "./jtrs/veh_adapter/ut/modem/wf_fpga/wf_fpga_core/wf_interface/rcv/src/dsn/" "./jtrs/veh_adapter/ut/modem/wf_fpga/wf_fpga_core/wf_interface/xmt/src/dsn/" "./jtrs/veh_adapter/ut/modem/wf_fpga/wf_fpga_core/wf_interface/src/dsn/" "./narrowband_wf/satcom/common/" "./rc/src/dsn/" "./hms/src/tb/") "" (("Cadence Leapfrog" "\\2" "\\2" nil)) "./narrowband_wf/satcom/" "work" "./narrowband_wf/satcom/sim/work/" "Makefile" "") ("HMS_SATCOM_WINDOWS" "HMS_SATCOM_PROJECT_WINDOWS" "W:/dwhill_satcom_hms_windows_view/" ("./cic/src/dsn/" "./fir/src/dsn/" "./hms/GD/gd_project_dir/cl5_fpga/Rockwell_MHAL/RCI_FPGA_Drop5/hms/common/RAMS/fifo_async_clk/" "./hms/GD/gd_project_dir/cl5_fpga/Rockwell_MHAL/RCI_FPGA_Drop5/hms/common/RAMS/fifo_sync_clk/" "./hms/GD/gd_project_dir/cl5_fpga/Rockwell_MHAL/RCI_FPGA_Drop5/hms/common/RAMS/sync_mem_1r1w/" "./hms/GD/gd_project_dir/cl5_fpga/Rockwell_MHAL/RCI_FPGA_Drop5/hms/fpga_core/mhal_interface/agc_interface/src/dsn/" "./hms/GD/gd_project_dir/cl5_fpga/Rockwell_MHAL/RCI_FPGA_Drop5/hms/fpga_core/mhal_interface/pdi_interface/src/dsn/" "./hms/GD/gd_project_dir/cl5_fpga/Rockwell_MHAL/RCI_FPGA_Drop5/hms/fpga_core/mhal_interface/if_interface/src/dsn/" "./hms/GD/gd_project_dir/cl5_fpga/Rockwell_MHAL/RCI_FPGA_Drop5/hms/fpga_core/mhal_interface/ppi_interface/src/dsn/" "./hms/GD/gd_project_dir/cl5_fpga/Rockwell_MHAL/RCI_FPGA_Drop5/hms/fpga_core/mhal_interface/src/dsn/" "./hms/GD/gd_project_dir/cl5_fpga/Rockwell_MHAL/RCI_FPGA_Drop5/hms/fpga_core/mhal_interface/timer/src/dsn/" "./hms/GD/gd_project_dir/cl5_fpga/INFRASTRUCTURE/SRC/GPPSPI_DSPSPI/" "./hms/GD/gd_project_dir/cl5_fpga/INFRASTRUCTURE/SRC/PRI_COM/" "./hms/GD/gd_project_dir/cl5_fpga/INFRASTRUCTURE/SRC/PRI_PER/" "./hms/GD/gd_project_dir/cl5_fpga/INFRASTRUCTURE/SRC/PRI_TOP_CORE/" "./hms/GD/gd_project_dir/cl5_fpga/INFRASTRUCTURE/SRC/PRI_WVFM_IF/" "./hms/GD/gd_project_dir/cl5_fpga/INFRASTRUCTURE/SRC/T1C/" "./hms/GD/gd_project_dir/cl5_fpga/INFRASTRUCTURE/SRC/T1C/SRC/" "./hms/GD/gd_project_dir/cl5_fpga/INFRASTRUCTURE/SRC/PRI_WVFM_TEST/" "./hms/GD/gd_project_dir/cl5_fpga/INFRASTRUCTURE/SRC/VLIO/" "./hms/GD/gd_project_dir/cl5_fpga/INFRASTRUCTURE/SRC/REI/" "./hms/GD/gd_project_dir/cl5_fpga/Rockwell_MHAL/RCI_FPGA_Drop5/hms/mhal_comm_nodes/src/dsn/" "./hms/GD/gd_project_dir/cl5_fpga/Rockwell_MHAL/RCI_FPGA_Drop5/jtrs/mhal_fpga/Source_Code/fpga/adc_interface/src/dsn/" "./hms/GD/gd_project_dir/cl5_fpga/Rockwell_MHAL/RCI_FPGA_Drop5/jtrs/mhal_fpga/Source_Code/fpga/dac_interface/src/dsn/" "./interpolator/src/dsn/" "./jtrs/veh_adapter/ut/modem/wf_fpga/" "./jtrs/veh_adapter/ut/modem/wf_fpga/common/mhal_ocb_bridge/src/dsn/" "./jtrs/veh_adapter/ut/modem/wf_fpga/common/sample_chain/src/dsn/" "./jtrs/veh_adapter/ut/modem/wf_fpga/common/src/dsn/" "./jtrs/veh_adapter/ut/modem/wf_fpga/common/timers/src/dsn/" "./jtrs/veh_adapter/ut/modem/wf_fpga/common/wb_agc/src/dsn/" "./jtrs/veh_adapter/ut/modem/wf_fpga/common/wb_agc_msg_intf/src/dsn/" "./jtrs/veh_adapter/ut/modem/wf_fpga/wf_fpga_core/wf_interface/rcv/src/dsn/" "./jtrs/veh_adapter/ut/modem/wf_fpga/wf_fpga_core/wf_interface/xmt/src/dsn/" "./jtrs/veh_adapter/ut/modem/wf_fpga/wf_fpga_core/wf_interface/src/dsn/" "./jtrs/veh_adapter/ut/modem/wf_fpga_core/wf_interface/sincgars/src/dsn/" "./hms/GD/gd_project_dir/cl5_fpga/Rockwell_MHAL/RCI_FPGA_Drop5/narrowband_wf/satcom/common/" "./hms/GD/gd_project_dir/cl5_fpga/Rockwell_MHAL/RCI_FPGA_Drop5/rc/src/dsn/" "./hms/GD/gd_project_dir/cl5_fpga/Rockwell_MHAL/RCI_FPGA_Drop5/hms/src/tb/" "./narrowband_wf/satcom/common/" "./rc/src/dsn/" "./hms/src/tb/") "" (("ModelSim" "\\2" "\\2" nil)) "./narrowband_wf/satcom/" "work" "./narrowband_wf/satcom/sim/work/" "Makefile" "") ("HMS_CR2_snapshot" "HMS_CR2_snapshot_PROJECT" "/rfs/proj/gs_adcnas7_exrestricted/dwhill/dwhill_hmscr2_snapshot_view/hms/" ("./src/tb/" "./common/RAMS/fifo_async_clk/" "./common/RAMS/fifo_sync_clk/" "./common/RAMS/sync_mem_1r1w/" "./fpga_core/mhal_interface/agc_interface/src/dsn/" "./fpga_core/mhal_interface/if_interface/src/dsn/" "./fpga_core/mhal_interface/pdi_interface/src/dsn/" "./fpga_core/mhal_interface/ppi_interface/src/dsn/" "./fpga_core/mhal_interface/sport_interface/src/dsn/" "./fpga_core/mhal_interface/src/dsn/" "./fpga_core/mhal_interface/timer/src/dsn/" "./fpga_core/wf_interface/src/dsn/" "./fpga_pads/src/dsn/" "./GD/gd_project_dir/cl5_fpga_ir/INFRASTRUCTURE/SRC/Generic_memory/" "./GD/gd_project_dir/cl5_fpga_ir/INFRASTRUCTURE/SRC/GPPSPI_DSPSPI/" "./GD/gd_project_dir/cl5_fpga_ir/INFRASTRUCTURE/SRC/PRI_COM/" "./GD/gd_project_dir/cl5_fpga_ir/INFRASTRUCTURE/SRC/PRI_PER/" "./GD/gd_project_dir/cl5_fpga_ir/INFRASTRUCTURE/SRC/PRI_TOP_CORE/" "./GD/gd_project_dir/cl5_fpga_ir/INFRASTRUCTURE/SRC/PRI_WVFM_IF/" "./GD/gd_project_dir/cl5_fpga_ir/INFRASTRUCTURE/SRC/T1C/" "./GD/gd_project_dir/cl5_fpga_ir/INFRASTRUCTURE/SRC/T1C/SRC/" "./GD/gd_project_dir/cl5_fpga_ir/INFRASTRUCTURE/SRC/PRI_WVFM_TEST/" "./GD/gd_project_dir/cl5_fpga_ir/INFRASTRUCTURE/SRC/VLIO/" "./GD/gd_project_dir/cl5_fpga_ir/INFRASTRUCTURE/SRC/REI/" "./mhal_comm_nodes/src/dsn/" "../jtrs/mhal_fpga/Source_Code/fpga/adc_interface/src/dsn/" "../jtrs/mhal_fpga/Source_Code/fpga/dac_interface/src/dsn/" "") "" (("ModelSim" "\\2" "\\2" nil)) "./" "work" "/rfs/proj/gs_adcnas7_exrestricted/dwhill/dwhill_hmscr2_snapshot_view/hms/sim/work/" "Makefile" "") ("HMS_CR2" "HMS_CR2_PROJECT" "/gsadc_vobs/hms/" ("./common/RAMS/fifo_async_clk/" "./common/RAMS/fifo_sync_clk/" "./common/RAMS/sync_mem_1r1w/" "./fpga_core/mhal_interface/agc_interface/src/dsn/" "./fpga_core/mhal_interface/if_interface/src/dsn/" "./fpga_core/mhal_interface/pdi_interface/src/dsn/" "./fpga_core/mhal_interface/ppi_interface/src/dsn/" "./fpga_core/mhal_interface/sport_interface/src/dsn/" "./fpga_core/mhal_interface/src/dsn/" "./fpga_core/mhal_interface/timer/src/dsn/" "./fpga_core/wf_interface/src/dsn/" "./fpga_pads/src/dsn/" "./GD/gd_project_dir/cl5_fpga_ir/INFRASTRUCTURE/SRC/Generic_memory/" "./GD/gd_project_dir/cl5_fpga_ir/INFRASTRUCTURE/SRC/GPPSPI_DSPSPI/" "./GD/gd_project_dir/cl5_fpga_ir/INFRASTRUCTURE/SRC/PRI_COM/" "./GD/gd_project_dir/cl5_fpga_ir/INFRASTRUCTURE/SRC/PRI_PER/" "./GD/gd_project_dir/cl5_fpga_ir/INFRASTRUCTURE/SRC/PRI_TOP_CORE/" "./GD/gd_project_dir/cl5_fpga_ir/INFRASTRUCTURE/SRC/PRI_WVFM_IF/" "./GD/gd_project_dir/cl5_fpga_ir/INFRASTRUCTURE/SRC/T1C/" "./GD/gd_project_dir/cl5_fpga_ir/INFRASTRUCTURE/SRC/T1C/SRC/" "./GD/gd_project_dir/cl5_fpga_ir/INFRASTRUCTURE/SRC/PRI_WVFM_TEST/" "./GD/gd_project_dir/cl5_fpga_ir/INFRASTRUCTURE/SRC/REI/" "./GD/gd_project_dir/cl5_fpga_ir/INFRASTRUCTURE/SRC/VLIO/" "./mhal_comm_nodes/src/dsn/" "./src/tb/" "/rfs/proj/gsadc/jtrs/mhal_fpga/Source_Code/fpga/adc_interface/src/dsn/" "/rfs/proj/gsadc/jtrs/mhal_fpga/Source_Code/fpga/dac_interface/src/dsn/" "./GD/gd_project_dir/cl5_fpga_ir/INFRASTRUCTURE/SRC/VLIO/" "./GD/gd_project_dir/cl5_fpga_ir/INFRASTRUCTURE/SRC/REI/") "" (("ModelSim" "\\2" "\\2" nil)) "./" "work" "/gsadc_vobs/hms/sim/work/" "Makefile" "") ("Example 1" "Source files in two directories, custom library name, VHDL'87" "~/example1/" ("src/system/" "src/components/") "" (("ModelSim" "-87 \\2" "-f \\1 top_level" nil) ("Synopsys" "-vhdl87 \\2" "-f \\1 top_level" ((".*/datapath/.*" . "-optimize \\3") (".*_tb\\.vhd")))) "lib/" "example3_lib" "lib/example3/" "Makefile_\\2" "") ("Example 2" "Individual source files, multiple compilers in different directories" "$EXAMPLE2/" ("vhdl/system.vhd" "vhdl/component_*.vhd") "" nil "\\1/" "work" "\\1/work/" "Makefile" "") ("CC_MODE_SRW_WINDOWs" "GEN 5 SRW CC Mode" "K:/tactical_fpga/Exrestricted/views/dwhill/tactical_fpga/demos/SRW_networking/cc_mode/" ("-r ./src/srw_wf/*/") "" nil "./verification/src/tb/" "srw_dsn" "./sim/" "Makefile_all" "") ("CC_MODE_SRW" "" "/rfs/proj/gs_tactical_fpga/views/dwhill/tactical_fpga_study/demos/SRW_networking/cc_mode/" ("-r ./src/srw_wf/*/") "" nil "./verification/src/tb/" "srw_dsn" "./sim/" "Makefile_srw" "") ("Example 3" "Source files in a directory tree, multiple compilers in same directory" "/home/me/example3/" ("-r ./*/vhdl/") "/CVS/" nil "./" "work" "work-\\1/" "Makefile-\\1" "-------------------------------------------------------------------------------
-- This is a multi-line project description
-- that can be used as a project dependent part of the file header.
") ("GEN5_SRW_CC" "GEN5_SRW_CC_PROJ" "/rfs/proj/gs_tactical_fpga/views/dwhill/tactical_fpga/demos/SRW_networking/cc_mode/" ("./src/mhal_fpga/src/dsn/" "./src/mhal_fpga/src/dsn/megawizard_cores/" "./src/legacy_core_fpga/coremodem_core/gpmc_subsys/src/dsn/" "./src/legacy_core_fpga/coremodem_core/link4a_piso/src/dsn/" "./src/legacy_core_fpga/coremodem_core/maximas_legacy/src/dsn/" "./src/legacy_core_fpga/coremodem_core/nbdither/src/dsn/" "./src/legacy_core_fpga/coremodem_core/phoebe_legacy/src/dsn/" "./src/legacy_core_fpga/coremodem_core/phoebe_legacy/src/tb/" "./src/legacy_core_fpga/coremodem_core/readmuxes/src/dsn/" "./src/legacy_core_fpga/coremodem_core/saturn_legacy/src/dsn/" "./src/legacy_core_fpga/coremodem_core/saxon_legacy/src/dsn/" "./src/legacy_core_fpga/coremodem_core/uif_subsys/src/dsn/" "./src/legacy_core_fpga/coremodem_core/waveshape_sm/src/dsn/" "./src/legacy_core_fpga/src/dsn/" "./src/legacy_core_fpga/src/dsn/megafunctions/" "./src/legacy_core_fpga/src/tb/" "./src/legacy_coproc_fpga/src/dsn/COPROC_MODEM_50MHZ_PLL_CYCLONEIII.vhd" "./src/cic/src/dsn/" "./src/interpolator/src/dsn/" "./src/fir/src/dsn/" "./src/sample_chain/src/dsn/" "-r ./src/srw_wf/*/" "./") ".*struct.*" nil "./verification/src/tb/" "srw_dsn" "./sim/" "Makefile_all" ""))))
 '(vhdl-reset-active-high nil)
 '(vhdl-reset-kind (quote async))
 '(vhdl-reset-name "RESET_F")
 '(vhdl-speedbar-display-mode (quote project))
 '(vhdl-speedbar-scan-limit (quote (10000000 (nil nil))))
 '(vhdl-speedbar-update-on-saving nil)
 '(vhdl-standard (quote (93 nil)))
 '(vhdl-testbench-initialize-signals t)
 '(vhdl-underscore-is-part-of-word t)
 '(vhdl-upper-case-attributes nil)
 '(vhdl-upper-case-constants nil)
 '(vhdl-upper-case-enum-values nil)
 '(vhdl-upper-case-keywords nil)
 '(vhdl-upper-case-types nil))
(custom-set-faces
 '(default ((t (:foreground "snow" :background "black" :size "12pt" :family "Type"))) t)
 '(bold ((t (:bold t))) t)
 '(cperl-array-face ((((class color) (background dark)) (:foreground "navy" :background "black" :bold t))))
 '(cperl-hash-face ((nil (:foreground "firebrick"))))
 '(cperl-nonoverridable-face ((((class color) (background dark)) (:foreground "goldenrod"))))
 '(custom-comment-face ((((class grayscale color) (background light)) (:foreground "black" :background "gray75"))))
 '(custom-group-tag-face ((((class color) (background light)) (:foreground "skyblue1" :underline t))))
 '(custom-state-face ((((class color) (background light)) (:foreground "green3"))))
 '(custom-variable-tag-face ((((class color) (background light)) (:foreground "cyan" :underline t))))
 '(dired-face-executable ((((class color)) (:foreground "seaGreen1"))))
 '(display-time-mail-balloon-gnus-group-face ((t (:foreground "skyblue2"))))
 '(font-general-listing-face ((t (:bold t :italic nil :foreground "red" :background "green"))) t)
 '(font-lock-comment-face ((t (:foreground "green" :bold t :italic t))))
 '(font-lock-doc-string-face ((t (:italic nil :foreground "tomato"))))
 '(font-lock-function-name-face ((((class color) (background light)) (:foreground "cyan" :bold nil))))
 '(font-lock-keyword-face ((((class color) (background light)) (:foreground "red" :bold nil))))
 '(font-lock-string-face ((((class color) (background light)) (:foreground "yellow"))))
 '(font-lock-type-face ((((class color) (background light)) (:foreground "steelblue1" :bold nil :italic nil))))
 '(font-lock-variable-name-face ((((class color) (background light)) (:foreground "magenta1"))))
 '(font-nutshell-debug-face ((t (:italic nil :foreground "orange"))) t)
 '(font-nutshell-error-face ((t (:italic nil :foreground "red"))) t)
 '(font-nutshell-info-face ((t (:italic nil :foreground "cyan"))) t)
 '(font-nutshell-warning-face ((t (:italic nil :foreground "yellow"))) t)
 '(font-sdiff-addition-face ((t (:italic nil :foreground "yellow"))) t)
 '(font-sdiff-diff-face ((t (:italic nil :foreground "red"))) t)
 '(font-vhdl-comp-face ((t (:bold t :italic nil :foreground "tomato"))) t)
 '(font-vhdl-keyword-face ((t (:bold t :italic nil :foreground "yellow"))) t)
 '(font-vhdl-prog-face ((t (:bold t :italic nil :foreground "cyan"))) t)
 '(font-vhdl-string-face ((t (:bold nil :italic t :foreground "palegreen"))) t)
 '(font-xrule-M-face ((t (:bold t :italic nil :foreground "cyan"))) t)
 '(font-xrule-X-face ((t (:bold t :italic nil :foreground "wheat"))) t)
 '(gnus-group-news-low-empty-face ((((class color) (background light)) (:foreground "Green4"))))
 '(gnus-group-news-low-face ((((class color) (background light)) (:foreground "Green4" :bold t))))
 '(gnus-splash-face ((((class color) (background light)) (:foreground "Green4"))))
 '(gnus-summary-high-read-face ((((class color) (background light)) (:foreground "Green4" :bold t))))
 '(gnus-summary-low-read-face ((((class color) (background light)) (:foreground "Green4" :italic t))))
 '(gnus-summary-normal-read-face ((((class color) (background light)) (:foreground "Green4"))))
 '(highlight ((t (:foreground "yellow" :background "blue" :bold t :italic nil))) t)
 '(hyper-apropos-hyperlink ((((class color) (background light)) (:foreground "skyblue"))))
 '(isearch ((t (:foreground "midnightblue" :background "cyan"))) t)
 '(message-header-cc-face ((((class color) (background light)) (:foreground "Blue3"))))
 '(message-header-to-face ((((class color) (background light)) (:foreground "Blue3" :bold t))))
 '(message-separator-face ((((class color) (background light)) (:foreground "tan"))))
 '(modeline-buffer-id ((t (:foreground "blue4" :background "red"))) t)
 '(modeline-mousable-minor-mode ((t (:foreground "green4" :background "skyblue"))) t)
 '(paren-blink-off ((t (:foreground "pink"))) t)
 '(paren-match ((t (:foreground "blue" :background "grey90"))) t)
 '(paren-mismatch ((t (:foreground "deeppink" :background "gray20" :bold nil :italic nil))) t)
 '(paren-mode (quote sexp))
 '(primary-selection ((t (:foreground "grey" :background "yellow"))) t)
 '(secondary-selection ((t (:foreground "black" :background "paleturquoise"))) t)
 '(speedbar-directory-face ((((class color) (background light)) (:foreground "wheat"))))
 '(speedbar-file-face ((((class color) (background light)) (:foreground "cyan1"))))
 '(speedbar-highlight-face ((((class color) (background light)) (:foreground "blue" :background "green"))))
 '(speedbar-tag-face ((((class color) (background light)) (:foreground "gold"))))
 '(verilog-font-lock-translate-off-face ((((class color) (background light)) (:foreground "black" :background "gray90" :italic t))))
 '(vhdl-font-lock-enumvalue-face ((((class color) (background light)) (:foreground "gold3"))))
 '(vhdl-font-lock-function-face ((((class color) (background light)) (:foreground "Cyan3"))))
 '(vhdl-font-lock-translate-off-face ((((class color) (background light)) (:foreground "black" :background "LightGray"))))
 '(vhdl-font-lock-type-face ((((class color) (background light)) (:foreground "limeGreen"))))
 '(vhdl-font-lock-variable-face ((((class color) (background light)) (:foreground "Grey"))))
 '(vhdl-speedbar-architecture-face ((((class color) (background light)) (:foreground "skyBlue"))))
 '(vhdl-speedbar-architecture-selected-face ((((class color) (background light)) (:foreground "skyBlue" :underline t))))
 '(vhdl-speedbar-entity-face ((((class color) (background light)) (:foreground "Green"))))
 '(vhdl-speedbar-entity-selected-face ((((class color) (background light)) (:foreground "blue" :background "yellow" :bold t :underline t))))
 '(vhdl-speedbar-instantiation-face ((((class color) (background light)) (:foreground "gold3"))))
 '(vhdl-speedbar-instantiation-selected-face ((((class color) (background light)) (:foreground "gold3" :underline t))))
 '(vhdl-speedbar-library-face ((((class color) (background light)) (:foreground "violet"))))
 '(vhdl-speedbar-package-face ((((class color) (background light)) (:foreground "Grey90"))))
 '(vhdl-speedbar-package-selected-face ((((class color) (background light)) (:foreground "Grey" :underline t))))
 '(vhdl-speedbar-subprogram-face ((((class color) (background light)) (:foreground "Orchid"))))
 '(widget-documentation-face ((((class color) (background light)) (:foreground "green"))))
 '(widget-field-face ((((class grayscale color) (background light)) (:foreground "black" :background "gray85"))))
 '(widget-inactive-face ((((class grayscale color) (background light)) (:foreground "gray"))))
 '(zmacs-region ((t (:foreground "blue" :background "gold"))) t))
