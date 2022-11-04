import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, Timer, ClockCycles

expected_outs = [ 0b00000110, 0b11011011, 0b01100110, 0b11111111 ]*4

@cocotb.test()
async def test_shift(dut):
	dut._log.info("start")
	clock = Clock(dut.CLK, 500, units="ms")
	cocotb.fork(clock.start())

	dut._log.info("reset")
	dut.RST = 1
	await ClockCycles(dut.CLK, 10)
	dut.RST = 0
	assert int(dut.OUT.value) == expected_outs[0]
	await ClockCycles(dut.CLK, 1)

	dut._log.info("check output")
	for i in range(15):
		dut._log.info("check output {}".format(i + 1))
		await ClockCycles(dut.CLK, 1)
		assert int(dut.OUT.value) == expected_outs[i + 1]
