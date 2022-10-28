![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg)

Example to show that it is possible to use [Logisim Evolution](https://github.com/logisim-evolution/logisim-evolution) to create chip layouts for TinyTapeout.

This example implements the following circuit:

![circuit](https://raw.githubusercontent.com/89Mods/tt02-logisim-example/main/circuit.png)

After exporting the project from Logisim as Verilog, only a few lines of code need to be modified on the export to make it usable with TinyTapeout.

## How-to

Firstly, export your Logisim Evolution project as Verilog. It’ll ask you to choose an FPGA board and assign a pinout. Choose whatever, and randomly assign the pins. It doesn’t matter. This only determines values in a config file you won’t be using. You’re only interested in the Verilog. On that note, select "Verilog" as the export language in the Settings.

Go to the path the files were exported to. The log in the export dialog should show you where they are. Find the 'verilog* directory, and copy everything in there into the 'src' of your TinyTapeout repository.

Next, you need to edit the top level module definition to look like what TinyTapeout expects. Open the 'toplevel/logisimTopLevelShell.v' file in a text editor or IDE of your choosing. You will be changing most of this.

Firstly, the module definition. By default, it will look something like this:

```verilog
module logisimTopLevelShell( O_0_0,
                             O_1_0,
                             O_2_0,
                             O_3_0,
                             n_CLK_0,
                             n_RST_0 );
```

As you can see, Logisim names all of the inputs and outputs for you. Usually, this would be a good thing. But in this case, it is not. TinyTapeout expects the module definition to look a very specific way. So, replace it entirely with this one:

```verilog
module module_name(
  input [7:0] io_in,
  output [7:0] io_out
);
```

This is also a good time to change the module name to one you like. [github username]_[project name] is the recommended way to do it.
But now the I/O definitions are gone. So you need to create wires for the named I/Os below, and assign them to elements of io_in or io_out.

Below the module definition, you will see several blocks. Take note of the block of wire definitions. This is the one you want to keep. Everything in here that isn’t the wire definitions or the connection to the top level circuit component at the end needs to go. Delete the `input`, `output` and `assign` blocks.

Your config should now look like this:

```verilog
module module_name(
  input [7:0] io_in,
  output [7:0] io_out
);
   wire s_CLK;
   wire s_O_0;
   wire s_O_1;
   wire s_O_2;
   wire s_O_3;
   wire s_RST;
   
   main   CIRCUIT_0 (.CLK(s_CLK),
                     .O_0(s_O_0),
                     .O_1(s_O_1),
                     .O_2(s_O_2),
                     .O_3(s_O_3),
                     .RST(s_RST));
endmodule
```

Now, you will need to assign the wires to the inputs and outputs. For all **inputs**, do the following:

Go to the wire definition for that input. For example, `wire s_RST`. Then, set it equal to an index of io_in. For instance, `wire s_RST = io_in[1];`. This will make s_RST be connected to the second of your chip’s 8 inputs.

For all **outputs**, do the following:

You will need to add a new line assigning to an index of io_out the value of one of the wires. For instance, to connect s_O_0 to output pin 1 on the chip, write: `assign io_out[0] = s_O_0;`

Your final config should look like the one [in this repository.](https://github.com/89Mods/tt02-logisim-example/blob/main/src/toplevel/logisimTopLevelShell.v)

You’re almost done. Last thing to do is to list all the verilog source files in your info.yaml. Open that file and right at the top, under `source_files`, expand that list to include every .v file exported by Logisim. There might be quite a few, so make sure not to miss any. Of course, don’t forget to fill in all the other info as well.

And that’s it. Your project should now be build-ready. So push to the repo, and watch the actions pipeline build your design.

And the best part: you only need to do this once! The `logisimTopLevelShell.v` file does not change between exports, **unless you change the names of your I/O pins!** Just make sure to not overwrite this file the next time you copy in a updated logisim export, and you’re good to go!
