set ::env(DESIGN_NAME) logisim_demo
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/logisimTopLevelShell.v \
    $::env(DESIGN_DIR)/circuit/main.v \
    $::env(DESIGN_DIR)/gates/NAND_GATE.v \
    $::env(DESIGN_DIR)/gates/OR_GATE.v \
    $::env(DESIGN_DIR)/memory/D_FLIPFLOP.vv"
