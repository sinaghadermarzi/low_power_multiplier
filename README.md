# low_power_multiplier

B.Sc. project on a low-power 16x16-bit sequential (shift-and-add) multiplier in Verilog. The idea follows
the "bypass zero" family of designs (see the BZ-FAD paper in `Papers (Low Power Multiplier)/`): the
multiplier bits are walked one per clock cycle by a ring counter, and when the current bit is 0 the adder
is bypassed and the partial product is only shifted, so the adder and its input register do not toggle.
The report, in Persian, is `Report_Doc/B.S Project Document(Main).docx`.

## What is in the repo

`Work-Archive/` holds the design files:

- `behv_multiplier.v` – the RTL. Modules: `cr_adder` (16-bit ripple-carry adder), `behv_Ring_Counter`
  (one-hot 16-bit ring counter that selects the current multiplier bit), `behv_feed_B` (presents the
  current and next multiplier bit), `behv_generate_pp` (partial-product datapath: adder, bypass mux and the
  `feeder`/`bypass` registers, whose clocks are gated by the next multiplier bit) and the top-level
  `behv_multiplier(clk, rst, A, B, C)` with 16-bit `A`, `B` and 32-bit `C`. All modules have a `length`
  parameter (default 16).
- `behv_multiplier_se.v` – a variant of the same design without the gated register clocks: a single
  `pp_reg` partial-product register clocked on every cycle, with the bypass done by a mux.
- `Mult_Syn.v`, `Mult_se_Syn.v` – gate-level netlists synthesised from the two RTL files onto a
  standard-cell library.
- `behv_multiplier_testbench.v`, `behv_multiplier_se_testbench.v` – minimal testbenches: 100 ns clock,
  reset held for 500 ns, then `A = 6`, `B = 10`; the product appears on `Res`. They currently `include` the
  synthesised netlists from a Windows path (`g:\Mult_syn.v`, `g:\Mult_se_syn.v`), so to simulate them
  edit that line to point at either the netlist or the RTL file in this directory.
- `My_Ring_Counter.v`, `Hot_Block_Ring_Counter.v`, `Simple_Clockgate_Ring_Counter.v` – unfinished
  sketches of alternative ring counters (a fragment, an empty module and an empty file). The `.bak` files
  are editor backups.

`Papers (Low Power Multiplier)/` contains the four papers the design was based on.

## Simulating

No tool scripts are included. With any Verilog simulator, compile a testbench together with the design it
should exercise, e.g. after fixing the `include` line:

```sh
iverilog -o mult_sim Work-Archive/behv_multiplier_testbench.v && vvp mult_sim
```

As committed, the testbenches only drive the inputs (`A = 6`, `B = 10`, reset released after 500 ns) and
a free-running `always #50` clock: they contain no `$finish`, `$display`, `$monitor` or waveform-dump
calls, so the command above runs indefinitely and prints nothing. To see the result, add something like
the following to the testbench's `initial` block (or open it in a GUI simulator and watch `Res`):

```verilog
$monitor("%t rst=%b A=%d B=%d Res=%d", $time, rst, A, B, Res);
#5000 $finish;
```

The netlists need the cell library they were synthesised with, which is not part of the repo; the RTL
files simulate on their own.
