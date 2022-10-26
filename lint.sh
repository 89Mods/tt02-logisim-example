#!/bin/bash

verilator --lint-only -Wall src/logisimTopLevelShell.v src/circuit/main.v src/gates/OR_GATE.v src/gates/NAND_GATE.v src/memory/D_FLIPFLOP.v
