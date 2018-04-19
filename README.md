# Digital-System-Design
It is all about hardware implementation using verilog

# WHAT IS VERILOG?
First, we must know what Hardware Description Language (HDL) is. Hardware Description Language or HDL is used to model digital circuits by the use of a bunch of code lines. <br />
Verilog is one such code(VHDL is another type. <br /> 

![Hardware Component](http://referencedesigner.com/tutorials/s6evalboard/images/spartixed.jpg) <br />

使用工具 ：
* Icarus Verilog : a simulation and synthesis tool to operate as a verilog compiler.
* gtkwave
* (建議） Ubuntu with root access

1.VERILOG
在 Ubuntu安裝 ：
  > sudo apt-get install iverilog
1.GTKWave
就是波形顯示工具， 可以用來看Verilog的模擬結果
在 Ubuntu安裝 ：
  > sudo apt-get install gtkwave
  
1.TESTBENCH
也是一個Verilog檔案， 可以描述模擬的情境， 例如輸入的訊號等等

# WAY OF SIMULATION
* Compile the verilog file 
    $ iverilog -o outputfile.vvp testbench.v program.v
* Simulation
    $ vvp program.v
    
# 檢視波形
  * 使用GTKWave指令 <br />
      gtkwave vcd_file.vcd <br />
   在Testbench中指定 ： $dumpfile（”vcd_file.vcd“）；
    
