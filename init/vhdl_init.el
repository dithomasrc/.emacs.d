;; VHDL Auto settings
(add-hook 'vhdl-mode-hook (lambda () (vhdl-electric-mode t)))
(add-hook 'vhdl-mode-hook (lambda () (vhdl-stutter-mode t)))


;; add to html-mode-hook
(add-hook 'vhdl-mode-hook 'vhdl-mode-keys)

(setq vhdl-compile-use-local-error-regexp t)
(setq vhdl-compiler "ModelSim")
(setq vhdl-compiler-alist (quote (("ModelSim_Salt" "vcom" "-f /usr/lfs/ssd_v0/crsvn/gs_l16mff_fpga/branches/salt/modem/wf_fpga/src/dsn/vhdl_files.f" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "" ("\\(ERROR\\|WARNING\\|\\*\\* Error\\|\\*\\* Warning\\)[^:]*:\\( *[[0-9]+]\\)? \\(.+\\)(\\([0-9]+\\)):.*" 2 3 0) ("" 0) nil) ("ModelSim" "vcom" "-93 -work \\1" "make" "-f \\1" nil "vlib \\1; vmap \\2 \\1" "./" "work/" "Makefile" "modelsim" ("\\(ERROR\\|WARNING\\|\\*\\* Error\\|\\*\\* Warning\\)[^:]*:\\( *[[0-9]+]\\)? \\(.+\\)(\\([0-9]+\\)): " 3 4 0) ("" 0) ("\\1/_primary.dat" "\\2/\\1.dat" "\\1/_primary.dat" "\\1/_primary.dat" "\\1/body.dat" downcase)) ("Xilinx XST" "xflow" "" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "xilinx" ("^ERROR:HDLParsers:[0-9]+ - \"\\(.+\\)\" Line \\([0-9]+\\)." 1 2 0) ("" 0) nil))))
(setq vhdl-conditions-in-parenthesis t)
(setq vhdl-electric-mode t)
(setq vhdl-end-comment-column 100)
(setq vhdl-highlight-special-words t)
(setq vhdl-include-direction-comments t)
(setq vhdl-include-type-comments t)
(setq vhdl-instance-name (quote (".*" . "U_\\&")))
(setq vhdl-model-alist (quote (("Example Model" "<label> : process (<clock>, <reset>)
begin  -- process <label>
  if <reset> = '0' then  -- asynchronous reset (active low)
    <cursor>
  elsif <clock>'event and <clock> = '1' then  -- rising clock edge
    if <enable> = '1' then  -- synchronous load

    end if;
  end if;
end process <label>;" "e" "") ("stl" "signal <name> : std_logic; -- <comment>" "b" "stl") ("stv" "signal <name> : std_logic_vector(<top> downto 0); -- <comment>" "a" "stv") ("Derek" "--Best viewed with a dark background and light characters
--7777I777777777777I7777777777777777I???=~=???II777777777I77II77777777777777777I77
--77I7I7IIIIIIIII7I77I7~+:,............,..,,,,,...,,:+777II77I7IIIIIIIIIIIIIII7I77
--77I7I7I77777777I7I77+,,......,,......,..,,,.,,.,,,..,~+77II777777777I77777777I77
--77I7I7IIIIIIIII7?77:..............,......,.,::,,,,,,.,.:I777III7III7IIIIIIIIII77
--77I7I77II77777777?.,..........,...,..,,..,,..,,,,..,,,,..,+7II77I77777777777II77
--77I7I7IIII77777I7,.,,,.....,,,,..,,...:,............,..,..:?II77I77I777777777I77
--77I7I77777777777,..,..,,...,,......,,.,....,:::,,........,..II77777I77777777II77
--77I7I7II7II7I7I.,.......,,...,...,,,:~~~~====~~~~::,,,,,....,77III7777777777II77
--77I7I7II77II77:...,,..........,,,::~===========~~~~::::,,....~7?77I7IIIIIIIIII77
--77I7I7I7I77I77:..........,.,:~~=======+++=======~~~~~~~::,..,.,?77I7IIIIIIIIII77
--77I7I7II77III7:.........,,:~~~~~~~=============~~~~~:::~:,.,..:?7I7IIIIIIIIIII77
--77I7I7I7II7II7.........:::~~::~~~~=============~~~~~:~:~~,.,..:I77I7IIIIIIIIII77
--77I7I7IIII7II7,.......,::::~~===++++++++==++?++++==~~:::::.,,..=II7IIIIIIIIIII77
--77I7I7IIII7II7:.......::,,,,,:::~~=+++?????+++=~~::,,.,.,,,,...=7I7IIIIIIIIIII77
--77III7II7II7I7,.....,,....,,,,,,,,,,:,~~~~~~::..,,,~~~~~,,.....=II77IIIIIIIIII77
--77III7III7I7I7+......:::~~:::,~:,::::::~==~::,:~+,,..:,,:~~,..:I7II7I77777IIII77
--77III7III7I7I7I,..,..~~~~,.,:.,.~I=.,::~==:::,:+I...,+,.,~~:.:+77IIIIIIIIIIIII77
--77I7I7I7I7I7II7=:,,.,=~=~~~~~~==~~=~:::~===~::~=====~::~=~=~.,?7III7IIIIIIIIII77
--77I7I7IIIIIII77I+=:,,==~=======~~~~~~~~~===~::~==~~====~~~~~,:?7IIIIIIIIIIIIII77
--77III7IIIIIIII7I~~=:,~~~~~=======+=~~:~~====~:~=++=====~~~~~.:?7IIIIIIIIIIIIII77
--77I7I7IIIIIIII7I~=I~,~~~~~===++++=~~~~==+++====~~+??++=~~~~~,~I7IIIIIIIIIIIIII77
--77I7I7IIIIIIIII7?:~=.~:~~~~=++==~~~::,:::~~:,,,:~~~=+==~::~:.~I7IIIIIIIIIIIIII77
--77I7I7IIIIIIIII7I:==,~:~~~~==~:~~~~::~::~~:::~:~~~~~~=~~:::::~77I7IIIIIIIIIIIII7
--77I7I7IIIIIIIIII7?:==:::~~~~~:~~~~~~~~~===~~=~~~~::~~~~~::::~~777I7IIIIIIIIIIII7
--77I7I7IIIIIIIIII7I+~~~::~~~~~~~~~~:::::~=~::~:::::~~:~~~::::,+II7I7IIIIIIIIIII77
--7II7IIIIIIIIIIII7I7I?=::~:~=~~,,=II77I77I77?II??~,:~~=::::::+7IIIIIIIIIIIIIIIII7
--7II7IIIIIIIIIIIIII7II7,:~~:~~~=~::~~=++??I?=~~~:::~~~:::~::.I7IIIIIIIIIIIIIIIII7
--7II7IIIIIIIIIII7IIIII7=::~:~~~~~:,~==++???+=+=,,~~~~:::~::,:I7IIIIIIIIIIIIIIIII7
--77I7I7IIIIIIIII7IIIII77:,:::~~~~:~~:~~+??+~~::~::~~::~::,:,IIIIIIIIIIIIIIIIIIII7
--77I7I7IIIIIIIIIIIIIIII7~::,::~=~~~~~~~~~:~~~~::~~=~:::,,.=7IIIIIIIIIIIIIIIIIIII7
--77I7I7IIIIIIIIIIIIIIII7~:::::~~~~~~~~~~~~~~~:~~~~~:::,:,~77?7IIIIIIIIIIIIIIIIII7
--77I7I7IIIIIIIIIIIIIII77~:~::,,:~==~~~=+==~~~~~~~~:,,:~:,.+77IIIIIIIIIIIIIIIIIII7
--7II7IIIIIIIIIII7I7II77:::~::::,,,::~~~~~~~~::,,,,,,:::~,..:?7II777IIIIIIIIIIIII7
--7II7I7IIIIIIIIIII7II7,.~~~~~:::,,,,,,,::::,,,..,,:::::~,,:.,7II7IIIIIIIIIIIIIII7
--7II7I7IIIIIIII777777,,,:~~~~:~:::::::,:,,,:::,,:::~~~~,,:,,,.I777II7IIIIIIIIIII7
--7II7I7IIIII77III?+=:,:,::~:~~~:::::::::::::::::::~~~:::,,:,:,,=+?7777IIIIIIIIII7
--7777III7777+:,,:,,::::,,::::~=~:::~~~~~:~~:~::::~~~~~:,,:,,,,,,,,,:~?77IIIIIIII7
--77?777+:,,~~::::::::::,,,::~~~~~~:::~~~~~~::::~~~~~~::,,::,,,,,,,,,,:::,,+7777I7
--777I=:,,:::::::::::::::,,:::~~~~~:::::==~::::~~~~~~~:,,:::,,,::,,::,,,:::,:?7777
--:,,~~::::,,,::,:::::,,:,,,::~~~~~~~:::,,,:~~~=~~~:~~:,,,,:::,,,,:::::::::::::,:~
--::::::::::::::,,,,,,,:,,,,::~~~~~==~~~~~~~~~~~=~~~~,,,,,,:,,::::::::::::::::::::
--,,,:::::~~::,,,,,::::,::,,,,:~~~~~=~~=~~~====~=~~~:,,,,,::::::::,,,,::::::::::::
--::~:::,:,,,,:~~::,:::::::::::,,:~~~~=~===~~~~~:~=:,,,::,,:~~:,::~~::::::::::::::
--::::::::::::::::::::::::::::::::,:==~====~~===~~::::::::::::::::::::::::::::::::
--::::::~:::::::::::::::::::::::::~:.?7?~~=====:,,:::::~::::::::::::::::::::::::::
--:::::::::::::::::,,,::,,,::::::::~:::.I777=,,::::::::::::::::::::::::::::::::::~" "c" "pic") ("Clint" "--Best viewed with a dark background and light characters
--IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
--IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII??++++++???IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
--IIIIIIIIIIIIIIIIIIIIIIIIIIII??=~~~~~~~::~:::::::~=+?IIIIIIIIIIIIIIIIIIIIIIIIIIII
--IIII?IIIIIIIIIIIIIIIIIII?+=~~~~~~~~~~~~~~~~~~~~~~~~===+?IIIIIIIIIIIIIIIIIIIII?II
--IIIIIIIIIIIIIIIIIIII?I+=:::~~=~~~~~~~~~~~~~~~~~~~~~~==~~=?IIIIIIII?IIIIIIIII??II
--IIIIIIIIIIIIIIIIIIII=:::~==~~~~~~~~~===========~~~~~~=~=+~:=III?IIIIIIIIIIIII?II
--IIIIIIIIIIIIIIIIIII?:::~~~~~~~~~~~=================~~~~~~=~~=II??IIIIIIIIIII??II
--IIIIIIIIIIIIIII?I?~::~~~~~~~~~========================~~=~==:=IIIIIIIIIIIIIIIIII
--IIII?IIIIIIIIIII?~::~~~~~~==============++++++==========~~~~~:~?II?IIIIIIIIIIIII
--IIIIIIIIIIIIIIII=:~~~~~~~~==========+++++++++++=+=======~~~~~~:+IIIIIIIIIIIIIIII
--IIIIIIIIIIIIIII?~:~~~~==~========++++++++++++++++++++=====~~~~~~?IIIIIIIIIIIIIII
--IIIIIIIIIIIIIII+:::~~~=~========++++++??+++++++++++++======~~~~~=IIIIIIIIIIIIIII
--IIIIIIIIIIIIIII+::~~~===========+++++++++++++++++++=======~~~~~~=IIIIIIIIIIIIIII
--IIIIIIIIIIIIIII=:::~~~~=========+++++++++++++++++++++======~~~~:~IIIIIIIIIIIIIII
--IIIIIIIIIIIIIII=:~~~~~=========+++++++++++++++++++++++======~~~:~IIIIIIIIIIIIIII
--IIIIIIIIIIIIIII=::~~~~~==========++++???????+???+++++======~~~~~~I?IIIIIIIIIIIII
--IIIIIIIIIIIII??=::~~~~=~===~~====~~~~===++++++==~~~~~~~~=~~~~~~~~IIIIIIIIIIIIIII
--IIIIIIIIIIIII?=~~:~~~~~==~==========~====++++===~~~======~~~~~~~~?IIIIIIIIIIIIII
--IIIIIIIIIIII?+===~~~~=====~:~~~,,:~+==~~=++==~~~==~:,:::~~~==~~~:=IIIIIIIIIIIIII
--IIIIIIIIIIII?====~~=~==++==~===========~~===~~==~=+~:~==~~~==~=~=?IIIIIIIIIIIIII
--IIIIIIIIIIII?====~==~===========++====~~~===~~~=====+===~~~==~~~=?IIIIIIIIIIIIII
--IIIIIIIIIIII?==++=~~~======++++++++====~====~~~====+=========~===+IIIIIIIIIIIIII
--IIIIIIIIIIIII====~~~~======+++++++++===~~===~~~======+++====~~~==?IIIIIIIIIIIIII
--IIIIIIIIIIIII====~~~~=====++++++++++==~======~~==+=+++++======~==+IIIIIIIIIIIIII
--IIIIIIIIIIIII+==+=~~~=====++++++++++=~====+++=~~=+++++++====~~~==?IIIIIIIIIIIIII
--IIIIIIIIIIIII?====~~~=====++++++++++=~~~=====~~~=++++++++===~~===?IIIIIIIIIIIIII
--IIIIIIIIIIIIII+~=+~~~=======++========~===~~~~~====+++++====~~==+IIIIIIIIIIIIIII
--IIIIIIIIIIIIIIII??=~~===================+=++====~==========~~~~=II?IIIIIIIIIIIII
--IIIIIIIIIIIIIIIIII+~=~=================+++++=====~========~~~+?IIIIIIIIIIIIIIIII
--IIIIIIIIIIIIIIIIII?=~~==========~~::~~~~~=~~~~~~::~=======~~~II?IIIIIIIIIIIIIIII
--IIIIIIIIIIIIIIIIIII+~~==================++=====~~~======~~~~+IIIIIIIIIIIIIIIIIII
--IIIIIIIIIIIIIIIIIII?~~~===============+++++=====~======~=~~~?IIIIIIIIIIIIIIIIIII
--IIIIIIIIIIIIIIIIIIII+~~~==============+==============~=~~~~=IIIIIIIIIIIIIIIIIIII
--IIIIIIIIIIIIIIIIIIII?~~~~~========================~~~~~~~~+IIIIIIIIIIIIIIIIIIIII
--IIIIIIIIIIIIIIIIIIII?~~~~~~~~=~~==================~~~~~~~+IIIIIIIIIIIIIIIIIIIIII
--IIIIIIIIIIIIIIIIIIII?~~~~~~~~~~~~======++=+======~~::::~~+IIIIIIIIIIIIIIIIIIIIII
--IIIIIIIIIIIIIIIII+~::=~~~~~~~~~~~~~============~~:::::~~~~+?IIIIIIIIIIIIIIIIIIII
--IIIIIIIIIIIIIII=,,:==~===~~~~~~~~~:~~~~~~~~~~~::::~~~~~~~:,,~?IIIIIIIIIIIIIIIIII
--IIIIIIIIIIII?~,,:~==~~=====~~~~~~~~~~~~~~~~~~~~~~~~~~~=~~==~,,~+7I?IIIIIIIIIIIII
--IIIIIIIIIII?=:,:~~~~~~~=====~~~=====~=~~~~~~~~~~~~~~~==~~~==:,,~+IIIIIIIIIIIIIII
--IIIIIIII7?=:,,~~=~~~~~========================~~~~~~==~~~:::::,:~::=IIIIIIIIIIII
--IIIII?+~:,~:,:~~+=~~~~~========================~~=====~~~~::~~,,::,:,~=+??IIIII7
--II?=~:,:::::,:::+=~~~~~===============+================~~~::~:::::,::,,::~==++?I
--::~~::,~:,,~:,~:=+=~~=================+++===============~~~==:,,::::,,:::~:::,::
--~:,::,,:::,::,::~++=~================++++================~=+~:,,:,,~:,,,:~::::~~
--:,,::,,~:,,~~,,:~+++=========+++===+++++========+=========++~:,,:::::,::::,:,:~~
--::,::,:::,,~:,,:,~=++=========+++++++++++++++==+========~=?=::,,:,,::,,,:~::,,~~
--::,,:,:~:,:~::,:::++++==++===+++++++++++++++++++++====+==++~::,,~:,::,:::~::::==" "d" "cpic") ("Synchronous Process" "--------------------------------------------------------------------------------
-- <process>
--
-- <description>
-- SYNC_CLK:
-- This process implements all synchronous logic in the CLK domain.
-- </description>
--
-- </process>
--------------------------------------------------------------------------------
  SYNC_CLK: process (CLK, RESET) is
  begin  -- process SYNC_CLK
    if (RESET = '1') then               -- asynchronous reset (active high)
      
    elsif (CLK'event and CLK = '1') then  -- rising clock edge
      
    end if;
  end process SYNC_CLK;
" "f" "floppy") ("Rockwell Collins Template" "--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
-- <copyright_statement>
-- COPYRIGHT 2014 ROCKWELL COLLINS. ALL RIGHTS RESERVED.
-- </copyright_statement>
--
-- <rights>
-- </rights>
--
-- <address>
-- ROCKWELL COLLINS
-- 400 COLLINS ROAD NE
-- CEDAR RAPIDS, IA 52498
-- </address>
--
-- <authors>
-- dithomas
-- </authors>
--
-- <title>
-- 
-- </title>
--
-- <description>
-- 
-- </description>
--
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- LIBRARY DECLARATIONS
--------------------------------------------------------------------------------


library ieee;
use ieee.numeric_std.all;

-------------------------------------------------------------------------------
-- ENTITY DECLARATION
-------------------------------------------------------------------------------


-------------------------------------------------------------------------------
-- ARCHITECTURE DECLARATION
-------------------------------------------------------------------------------

architecture rtl of  is

-------------------------------------------------------------------------------
-- COMPONENT DECLARATIONS
-------------------------------------------------------------------------------


-------------------------------------------------------------------------------
-- CONSTANT DECLARATIONS
-------------------------------------------------------------------------------


-------------------------------------------------------------------------------
-- TYPE DECLARATIONS
-------------------------------------------------------------------------------


-------------------------------------------------------------------------------
-- SIGNAL DECLARATIONS
-------------------------------------------------------------------------------


-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

end architecture rtl;

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

" "t" "rctemp"))))
(setq vhdl-project (quote nil))
(setq vhdl-project-alist (quote (("MOSMOD" "MOSMOD Test Card" "/rfs/proj/gs_mos_mod_fpga_exrestricted/dithomas/MIDS_Terminal_Emulator/" ("-r ./src/dsn/*" "../control_fpga/peripherals/src/dsn/*") "" nil "./sim/" "work" "./sim/work/" "makefile" ""))))
(setq vhdl-reset-active-high t)
(setq vhdl-special-syntax-alist (quote (("generic/constant" "\\<\\w+_[cg]\\>" "Gold3" "BurlyWood1" nil) ("type" "\\<\\w+_t\\>" "ForestGreen" "PaleGreen" nil) ("variable" "\\<\\w+_v\\>" "Grey50" "Grey80" t))))
(setq vhdl-stutter-mode t)
(setq vhdl-testbench-architecture-file-name (quote ("\\(.*\\) \\(.*\\)" . "RTL")))
(setq vhdl-testbench-create-files (quote separate))
(setq vhdl-underscore-is-part-of-word t)


;;(add-to-list 'package-archives
;;             '("vhdl-wave" "http://www.emacswiki.org/emacs-se/vhdl-process-wave.el"))

(load "/accts/dithomas/.emacs.d/.emacs/vhdl-goto-def.el")
(load "/accts/dithomas/.emacs.d/.emacs/vhdl-process-wave.el")



;; make_signal
(fset 'make_signal
      [?\M-f ?\C-  ?\M-b ?\M-w ?\M-< ?\C-s ?b ?e ?g ?i ?n ?\C-m ?\C-a ?\C-o ?\C-o ?s ?i ?g ?n ?a ?l ?  ?\C-y return ?s ?t ?d ?_ ?l ?o ?g ?i ?c])


(defun vhdl-mode-keys ()
  "Modify keymaps used by `vhdl-mode'."
  (local-set-key '[(f5)] 'make_signal)
  ;; 
  )
