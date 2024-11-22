# File saved with Nlview 7.7.1 2023-07-26 3bc4126617 VDI=43 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #ff6666
property objecthighlight4 #0000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 15
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new csdt2 work:csdt2:NOFILE -nosplit
load symbol RTL_ADD3 work RTL(+) pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_ADD5 work RTL(+) pin I1 input.left pinBus I0 input.left [63:0] pinBus O output.right [63:0] fillcolor 1
load symbol RTL_ADD7 work RTL(+) pinBus I0 input.left [31:0] pinBus I1 input.left [2:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_ADD0 work RTL(+) pinBus I0 input.left [4:0] pinBus I1 input.left [3:0] pinBus O output.right [4:0] fillcolor 1
load symbol RTL_ADD1 work RTL(+) pinBus I0 input.left [4:0] pinBus I1 input.left [1:0] pinBus O output.right [4:0] fillcolor 1
load symbol RTL_AND20 work AND pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_AND work AND pinBus I0 input [31:0] pinBus I1 input [31:0] pinBus O output [31:0] fillcolor 1
load symbol RTL_AND13 work AND pinBus I0 input [3:0] pinBus I1 input [3:0] pinBus O output [3:0] fillcolor 1
load symbol RTL_AND86 work AND pin I0 input pin O output pinBus I1 input [4:0] fillcolor 1
load symbol RTL_ARSHIFT0 work RTL(>>>) pin I2 input.left pinBus I0 input.left [31:0] pinBus I1 input.left [2:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_ARSHIFT work RTL(>>>) pin I1 input.left pin I2 input.left pinBus I0 input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_EQ6 work RTL(=) pin O output.right pinBus I0 input.left [6:0] pinBus I1 input.left [6:0] fillcolor 1
load symbol RTL_EQ7 work RTL(=) pin O output.right pinBus I0 input.left [2:0] pinBus I1 input.left [2:0] fillcolor 1
load symbol RTL_EQ70 work RTL(=) pin O output.right pinBus I0 input.left [19:0] pinBus I1 input.left [19:0] fillcolor 1
load symbol RTL_EQ75 work RTL(=) pin O output.right pinBus I0 input.left [2:0] pinBus I1 input.left [0:0] fillcolor 1
load symbol RTL_EQ96 work RTL(=) pin O output.right pinBus I0 input.left [4:0] pinBus I1 input.left [4:0] fillcolor 1
load symbol RTL_EQ97 work RTL(=) pin O output.right pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] fillcolor 1
load symbol RTL_EQ72 work RTL(=) pin O output.right pinBus I0 input.left [10:0] pinBus I1 input.left [0:0] fillcolor 1
load symbol RTL_EQ73 work RTL(=) pin O output.right pinBus I0 input.left [12:0] pinBus I1 input.left [0:0] fillcolor 1
load symbol RTL_EQ work RTL(=) pin O output.right pinBus I0 input.left [1:0] pinBus I1 input.left [1:0] fillcolor 1
load symbol RTL_EQ1 work RTL(=) pin O output.right pinBus I0 input.left [1:0] pinBus I1 input.left [0:0] fillcolor 1
load symbol RTL_EQ95 work RTL(=) pin O output.right pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] fillcolor 1
load symbol RTL_GEQ work RTL(>=) pin O output.right pinBus I0 input.left [4:0] pinBus I1 input.left [4:0] fillcolor 1
load symbol RTL_INV22 work INV pin I0 input pin O output fillcolor 1
load symbol RTL_LSHIFT work RTL(<<) pin I2 input.left pinBus I0 input.left [31:0] pinBus I1 input.left [3:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_LSHIFT3 work RTL(<<) pin I2 input.left pinBus I0 input.left [31:0] pinBus I1 input.left [4:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_LSHIFT0 work RTL(<<) pin I2 input.left pinBus I0 input.left [31:0] pinBus I1 input.left [2:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_LSHIFT1 work RTL(<<) pin I1 input.left pin I2 input.left pinBus I0 input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_LSHIFT2 work RTL(<<) pin I2 input.left pinBus I0 input.left [3:0] pinBus I1 input.left [1:0] pinBus O output.right [3:0] fillcolor 1
load symbol RTL_LT work RTL(<) pin O output.right pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] fillcolor 1
load symbol RTL_MINUS work RTL(-) pinBus I0 input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_MUX5 work MUX pin S input.bot pinBus I0 input.left [1:0] pinBus I1 input.left [1:0] pinBus O output.right [1:0] fillcolor 1
load symbol RTL_MUX32 work MUX pin S input.bot pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_MUX60 work MUX pin S input.bot pinBus I0 input.left [63:0] pinBus I1 input.left [63:0] pinBus O output.right [63:0] fillcolor 1
load symbol RTL_MUX77 work MUX pin S input.bot pinBus I0 input.left [2:0] pinBus I1 input.left [2:0] pinBus O output.right [2:0] fillcolor 1
load symbol RTL_MUX3 work MUX pin S input.bot pinBus I0 input.left [3:0] pinBus I1 input.left [3:0] pinBus O output.right [3:0] fillcolor 1
load symbol RTL_NEQ work RTL(!=) pin O output.right pinBus I0 input.left [1:0] pinBus I1 input.left [1:0] fillcolor 1
load symbol RTL_NEQ0 work RTL(!=) pin I0 input.left pin I1 input.left pin O output.right fillcolor 1
load symbol RTL_OR27 work OR pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_OR work OR pinBus I0 input [31:0] pinBus I1 input [31:0] pinBus O output [31:0] fillcolor 1
load symbol RTL_REDUCTION_AND work AND pin O output pinBus I0 input [1:0] fillcolor 1
load symbol RTL_REDUCTION_OR5 work OR pin O output pinBus I0 input [1:0] fillcolor 1
load symbol RTL_REDUCTION_OR10 work OR pin O output pinBus I0 input [2:0] fillcolor 1
load symbol RTL_REDUCTION_OR12 work OR pin O output pinBus I0 input [4:0] fillcolor 1
load symbol RTL_REDUCTION_OR7 work OR pin O output pinBus I0 input [5:0] fillcolor 1
load symbol RTL_REDUCTION_OR0 work OR pin O output pinBus I0 input [6:0] fillcolor 1
load symbol RTL_RSHIFT work RTL(>>) pin I2 input.left pinBus I0 input.left [31:0] pinBus I1 input.left [2:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_RSHIFT0 work RTL(>>) pin I1 input.left pin I2 input.left pinBus I0 input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_XOR work XOR pinBus I0 input [31:0] pinBus I1 input [31:0] pinBus O output [31:0] fillcolor 1
load symbol RTL_MUX59 work MUX pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left pin I5 input.left pin O output.right pin S0 input.bot pin S1 input.bot pin S2 input.bot pin S3 input.bot pin S4 input.bot pin S5 input.bot fillcolor 1
load symbol RTL_MUX57 work MUX pin I1 input.left pin S0 input.bot pin S1 input.bot pin S2 input.bot pin S3 input.bot pin S4 input.bot pin S5 input.bot pinBus I0 input.left [31:0] pinBus I2 input.left [31:0] pinBus I3 input.left [31:0] pinBus I4 input.left [31:0] pinBus I5 input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_MUX169 work MUX pin O output.right pin S input.bot fillcolor 1
load symbol RTL_REG_SYNC__BREG_10 work GEN pin C input.clk.left pin CE input.left pin D input.left pin Q output.right pin RST input.top fillcolor 1
load symbol RTL_MUX171 work MUX pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left pin I5 input.left pin I6 input.left pin I7 input.left pin O output.right pinBus S input.bot [7:0] fillcolor 1
load symbol RTL_MUX107 work MUX pin S0 input.bot pin S1 input.bot pinBus I0 input.left [3:0] pinBus I1 input.left [3:0] pinBus I2 input.left [3:0] pinBus O output.right [3:0] fillcolor 1
load symbol RTL_MUX106 work MUX pin S0 input.bot pin S1 input.bot pin S2 input.bot pin S3 input.bot pin S4 input.bot pin S5 input.bot pin S6 input.bot pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus I2 input.left [7:0] pinBus I3 input.left [7:0] pinBus I4 input.left [7:0] pinBus I5 input.left [7:0] pinBus I6 input.left [7:0] pinBus I7 input.left [3:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_MUX109 work MUX pin S0 input.bot pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_MUX172 work MUX pin I0 input.left pin I1 input.left pin O output.right pin S input.bot fillcolor 1
load symbol RTL_MUX104 work MUX pin S input.bot pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_MUX108 work MUX pin S0 input.bot pin S1 input.bot pin S2 input.bot pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus I2 input.left [7:0] pinBus I3 input.left [7:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_MUX105 work MUX pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus I2 input.left [7:0] pinBus I3 input.left [7:0] pinBus I4 input.left [7:0] pinBus I5 input.left [7:0] pinBus I6 input.left [7:0] pinBus O output.right [7:0] pinBus S input.bot [7:0] fillcolor 1
load symbol RTL_MUX115 work MUX pin I0 input.left pin I1 input.left pin O output.right pin S0 input.bot fillcolor 1
load symbol RTL_MUX83 work MUX pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin O output.right pin S0 input.bot pin S1 input.bot pin S2 input.bot fillcolor 1
load symbol csdt2_regs work:csdt2_regs:NOFILE HIERBOX pin clk input.left pin wen input.left pinBus raddr1 input.left [5:0] pinBus raddr2 input.left [5:0] pinBus rdata1 output.right [31:0] pinBus rdata2 output.right [31:0] pinBus waddr input.left [5:0] pinBus wdata input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_MUX50 work MUX pin S0 input.bot pin S1 input.bot pin S2 input.bot pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus I2 input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_MUX72 work MUX pin S0 input.bot pin S1 input.bot pin S2 input.bot pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus I2 input.left [31:0] pinBus I3 input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_MUX39 work MUX pin S0 input.bot pin S1 input.bot pin S2 input.bot pin S3 input.bot pin S4 input.bot pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus I2 input.left [31:0] pinBus I3 input.left [31:0] pinBus I4 input.left [31:0] pinBus I5 input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_REG_SYNC__BREG_11 work GEN pin C input.clk.left pin D input.left pin Q output.right pin RST input.top fillcolor 1
load symbol RTL_REG__BREG_59 work GEN pin C input.clk.left pin D input.left pin Q output.right fillcolor 1
load symbol RTL_MUX34 work MUX pin S input.bot pinBus O output.right [31:0] fillcolor 1
load symbol RTL_REG__BREG_1 work GEN pin C input.clk.left pin CE input.left pin D input.left pin Q output.right fillcolor 1
load symbol RTL_EQ94 work RTL(=) pin O output.right pinBus I0 input.left [47:0] pinBus I1 input.left [0:0] fillcolor 1
load symbol RTL_REDUCTION_OR11 work OR pin O output pinBus I0 input [3:0] fillcolor 1
load symbol RTL_MUX89 work MUX pin I0 input.left pin I1 input.left pin O output.right pinBus S input.bot [7:0] fillcolor 1
load symbol RTL_ROM5 work GEN pin O output.right pinBus A input.left [7:0] fillcolor 1
load symbol RTL_MUX143 work MUX pinBus I0 input.left [4:0] pinBus I1 input.left [4:0] pinBus O output.right [4:0] pinBus S input.bot [7:0] fillcolor 1
load symbol RTL_MUX79 work MUX pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left pin I5 input.left pin O output.right pinBus S input.bot [7:0] fillcolor 1
load symbol RTL_MUX82 work MUX pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left pin I5 input.left pin I6 input.left pin I7 input.left pin O output.right pin S0 input.bot pin S1 input.bot pin S2 input.bot pin S3 input.bot pin S4 input.bot pin S5 input.bot pin S6 input.bot fillcolor 1
load symbol RTL_REG_SYNC__BREG_2 work GEN pin C input.clk.left pin CE input.left pin D input.left pin Q output.right pin RST input.top pin SET input.bot fillcolor 1
load symbol RTL_MUX125 work MUX pin I0 input.left pin I1 input.left pin I2 input.left pin O output.right pin S0 input.bot pin S1 input.bot fillcolor 1
load symbol RTL_MUX122 work MUX pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin O output.right pinBus S input.bot [7:0] fillcolor 1
load symbol RTL_MUX8 work MUX pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin O output.right pinBus S input.bot [1:0] fillcolor 1
load symbol RTL_MUX51 work MUX pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus I2 input.left [31:0] pinBus O output.right [31:0] pinBus S input.bot [1:0] fillcolor 1
load symbol RTL_MUX2 work MUX pinBus I0 input.left [3:0] pinBus I1 input.left [3:0] pinBus I2 input.left [3:0] pinBus O output.right [3:0] pinBus S input.bot [1:0] fillcolor 1
load symbol RTL_MUX52 work MUX pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus I2 input.left [31:0] pinBus I3 input.left [31:0] pinBus O output.right [31:0] pinBus S input.bot [1:0] fillcolor 1
load symbol RTL_MUX4 work MUX pinBus I0 input.left [1:0] pinBus I1 input.left [1:0] pinBus I2 input.left [1:0] pinBus I3 input.left [1:0] pinBus O output.right [1:0] pinBus S input.bot [1:0] fillcolor 1
load symbol RTL_MUX11 work MUX pin I0 input.left pin I1 input.left pin I2 input.left pin O output.right pinBus S input.bot [1:0] fillcolor 1
load symbol RTL_MUX137 work MUX pin S0 input.bot pin S1 input.bot pin S2 input.bot pinBus I0 input.left [1:0] pinBus I1 input.left [1:0] pinBus I2 input.left [1:0] pinBus O output.right [1:0] fillcolor 1
load symbol RTL_MUX136 work MUX pinBus I0 input.left [1:0] pinBus I1 input.left [1:0] pinBus I2 input.left [1:0] pinBus O output.right [1:0] pinBus S input.bot [7:0] fillcolor 1
load symbol RTL_MUX18 work MUX pinBus I0 input.left [3:0] pinBus I1 input.left [3:0] pinBus I2 input.left [3:0] pinBus I3 input.left [3:0] pinBus O output.right [3:0] pinBus S input.bot [1:0] fillcolor 1
load symbol RTL_LATCH work GEN pinBus D input.left [31:0] pinBus G input.left [31:0] pinBus Q output.right [31:0] fillcolor 1
load symbol RTL_MUX163 work MUX pin S0 input.bot pin S1 input.bot pin S2 input.bot pin S3 input.bot pin S4 input.bot pin S5 input.bot pin S6 input.bot pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus I2 input.left [31:0] pinBus I3 input.left [31:0] pinBus I4 input.left [31:0] pinBus I5 input.left [31:0] pinBus I6 input.left [31:0] pinBus I7 input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_MUX151 work MUX pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus I2 input.left [31:0] pinBus I3 input.left [31:0] pinBus O output.right [31:0] pinBus S input.bot [7:0] fillcolor 1
load symbol RTL_MUX162 work MUX pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus O output.right [31:0] pinBus S input.bot [7:0] fillcolor 1
load symbol RTL_MUX55 work MUX pin S0 input.bot pin S1 input.bot pin S2 input.bot pin S3 input.bot pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus I2 input.left [31:0] pinBus I3 input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_MUX54 work MUX pin S0 input.bot pin S1 input.bot pin S2 input.bot pin S3 input.bot pin S4 input.bot pin S5 input.bot pin S6 input.bot pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus I2 input.left [31:0] pinBus I3 input.left [31:0] pinBus I4 input.left [31:0] pinBus I5 input.left [31:0] pinBus I6 input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_MUX49 work MUX pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus I2 input.left [31:0] pinBus I3 input.left [31:0] pinBus I4 input.left [31:0] pinBus O output.right [31:0] pinBus S input.bot [7:0] fillcolor 1
load symbol RTL_MUX41 work MUX pin S0 input.bot pin S1 input.bot pin S2 input.bot pin S3 input.bot pin S4 input.bot pin S5 input.bot pin S6 input.bot pinBus I0 input.left [4:0] pinBus I1 input.left [4:0] pinBus I2 input.left [4:0] pinBus I3 input.left [4:0] pinBus I4 input.left [4:0] pinBus I5 input.left [4:0] pinBus I6 input.left [4:0] pinBus I7 input.left [4:0] pinBus O output.right [4:0] fillcolor 1
load symbol RTL_MUX48 work MUX pin S input.bot pinBus I0 input.left [4:0] pinBus I1 input.left [4:0] pinBus O output.right [4:0] fillcolor 1
load symbol RTL_MUX40 work MUX pinBus I0 input.left [4:0] pinBus I1 input.left [4:0] pinBus I2 input.left [4:0] pinBus O output.right [4:0] pinBus S input.bot [7:0] fillcolor 1
load symbol RTL_REG__BREG_1 work[4:0]ssww GEN pin C input.clk.left pin CE input.left pinBus D input.left [4:0] pinBus Q output.right [4:0] fillcolor 1 sandwich 3 prop @bundle 5
load symbol RTL_REG_SYNC__BREG_96 work[7:0]sswwww GEN pin C input.clk.left pin CE input.left pinBus D input.left [7:0] pinBus Q output.right [7:0] pinBus RST input.top [7:0] pinBus SET input.bot [7:0] fillcolor 1 sandwich 3 prop @bundle 8
load symbol RTL_REG__BREG_59 work[31:0]sww GEN pin C input.clk.left pinBus D input.left [31:0] pinBus Q output.right [31:0] fillcolor 1 sandwich 3 prop @bundle 32
load symbol RTL_REG__BREG_59 work[4:0]sww GEN pin C input.clk.left pinBus D input.left [4:0] pinBus Q output.right [4:0] fillcolor 1 sandwich 3 prop @bundle 5
load symbol RTL_REG__BREG_1 work[31:0]ssww GEN pin C input.clk.left pin CE input.left pinBus D input.left [31:0] pinBus Q output.right [31:0] fillcolor 1 sandwich 3 prop @bundle 32
load symbol RTL_REG_SYNC__BREG_4 work[63:0]sswws GEN pin C input.clk.left pin CE input.left pinBus D input.left [63:0] pinBus Q output.right [63:0] pin RST input.top fillcolor 1 sandwich 3 prop @bundle 64
load symbol RTL_REG_SYNC__BREG_104 work[31:0]sswws GEN pin C input.clk.left pin CE input.left pinBus D input.left [31:0] pinBus Q output.right [31:0] pin RST input.top fillcolor 1 sandwich 3 prop @bundle 32
load symbol RTL_REG__BREG_5 work[31:0]swww GEN pin C input.clk.left pinBus CE input.left [31:0] pinBus D input.left [31:0] pinBus Q output.right [31:0] fillcolor 1 sandwich 3 prop @bundle 32
load symbol RTL_REG__BREG_1 work[3:0]ssww GEN pin C input.clk.left pin CE input.left pinBus D input.left [3:0] pinBus Q output.right [3:0] fillcolor 1 sandwich 3 prop @bundle 4
load symbol RTL_REG__BREG_1 work[1:0]ssww GEN pin C input.clk.left pin CE input.left pinBus D input.left [1:0] pinBus Q output.right [1:0] fillcolor 1 sandwich 3 prop @bundle 2
load symbol RTL_REG_SYNC__BREG_4 work[31:0]sswws GEN pin C input.clk.left pin CE input.left pinBus D input.left [31:0] pinBus Q output.right [31:0] pin RST input.top fillcolor 1 sandwich 3 prop @bundle 32
load symbol RTL_REG_SYNC__BREG_66 work[63:0]swww GEN pin C input.clk.left pinBus D input.left [63:0] pinBus Q output.right [63:0] pinBus RST input.top [63:0] fillcolor 1 sandwich 3 prop @bundle 64
load symbol RTL_REG_SYNC__BREG_4 work[1:0]sswww GEN pin C input.clk.left pin CE input.left pinBus D input.left [1:0] pinBus Q output.right [1:0] pinBus RST input.top [1:0] fillcolor 1 sandwich 3 prop @bundle 2
load symbol RTL_REG__BREG_5 work[35:0]sssw GEN pin C input.clk.left pin CE input.left pin D input.left pinBus Q output.right [35:0] fillcolor 1 sandwich 3 prop @bundle 36
load symbol RTL_REG__BREG_5 work[31:0]ssww GEN pin C input.clk.left pin CE input.left pinBus D input.left [31:0] pinBus Q output.right [31:0] fillcolor 1 sandwich 3 prop @bundle 32
load port clk input -pg 1 -lvl 0 -x 0 -y 4530
load port mem_instr output -pg 1 -lvl 71 -x 31520 -y 6820
load port mem_la_read output -pg 1 -lvl 71 -x 31520 -y 6950
load port mem_la_write output -pg 1 -lvl 71 -x 31520 -y 6920
load port mem_ready input -pg 1 -lvl 0 -x 0 -y 4770
load port mem_valid output -pg 1 -lvl 71 -x 31520 -y 4860
load port pcpi_ready input -pg 1 -lvl 0 -x 0 -y 80
load port pcpi_valid output -pg 1 -lvl 71 -x 31520 -y 5300
load port pcpi_wait input -pg 1 -lvl 0 -x 0 -y 110
load port pcpi_wr input -pg 1 -lvl 0 -x 0 -y 140
load port resetn input -pg 1 -lvl 0 -x 0 -y 6020
load port trace_valid output -pg 1 -lvl 71 -x 31520 -y 7140
load port trap output -pg 1 -lvl 71 -x 31520 -y 7490
load portBus eoi output [31:0] -attr @name eoi[31:0] -pg 1 -lvl 71 -x 31520 -y 7330
load portBus irq input [31:0] -attr @name irq[31:0] -pg 1 -lvl 0 -x 0 -y 20
load portBus mem_addr output [31:0] -attr @name mem_addr[31:0] -pg 1 -lvl 71 -x 31520 -y 6560
load portBus mem_la_addr output [31:0] -attr @name mem_la_addr[31:0] -pg 1 -lvl 71 -x 31520 -y 6640
load portBus mem_la_wdata output [31:0] -attr @name mem_la_wdata[31:0] -pg 1 -lvl 71 -x 31520 -y 5710
load portBus mem_la_wstrb output [3:0] -attr @name mem_la_wstrb[3:0] -pg 1 -lvl 71 -x 31520 -y 5800
load portBus mem_rdata input [31:0] -attr @name mem_rdata[31:0] -pg 1 -lvl 0 -x 0 -y 4570
load portBus mem_wdata output [31:0] -attr @name mem_wdata[31:0] -pg 1 -lvl 71 -x 31520 -y 5940
load portBus mem_wstrb output [3:0] -attr @name mem_wstrb[3:0] -pg 1 -lvl 71 -x 31520 -y 6420
load portBus pcpi_insn output [31:0] -attr @name pcpi_insn[31:0] -pg 1 -lvl 71 -x 31520 -y 5460
load portBus pcpi_rd input [31:0] -attr @name pcpi_rd[31:0] -pg 1 -lvl 0 -x 0 -y 50
load portBus pcpi_rs1 output [31:0] -attr @name pcpi_rs1[31:0] -pg 1 -lvl 71 -x 31520 -y 5610
load portBus pcpi_rs2 output [31:0] -attr @name pcpi_rs2[31:0] -pg 1 -lvl 71 -x 31520 -y 6040
load portBus trace_data output [35:0] -attr @name trace_data[35:0] -pg 1 -lvl 71 -x 31520 -y 5090
load inst RTL_ADD RTL_ADD3 work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 14 -x 7240 -y 5890
load inst RTL_ADD__0 RTL_ADD3 work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 14 -x 7240 -y 5800
load inst RTL_ADD__1 RTL_ADD5 work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[63:0] -pinBusAttr O @name O[63:0] -pg 1 -lvl 12 -x 5550 -y 3820
load inst RTL_ADD__10 RTL_ADD7 work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 23 -x 12680 -y 6510
load inst RTL_ADD__2 RTL_ADD5 work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[63:0] -pinBusAttr O @name O[63:0] -pg 1 -lvl 12 -x 5550 -y 3910
load inst RTL_ADD__3 RTL_ADD3 work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 15 -x 8140 -y 6580
load inst RTL_ADD__4 RTL_ADD3 work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 16 -x 9060 -y 6820
load inst RTL_ADD__5 RTL_ADD7 work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 16 -x 9060 -y 6910
load inst RTL_ADD__6 RTL_ADD0 work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[4:0] -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr V=B\"1100\" -pinBusAttr O @name O[4:0] -pg 1 -lvl 26 -x 13840 -y 6320
load inst RTL_ADD__7 RTL_ADD1 work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[4:0] -pinBusAttr I1 @name I1[1:0] -pinBusAttr O @name O[4:0] -pg 1 -lvl 26 -x 13840 -y 6440
load inst RTL_ADD__8 RTL_ADD3 work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 68 -x 29910 -y 5110
load inst RTL_ADD__9 RTL_ADD3 work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 68 -x 29910 -y 5200
load inst RTL_AND RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 5 -x 1220 -y 4290
load inst RTL_AND__0 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 38 -x 19030 -y 7090
load inst RTL_AND__1 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 39 -x 19300 -y 7110
load inst RTL_AND__10 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 7 -x 2160 -y 2410
load inst RTL_AND__11 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 7 -x 2160 -y 2480
load inst RTL_AND__12 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 7 -x 2160 -y 2550
load inst RTL_AND__13 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 7 -x 2160 -y 2620
load inst RTL_AND__14 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 7 -x 2160 -y 2690
load inst RTL_AND__15 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3030 -y 910
load inst RTL_AND__16 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 7 -x 2160 -y 2760
load inst RTL_AND__17 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3030 -y 980
load inst RTL_AND__18 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 7 -x 2160 -y 2830
load inst RTL_AND__19 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3030 -y 1080
load inst RTL_AND__2 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 39 -x 19300 -y 7180
load inst RTL_AND__20 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 7 -x 2160 -y 2900
load inst RTL_AND__21 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3030 -y 1170
load inst RTL_AND__22 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 7 -x 2160 -y 2970
load inst RTL_AND__23 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3030 -y 1280
load inst RTL_AND__24 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 9 -x 3720 -y 3710
load inst RTL_AND__25 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 10 -x 4260 -y 3780
load inst RTL_AND__26 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 9 -x 3720 -y 3890
load inst RTL_AND__27 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 10 -x 4260 -y 3960
load inst RTL_AND__28 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 7 -x 2160 -y 3040
load inst RTL_AND__29 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3030 -y 1350
load inst RTL_AND__3 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 49 -x 22870 -y 6780
load inst RTL_AND__30 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 54 -x 24870 -y 5590
load inst RTL_AND__31 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 55 -x 25260 -y 5820
load inst RTL_AND__32 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 54 -x 24870 -y 5660
load inst RTL_AND__33 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 55 -x 25260 -y 5940
load inst RTL_AND__34 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 7 -x 2160 -y 3110
load inst RTL_AND__35 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3030 -y 1450
load inst RTL_AND__36 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 7 -x 2160 -y 3180
load inst RTL_AND__37 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3030 -y 1630
load inst RTL_AND__38 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 7 -x 2160 -y 3250
load inst RTL_AND__39 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3030 -y 1700
load inst RTL_AND__4 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 29 -x 15360 -y 6550
load inst RTL_AND__40 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3030 -y 1770
load inst RTL_AND__41 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3030 -y 1840
load inst RTL_AND__42 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3030 -y 2630
load inst RTL_AND__43 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 10 -x 4260 -y 6520
load inst RTL_AND__44 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 10 -x 4260 -y 6610
load inst RTL_AND__45 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 55 -x 25260 -y 6060
load inst RTL_AND__46 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3030 -y 2700
load inst RTL_AND__47 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3030 -y 2770
load inst RTL_AND__48 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3030 -y 2840
load inst RTL_AND__49 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3030 -y 2970
load inst RTL_AND__5 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 29 -x 15360 -y 6620
load inst RTL_AND__50 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3030 -y 3340
load inst RTL_AND__51 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3030 -y 3430
load inst RTL_AND__52 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3030 -y 3500
load inst RTL_AND__53 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3030 -y 3570
load inst RTL_AND__54 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3030 -y 3640
load inst RTL_AND__55 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 10 -x 4260 -y 6700
load inst RTL_AND__56 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3030 -y 3710
load inst RTL_AND__57 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 10 -x 4260 -y 6790
load inst RTL_AND__58 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3030 -y 3780
load inst RTL_AND__59 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3030 -y 3850
load inst RTL_AND__6 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 55 -x 25260 -y 5720
load inst RTL_AND__60 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 14 -x 7240 -y 4770
load inst RTL_AND__61 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 11 -x 4910 -y 4730
load inst RTL_AND__62 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 11 -x 4910 -y 5090
load inst RTL_AND__63 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 11 -x 4910 -y 5450
load inst RTL_AND__64 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 13 -x 6430 -y 4860
load inst RTL_AND__65 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 12 -x 5550 -y 4730
load inst RTL_AND__66 RTL_AND work -attr @cell(#000000) RTL_AND -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 15 -x 8140 -y 5640
load inst RTL_AND__67 RTL_AND work -attr @cell(#000000) RTL_AND -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr V=X\"FFFFFFFE\" -pinBusAttr O @name O[31:0] -pg 1 -lvl 19 -x 10800 -y 6780
load inst RTL_AND__68 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 13 -x 6430 -y 5560
load inst RTL_AND__69 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 13 -x 6430 -y 5930
load inst RTL_AND__7 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3030 -y 210
load inst RTL_AND__70 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 13 -x 6430 -y 6000
load inst RTL_AND__71 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 15 -x 8140 -y 6190
load inst RTL_AND__72 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 20 -x 11260 -y 5970
load inst RTL_AND__73 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 44 -x 20590 -y 5770
load inst RTL_AND__74 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 42 -x 19990 -y 6930
load inst RTL_AND__75 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 60 -x 26770 -y 5820
load inst RTL_AND__76 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 25 -x 13440 -y 4270
load inst RTL_AND__77 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 26 -x 13840 -y 4440
load inst RTL_AND__78 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 29 -x 15360 -y 7130
load inst RTL_AND__79 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 29 -x 15360 -y 7230
load inst RTL_AND__8 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3030 -y 330
load inst RTL_AND__80 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 30 -x 15950 -y 7100
load inst RTL_AND__81 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 30 -x 15950 -y 7170
load inst RTL_AND__82 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 31 -x 16710 -y 7030
load inst RTL_AND__83 RTL_AND work -attr @cell(#000000) RTL_AND -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr V=X\"FFFFFFFE\" -pinBusAttr O @name O[31:0] -pg 1 -lvl 67 -x 29190 -y 6110
load inst RTL_AND__84 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 67 -x 29190 -y 6200
load inst RTL_AND__85 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 69 -x 30790 -y 6980
load inst RTL_AND__86 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 69 -x 30790 -y 7080
load inst RTL_AND__87 RTL_AND13 work -attr @cell(#000000) RTL_AND -pinBusAttr I0 @name I0[3:0] -pinBusAttr I1 @name I1[3:0] -pinBusAttr O @name O[3:0] -pg 1 -lvl 67 -x 29190 -y 6270
load inst RTL_AND__88 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 20 -x 11260 -y 6190
load inst RTL_AND__89 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 23 -x 12680 -y 6590
load inst RTL_AND__9 RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3030 -y 800
load inst RTL_AND__90 RTL_AND86 work -attr @cell(#000000) RTL_AND -pinBusAttr I1 @name I1[4:0] -pg 1 -lvl 24 -x 13060 -y 6590
load inst RTL_ARSHIFT RTL_ARSHIFT0 work -attr @cell(#000000) RTL_ARSHIFT -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"100\" -pinBusAttr O @name O[31:0] -pg 1 -lvl 66 -x 28580 -y 3850
load inst RTL_ARSHIFT__0 RTL_ARSHIFT work -attr @cell(#000000) RTL_ARSHIFT -pinBusAttr I0 @name I0[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 66 -x 28580 -y 5050
load inst RTL_EQ RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"1100111\" -pg 1 -lvl 4 -x 900 -y 4280
load inst RTL_EQ__0 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pg 1 -lvl 4 -x 900 -y 4370
load inst RTL_EQ__1 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"1101111\" -pg 1 -lvl 55 -x 25260 -y 6980
load inst RTL_EQ__10 RTL_EQ70 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[19:0] -pinBusAttr I1 @name I1[19:0] -pinBusAttr I1 @attr V=X\"C8202\" -pg 1 -lvl 7 -x 2160 -y 410
load inst RTL_EQ__11 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"1110011\" -pg 1 -lvl 7 -x 2160 -y 720
load inst RTL_EQ__12 RTL_EQ70 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[19:0] -pinBusAttr I1 @name I1[19:0] -pinBusAttr I1 @attr V=X\"C0202\" -pg 1 -lvl 7 -x 2160 -y 810
load inst RTL_EQ__13 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"1110011\" -pg 1 -lvl 6 -x 1590 -y 2000
load inst RTL_EQ__14 RTL_EQ70 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[19:0] -pinBusAttr I1 @name I1[19:0] -pinBusAttr I1 @attr V=X\"C8002\" -pg 1 -lvl 6 -x 1590 -y 2090
load inst RTL_EQ__15 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"1110011\" -pg 1 -lvl 6 -x 1590 -y 2180
load inst RTL_EQ__16 RTL_EQ70 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[19:0] -pinBusAttr I1 @name I1[19:0] -pinBusAttr I1 @attr V=X\"C8102\" -pg 1 -lvl 6 -x 1590 -y 2270
load inst RTL_EQ__17 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"1110011\" -pg 1 -lvl 6 -x 1590 -y 2360
load inst RTL_EQ__18 RTL_EQ70 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[19:0] -pinBusAttr I1 @name I1[19:0] -pinBusAttr I1 @attr V=X\"C0002\" -pg 1 -lvl 6 -x 1590 -y 2450
load inst RTL_EQ__19 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"1110011\" -pg 1 -lvl 6 -x 1590 -y 2540
load inst RTL_EQ__2 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"0010111\" -pg 1 -lvl 10 -x 4260 -y 4630
load inst RTL_EQ__20 RTL_EQ70 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[19:0] -pinBusAttr I1 @name I1[19:0] -pinBusAttr I1 @attr V=X\"C0102\" -pg 1 -lvl 6 -x 1590 -y 2630
load inst RTL_EQ__21 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"0110011\" -pg 1 -lvl 5 -x 1220 -y 4800
load inst RTL_EQ__22 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pg 1 -lvl 6 -x 1590 -y 2730
load inst RTL_EQ__23 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pg 1 -lvl 7 -x 2160 -y 900
load inst RTL_EQ__24 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"110\" -pg 1 -lvl 6 -x 1590 -y 2820
load inst RTL_EQ__25 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pg 1 -lvl 7 -x 2160 -y 990
load inst RTL_EQ__26 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"101\" -pg 1 -lvl 6 -x 1590 -y 2910
load inst RTL_EQ__27 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"0100000\" -pg 1 -lvl 7 -x 2160 -y 1090
load inst RTL_EQ__28 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"101\" -pg 1 -lvl 6 -x 1590 -y 3010
load inst RTL_EQ__29 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pg 1 -lvl 7 -x 2160 -y 1180
load inst RTL_EQ__3 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"0110111\" -pg 1 -lvl 10 -x 4260 -y 4730
load inst RTL_EQ__30 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"100\" -pg 1 -lvl 6 -x 1590 -y 3100
load inst RTL_EQ__31 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pg 1 -lvl 7 -x 2160 -y 1270
load inst RTL_EQ__32 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"011\" -pg 1 -lvl 8 -x 3030 -y 3950
load inst RTL_EQ__33 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pg 1 -lvl 9 -x 3720 -y 3790
load inst RTL_EQ__34 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"010\" -pg 1 -lvl 8 -x 3030 -y 4050
load inst RTL_EQ__35 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pg 1 -lvl 9 -x 3720 -y 3970
load inst RTL_EQ__36 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"001\" -pg 1 -lvl 6 -x 1590 -y 3190
load inst RTL_EQ__37 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pg 1 -lvl 7 -x 2160 -y 1360
load inst RTL_EQ__38 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pg 1 -lvl 53 -x 24340 -y 5450
load inst RTL_EQ__39 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"0100000\" -pg 1 -lvl 54 -x 24870 -y 5840
load inst RTL_EQ__4 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"0010011\" -pg 1 -lvl 5 -x 1220 -y 4560
load inst RTL_EQ__40 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pg 1 -lvl 53 -x 24340 -y 5670
load inst RTL_EQ__41 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pg 1 -lvl 54 -x 24870 -y 5940
load inst RTL_EQ__42 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"101\" -pg 1 -lvl 6 -x 1590 -y 3280
load inst RTL_EQ__43 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"0100000\" -pg 1 -lvl 7 -x 2160 -y 1460
load inst RTL_EQ__44 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"101\" -pg 1 -lvl 6 -x 1590 -y 3370
load inst RTL_EQ__45 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pg 1 -lvl 7 -x 2160 -y 1550
load inst RTL_EQ__46 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"001\" -pg 1 -lvl 6 -x 1590 -y 3460
load inst RTL_EQ__47 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pg 1 -lvl 7 -x 2160 -y 1640
load inst RTL_EQ__48 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pg 1 -lvl 7 -x 2160 -y 1760
load inst RTL_EQ__49 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"110\" -pg 1 -lvl 7 -x 2160 -y 1850
load inst RTL_EQ__5 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"0000011\" -pg 1 -lvl 5 -x 1220 -y 4680
load inst RTL_EQ__50 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"100\" -pg 1 -lvl 7 -x 2160 -y 1940
load inst RTL_EQ__51 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"011\" -pg 1 -lvl 9 -x 3720 -y 6530
load inst RTL_EQ__52 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"010\" -pg 1 -lvl 9 -x 3720 -y 6620
load inst RTL_EQ__53 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pg 1 -lvl 54 -x 24870 -y 6060
load inst RTL_EQ__54 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"010\" -pg 1 -lvl 7 -x 2160 -y 2030
load inst RTL_EQ__55 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"001\" -pg 1 -lvl 7 -x 2160 -y 2120
load inst RTL_EQ__56 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pg 1 -lvl 7 -x 2160 -y 2210
load inst RTL_EQ__57 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"101\" -pg 1 -lvl 7 -x 2160 -y 2310
load inst RTL_EQ__58 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"100\" -pg 1 -lvl 7 -x 2160 -y 3350
load inst RTL_EQ__59 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"010\" -pg 1 -lvl 7 -x 2160 -y 3440
load inst RTL_EQ__6 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"1100011\" -pg 1 -lvl 6 -x 1590 -y 1910
load inst RTL_EQ__60 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"001\" -pg 1 -lvl 7 -x 2160 -y 3530
load inst RTL_EQ__61 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pg 1 -lvl 7 -x 2160 -y 3620
load inst RTL_EQ__62 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pg 1 -lvl 7 -x 2160 -y 3740
load inst RTL_EQ__63 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"110\" -pg 1 -lvl 9 -x 3720 -y 6710
load inst RTL_EQ__64 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"101\" -pg 1 -lvl 7 -x 2160 -y 3830
load inst RTL_EQ__65 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"100\" -pg 1 -lvl 9 -x 3720 -y 6800
load inst RTL_EQ__66 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"001\" -pg 1 -lvl 7 -x 2160 -y 3920
load inst RTL_EQ__67 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pg 1 -lvl 7 -x 2160 -y 4010
load inst RTL_EQ__68 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"101\" -pg 1 -lvl 10 -x 4260 -y 4820
load inst RTL_EQ__69 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"0100000\" -pg 1 -lvl 10 -x 4260 -y 4920
load inst RTL_EQ__7 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"0001111\" -pg 1 -lvl 7 -x 2160 -y 130
load inst RTL_EQ__70 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"101\" -pg 1 -lvl 10 -x 4260 -y 5010
load inst RTL_EQ__71 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pg 1 -lvl 10 -x 4260 -y 5100
load inst RTL_EQ__72 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"001\" -pg 1 -lvl 10 -x 4260 -y 5280
load inst RTL_EQ__73 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pg 1 -lvl 10 -x 4260 -y 5370
load inst RTL_EQ__74 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pg 1 -lvl 10 -x 4260 -y 5490
load inst RTL_EQ__75 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"110\" -pg 1 -lvl 10 -x 4260 -y 5580
load inst RTL_EQ__76 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"100\" -pg 1 -lvl 10 -x 4260 -y 5670
load inst RTL_EQ__77 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"011\" -pg 1 -lvl 10 -x 4260 -y 5760
load inst RTL_EQ__78 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"010\" -pg 1 -lvl 10 -x 4260 -y 5860
load inst RTL_EQ__79 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pg 1 -lvl 10 -x 4260 -y 5950
load inst RTL_EQ__8 RTL_EQ75 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1 -pg 1 -lvl 7 -x 2160 -y 220
load inst RTL_EQ__80 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"101\" -pg 1 -lvl 12 -x 5550 -y 5590
load inst RTL_EQ__81 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"0100000\" -pg 1 -lvl 12 -x 5550 -y 5680
load inst RTL_EQ__82 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"101\" -pg 1 -lvl 12 -x 5550 -y 5770
load inst RTL_EQ__83 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pg 1 -lvl 12 -x 5550 -y 5870
load inst RTL_EQ__84 RTL_EQ7 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[2:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"001\" -pg 1 -lvl 12 -x 5550 -y 5970
load inst RTL_EQ__85 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pg 1 -lvl 12 -x 5550 -y 6060
load inst RTL_EQ__86 RTL_EQ96 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[4:0] -pinBusAttr I1 @name I1[4:0] -pg 1 -lvl 30 -x 15950 -y 6280
load inst RTL_EQ__87 RTL_EQ97 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pg 1 -lvl 13 -x 6430 -y 3130
load inst RTL_EQ__88 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"0100011\" -pg 1 -lvl 42 -x 19990 -y 6770
load inst RTL_EQ__89 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"1110011\" -pg 1 -lvl 24 -x 13060 -y 4190
load inst RTL_EQ__9 RTL_EQ6 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[6:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"1110011\" -pg 1 -lvl 7 -x 2160 -y 320
load inst RTL_EQ__90 RTL_EQ72 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[10:0] -pinBusAttr I1 @name I1 -pg 1 -lvl 24 -x 13060 -y 4280
load inst RTL_EQ__91 RTL_EQ73 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[12:0] -pinBusAttr I1 @name I1 -pg 1 -lvl 25 -x 13440 -y 4450
load inst RTL_EQ__92 RTL_EQ work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[1:0] -pinBusAttr I1 @name I1[1:0] -pg 1 -lvl 28 -x 14860 -y 6700
load inst RTL_EQ__93 RTL_EQ work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[1:0] -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr V=B\"01\" -pg 1 -lvl 28 -x 14860 -y 6800
load inst RTL_EQ__94 RTL_EQ1 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[1:0] -pinBusAttr I1 @name I1 -pg 1 -lvl 68 -x 29910 -y 7020
load inst RTL_EQ__95 RTL_EQ1 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[1:0] -pinBusAttr I1 @name I1 -pg 1 -lvl 68 -x 29910 -y 7140
load inst RTL_EQ__96 RTL_EQ95 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr V=B\"01000000\" -pg 1 -lvl 21 -x 11730 -y 6670
load inst RTL_GEQ RTL_GEQ work -attr @cell(#000000) RTL_GEQ -pinBusAttr I0 @name I0[4:0] -pinBusAttr I1 @name I1[4:0] -pinBusAttr I1 @attr V=B\"00100\" -pg 1 -lvl 26 -x 13840 -y 6530
load inst RTL_INV RTL_INV22 work -attr @cell(#000000) RTL_INV -pg 1 -lvl 9 -x 3720 -y 7540
load inst RTL_INV__0 RTL_INV22 work -attr @cell(#000000) RTL_INV -pg 1 -lvl 8 -x 3030 -y 7440
load inst RTL_INV__1 RTL_INV22 work -attr @cell(#000000) RTL_INV -pg 1 -lvl 5 -x 1220 -y 6160
load inst RTL_INV__10 RTL_INV22 work -attr @cell(#000000) RTL_INV -pg 1 -lvl 54 -x 24870 -y 5750
load inst RTL_INV__11 RTL_INV22 work -attr @cell(#000000) RTL_INV -pg 1 -lvl 13 -x 6430 -y 4680
load inst RTL_INV__12 RTL_INV22 work -attr @cell(#000000) RTL_INV -pg 1 -lvl 19 -x 10800 -y 6030
load inst RTL_INV__13 RTL_INV22 work -attr @cell(#000000) RTL_INV -pg 1 -lvl 14 -x 7240 -y 3860
load inst RTL_INV__14 RTL_INV22 work -attr @cell(#000000) RTL_INV -pg 1 -lvl 14 -x 7240 -y 3940
load inst RTL_INV__15 RTL_INV22 work -attr @cell(#000000) RTL_INV -pg 1 -lvl 14 -x 7240 -y 4020
load inst RTL_INV__16 RTL_INV22 work -attr @cell(#000000) RTL_INV -pg 1 -lvl 43 -x 20250 -y 5660
load inst RTL_INV__17 RTL_INV22 work -attr @cell(#000000) RTL_INV -pg 1 -lvl 43 -x 20250 -y 7030
load inst RTL_INV__18 RTL_INV22 work -attr @cell(#000000) RTL_INV -pg 1 -lvl 59 -x 26510 -y 5760
load inst RTL_INV__19 RTL_INV22 work -attr @cell(#000000) RTL_INV -pg 1 -lvl 59 -x 26510 -y 5830
load inst RTL_INV__2 RTL_INV22 work -attr @cell(#000000) RTL_INV -pg 1 -lvl 6 -x 1590 -y 4830
load inst RTL_INV__20 RTL_INV22 work -attr @cell(#000000) RTL_INV -pg 1 -lvl 67 -x 29190 -y 5480
load inst RTL_INV__21 RTL_INV22 work -attr @cell(#000000) RTL_INV -pg 1 -lvl 19 -x 10800 -y 6120
load inst RTL_INV__3 RTL_INV22 work -attr @cell(#000000) RTL_INV -pg 1 -lvl 9 -x 3720 -y 7380
load inst RTL_INV__4 RTL_INV22 work -attr @cell(#000000) RTL_INV -pg 1 -lvl 2 -x 310 -y 7380
load inst RTL_INV__5 RTL_INV22 work -attr @cell(#000000) RTL_INV -pg 1 -lvl 64 -x 27820 -y 7310
load inst RTL_INV__6 RTL_INV22 work -attr @cell(#000000) RTL_INV -pg 1 -lvl 65 -x 28180 -y 7230
load inst RTL_INV__7 RTL_INV22 work -attr @cell(#000000) RTL_INV -pg 1 -lvl 6 -x 1590 -y 4910
load inst RTL_INV__8 RTL_INV22 work -attr @cell(#000000) RTL_INV -pg 1 -lvl 28 -x 14860 -y 6460
load inst RTL_INV__9 RTL_INV22 work -attr @cell(#000000) RTL_INV -pg 1 -lvl 28 -x 14860 -y 6610
load inst RTL_LSHIFT RTL_LSHIFT work -attr @cell(#000000) RTL_LSHIFT -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr V=B\"1100\" -pinBusAttr O @name O[31:0] -pg 1 -lvl 12 -x 5550 -y 6440
load inst RTL_LSHIFT__0 RTL_LSHIFT3 work -attr @cell(#000000) RTL_LSHIFT -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[4:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 15 -x 8140 -y 5760
load inst RTL_LSHIFT__1 RTL_LSHIFT0 work -attr @cell(#000000) RTL_LSHIFT -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"100\" -pinBusAttr O @name O[31:0] -pg 1 -lvl 66 -x 28580 -y 3950
load inst RTL_LSHIFT__2 RTL_LSHIFT1 work -attr @cell(#000000) RTL_LSHIFT -pinBusAttr I0 @name I0[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 66 -x 28580 -y 4950
load inst RTL_LSHIFT__3 RTL_LSHIFT2 work -attr @cell(#000000) RTL_LSHIFT -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr V=B\"0001\" -pinBusAttr I1 @name I1[1:0] -pinBusAttr O @name O[3:0] -pg 1 -lvl 69 -x 30790 -y 5930
load inst RTL_LT RTL_LT work -attr @cell(#000000) RTL_LT -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pg 1 -lvl 13 -x 6430 -y 3220
load inst RTL_LT__0 RTL_LT work -attr @cell(#000000) RTL_LT -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pg 1 -lvl 13 -x 6430 -y 3310
load inst RTL_MINUS RTL_MINUS work -attr @cell(#000000) RTL_MINUS -pinBusAttr I0 @name I0[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 13 -x 6430 -y 6100
load inst RTL_MUX RTL_MUX5 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[1:0] -pg 1 -lvl 65 -x 28180 -y 6840
load inst RTL_MUX__0 RTL_MUX32 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 26 -x 13840 -y 5860
load inst RTL_MUX__1 RTL_MUX32 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 15 -x 8140 -y 5860
load inst RTL_MUX__10 RTL_MUX32 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 23 -x 12680 -y 6840
load inst RTL_MUX__2 RTL_MUX60 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[63:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[63:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[63:0] -pg 1 -lvl 12 -x 5550 -y 6170
load inst RTL_MUX__3 RTL_MUX32 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 14 -x 7240 -y 6620
load inst RTL_MUX__4 RTL_MUX32 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 18 -x 10300 -y 6780
load inst RTL_MUX__5 RTL_MUX77 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[2:0] -pinBusAttr I0 @attr V=B\"010\",\ S=1'b1 -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"100\",\ S=default -pinBusAttr O @name O[2:0] -pg 1 -lvl 15 -x 8140 -y 6890
load inst RTL_MUX__6 RTL_MUX32 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 20 -x 11260 -y 6370
load inst RTL_MUX__7 RTL_MUX32 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 67 -x 29190 -y 5350
load inst RTL_MUX__8 RTL_MUX3 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr V=B\"1100\",\ S=1'b1 -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr V=B\"0011\",\ S=default -pinBusAttr O @name O[3:0] -pg 1 -lvl 69 -x 30790 -y 5630
load inst RTL_MUX__9 RTL_MUX77 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[2:0] -pinBusAttr I0 @attr V=B\"010\",\ S=1'b1 -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"100\",\ S=default -pinBusAttr O @name O[2:0] -pg 1 -lvl 22 -x 12240 -y 6350
load inst RTL_NEQ RTL_NEQ work -attr @cell(#000000) RTL_NEQ -pinBusAttr I0 @name I0[1:0] -pinBusAttr I1 @name I1[1:0] -pg 1 -lvl 28 -x 14860 -y 7140
load inst RTL_NEQ__0 RTL_NEQ0 work -attr @cell(#000000) RTL_NEQ -pg 1 -lvl 28 -x 14860 -y 7240
load inst RTL_OR RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 9 -x 3720 -y 7450
load inst RTL_OR__0 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 7 -x 2160 -y 6370
load inst RTL_OR__1 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 3 -x 590 -y 7390
load inst RTL_OR__10 RTL_OR work -attr @cell(#000000) RTL_OR -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 15 -x 8140 -y 5180
load inst RTL_OR__11 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 15 -x 8140 -y 5250
load inst RTL_OR__12 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 15 -x 8140 -y 5370
load inst RTL_OR__13 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 15 -x 8140 -y 5440
load inst RTL_OR__14 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 10 -x 4260 -y 4130
load inst RTL_OR__15 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 10 -x 4260 -y 4200
load inst RTL_OR__16 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 66 -x 28580 -y 4050
load inst RTL_OR__17 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 66 -x 28580 -y 4120
load inst RTL_OR__18 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 66 -x 28580 -y 4320
load inst RTL_OR__19 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 66 -x 28580 -y 4650
load inst RTL_OR__2 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 64 -x 27820 -y 7120
load inst RTL_OR__20 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 66 -x 28580 -y 4830
load inst RTL_OR__21 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 66 -x 28580 -y 5140
load inst RTL_OR__22 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 62 -x 27330 -y 7120
load inst RTL_OR__23 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 63 -x 27520 -y 7120
load inst RTL_OR__24 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 68 -x 29910 -y 4860
load inst RTL_OR__25 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 28 -x 14860 -y 5420
load inst RTL_OR__26 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 29 -x 15360 -y 7330
load inst RTL_OR__27 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 68 -x 29910 -y 7260
load inst RTL_OR__28 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 68 -x 29910 -y 7330
load inst RTL_OR__29 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 67 -x 29190 -y 7250
load inst RTL_OR__3 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 65 -x 28180 -y 7320
load inst RTL_OR__30 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 68 -x 29910 -y 7400
load inst RTL_OR__31 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 66 -x 28580 -y 6650
load inst RTL_OR__32 RTL_OR work -attr @cell(#000000) RTL_OR -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 23 -x 12680 -y 6400
load inst RTL_OR__4 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 37 -x 18670 -y 7220
load inst RTL_OR__5 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 38 -x 19030 -y 7300
load inst RTL_OR__6 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 40 -x 19470 -y 7170
load inst RTL_OR__7 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 8 -x 3030 -y 2450
load inst RTL_OR__8 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 8 -x 3030 -y 2560
load inst RTL_OR__9 RTL_OR27 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 13 -x 6430 -y 4790
load inst RTL_REDUCTION_AND RTL_REDUCTION_AND work -attr @cell(#000000) RTL_REDUCTION_AND -pinBusAttr I0 @name I0[1:0] -pg 1 -lvl 38 -x 19030 -y 7160
load inst RTL_REDUCTION_OR RTL_REDUCTION_OR5 work -attr @cell(#000000) RTL_REDUCTION_OR -pinBusAttr I0 @name I0[1:0] -pg 1 -lvl 37 -x 18670 -y 7100
load inst RTL_REDUCTION_OR__0 RTL_REDUCTION_OR5 work -attr @cell(#000000) RTL_REDUCTION_OR -pinBusAttr I0 @name I0[1:0] -pg 1 -lvl 12 -x 5550 -y 5060
load inst RTL_REDUCTION_OR__1 RTL_REDUCTION_OR10 work -attr @cell(#000000) RTL_REDUCTION_OR -pinBusAttr I0 @name I0[2:0] -pg 1 -lvl 12 -x 5550 -y 5130
load inst RTL_REDUCTION_OR__10 RTL_REDUCTION_OR10 work -attr @cell(#000000) RTL_REDUCTION_OR -pinBusAttr I0 @name I0[2:0] -pg 1 -lvl 14 -x 7240 -y 6240
load inst RTL_REDUCTION_OR__11 RTL_REDUCTION_OR10 work -attr @cell(#000000) RTL_REDUCTION_OR -pinBusAttr I0 @name I0[2:0] -pg 1 -lvl 13 -x 6430 -y 6650
load inst RTL_REDUCTION_OR__12 RTL_REDUCTION_OR10 work -attr @cell(#000000) RTL_REDUCTION_OR -pinBusAttr I0 @name I0[2:0] -pg 1 -lvl 13 -x 6430 -y 6720
load inst RTL_REDUCTION_OR__13 RTL_REDUCTION_OR5 work -attr @cell(#000000) RTL_REDUCTION_OR -pinBusAttr I0 @name I0[1:0] -pg 1 -lvl 30 -x 15950 -y 7030
load inst RTL_REDUCTION_OR__2 RTL_REDUCTION_OR12 work -attr @cell(#000000) RTL_REDUCTION_OR -pinBusAttr I0 @name I0[4:0] -pg 1 -lvl 25 -x 13440 -y 5900
load inst RTL_REDUCTION_OR__3 RTL_REDUCTION_OR10 work -attr @cell(#000000) RTL_REDUCTION_OR -pinBusAttr I0 @name I0[2:0] -pg 1 -lvl 13 -x 6430 -y 5330
load inst RTL_REDUCTION_OR__4 RTL_REDUCTION_OR10 work -attr @cell(#000000) RTL_REDUCTION_OR -pinBusAttr I0 @name I0[2:0] -pg 1 -lvl 12 -x 5550 -y 5200
load inst RTL_REDUCTION_OR__5 RTL_REDUCTION_OR7 work -attr @cell(#000000) RTL_REDUCTION_OR -pinBusAttr I0 @name I0[5:0] -pg 1 -lvl 11 -x 4910 -y 4300
load inst RTL_REDUCTION_OR__6 RTL_REDUCTION_OR0 work -attr @cell(#000000) RTL_REDUCTION_OR -pinBusAttr I0 @name I0[6:0] -pg 1 -lvl 14 -x 7240 -y 5580
load inst RTL_REDUCTION_OR__7 RTL_REDUCTION_OR12 work -attr @cell(#000000) RTL_REDUCTION_OR -pinBusAttr I0 @name I0[4:0] -pg 1 -lvl 14 -x 7240 -y 6170
load inst RTL_REDUCTION_OR__8 RTL_REDUCTION_OR12 work -attr @cell(#000000) RTL_REDUCTION_OR -pinBusAttr I0 @name I0[4:0] -pg 1 -lvl 13 -x 6430 -y 6580
load inst RTL_REDUCTION_OR__9 RTL_REDUCTION_OR10 work -attr @cell(#000000) RTL_REDUCTION_OR -pinBusAttr I0 @name I0[2:0] -pg 1 -lvl 11 -x 4910 -y 4370
load inst RTL_RSHIFT RTL_RSHIFT work -attr @cell(#000000) RTL_RSHIFT -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"100\" -pinBusAttr O @name O[31:0] -pg 1 -lvl 66 -x 28580 -y 4220
load inst RTL_RSHIFT__0 RTL_RSHIFT0 work -attr @cell(#000000) RTL_RSHIFT -pinBusAttr I0 @name I0[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 66 -x 28580 -y 5240
load inst RTL_XOR RTL_XOR work -attr @cell(#000000) RTL_XOR -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 15 -x 8140 -y 5540
load inst alu_out_0_i RTL_MUX59 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S0=1'b1 -pinAttr I1 @attr S1=1'b1 -pinAttr I2 @attr S2=1'b1 -pinAttr I3 @attr S3=1'b1 -pinAttr I4 @attr S4=1'b1 -pinAttr I5 @attr S5=1'b1 -pg 1 -lvl 15 -x 8140 -y 4180
load inst alu_out_i RTL_MUX57 work -attr @cell(#000000) RTL_MUX -pinAttr I1 @attr S1=1'b1 -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S0=1'b1 -pinBusAttr I2 @name I2[31:0] -pinBusAttr I2 @attr S2=1'b1 -pinBusAttr I3 @name I3[31:0] -pinBusAttr I3 @attr S3=1'b1 -pinBusAttr I4 @name I4[31:0] -pinBusAttr I4 @attr S4=1'b1 -pinBusAttr I5 @name I5[31:0] -pinBusAttr I5 @attr S5=1'b1 -pinBusAttr O @name O[31:0] -pg 1 -lvl 16 -x 9060 -y 5410
load inst compressed_instr_i RTL_MUX169 work -attr @cell(#000000) RTL_MUX -pg 1 -lvl 13 -x 6430 -y 6900
load inst compressed_instr_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 14 -x 7240 -y 6890
load inst count_instr_i RTL_MUX171 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=8'b10000000 -pinAttr I1 @attr S=8'b01000000 -pinAttr I2 @attr S=8'b00100000 -pinAttr I3 @attr S=8'b00010000 -pinAttr I4 @attr S=8'b00001000 -pinAttr I5 @attr S=8'b00000100 -pinAttr I6 @attr S=8'b00000010 -pinAttr I7 @attr S=8'b00000001 -pinBusAttr S @name S[7:0] -pg 1 -lvl 12 -x 5550 -y 4390
load inst cpu_state_i RTL_MUX107 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr V=B\"0010\",\ S0=1'b1 -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr V=B\"0100\",\ S1=1'b1 -pinBusAttr I2 @name I2[3:0] -pinBusAttr I2 @attr V=B\"1000\",\ default -pinBusAttr O @name O[3:0] -pg 1 -lvl 29 -x 15360 -y 5480
load inst cpu_state_i__0 RTL_MUX106 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr V=B\"10000000\",\ S0=1'b1 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr V=B\"01000000\",\ S1=1'b1 -pinBusAttr I2 @name I2[7:0] -pinBusAttr I2 @attr V=B\"00001000\",\ S2=1'b1 -pinBusAttr I3 @name I3[7:0] -pinBusAttr I3 @attr V=B\"01000000\",\ S3=1'b1 -pinBusAttr I4 @name I4[7:0] -pinBusAttr I4 @attr V=B\"00000001\",\ S4=1'b1 -pinBusAttr I5 @name I5[7:0] -pinBusAttr I5 @attr V=B\"00000100\",\ S5=1'b1 -pinBusAttr I6 @name I6[7:0] -pinBusAttr I6 @attr V=B\"00001000\",\ S6=1'b1 -pinBusAttr I7 @name I7[3:0] -pinBusAttr I7 @attr default -pinBusAttr O @name O[7:0] -pg 1 -lvl 30 -x 15950 -y 4780
load inst cpu_state_i__1 RTL_MUX109 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr V=B\"01000000\",\ S0=1'b0 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr V=B\"10000000\",\ default -pinBusAttr O @name O[7:0] -pg 1 -lvl 29 -x 15360 -y 5280
load inst cpu_state_i__10 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 30 -x 15950 -y 6610
load inst cpu_state_i__11 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 30 -x 15950 -y 6730
load inst cpu_state_i__12 RTL_MUX171 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=8'b10000000 -pinAttr I1 @attr S=8'b01000000 -pinAttr I2 @attr S=8'b00100000 -pinAttr I3 @attr S=8'b00010000 -pinAttr I4 @attr S=8'b00001000 -pinAttr I5 @attr S=8'b00000100 -pinAttr I6 @attr S=8'b00000010 -pinAttr I7 @attr S=8'b00000001 -pinBusAttr S @name S[7:0] -pg 1 -lvl 31 -x 16710 -y 6390
load inst cpu_state_i__13 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 32 -x 17120 -y 6460
load inst cpu_state_i__14 RTL_MUX104 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pg 1 -lvl 30 -x 15950 -y 7360
load inst cpu_state_i__15 RTL_MUX104 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pg 1 -lvl 31 -x 16710 -y 7120
load inst cpu_state_i__16 RTL_MUX104 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pg 1 -lvl 32 -x 17120 -y 6970
load inst cpu_state_i__2 RTL_MUX108 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S0=1'b1 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr V=B\"00000010\",\ S1=1'b1 -pinBusAttr I2 @name I2[7:0] -pinBusAttr I2 @attr V=B\"00000100\",\ S2=1'b1 -pinBusAttr I3 @name I3[7:0] -pinBusAttr I3 @attr V=B\"00001000\",\ default -pinBusAttr O @name O[7:0] -pg 1 -lvl 30 -x 15950 -y 5330
load inst cpu_state_i__3 RTL_MUX105 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr V=B\"00100000\",\ S=8'b01000000 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=8'b00100000 -pinBusAttr I2 @name I2[7:0] -pinBusAttr I2 @attr S=8'b00010000 -pinBusAttr I3 @name I3[7:0] -pinBusAttr I3 @attr V=B\"01000000\",\ S=8'b00001000 -pinBusAttr I4 @name I4[7:0] -pinBusAttr I4 @attr V=B\"01000000\",\ S=8'b00000100 -pinBusAttr I5 @name I5[7:0] -pinBusAttr I5 @attr V=B\"01000000\",\ S=8'b00000010 -pinBusAttr I6 @name I6[7:0] -pinBusAttr I6 @attr V=B\"01000000\",\ S=8'b00000001 -pinBusAttr O @name O[7:0] -pinBusAttr S @name S[7:0] -pg 1 -lvl 31 -x 16710 -y 6050
load inst cpu_state_i__4 RTL_MUX104 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr V=B\"01000000\",\ S=1'b1 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pg 1 -lvl 32 -x 17120 -y 6330
load inst cpu_state_i__5 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 29 -x 15360 -y 5640
load inst cpu_state_i__6 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 30 -x 15950 -y 5610
load inst cpu_state_i__7 RTL_MUX115 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S0=1'b0 -pinAttr I1 @attr default -pg 1 -lvl 29 -x 15360 -y 5790
load inst cpu_state_i__8 RTL_MUX83 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S0=1'b1 -pinAttr I1 @attr S1=1'b1 -pinAttr I2 @attr S2=1'b1 -pinAttr I3 @attr default -pg 1 -lvl 30 -x 15950 -y 5800
load inst cpu_state_i__9 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 30 -x 15950 -y 6430
load inst cpuregs csdt2_regs work:csdt2_regs:NOFILE -autohide -attr @cell(#000000) csdt2_regs -pinBusAttr raddr1 @name raddr1[5:0] -pinBusAttr raddr2 @name raddr2[5:0] -pinBusAttr rdata1 @name rdata1[31:0] -pinBusAttr rdata2 @name rdata2[31:0] -pinBusAttr waddr @name waddr[5:0] -pinBusAttr wdata @name wdata[31:0] -pg 1 -lvl 25 -x 13440 -y 6400
load inst cpuregs_wrdata_i RTL_MUX50 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S0=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S1=1'b1 -pinBusAttr I2 @name I2[31:0] -pinBusAttr I2 @attr S2=1'b1 -pinBusAttr O @name O[31:0] -pg 1 -lvl 24 -x 13060 -y 6110
load inst cpuregs_write_i RTL_MUX83 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S0=1'b1 -pinAttr I1 @attr S1=1'b1 -pinAttr I2 @attr S2=1'b1 -pinAttr I3 @attr default -pg 1 -lvl 21 -x 11730 -y 6060
load inst cpuregs_write_i__0 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 22 -x 12240 -y 6520
load inst current_pc_i RTL_MUX72 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S0=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S1=1'b1 -pinBusAttr I2 @name I2[31:0] -pinBusAttr I2 @attr V=X\"00000010\",\ S2=1'b1 -pinBusAttr I3 @name I3[31:0] -pinBusAttr I3 @attr default -pinBusAttr O @name O[31:0] -pg 1 -lvl 21 -x 11730 -y 6320
load inst decoded_imm_i RTL_MUX39 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S0=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S1=1'b1 -pinBusAttr I2 @name I2[31:0] -pinBusAttr I2 @attr S2=1'b1 -pinBusAttr I3 @name I3[31:0] -pinBusAttr I3 @attr S3=1'b1 -pinBusAttr I4 @name I4[31:0] -pinBusAttr I4 @attr S4=1'b1 -pinBusAttr I5 @name I5[31:0] -pinBusAttr I5 @attr default -pinBusAttr O @name O[31:0] -pg 1 -lvl 13 -x 6430 -y 6250
load inst decoded_imm_j_i RTL_MUX32 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 11 -x 4910 -y 6910
load inst decoder_pseudo_trigger_i RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 51 -x 23590 -y 6290
load inst decoder_pseudo_trigger_i__0 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 51 -x 23590 -y 6700
load inst decoder_pseudo_trigger_i__1 RTL_MUX171 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=8'b10000000 -pinAttr I1 @attr S=8'b01000000 -pinAttr I2 @attr S=8'b00100000 -pinAttr I3 @attr S=8'b00010000 -pinAttr I4 @attr S=8'b00001000 -pinAttr I5 @attr S=8'b00000100 -pinAttr I6 @attr S=8'b00000010 -pinAttr I7 @attr S=8'b00000001 -pinBusAttr S @name S[7:0] -pg 1 -lvl 52 -x 24020 -y 6020
load inst decoder_pseudo_trigger_reg RTL_REG_SYNC__BREG_11 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 53 -x 24340 -y 6300
load inst decoder_trigger_i RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 50 -x 23210 -y 6060
load inst decoder_trigger_i__0 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 51 -x 23590 -y 6110
load inst decoder_trigger_i__1 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 50 -x 23210 -y 6310
load inst decoder_trigger_i__2 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 51 -x 23590 -y 6440
load inst decoder_trigger_i__3 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 50 -x 23210 -y 6600
load inst decoder_trigger_i__4 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 51 -x 23590 -y 6580
load inst decoder_trigger_i__5 RTL_MUX171 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=8'b10000000 -pinAttr I1 @attr S=8'b01000000 -pinAttr I2 @attr S=8'b00100000 -pinAttr I3 @attr S=8'b00010000 -pinAttr I4 @attr S=8'b00001000 -pinAttr I5 @attr S=8'b00000100 -pinAttr I6 @attr S=8'b00000010 -pinAttr I7 @attr S=8'b00000001 -pinBusAttr S @name S[7:0] -pg 1 -lvl 52 -x 24020 -y 6330
load inst decoder_trigger_i__6 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 53 -x 24340 -y 6420
load inst decoder_trigger_reg RTL_REG__BREG_59 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 54 -x 24870 -y 6420
load inst do_waitirq_reg RTL_REG__BREG_59 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 70 -x 31320 -y 7200
load inst eoi_i RTL_MUX34 work -attr @cell(#000000) RTL_MUX -pinBusAttr O @name O[31:0] -pg 1 -lvl 69 -x 30790 -y 7340
load inst instr_add_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 56 -x 25580 -y 6100
load inst instr_addi_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 56 -x 25580 -y 6570
load inst instr_and_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 9 -x 3720 -y 4510
load inst instr_andi_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 9 -x 3720 -y 1480
load inst instr_auipc_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 11 -x 4910 -y 5330
load inst instr_beq_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 9 -x 3720 -y 2020
load inst instr_bge_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 9 -x 3720 -y 2160
load inst instr_bgeu_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 9 -x 3720 -y 2300
load inst instr_blt_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 11 -x 4910 -y 6780
load inst instr_bltu_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 11 -x 4910 -y 7070
load inst instr_bne_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 9 -x 3720 -y 3480
load inst instr_ecall_ebreak_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 27 -x 14270 -y 5610
load inst instr_fence_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 9 -x 3720 -y 520
load inst instr_getq_i RTL_MUX169 work -attr @cell(#000000) RTL_MUX -pg 1 -lvl 8 -x 3030 -y 5120
load inst instr_getq_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 9 -x 3720 -y 5100
load inst instr_jal_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 56 -x 25580 -y 6840
load inst instr_jalr_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 6 -x 1590 -y 4270
load inst instr_lb_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 9 -x 3720 -y 3340
load inst instr_lbu_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 9 -x 3720 -y 3080
load inst instr_lh_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 9 -x 3720 -y 3210
load inst instr_lhu_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 9 -x 3720 -y 2950
load inst instr_lui_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 11 -x 4910 -y 5190
load inst instr_lw_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 9 -x 3720 -y 3610
load inst instr_maskirq_i RTL_MUX169 work -attr @cell(#000000) RTL_MUX -pg 1 -lvl 8 -x 3030 -y 100
load inst instr_maskirq_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 9 -x 3720 -y 80
load inst instr_or_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 9 -x 3720 -y 660
load inst instr_ori_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 9 -x 3720 -y 1620
load inst instr_rdcycle_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 9 -x 3720 -y 2560
load inst instr_rdcycleh_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 9 -x 3720 -y 2430
load inst instr_rdinstr_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 9 -x 3720 -y 790
load inst instr_rdinstrh_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 9 -x 3720 -y 220
load inst instr_retirq_i RTL_MUX169 work -attr @cell(#000000) RTL_MUX -pg 1 -lvl 8 -x 3030 -y 5370
load inst instr_retirq_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 9 -x 3720 -y 5380
load inst instr_sb_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 9 -x 3720 -y 2820
load inst instr_setq_i RTL_MUX169 work -attr @cell(#000000) RTL_MUX -pg 1 -lvl 8 -x 3030 -y 420
load inst instr_setq_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 9 -x 3720 -y 360
load inst instr_sh_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 9 -x 3720 -y 2690
load inst instr_sll_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 9 -x 3720 -y 1210
load inst instr_slli_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 9 -x 3720 -y 1880
load inst instr_slt_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 11 -x 4910 -y 4990
load inst instr_slti_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 11 -x 4910 -y 6640
load inst instr_sltiu_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 11 -x 4910 -y 6500
load inst instr_sltu_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 11 -x 4910 -y 4850
load inst instr_sra_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 9 -x 3720 -y 930
load inst instr_srai_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 9 -x 3720 -y 1340
load inst instr_srl_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 9 -x 3720 -y 1070
load inst instr_srli_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 9 -x 3720 -y 1750
load inst instr_sub_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 56 -x 25580 -y 6300
load inst instr_sw_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 9 -x 3720 -y 4090
load inst instr_timer_i RTL_MUX169 work -attr @cell(#000000) RTL_MUX -pg 1 -lvl 8 -x 3030 -y 4980
load inst instr_timer_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 9 -x 3720 -y 4960
load inst instr_trap_i RTL_EQ94 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[47:0] -pinBusAttr I1 @name I1 -pg 1 -lvl 12 -x 5550 -y 4830
load inst instr_waitirq_i RTL_MUX169 work -attr @cell(#000000) RTL_MUX -pg 1 -lvl 8 -x 3030 -y 5250
load inst instr_waitirq_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 9 -x 3720 -y 5240
load inst instr_xor_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 9 -x 3720 -y 4230
load inst instr_xori_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 9 -x 3720 -y 4370
load inst is_alu_reg_imm_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 6 -x 1590 -y 4410
load inst is_alu_reg_reg_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 6 -x 1590 -y 4540
load inst is_beq_bne_blt_bge_bltu_bgeu_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 7 -x 2160 -y 4570
load inst is_compare_i RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 14 -x 7240 -y 6500
load inst is_compare_reg RTL_REG_SYNC__BREG_11 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 15 -x 8140 -y 6300
load inst is_jalr_addi_slti_sltiu_xori_ori_andi_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 14 -x 7240 -y 4870
load inst is_lb_lh_lw_lbu_lhu_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 6 -x 1590 -y 4680
load inst is_lbu_lhu_lw_reg RTL_REG__BREG_59 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 12 -x 5550 -y 4210
load inst is_lui_auipc_jal_jalr_addi_add_sub_reg RTL_REG_SYNC__BREG_11 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 15 -x 8140 -y 6020
load inst is_lui_auipc_jal_reg RTL_REG__BREG_59 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 14 -x 7240 -y 5270
load inst is_rdcycle_rdcycleh_rdinstr_rdinstrh_i RTL_REDUCTION_OR11 work -attr @cell(#000000) RTL_REDUCTION_OR -pinBusAttr I0 @name I0[3:0] -pg 1 -lvl 14 -x 7240 -y 4700
load inst is_sb_sh_sw_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 43 -x 20250 -y 6750
load inst is_sll_srl_sra_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 16 -x 9060 -y 5960
load inst is_slli_srli_srai_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 14 -x 7240 -y 5010
load inst is_slti_blt_slt_reg RTL_REG__BREG_59 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 14 -x 7240 -y 4610
load inst is_sltiu_bltu_sltu_reg RTL_REG__BREG_59 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 14 -x 7240 -y 4470
load inst latched_branch_i RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 16 -x 9060 -y 5780
load inst latched_branch_i__0 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 16 -x 9060 -y 6130
load inst latched_branch_i__1 RTL_MUX89 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=8'b01000000 -pinAttr I1 @attr S=8'b00001000 -pinBusAttr S @name S[7:0] -pg 1 -lvl 17 -x 9630 -y 6130
load inst latched_branch_i__2 RTL_ROM5 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[7:0] -pg 1 -lvl 17 -x 9630 -y 6730
load inst latched_branch_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 18 -x 10300 -y 6650
load inst latched_compr_i RTL_ROM5 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[7:0] -pg 1 -lvl 19 -x 10800 -y 6510
load inst latched_compr_i__0 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 20 -x 11260 -y 6550
load inst latched_compr_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 21 -x 11730 -y 6550
load inst latched_is_lb_i RTL_MUX89 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=8'b01000000 -pinAttr I1 @attr S=8'b00000001 -pinBusAttr S @name S[7:0] -pg 1 -lvl 13 -x 6430 -y 5440
load inst latched_is_lb_i__0 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 12 -x 5550 -y 6290
load inst latched_is_lb_i__1 RTL_MUX171 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=8'b10000000 -pinAttr I1 @attr S=8'b01000000 -pinAttr I2 @attr S=8'b00100000 -pinAttr I3 @attr S=8'b00010000 -pinAttr I4 @attr S=8'b00001000 -pinAttr I5 @attr S=8'b00000100 -pinAttr I6 @attr S=8'b00000010 -pinAttr I7 @attr S=8'b00000001 -pinBusAttr S @name S[7:0] -pg 1 -lvl 13 -x 6430 -y 5730
load inst latched_is_lb_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 14 -x 7240 -y 5420
load inst latched_is_lh_i RTL_MUX89 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=8'b01000000 -pinAttr I1 @attr S=8'b00000001 -pinBusAttr S @name S[7:0] -pg 1 -lvl 13 -x 6430 -y 4950
load inst latched_is_lh_i__0 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 12 -x 5550 -y 5290
load inst latched_is_lh_i__1 RTL_MUX171 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=8'b10000000 -pinAttr I1 @attr S=8'b01000000 -pinAttr I2 @attr S=8'b00100000 -pinAttr I3 @attr S=8'b00010000 -pinAttr I4 @attr S=8'b00001000 -pinAttr I5 @attr S=8'b00000100 -pinAttr I6 @attr S=8'b00000010 -pinAttr I7 @attr S=8'b00000001 -pinBusAttr S @name S[7:0] -pg 1 -lvl 13 -x 6430 -y 5150
load inst latched_is_lh_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 14 -x 7240 -y 5150
load inst latched_is_lu_i RTL_MUX89 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=8'b01000000 -pinAttr I1 @attr S=8'b00000001 -pinBusAttr S @name S[7:0] -pg 1 -lvl 13 -x 6430 -y 4180
load inst latched_is_lu_i__0 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 12 -x 5550 -y 4940
load inst latched_is_lu_i__1 RTL_MUX171 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=8'b10000000 -pinAttr I1 @attr S=8'b01000000 -pinAttr I2 @attr S=8'b00100000 -pinAttr I3 @attr S=8'b00010000 -pinAttr I4 @attr S=8'b00001000 -pinAttr I5 @attr S=8'b00000100 -pinAttr I6 @attr S=8'b00000010 -pinAttr I7 @attr S=8'b00000001 -pinBusAttr S @name S[7:0] -pg 1 -lvl 13 -x 6430 -y 4430
load inst latched_is_lu_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 14 -x 7240 -y 4340
load inst latched_rd_i RTL_MUX143 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[4:0] -pinBusAttr I0 @attr S=8'b01000000 -pinBusAttr I1 @name I1[4:0] -pinBusAttr I1 @attr S=8'b00001000 -pinBusAttr O @name O[4:0] -pinBusAttr S @name S[7:0] -pg 1 -lvl 22 -x 12240 -y 7000
load inst latched_rd_i__0 RTL_MUX171 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=8'b10000000 -pinAttr I1 @attr S=8'b01000000 -pinAttr I2 @attr S=8'b00100000 -pinAttr I3 @attr S=8'b00010000 -pinAttr I4 @attr S=8'b00001000 -pinAttr I5 @attr S=8'b00000100 -pinAttr I6 @attr S=8'b00000010 -pinAttr I7 @attr S=8'b00000001 -pinBusAttr S @name S[7:0] -pg 1 -lvl 21 -x 11730 -y 7290
load inst latched_rd_i__1 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 22 -x 12240 -y 6640
load inst latched_stalu_i RTL_ROM5 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[7:0] -pg 1 -lvl 16 -x 9060 -y 6530
load inst latched_stalu_i__0 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 15 -x 8140 -y 6460
load inst latched_stalu_i__1 RTL_MUX171 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=8'b10000000 -pinAttr I1 @attr S=8'b01000000 -pinAttr I2 @attr S=8'b00100000 -pinAttr I3 @attr S=8'b00010000 -pinAttr I4 @attr S=8'b00001000 -pinAttr I5 @attr S=8'b00000100 -pinAttr I6 @attr S=8'b00000010 -pinAttr I7 @attr S=8'b00000001 -pinBusAttr S @name S[7:0] -pg 1 -lvl 16 -x 9060 -y 6330
load inst latched_stalu_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 17 -x 9630 -y 6490
load inst latched_store_i RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 17 -x 9630 -y 7210
load inst latched_store_i__0 RTL_MUX79 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=8'b01000000 -pinAttr I1 @attr S=8'b00100000 -pinAttr I2 @attr S=8'b00010000 -pinAttr I3 @attr S=8'b00001000 -pinAttr I4 @attr S=8'b00000100 -pinAttr I5 @attr S=8'b00000001 -pinBusAttr S @name S[7:0] -pg 1 -lvl 18 -x 10300 -y 5900
load inst latched_store_i__1 RTL_MUX82 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S0=1'b1 -pinAttr I1 @attr S1=1'b1 -pinAttr I2 @attr S2=1'b1 -pinAttr I3 @attr S3=1'b1 -pinAttr I4 @attr S4=1'b1 -pinAttr I5 @attr S5=1'b1 -pinAttr I6 @attr S6=1'b1 -pinAttr I7 @attr default -pg 1 -lvl 17 -x 9630 -y 4680
load inst latched_store_i__2 RTL_MUX83 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S0=1'b1 -pinAttr I1 @attr S1=1'b1 -pinAttr I2 @attr S2=1'b1 -pinAttr I3 @attr default -pg 1 -lvl 17 -x 9630 -y 5820
load inst latched_store_i__3 RTL_MUX171 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=8'b10000000 -pinAttr I1 @attr S=8'b01000000 -pinAttr I2 @attr S=8'b00100000 -pinAttr I3 @attr S=8'b00010000 -pinAttr I4 @attr S=8'b00001000 -pinAttr I5 @attr S=8'b00000100 -pinAttr I6 @attr S=8'b00000010 -pinAttr I7 @attr S=8'b00000001 -pinBusAttr S @name S[7:0] -pg 1 -lvl 18 -x 10300 -y 6210
load inst latched_store_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 19 -x 10800 -y 6400
load inst mem_addr_i RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 69 -x 30790 -y 6580
load inst mem_do_prefetch_i RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 57 -x 25880 -y 6820
load inst mem_do_prefetch_i__0 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 58 -x 26180 -y 6390
load inst mem_do_prefetch_i__1 RTL_MUX171 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=8'b10000000 -pinAttr I1 @attr S=8'b01000000 -pinAttr I2 @attr S=8'b00100000 -pinAttr I3 @attr S=8'b00010000 -pinAttr I4 @attr S=8'b00001000 -pinAttr I5 @attr S=8'b00000100 -pinAttr I6 @attr S=8'b00000010 -pinAttr I7 @attr S=8'b00000001 -pinBusAttr S @name S[7:0] -pg 1 -lvl 59 -x 26510 -y 5980
load inst mem_do_prefetch_i__2 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 60 -x 26770 -y 6040
load inst mem_do_prefetch_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 61 -x 27030 -y 6300
load inst mem_do_rdata_i RTL_MUX169 work -attr @cell(#000000) RTL_MUX -pg 1 -lvl 7 -x 2160 -y 6460
load inst mem_do_rdata_reg RTL_REG_SYNC__BREG_2 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 8 -x 3030 -y 6440
load inst mem_do_rinst_i RTL_MUX83 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S0=1'b1 -pinAttr I1 @attr S1=1'b1 -pinAttr I2 @attr S2=1'b1 -pinAttr I3 @attr default -pg 1 -lvl 45 -x 21090 -y 5710
load inst mem_do_rinst_i__0 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 46 -x 21820 -y 4490
load inst mem_do_rinst_i__1 RTL_MUX125 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S0=1'b1 -pinAttr I1 @attr S1=1'b1 -pinAttr I2 @attr default -pg 1 -lvl 45 -x 21090 -y 4520
load inst mem_do_rinst_i__2 RTL_MUX82 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S0=1'b1 -pinAttr I1 @attr S1=1'b1 -pinAttr I2 @attr S2=1'b1 -pinAttr I3 @attr S3=1'b1 -pinAttr I4 @attr S4=1'b1 -pinAttr I5 @attr S5=1'b1 -pinAttr I6 @attr S6=1'b1 -pinAttr I7 @attr default -pg 1 -lvl 46 -x 21820 -y 4690
load inst mem_do_rinst_i__3 RTL_MUX83 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S0=1'b1 -pinAttr I1 @attr S1=1'b1 -pinAttr I2 @attr S2=1'b1 -pinAttr I3 @attr default -pg 1 -lvl 46 -x 21820 -y 5190
load inst mem_do_rinst_i__4 RTL_MUX122 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=8'b01000000 -pinAttr I1 @attr S=8'b00100000 -pinAttr I2 @attr S=8'b00010000 -pinAttr I3 @attr S=8'b00000100 -pinBusAttr S @name S[7:0] -pg 1 -lvl 47 -x 22370 -y 5620
load inst mem_do_rinst_i__5 RTL_MUX125 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S0=1'b1 -pinAttr I1 @attr S1=1'b1 -pinAttr I2 @attr default -pg 1 -lvl 44 -x 20590 -y 5200
load inst mem_do_rinst_i__6 RTL_MUX82 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S0=1'b1 -pinAttr I1 @attr S1=1'b1 -pinAttr I2 @attr S2=1'b1 -pinAttr I3 @attr S3=1'b1 -pinAttr I4 @attr S4=1'b1 -pinAttr I5 @attr S5=1'b1 -pinAttr I6 @attr S6=1'b1 -pinAttr I7 @attr default -pg 1 -lvl 45 -x 21090 -y 4830
load inst mem_do_rinst_i__7 RTL_MUX83 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S0=1'b1 -pinAttr I1 @attr S1=1'b1 -pinAttr I2 @attr S2=1'b1 -pinAttr I3 @attr default -pg 1 -lvl 45 -x 21090 -y 5210
load inst mem_do_rinst_i__8 RTL_MUX171 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=8'b10000000 -pinAttr I1 @attr S=8'b01000000 -pinAttr I2 @attr S=8'b00100000 -pinAttr I3 @attr S=8'b00010000 -pinAttr I4 @attr S=8'b00001000 -pinAttr I5 @attr S=8'b00000100 -pinAttr I6 @attr S=8'b00000010 -pinAttr I7 @attr S=8'b00000001 -pinBusAttr S @name S[7:0] -pg 1 -lvl 46 -x 21820 -y 5550
load inst mem_do_rinst_i__9 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 47 -x 22370 -y 6330
load inst mem_do_rinst_reg RTL_REG_SYNC__BREG_2 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 48 -x 22620 -y 6700
load inst mem_do_wdata_i RTL_MUX169 work -attr @cell(#000000) RTL_MUX -pg 1 -lvl 36 -x 18400 -y 6940
load inst mem_do_wdata_reg RTL_REG_SYNC__BREG_2 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 37 -x 18670 -y 6930
load inst mem_done_i RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 41 -x 19630 -y 7160
load inst mem_instr_i RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 69 -x 30790 -y 6840
load inst mem_instr_i__0 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 67 -x 29190 -y 6700
load inst mem_instr_i__1 RTL_MUX8 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=2'b00 -pinAttr I1 @attr S=2'b01 -pinAttr I2 @attr S=2'b10 -pinAttr I3 @attr S=2'b11 -pinBusAttr S @name S[1:0] -pg 1 -lvl 68 -x 29910 -y 6720
load inst mem_instr_i__2 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 69 -x 30790 -y 6720
load inst mem_instr_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 70 -x 31320 -y 6820
load inst mem_la_addr_i RTL_MUX32 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 69 -x 30790 -y 6340
load inst mem_la_read_i RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 70 -x 31320 -y 7040
load inst mem_la_wdata_i RTL_MUX51 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=2'b00 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=2'b01 -pinBusAttr I2 @name I2[31:0] -pinBusAttr I2 @attr S=2'b10 -pinBusAttr O @name O[31:0] -pinBusAttr S @name S[1:0] -pg 1 -lvl 69 -x 30790 -y 5770
load inst mem_la_write_i RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 70 -x 31320 -y 6970
load inst mem_la_wstrb_i RTL_MUX2 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr S=2'b00 -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr S=2'b01 -pinBusAttr I2 @name I2[3:0] -pinBusAttr I2 @attr S=2'b10 -pinBusAttr O @name O[3:0] -pinBusAttr S @name S[1:0] -pg 1 -lvl 70 -x 31320 -y 5800
load inst mem_rdata_latched_noshuffle_i RTL_MUX32 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 3 -x 590 -y 4690
load inst mem_rdata_word_i RTL_MUX32 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=1'b1 -pinBusAttr O @name O[31:0] -pg 1 -lvl 13 -x 6430 -y 3570
load inst mem_rdata_word_i__0 RTL_MUX52 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=2'b00 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=2'b01 -pinBusAttr I2 @name I2[31:0] -pinBusAttr I2 @attr S=2'b10 -pinBusAttr I3 @name I3[31:0] -pinBusAttr I3 @attr S=2'b11 -pinBusAttr O @name O[31:0] -pinBusAttr S @name S[1:0] -pg 1 -lvl 13 -x 6430 -y 3430
load inst mem_rdata_word_i__1 RTL_MUX51 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=2'b00 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=2'b01 -pinBusAttr I2 @name I2[31:0] -pinBusAttr I2 @attr S=2'b10 -pinBusAttr O @name O[31:0] -pinBusAttr S @name S[1:0] -pg 1 -lvl 14 -x 7240 -y 3680
load inst mem_state_i RTL_MUX5 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr V=B\"10\",\ S=1'b1 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr V=B\"01\",\ S=default -pinBusAttr O @name O[1:0] -pg 1 -lvl 65 -x 28180 -y 6960
load inst mem_state_i__0 RTL_MUX4 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr S=2'b00 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=2'b01 -pinBusAttr I2 @name I2[1:0] -pinBusAttr I2 @attr S=2'b10 -pinBusAttr I3 @name I3[1:0] -pinBusAttr I3 @attr S=2'b11 -pinBusAttr O @name O[1:0] -pinBusAttr S @name S[1:0] -pg 1 -lvl 66 -x 28580 -y 6910
load inst mem_state_i__1 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 64 -x 27820 -y 6990
load inst mem_state_i__2 RTL_MUX8 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=2'b00 -pinAttr I1 @attr S=2'b01 -pinAttr I2 @attr S=2'b10 -pinAttr I3 @attr S=2'b11 -pinBusAttr S @name S[1:0] -pg 1 -lvl 65 -x 28180 -y 7110
load inst mem_state_i__3 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 66 -x 28580 -y 7050
load inst mem_state_i__4 RTL_MUX5 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[1:0] -pg 1 -lvl 66 -x 28580 -y 7170
load inst mem_valid_i RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 68 -x 29910 -y 6580
load inst mem_valid_i__0 RTL_MUX11 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=2'b00 -pinAttr I1 @attr S=2'b01 -pinAttr I2 @attr S=2'b10 -pinBusAttr S @name S[1:0] -pg 1 -lvl 69 -x 30790 -y 4540
load inst mem_valid_i__1 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 67 -x 29190 -y 6580
load inst mem_valid_i__2 RTL_MUX8 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=2'b00 -pinAttr I1 @attr S=2'b01 -pinAttr I2 @attr S=2'b10 -pinAttr I3 @attr S=2'b11 -pinBusAttr S @name S[1:0] -pg 1 -lvl 68 -x 29910 -y 5880
load inst mem_valid_i__3 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 69 -x 30790 -y 4670
load inst mem_valid_i__4 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 69 -x 30790 -y 4790
load inst mem_valid_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 70 -x 31320 -y 4860
load inst mem_wdata_i RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 69 -x 30790 -y 6050
load inst mem_wordsize_i RTL_MUX137 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr V=B\"10\",\ S0=1'b1 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr V=B\"01\",\ S1=1'b1 -pinBusAttr I2 @name I2[1:0] -pinBusAttr I2 @attr S2=1'b1 -pinBusAttr O @name O[1:0] -pg 1 -lvl 11 -x 4910 -y 4530
load inst mem_wordsize_i__0 RTL_MUX137 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr V=B\"10\",\ S0=1'b1 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr V=B\"01\",\ S1=1'b1 -pinBusAttr I2 @name I2[1:0] -pinBusAttr I2 @attr S2=1'b1 -pinBusAttr O @name O[1:0] -pg 1 -lvl 11 -x 4910 -y 4100
load inst mem_wordsize_i__1 RTL_MUX136 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr S=8'b01000000 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=8'b00000010 -pinBusAttr I2 @name I2[1:0] -pinBusAttr I2 @attr S=8'b00000001 -pinBusAttr O @name O[1:0] -pinBusAttr S @name S[7:0] -pg 1 -lvl 12 -x 5550 -y 3670
load inst mem_wordsize_i__2 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 10 -x 4260 -y 7500
load inst mem_wordsize_i__3 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 10 -x 4260 -y 7640
load inst mem_wordsize_i__4 RTL_MUX171 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=8'b10000000 -pinAttr I1 @attr S=8'b01000000 -pinAttr I2 @attr S=8'b00100000 -pinAttr I3 @attr S=8'b00010000 -pinAttr I4 @attr S=8'b00001000 -pinAttr I5 @attr S=8'b00000100 -pinAttr I6 @attr S=8'b00000010 -pinAttr I7 @attr S=8'b00000001 -pinBusAttr S @name S[7:0] -pg 1 -lvl 11 -x 4910 -y 6200
load inst mem_wordsize_i__5 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 12 -x 5550 -y 4080
load inst mem_wstrb_i RTL_MUX3 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[3:0] -pg 1 -lvl 68 -x 29910 -y 6110
load inst mem_wstrb_i__0 RTL_MUX18 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr S=2'b00 -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr S=2'b01 -pinBusAttr I2 @name I2[3:0] -pinBusAttr I2 @attr S=2'b10 -pinBusAttr I3 @name I3[3:0] -pinBusAttr I3 @attr S=2'b11 -pinBusAttr O @name O[3:0] -pinBusAttr S @name S[1:0] -pg 1 -lvl 69 -x 30790 -y 6200
load inst mem_wstrb_i__1 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 67 -x 29190 -y 6400
load inst mem_wstrb_i__2 RTL_MUX8 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=2'b00 -pinAttr I1 @attr S=2'b01 -pinAttr I2 @attr S=2'b10 -pinAttr I3 @attr S=2'b11 -pinBusAttr S @name S[1:0] -pg 1 -lvl 68 -x 29910 -y 6400
load inst mem_wstrb_i__3 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 69 -x 30790 -y 6460
load inst mem_xfer_i RTL_AND20 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 1 -x 90 -y 4920
load inst next_pc_i RTL_MUX32 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 68 -x 29910 -y 6240
load inst pcpi_insn_i RTL_MUX34 work -attr @cell(#000000) RTL_MUX -pinBusAttr O @name O[31:0] -pg 1 -lvl 69 -x 30790 -y 5490
load inst pcpi_int_rd_reg RTL_LATCH work -attr @cell(#000000) RTL_LATCH -pinBusAttr D @name D[31:0] -pinBusAttr G @name G[31:0] -pinBusAttr Q @name Q[31:0] -pg 1 -lvl 15 -x 8140 -y 6680
load inst pcpi_timeout_i RTL_MUX169 work -attr @cell(#000000) RTL_MUX -pg 1 -lvl 26 -x 13840 -y 5490
load inst pcpi_timeout_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 27 -x 14270 -y 5470
load inst pcpi_valid_i RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 68 -x 29910 -y 4390
load inst pcpi_valid_i__0 RTL_MUX115 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S0=1'b0 -pinAttr I1 @attr default -pg 1 -lvl 69 -x 30790 -y 4930
load inst pcpi_valid_i__1 RTL_MUX83 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S0=1'b1 -pinAttr I1 @attr S1=1'b1 -pinAttr I2 @attr S2=1'b1 -pinAttr I3 @attr default -pg 1 -lvl 68 -x 29910 -y 5330
load inst pcpi_valid_i__2 RTL_MUX171 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=8'b10000000 -pinAttr I1 @attr S=8'b01000000 -pinAttr I2 @attr S=8'b00100000 -pinAttr I3 @attr S=8'b00010000 -pinAttr I4 @attr S=8'b00001000 -pinAttr I5 @attr S=8'b00000100 -pinAttr I6 @attr S=8'b00000010 -pinAttr I7 @attr S=8'b00000001 -pinBusAttr S @name S[7:0] -pg 1 -lvl 69 -x 30790 -y 5300
load inst pcpi_valid_reg RTL_REG_SYNC__BREG_10 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 70 -x 31320 -y 5300
load inst reg_next_pc_i RTL_MUX32 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 17 -x 9630 -y 6340
load inst reg_next_pc_i__0 RTL_MUX32 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 18 -x 10300 -y 6400
load inst reg_next_pc_i__1 RTL_ROM5 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[7:0] -pg 1 -lvl 18 -x 10300 -y 6510
load inst reg_op1_i RTL_MUX163 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S0=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S1=1'b1 -pinBusAttr I2 @name I2[31:0] -pinBusAttr I2 @attr S2=1'b1 -pinBusAttr I3 @name I3[31:0] -pinBusAttr I3 @attr S3=1'b1 -pinBusAttr I4 @name I4[31:0] -pinBusAttr I4 @attr S4=1'b1 -pinBusAttr I5 @name I5[31:0] -pinBusAttr I5 @attr S5=1'b1 -pinBusAttr I6 @name I6[31:0] -pinBusAttr I6 @attr S6=1'b1 -pinBusAttr I7 @name I7[31:0] -pinBusAttr I7 @attr default -pinBusAttr O @name O[31:0] -pg 1 -lvl 68 -x 29910 -y 4570
load inst reg_op1_i__0 RTL_MUX50 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S0=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S1=1'b1 -pinBusAttr I2 @name I2[31:0] -pinBusAttr I2 @attr S2=1'b1 -pinBusAttr O @name O[31:0] -pg 1 -lvl 67 -x 29190 -y 4020
load inst reg_op1_i__1 RTL_MUX50 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S0=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S1=1'b1 -pinBusAttr I2 @name I2[31:0] -pinBusAttr I2 @attr S2=1'b1 -pinBusAttr O @name O[31:0] -pg 1 -lvl 67 -x 29190 -y 5010
load inst reg_op1_i__2 RTL_MUX32 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 68 -x 29910 -y 5000
load inst reg_op1_i__3 RTL_MUX151 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=8'b00100000 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=8'b00000100 -pinBusAttr I2 @name I2[31:0] -pinBusAttr I2 @attr S=8'b00000010 -pinBusAttr I3 @name I3[31:0] -pinBusAttr I3 @attr S=8'b00000001 -pinBusAttr O @name O[31:0] -pinBusAttr S @name S[7:0] -pg 1 -lvl 69 -x 30790 -y 5100
load inst reg_op1_i__4 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 67 -x 29190 -y 7360
load inst reg_op1_i__5 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 67 -x 29190 -y 7660
load inst reg_op1_i__6 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 67 -x 29190 -y 7780
load inst reg_op1_i__7 RTL_MUX171 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=8'b10000000 -pinAttr I1 @attr S=8'b01000000 -pinAttr I2 @attr S=8'b00100000 -pinAttr I3 @attr S=8'b00010000 -pinAttr I4 @attr S=8'b00001000 -pinAttr I5 @attr S=8'b00000100 -pinAttr I6 @attr S=8'b00000010 -pinAttr I7 @attr S=8'b00000001 -pinBusAttr S @name S[7:0] -pg 1 -lvl 68 -x 29910 -y 7710
load inst reg_op1_i__8 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 69 -x 30790 -y 7460
load inst reg_op2_i RTL_MUX163 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S0=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S1=1'b1 -pinBusAttr I2 @name I2[31:0] -pinBusAttr I2 @attr S2=1'b1 -pinBusAttr I3 @name I3[31:0] -pinBusAttr I3 @attr S3=1'b1 -pinBusAttr I4 @name I4[31:0] -pinBusAttr I4 @attr S4=1'b1 -pinBusAttr I5 @name I5[31:0] -pinBusAttr I5 @attr S5=1'b1 -pinBusAttr I6 @name I6[31:0] -pinBusAttr I6 @attr S6=1'b1 -pinBusAttr I7 @name I7[31:0] -pinBusAttr I7 @attr default -pinBusAttr O @name O[31:0] -pg 1 -lvl 67 -x 29190 -y 4550
load inst reg_op2_i__0 RTL_MUX162 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=8'b00100000 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=8'b00010000 -pinBusAttr O @name O[31:0] -pinBusAttr S @name S[7:0] -pg 1 -lvl 68 -x 29910 -y 6910
load inst reg_op2_i__1 RTL_ROM5 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[7:0] -pg 1 -lvl 67 -x 29190 -y 7520
load inst reg_op2_i__2 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 68 -x 29910 -y 7510
load inst reg_out_i RTL_MUX55 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S0=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S1=1'b1 -pinBusAttr I2 @name I2[31:0] -pinBusAttr I2 @attr S2=1'b1 -pinBusAttr I3 @name I3[31:0] -pinBusAttr I3 @attr S3=1'b1 -pinBusAttr O @name O[31:0] -pg 1 -lvl 14 -x 7240 -y 4160
load inst reg_out_i__0 RTL_MUX54 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S0=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S1=1'b1 -pinBusAttr I2 @name I2[31:0] -pinBusAttr I2 @attr S2=1'b1 -pinBusAttr I3 @name I3[31:0] -pinBusAttr I3 @attr S3=1'b1 -pinBusAttr I4 @name I4[31:0] -pinBusAttr I4 @attr S4=1'b1 -pinBusAttr I5 @name I5[31:0] -pinBusAttr I5 @attr S5=1'b1 -pinBusAttr I6 @name I6[31:0] -pinBusAttr I6 @attr S6=1'b1 -pinBusAttr O @name O[31:0] -pg 1 -lvl 15 -x 8140 -y 4670
load inst reg_out_i__1 RTL_MUX50 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S0=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S1=1'b1 -pinBusAttr I2 @name I2[31:0] -pinBusAttr I2 @attr S2=1'b1 -pinBusAttr O @name O[31:0] -pg 1 -lvl 15 -x 8140 -y 4990
load inst reg_out_i__2 RTL_MUX49 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=8'b00100000 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=8'b00010000 -pinBusAttr I2 @name I2[31:0] -pinBusAttr I2 @attr S=8'b00001000 -pinBusAttr I3 @name I3[31:0] -pinBusAttr I3 @attr S=8'b00000100 -pinBusAttr I4 @name I4[31:0] -pinBusAttr I4 @attr S=8'b00000001 -pinBusAttr O @name O[31:0] -pinBusAttr S @name S[7:0] -pg 1 -lvl 16 -x 9060 -y 6660
load inst reg_pc_i RTL_ROM5 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[7:0] -pg 1 -lvl 21 -x 11730 -y 6830
load inst reg_sh_i RTL_MUX41 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[4:0] -pinBusAttr I0 @attr S0=1'b1 -pinBusAttr I1 @name I1[4:0] -pinBusAttr I1 @attr S1=1'b1 -pinBusAttr I2 @name I2[4:0] -pinBusAttr I2 @attr S2=1'b1 -pinBusAttr I3 @name I3[4:0] -pinBusAttr I3 @attr S3=1'b1 -pinBusAttr I4 @name I4[4:0] -pinBusAttr I4 @attr S4=1'b1 -pinBusAttr I5 @name I5[4:0] -pinBusAttr I5 @attr S5=1'b1 -pinBusAttr I6 @name I6[4:0] -pinBusAttr I6 @attr S6=1'b1 -pinBusAttr I7 @name I7[4:0] -pinBusAttr I7 @attr default -pinBusAttr O @name O[4:0] -pg 1 -lvl 27 -x 14270 -y 4780
load inst reg_sh_i__0 RTL_MUX48 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[4:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[4:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[4:0] -pg 1 -lvl 27 -x 14270 -y 6330
load inst reg_sh_i__1 RTL_MUX40 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[4:0] -pinBusAttr I0 @attr S=8'b00100000 -pinBusAttr I1 @name I1[4:0] -pinBusAttr I1 @attr S=8'b00010000 -pinBusAttr I2 @name I2[4:0] -pinBusAttr I2 @attr S=8'b00000100 -pinBusAttr O @name O[4:0] -pinBusAttr S @name S[7:0] -pg 1 -lvl 28 -x 14860 -y 6100
load inst set_mem_do_rdata_i RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 4 -x 900 -y 7330
load inst set_mem_do_rdata_i__0 RTL_MUX171 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=8'b10000000 -pinAttr I1 @attr S=8'b01000000 -pinAttr I2 @attr S=8'b00100000 -pinAttr I3 @attr S=8'b00010000 -pinAttr I4 @attr S=8'b00001000 -pinAttr I5 @attr S=8'b00000100 -pinAttr I6 @attr S=8'b00000010 -pinAttr I7 @attr S=8'b00000001 -pinBusAttr S @name S[7:0] -pg 1 -lvl 5 -x 1220 -y 6310
load inst set_mem_do_rdata_i__1 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 6 -x 1590 -y 6100
load inst set_mem_do_rinst_i RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 45 -x 21090 -y 6380
load inst set_mem_do_rinst_i__0 RTL_MUX171 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=8'b10000000 -pinAttr I1 @attr S=8'b01000000 -pinAttr I2 @attr S=8'b00100000 -pinAttr I3 @attr S=8'b00010000 -pinAttr I4 @attr S=8'b00001000 -pinAttr I5 @attr S=8'b00000100 -pinAttr I6 @attr S=8'b00000010 -pinAttr I7 @attr S=8'b00000001 -pinBusAttr S @name S[7:0] -pg 1 -lvl 46 -x 21820 -y 6370
load inst set_mem_do_rinst_i__1 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 47 -x 22370 -y 6670
load inst set_mem_do_wdata_i RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 33 -x 17400 -y 6680
load inst set_mem_do_wdata_i__0 RTL_MUX171 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=8'b10000000 -pinAttr I1 @attr S=8'b01000000 -pinAttr I2 @attr S=8'b00100000 -pinAttr I3 @attr S=8'b00010000 -pinAttr I4 @attr S=8'b00001000 -pinAttr I5 @attr S=8'b00000100 -pinAttr I6 @attr S=8'b00000010 -pinAttr I7 @attr S=8'b00000001 -pinBusAttr S @name S[7:0] -pg 1 -lvl 34 -x 17810 -y 6350
load inst set_mem_do_wdata_i__1 RTL_MUX172 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 35 -x 18140 -y 6620
load inst trap_i RTL_ROM5 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[7:0] -pg 1 -lvl 69 -x 30790 -y 7600
load inst trap_reg RTL_REG_SYNC__BREG_11 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 70 -x 31320 -y 7490
load inst decoded_rs1_reg[4:0] RTL_REG__BREG_1 work[4:0]ssww -attr @cell(#000000) RTL_REG -pg 1 -lvl 12 -x 5550 -y 6890
load inst cpu_state_reg[7:0] RTL_REG_SYNC__BREG_96 work[7:0]sswwww -attr @cell(#000000) RTL_REG_SYNC -pinBusAttr RST @attr n/c -pg 1 -lvl 33 -x 17400 -y 6420
load inst alu_out_q_reg[31:0] RTL_REG__BREG_59 work[31:0]sww -attr @cell(#000000) RTL_REG -pg 1 -lvl 17 -x 9630 -y 6620
load inst decoded_rd_reg[4:0] RTL_REG__BREG_1 work[4:0]ssww -attr @cell(#000000) RTL_REG -pg 1 -lvl 21 -x 11730 -y 7010
load inst reg_sh_reg[4:0] RTL_REG__BREG_59 work[4:0]sww -attr @cell(#000000) RTL_REG -pg 1 -lvl 29 -x 15360 -y 6140
load inst reg_out_reg[31:0] RTL_REG__BREG_59 work[31:0]sww -attr @cell(#000000) RTL_REG -pg 1 -lvl 17 -x 9630 -y 6840
load inst reg_op2_reg[31:0] RTL_REG__BREG_1 work[31:0]ssww -attr @cell(#000000) RTL_REG -pg 1 -lvl 69 -x 30790 -y 7180
load inst count_instr_reg[63:0] RTL_REG_SYNC__BREG_4 work[63:0]sswws -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 13 -x 6430 -y 3880
load inst reg_op1_reg[31:0] RTL_REG__BREG_1 work[31:0]ssww -attr @cell(#000000) RTL_REG -pg 1 -lvl 70 -x 31320 -y 5610
load inst eoi_reg[31:0] RTL_REG_SYNC__BREG_104 work[31:0]sswws -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 70 -x 31320 -y 7330
load inst decoded_imm_j_reg[31:0] RTL_REG__BREG_5 work[31:0]swww -attr @cell(#000000) RTL_REG -pg 1 -lvl 12 -x 5550 -y 6740
load inst mem_wstrb_reg[3:0] RTL_REG__BREG_1 work[3:0]ssww -attr @cell(#000000) RTL_REG -pg 1 -lvl 70 -x 31320 -y 6420
load inst mem_wordsize_reg[1:0] RTL_REG__BREG_1 work[1:0]ssww -attr @cell(#000000) RTL_REG -pg 1 -lvl 13 -x 6430 -y 3730
load inst reg_pc_reg[31:0] RTL_REG_SYNC__BREG_4 work[31:0]sswws -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 22 -x 12240 -y 6780
load inst count_cycle_reg[63:0] RTL_REG_SYNC__BREG_66 work[63:0]swww -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 13 -x 6430 -y 4060
load inst mem_wdata_reg[31:0] RTL_REG__BREG_1 work[31:0]ssww -attr @cell(#000000) RTL_REG -pg 1 -lvl 70 -x 31320 -y 5940
load inst reg_next_pc_reg[31:0] RTL_REG_SYNC__BREG_4 work[31:0]sswws -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 19 -x 10800 -y 6230
load inst mem_rdata_q_reg[31:0] RTL_REG__BREG_1 work[31:0]ssww -attr @cell(#000000) RTL_REG -pg 1 -lvl 2 -x 310 -y 4550
load inst mem_state_reg[1:0] RTL_REG_SYNC__BREG_4 work[1:0]sswww -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 67 -x 29190 -y 6890
load inst decoded_imm_reg[31:0] RTL_REG__BREG_1 work[31:0]ssww -attr @cell(#000000) RTL_REG -pg 1 -lvl 14 -x 7240 -y 6340
load inst mem_addr_reg[31:0] RTL_REG__BREG_1 work[31:0]ssww -attr @cell(#000000) RTL_REG -pg 1 -lvl 70 -x 31320 -y 6560
load inst latched_rd_reg[4:0] RTL_REG__BREG_1 work[4:0]ssww -attr @cell(#000000) RTL_REG -pg 1 -lvl 23 -x 12680 -y 6710
load inst trace_data_reg[35:0] RTL_REG__BREG_5 work[35:0]sssw -attr @cell(#000000) RTL_REG -pg 1 -lvl 70 -x 31320 -y 5090
load inst decoded_rs2_reg[4:0] RTL_REG__BREG_1 work[4:0]ssww -attr @cell(#000000) RTL_REG -pg 1 -lvl 24 -x 13060 -y 6900
load inst pcpi_insn_reg[31:0] RTL_REG__BREG_5 work[31:0]ssww -attr @cell(#000000) RTL_REG -pg 1 -lvl 70 -x 31320 -y 5460
load net <const0> -ground -pin RTL_ADD__6 I1[1] -pin RTL_ADD__6 I1[0] -pin RTL_AND__67 I1[0] -pin RTL_AND__83 I1[0] -pin RTL_ARSHIFT I1[1] -pin RTL_ARSHIFT I1[0] -pin RTL_EQ I1[4] -pin RTL_EQ I1[3] -pin RTL_EQ__0 I1[2] -pin RTL_EQ__0 I1[1] -pin RTL_EQ__0 I1[0] -pin RTL_EQ__1 I1[4] -pin RTL_EQ__10 I1[17] -pin RTL_EQ__10 I1[16] -pin RTL_EQ__10 I1[14] -pin RTL_EQ__10 I1[13] -pin RTL_EQ__10 I1[12] -pin RTL_EQ__10 I1[11] -pin RTL_EQ__10 I1[10] -pin RTL_EQ__10 I1[8] -pin RTL_EQ__10 I1[7] -pin RTL_EQ__10 I1[6] -pin RTL_EQ__10 I1[5] -pin RTL_EQ__10 I1[4] -pin RTL_EQ__10 I1[3] -pin RTL_EQ__10 I1[2] -pin RTL_EQ__10 I1[0] -pin RTL_EQ__11 I1[3] -pin RTL_EQ__11 I1[2] -pin RTL_EQ__12 I1[17] -pin RTL_EQ__12 I1[16] -pin RTL_EQ__12 I1[15] -pin RTL_EQ__12 I1[14] -pin RTL_EQ__12 I1[13] -pin RTL_EQ__12 I1[12] -pin RTL_EQ__12 I1[11] -pin RTL_EQ__12 I1[10] -pin RTL_EQ__12 I1[8] -pin RTL_EQ__12 I1[7] -pin RTL_EQ__12 I1[6] -pin RTL_EQ__12 I1[5] -pin RTL_EQ__12 I1[4] -pin RTL_EQ__12 I1[3] -pin RTL_EQ__12 I1[2] -pin RTL_EQ__12 I1[0] -pin RTL_EQ__13 I1[3] -pin RTL_EQ__13 I1[2] -pin RTL_EQ__14 I1[17] -pin RTL_EQ__14 I1[16] -pin RTL_EQ__14 I1[14] -pin RTL_EQ__14 I1[13] -pin RTL_EQ__14 I1[12] -pin RTL_EQ__14 I1[11] -pin RTL_EQ__14 I1[10] -pin RTL_EQ__14 I1[9] -pin RTL_EQ__14 I1[8] -pin RTL_EQ__14 I1[7] -pin RTL_EQ__14 I1[6] -pin RTL_EQ__14 I1[5] -pin RTL_EQ__14 I1[4] -pin RTL_EQ__14 I1[3] -pin RTL_EQ__14 I1[2] -pin RTL_EQ__14 I1[0] -pin RTL_EQ__15 I1[3] -pin RTL_EQ__15 I1[2] -pin RTL_EQ__16 I1[17] -pin RTL_EQ__16 I1[16] -pin RTL_EQ__16 I1[14] -pin RTL_EQ__16 I1[13] -pin RTL_EQ__16 I1[12] -pin RTL_EQ__16 I1[11] -pin RTL_EQ__16 I1[10] -pin RTL_EQ__16 I1[9] -pin RTL_EQ__16 I1[7] -pin RTL_EQ__16 I1[6] -pin RTL_EQ__16 I1[5] -pin RTL_EQ__16 I1[4] -pin RTL_EQ__16 I1[3] -pin RTL_EQ__16 I1[2] -pin RTL_EQ__16 I1[0] -pin RTL_EQ__17 I1[3] -pin RTL_EQ__17 I1[2] -pin RTL_EQ__18 I1[17] -pin RTL_EQ__18 I1[16] -pin RTL_EQ__18 I1[15] -pin RTL_EQ__18 I1[14] -pin RTL_EQ__18 I1[13] -pin RTL_EQ__18 I1[12] -pin RTL_EQ__18 I1[11] -pin RTL_EQ__18 I1[10] -pin RTL_EQ__18 I1[9] -pin RTL_EQ__18 I1[8] -pin RTL_EQ__18 I1[7] -pin RTL_EQ__18 I1[6] -pin RTL_EQ__18 I1[5] -pin RTL_EQ__18 I1[4] -pin RTL_EQ__18 I1[3] -pin RTL_EQ__18 I1[2] -pin RTL_EQ__18 I1[0] -pin RTL_EQ__19 I1[3] -pin RTL_EQ__19 I1[2] -pin RTL_EQ__2 I1[6] -pin RTL_EQ__2 I1[5] -pin RTL_EQ__2 I1[3] -pin RTL_EQ__20 I1[17] -pin RTL_EQ__20 I1[16] -pin RTL_EQ__20 I1[15] -pin RTL_EQ__20 I1[14] -pin RTL_EQ__20 I1[13] -pin RTL_EQ__20 I1[12] -pin RTL_EQ__20 I1[11] -pin RTL_EQ__20 I1[10] -pin RTL_EQ__20 I1[9] -pin RTL_EQ__20 I1[7] -pin RTL_EQ__20 I1[6] -pin RTL_EQ__20 I1[5] -pin RTL_EQ__20 I1[4] -pin RTL_EQ__20 I1[3] -pin RTL_EQ__20 I1[2] -pin RTL_EQ__20 I1[0] -pin RTL_EQ__21 I1[6] -pin RTL_EQ__21 I1[3] -pin RTL_EQ__21 I1[2] -pin RTL_EQ__23 I1[6] -pin RTL_EQ__23 I1[5] -pin RTL_EQ__23 I1[4] -pin RTL_EQ__23 I1[3] -pin RTL_EQ__23 I1[2] -pin RTL_EQ__23 I1[1] -pin RTL_EQ__23 I1[0] -pin RTL_EQ__24 I1[0] -pin RTL_EQ__25 I1[6] -pin RTL_EQ__25 I1[5] -pin RTL_EQ__25 I1[4] -pin RTL_EQ__25 I1[3] -pin RTL_EQ__25 I1[2] -pin RTL_EQ__25 I1[1] -pin RTL_EQ__25 I1[0] -pin RTL_EQ__26 I1[1] -pin RTL_EQ__27 I1[6] -pin RTL_EQ__27 I1[4] -pin RTL_EQ__27 I1[3] -pin RTL_EQ__27 I1[2] -pin RTL_EQ__27 I1[1] -pin RTL_EQ__27 I1[0] -pin RTL_EQ__28 I1[1] -pin RTL_EQ__29 I1[6] -pin RTL_EQ__29 I1[5] -pin RTL_EQ__29 I1[4] -pin RTL_EQ__29 I1[3] -pin RTL_EQ__29 I1[2] -pin RTL_EQ__29 I1[1] -pin RTL_EQ__29 I1[0] -pin RTL_EQ__3 I1[6] -pin RTL_EQ__3 I1[3] -pin RTL_EQ__30 I1[1] -pin RTL_EQ__30 I1[0] -pin RTL_EQ__31 I1[6] -pin RTL_EQ__31 I1[5] -pin RTL_EQ__31 I1[4] -pin RTL_EQ__31 I1[3] -pin RTL_EQ__31 I1[2] -pin RTL_EQ__31 I1[1] -pin RTL_EQ__31 I1[0] -pin RTL_EQ__32 I1[2] -pin RTL_EQ__33 I1[6] -pin RTL_EQ__33 I1[5] -pin RTL_EQ__33 I1[4] -pin RTL_EQ__33 I1[3] -pin RTL_EQ__33 I1[2] -pin RTL_EQ__33 I1[1] -pin RTL_EQ__33 I1[0] -pin RTL_EQ__34 I1[2] -pin RTL_EQ__34 I1[0] -pin RTL_EQ__35 I1[6] -pin RTL_EQ__35 I1[5] -pin RTL_EQ__35 I1[4] -pin RTL_EQ__35 I1[3] -pin RTL_EQ__35 I1[2] -pin RTL_EQ__35 I1[1] -pin RTL_EQ__35 I1[0] -pin RTL_EQ__36 I1[2] -pin RTL_EQ__36 I1[1] -pin RTL_EQ__37 I1[6] -pin RTL_EQ__37 I1[5] -pin RTL_EQ__37 I1[4] -pin RTL_EQ__37 I1[3] -pin RTL_EQ__37 I1[2] -pin RTL_EQ__37 I1[1] -pin RTL_EQ__37 I1[0] -pin RTL_EQ__38 I1[2] -pin RTL_EQ__38 I1[1] -pin RTL_EQ__38 I1[0] -pin RTL_EQ__39 I1[6] -pin RTL_EQ__39 I1[4] -pin RTL_EQ__39 I1[3] -pin RTL_EQ__39 I1[2] -pin RTL_EQ__39 I1[1] -pin RTL_EQ__39 I1[0] -pin RTL_EQ__4 I1[6] -pin RTL_EQ__4 I1[5] -pin RTL_EQ__4 I1[3] -pin RTL_EQ__4 I1[2] -pin RTL_EQ__40 I1[2] -pin RTL_EQ__40 I1[1] -pin RTL_EQ__40 I1[0] -pin RTL_EQ__41 I1[6] -pin RTL_EQ__41 I1[5] -pin RTL_EQ__41 I1[4] -pin RTL_EQ__41 I1[3] -pin RTL_EQ__41 I1[2] -pin RTL_EQ__41 I1[1] -pin RTL_EQ__41 I1[0] -pin RTL_EQ__42 I1[1] -pin RTL_EQ__43 I1[6] -pin RTL_EQ__43 I1[4] -pin RTL_EQ__43 I1[3] -pin RTL_EQ__43 I1[2] -pin RTL_EQ__43 I1[1] -pin RTL_EQ__43 I1[0] -pin RTL_EQ__44 I1[1] -pin RTL_EQ__45 I1[6] -pin RTL_EQ__45 I1[5] -pin RTL_EQ__45 I1[4] -pin RTL_EQ__45 I1[3] -pin RTL_EQ__45 I1[2] -pin RTL_EQ__45 I1[1] -pin RTL_EQ__45 I1[0] -pin RTL_EQ__46 I1[2] -pin RTL_EQ__46 I1[1] -pin RTL_EQ__47 I1[6] -pin RTL_EQ__47 I1[5] -pin RTL_EQ__47 I1[4] -pin RTL_EQ__47 I1[3] -pin RTL_EQ__47 I1[2] -pin RTL_EQ__47 I1[1] -pin RTL_EQ__47 I1[0] -pin RTL_EQ__49 I1[0] -pin RTL_EQ__5 I1[6] -pin RTL_EQ__5 I1[5] -pin RTL_EQ__5 I1[4] -pin RTL_EQ__5 I1[3] -pin RTL_EQ__5 I1[2] -pin RTL_EQ__50 I1[1] -pin RTL_EQ__50 I1[0] -pin RTL_EQ__51 I1[2] -pin RTL_EQ__52 I1[2] -pin RTL_EQ__52 I1[0] -pin RTL_EQ__53 I1[2] -pin RTL_EQ__53 I1[1] -pin RTL_EQ__53 I1[0] -pin RTL_EQ__54 I1[2] -pin RTL_EQ__54 I1[0] -pin RTL_EQ__55 I1[2] -pin RTL_EQ__55 I1[1] -pin RTL_EQ__56 I1[2] -pin RTL_EQ__56 I1[1] -pin RTL_EQ__56 I1[0] -pin RTL_EQ__57 I1[1] -pin RTL_EQ__58 I1[1] -pin RTL_EQ__58 I1[0] -pin RTL_EQ__59 I1[2] -pin RTL_EQ__59 I1[0] -pin RTL_EQ__6 I1[4] -pin RTL_EQ__6 I1[3] -pin RTL_EQ__6 I1[2] -pin RTL_EQ__60 I1[2] -pin RTL_EQ__60 I1[1] -pin RTL_EQ__61 I1[2] -pin RTL_EQ__61 I1[1] -pin RTL_EQ__61 I1[0] -pin RTL_EQ__63 I1[0] -pin RTL_EQ__64 I1[1] -pin RTL_EQ__65 I1[1] -pin RTL_EQ__65 I1[0] -pin RTL_EQ__66 I1[2] -pin RTL_EQ__66 I1[1] -pin RTL_EQ__67 I1[2] -pin RTL_EQ__67 I1[1] -pin RTL_EQ__67 I1[0] -pin RTL_EQ__68 I1[1] -pin RTL_EQ__69 I1[6] -pin RTL_EQ__69 I1[4] -pin RTL_EQ__69 I1[3] -pin RTL_EQ__69 I1[2] -pin RTL_EQ__69 I1[1] -pin RTL_EQ__69 I1[0] -pin RTL_EQ__7 I1[6] -pin RTL_EQ__7 I1[5] -pin RTL_EQ__7 I1[4] -pin RTL_EQ__70 I1[1] -pin RTL_EQ__71 I1[6] -pin RTL_EQ__71 I1[5] -pin RTL_EQ__71 I1[4] -pin RTL_EQ__71 I1[3] -pin RTL_EQ__71 I1[2] -pin RTL_EQ__71 I1[1] -pin RTL_EQ__71 I1[0] -pin RTL_EQ__72 I1[2] -pin RTL_EQ__72 I1[1] -pin RTL_EQ__73 I1[6] -pin RTL_EQ__73 I1[5] -pin RTL_EQ__73 I1[4] -pin RTL_EQ__73 I1[3] -pin RTL_EQ__73 I1[2] -pin RTL_EQ__73 I1[1] -pin RTL_EQ__73 I1[0] -pin RTL_EQ__75 I1[0] -pin RTL_EQ__76 I1[1] -pin RTL_EQ__76 I1[0] -pin RTL_EQ__77 I1[2] -pin RTL_EQ__78 I1[2] -pin RTL_EQ__78 I1[0] -pin RTL_EQ__79 I1[2] -pin RTL_EQ__79 I1[1] -pin RTL_EQ__79 I1[0] -pin RTL_EQ__8 I1[0] -pin RTL_EQ__80 I1[1] -pin RTL_EQ__81 I1[6] -pin RTL_EQ__81 I1[4] -pin RTL_EQ__81 I1[3] -pin RTL_EQ__81 I1[2] -pin RTL_EQ__81 I1[1] -pin RTL_EQ__81 I1[0] -pin RTL_EQ__82 I1[1] -pin RTL_EQ__83 I1[6] -pin RTL_EQ__83 I1[5] -pin RTL_EQ__83 I1[4] -pin RTL_EQ__83 I1[3] -pin RTL_EQ__83 I1[2] -pin RTL_EQ__83 I1[1] -pin RTL_EQ__83 I1[0] -pin RTL_EQ__84 I1[2] -pin RTL_EQ__84 I1[1] -pin RTL_EQ__85 I1[6] -pin RTL_EQ__85 I1[5] -pin RTL_EQ__85 I1[4] -pin RTL_EQ__85 I1[3] -pin RTL_EQ__85 I1[2] -pin RTL_EQ__85 I1[1] -pin RTL_EQ__85 I1[0] -pin RTL_EQ__86 I1[4] -pin RTL_EQ__86 I1[3] -pin RTL_EQ__86 I1[2] -pin RTL_EQ__86 I1[1] -pin RTL_EQ__86 I1[0] -pin RTL_EQ__88 I1[6] -pin RTL_EQ__88 I1[4] -pin RTL_EQ__88 I1[3] -pin RTL_EQ__88 I1[2] -pin RTL_EQ__89 I1[3] -pin RTL_EQ__89 I1[2] -pin RTL_EQ__9 I1[3] -pin RTL_EQ__9 I1[2] -pin RTL_EQ__90 I1[0] -pin RTL_EQ__91 I1[0] -pin RTL_EQ__92 I1[1] -pin RTL_EQ__92 I1[0] -pin RTL_EQ__93 I1[1] -pin RTL_EQ__94 I1[0] -pin RTL_EQ__95 I1[0] -pin RTL_EQ__96 I1[7] -pin RTL_EQ__96 I1[5] -pin RTL_EQ__96 I1[4] -pin RTL_EQ__96 I1[3] -pin RTL_EQ__96 I1[2] -pin RTL_EQ__96 I1[1] -pin RTL_EQ__96 I1[0] -pin RTL_GEQ I1[4] -pin RTL_GEQ I1[3] -pin RTL_GEQ I1[1] -pin RTL_GEQ I1[0] -pin RTL_LSHIFT I0[31] -pin RTL_LSHIFT I0[30] -pin RTL_LSHIFT I0[29] -pin RTL_LSHIFT I0[28] -pin RTL_LSHIFT I0[27] -pin RTL_LSHIFT I0[26] -pin RTL_LSHIFT I0[25] -pin RTL_LSHIFT I0[24] -pin RTL_LSHIFT I0[23] -pin RTL_LSHIFT I0[22] -pin RTL_LSHIFT I0[21] -pin RTL_LSHIFT I0[20] -pin RTL_LSHIFT I1[1] -pin RTL_LSHIFT I1[0] -pin RTL_LSHIFT__1 I1[1] -pin RTL_LSHIFT__1 I1[0] -pin RTL_LSHIFT__3 I0[3] -pin RTL_LSHIFT__3 I0[2] -pin RTL_LSHIFT__3 I0[1] -pin RTL_MUX I0[1] -pin RTL_MUX I0[0] -pin RTL_MUX__0 I1[31] -pin RTL_MUX__0 I1[30] -pin RTL_MUX__0 I1[29] -pin RTL_MUX__0 I1[28] -pin RTL_MUX__0 I1[27] -pin RTL_MUX__0 I1[26] -pin RTL_MUX__0 I1[25] -pin RTL_MUX__0 I1[24] -pin RTL_MUX__0 I1[23] -pin RTL_MUX__0 I1[22] -pin RTL_MUX__0 I1[21] -pin RTL_MUX__0 I1[20] -pin RTL_MUX__0 I1[19] -pin RTL_MUX__0 I1[18] -pin RTL_MUX__0 I1[17] -pin RTL_MUX__0 I1[16] -pin RTL_MUX__0 I1[15] -pin RTL_MUX__0 I1[14] -pin RTL_MUX__0 I1[13] -pin RTL_MUX__0 I1[12] -pin RTL_MUX__0 I1[11] -pin RTL_MUX__0 I1[10] -pin RTL_MUX__0 I1[9] -pin RTL_MUX__0 I1[8] -pin RTL_MUX__0 I1[7] -pin RTL_MUX__0 I1[6] -pin RTL_MUX__0 I1[5] -pin RTL_MUX__0 I1[4] -pin RTL_MUX__0 I1[3] -pin RTL_MUX__0 I1[2] -pin RTL_MUX__0 I1[1] -pin RTL_MUX__0 I1[0] -pin RTL_MUX__2 I0[63] -pin RTL_MUX__2 I0[62] -pin RTL_MUX__2 I0[61] -pin RTL_MUX__2 I0[60] -pin RTL_MUX__2 I0[59] -pin RTL_MUX__2 I0[58] -pin RTL_MUX__2 I0[57] -pin RTL_MUX__2 I0[56] -pin RTL_MUX__2 I0[55] -pin RTL_MUX__2 I0[54] -pin RTL_MUX__2 I0[53] -pin RTL_MUX__2 I0[52] -pin RTL_MUX__2 I0[51] -pin RTL_MUX__2 I0[50] -pin RTL_MUX__2 I0[49] -pin RTL_MUX__2 I0[48] -pin RTL_MUX__2 I0[47] -pin RTL_MUX__2 I0[46] -pin RTL_MUX__2 I0[45] -pin RTL_MUX__2 I0[44] -pin RTL_MUX__2 I0[43] -pin RTL_MUX__2 I0[42] -pin RTL_MUX__2 I0[41] -pin RTL_MUX__2 I0[40] -pin RTL_MUX__2 I0[39] -pin RTL_MUX__2 I0[38] -pin RTL_MUX__2 I0[37] -pin RTL_MUX__2 I0[36] -pin RTL_MUX__2 I0[35] -pin RTL_MUX__2 I0[34] -pin RTL_MUX__2 I0[33] -pin RTL_MUX__2 I0[32] -pin RTL_MUX__2 I0[31] -pin RTL_MUX__2 I0[30] -pin RTL_MUX__2 I0[29] -pin RTL_MUX__2 I0[28] -pin RTL_MUX__2 I0[27] -pin RTL_MUX__2 I0[26] -pin RTL_MUX__2 I0[25] -pin RTL_MUX__2 I0[24] -pin RTL_MUX__2 I0[23] -pin RTL_MUX__2 I0[22] -pin RTL_MUX__2 I0[21] -pin RTL_MUX__2 I0[20] -pin RTL_MUX__2 I0[19] -pin RTL_MUX__2 I0[18] -pin RTL_MUX__2 I0[17] -pin RTL_MUX__2 I0[16] -pin RTL_MUX__2 I0[15] -pin RTL_MUX__2 I0[14] -pin RTL_MUX__2 I0[13] -pin RTL_MUX__2 I0[12] -pin RTL_MUX__2 I0[11] -pin RTL_MUX__2 I0[10] -pin RTL_MUX__2 I0[9] -pin RTL_MUX__2 I0[8] -pin RTL_MUX__2 I0[7] -pin RTL_MUX__2 I0[6] -pin RTL_MUX__2 I0[5] -pin RTL_MUX__2 I0[4] -pin RTL_MUX__2 I0[3] -pin RTL_MUX__2 I0[2] -pin RTL_MUX__2 I0[1] -pin RTL_MUX__2 I0[0] -pin RTL_MUX__3 I1[31] -pin RTL_MUX__3 I1[30] -pin RTL_MUX__3 I1[29] -pin RTL_MUX__3 I1[28] -pin RTL_MUX__3 I1[27] -pin RTL_MUX__3 I1[26] -pin RTL_MUX__3 I1[25] -pin RTL_MUX__3 I1[24] -pin RTL_MUX__3 I1[23] -pin RTL_MUX__3 I1[22] -pin RTL_MUX__3 I1[21] -pin RTL_MUX__3 I1[20] -pin RTL_MUX__3 I1[19] -pin RTL_MUX__3 I1[18] -pin RTL_MUX__3 I1[17] -pin RTL_MUX__3 I1[16] -pin RTL_MUX__3 I1[15] -pin RTL_MUX__3 I1[14] -pin RTL_MUX__3 I1[13] -pin RTL_MUX__3 I1[12] -pin RTL_MUX__3 I1[11] -pin RTL_MUX__3 I1[10] -pin RTL_MUX__3 I1[9] -pin RTL_MUX__3 I1[8] -pin RTL_MUX__3 I1[7] -pin RTL_MUX__3 I1[6] -pin RTL_MUX__3 I1[5] -pin RTL_MUX__3 I1[4] -pin RTL_MUX__3 I1[3] -pin RTL_MUX__3 I1[2] -pin RTL_MUX__3 I1[1] -pin RTL_MUX__3 I1[0] -pin RTL_MUX__5 I0[2] -pin RTL_MUX__5 I0[0] -pin RTL_MUX__5 I1[1] -pin RTL_MUX__5 I1[0] -pin RTL_MUX__7 I0[31] -pin RTL_MUX__7 I0[30] -pin RTL_MUX__7 I0[29] -pin RTL_MUX__7 I0[28] -pin RTL_MUX__7 I0[27] -pin RTL_MUX__7 I0[26] -pin RTL_MUX__7 I0[25] -pin RTL_MUX__7 I0[24] -pin RTL_MUX__7 I0[23] -pin RTL_MUX__7 I0[22] -pin RTL_MUX__7 I0[21] -pin RTL_MUX__7 I0[20] -pin RTL_MUX__7 I0[19] -pin RTL_MUX__7 I0[18] -pin RTL_MUX__7 I0[17] -pin RTL_MUX__7 I0[16] -pin RTL_MUX__7 I0[15] -pin RTL_MUX__7 I0[14] -pin RTL_MUX__7 I0[13] -pin RTL_MUX__7 I0[12] -pin RTL_MUX__7 I0[11] -pin RTL_MUX__7 I0[10] -pin RTL_MUX__7 I0[9] -pin RTL_MUX__7 I0[8] -pin RTL_MUX__7 I0[7] -pin RTL_MUX__7 I0[6] -pin RTL_MUX__7 I0[5] -pin RTL_MUX__7 I0[4] -pin RTL_MUX__7 I0[3] -pin RTL_MUX__7 I0[2] -pin RTL_MUX__7 I0[1] -pin RTL_MUX__7 I0[0] -pin RTL_MUX__8 I0[1] -pin RTL_MUX__8 I0[0] -pin RTL_MUX__8 I1[3] -pin RTL_MUX__8 I1[2] -pin RTL_MUX__9 I0[2] -pin RTL_MUX__9 I0[0] -pin RTL_MUX__9 I1[1] -pin RTL_MUX__9 I1[0] -pin RTL_NEQ I1[1] -pin RTL_NEQ I1[0] -pin RTL_NEQ__0 I1 -pin RTL_OR__32 I1[31] -pin RTL_OR__32 I1[30] -pin RTL_OR__32 I1[29] -pin RTL_OR__32 I1[28] -pin RTL_OR__32 I1[27] -pin RTL_OR__32 I1[26] -pin RTL_OR__32 I1[25] -pin RTL_OR__32 I1[24] -pin RTL_OR__32 I1[23] -pin RTL_OR__32 I1[22] -pin RTL_OR__32 I1[21] -pin RTL_OR__32 I1[20] -pin RTL_OR__32 I1[19] -pin RTL_OR__32 I1[18] -pin RTL_OR__32 I1[17] -pin RTL_OR__32 I1[16] -pin RTL_OR__32 I1[15] -pin RTL_OR__32 I1[14] -pin RTL_OR__32 I1[13] -pin RTL_OR__32 I1[12] -pin RTL_OR__32 I1[11] -pin RTL_OR__32 I1[10] -pin RTL_OR__32 I1[9] -pin RTL_OR__32 I1[8] -pin RTL_OR__32 I1[7] -pin RTL_OR__32 I1[6] -pin RTL_OR__32 I1[5] -pin RTL_OR__32 I1[4] -pin RTL_OR__32 I1[3] -pin RTL_OR__32 I1[2] -pin RTL_OR__32 I1[1] -pin RTL_RSHIFT I1[1] -pin RTL_RSHIFT I1[0] -pin alu_out_i S5 -pin compressed_instr_reg CE -pin count_instr_i I0 -pin count_instr_i I2 -pin count_instr_i I3 -pin count_instr_i I4 -pin count_instr_i I5 -pin count_instr_i I6 -pin count_instr_i I7 -pin cpu_state_i I0[3] -pin cpu_state_i I0[2] -pin cpu_state_i I0[0] -pin cpu_state_i I1[3] -pin cpu_state_i I1[1] -pin cpu_state_i I1[0] -pin cpu_state_i I2[2] -pin cpu_state_i I2[1] -pin cpu_state_i I2[0] -pin cpu_state_i__0 S3 -pin cpu_state_i__0 I0[6] -pin cpu_state_i__0 I0[5] -pin cpu_state_i__0 I0[4] -pin cpu_state_i__0 I0[3] -pin cpu_state_i__0 I0[2] -pin cpu_state_i__0 I0[1] -pin cpu_state_i__0 I0[0] -pin cpu_state_i__0 I1[7] -pin cpu_state_i__0 I1[5] -pin cpu_state_i__0 I1[4] -pin cpu_state_i__0 I1[3] -pin cpu_state_i__0 I1[2] -pin cpu_state_i__0 I1[1] -pin cpu_state_i__0 I1[0] -pin cpu_state_i__0 I2[7] -pin cpu_state_i__0 I2[6] -pin cpu_state_i__0 I2[5] -pin cpu_state_i__0 I2[4] -pin cpu_state_i__0 I2[2] -pin cpu_state_i__0 I2[1] -pin cpu_state_i__0 I2[0] -pin cpu_state_i__0 I3[7] -pin cpu_state_i__0 I3[5] -pin cpu_state_i__0 I3[4] -pin cpu_state_i__0 I3[3] -pin cpu_state_i__0 I3[2] -pin cpu_state_i__0 I3[1] -pin cpu_state_i__0 I3[0] -pin cpu_state_i__0 I4[7] -pin cpu_state_i__0 I4[6] -pin cpu_state_i__0 I4[5] -pin cpu_state_i__0 I4[4] -pin cpu_state_i__0 I4[3] -pin cpu_state_i__0 I4[2] -pin cpu_state_i__0 I4[1] -pin cpu_state_i__0 I5[7] -pin cpu_state_i__0 I5[6] -pin cpu_state_i__0 I5[5] -pin cpu_state_i__0 I5[4] -pin cpu_state_i__0 I5[3] -pin cpu_state_i__0 I5[1] -pin cpu_state_i__0 I5[0] -pin cpu_state_i__0 I6[7] -pin cpu_state_i__0 I6[6] -pin cpu_state_i__0 I6[5] -pin cpu_state_i__0 I6[4] -pin cpu_state_i__0 I6[2] -pin cpu_state_i__0 I6[1] -pin cpu_state_i__0 I6[0] -pin cpu_state_i__1 I0[7] -pin cpu_state_i__1 I0[5] -pin cpu_state_i__1 I0[4] -pin cpu_state_i__1 I0[3] -pin cpu_state_i__1 I0[2] -pin cpu_state_i__1 I0[1] -pin cpu_state_i__1 I0[0] -pin cpu_state_i__1 I1[6] -pin cpu_state_i__1 I1[5] -pin cpu_state_i__1 I1[4] -pin cpu_state_i__1 I1[3] -pin cpu_state_i__1 I1[2] -pin cpu_state_i__1 I1[1] -pin cpu_state_i__1 I1[0] -pin cpu_state_i__10 I1 -pin cpu_state_i__11 I1 -pin cpu_state_i__12 I0 -pin cpu_state_i__15 I1[7] -pin cpu_state_i__15 I1[6] -pin cpu_state_i__15 I1[5] -pin cpu_state_i__15 I1[4] -pin cpu_state_i__15 I1[3] -pin cpu_state_i__15 I1[2] -pin cpu_state_i__15 I1[1] -pin cpu_state_i__15 I1[0] -pin cpu_state_i__2 S0 -pin cpu_state_i__2 I1[7] -pin cpu_state_i__2 I1[6] -pin cpu_state_i__2 I1[5] -pin cpu_state_i__2 I1[4] -pin cpu_state_i__2 I1[3] -pin cpu_state_i__2 I1[2] -pin cpu_state_i__2 I1[0] -pin cpu_state_i__2 I2[7] -pin cpu_state_i__2 I2[6] -pin cpu_state_i__2 I2[5] -pin cpu_state_i__2 I2[4] -pin cpu_state_i__2 I2[3] -pin cpu_state_i__2 I2[1] -pin cpu_state_i__2 I2[0] -pin cpu_state_i__2 I3[7] -pin cpu_state_i__2 I3[6] -pin cpu_state_i__2 I3[5] -pin cpu_state_i__2 I3[4] -pin cpu_state_i__2 I3[2] -pin cpu_state_i__2 I3[1] -pin cpu_state_i__2 I3[0] -pin cpu_state_i__3 I0[7] -pin cpu_state_i__3 I0[6] -pin cpu_state_i__3 I0[4] -pin cpu_state_i__3 I0[3] -pin cpu_state_i__3 I0[2] -pin cpu_state_i__3 I0[1] -pin cpu_state_i__3 I0[0] -pin cpu_state_i__3 I3[7] -pin cpu_state_i__3 I3[5] -pin cpu_state_i__3 I3[4] -pin cpu_state_i__3 I3[3] -pin cpu_state_i__3 I3[2] -pin cpu_state_i__3 I3[1] -pin cpu_state_i__3 I3[0] -pin cpu_state_i__3 I4[7] -pin cpu_state_i__3 I4[5] -pin cpu_state_i__3 I4[4] -pin cpu_state_i__3 I4[3] -pin cpu_state_i__3 I4[2] -pin cpu_state_i__3 I4[1] -pin cpu_state_i__3 I4[0] -pin cpu_state_i__3 I5[7] -pin cpu_state_i__3 I5[5] -pin cpu_state_i__3 I5[4] -pin cpu_state_i__3 I5[3] -pin cpu_state_i__3 I5[2] -pin cpu_state_i__3 I5[1] -pin cpu_state_i__3 I5[0] -pin cpu_state_i__3 I6[7] -pin cpu_state_i__3 I6[5] -pin cpu_state_i__3 I6[4] -pin cpu_state_i__3 I6[3] -pin cpu_state_i__3 I6[2] -pin cpu_state_i__3 I6[1] -pin cpu_state_i__3 I6[0] -pin cpu_state_i__4 I0[7] -pin cpu_state_i__4 I0[5] -pin cpu_state_i__4 I0[4] -pin cpu_state_i__4 I0[3] -pin cpu_state_i__4 I0[2] -pin cpu_state_i__4 I0[1] -pin cpu_state_i__4 I0[0] -pin cpu_state_i__5 I0 -pin cpu_state_i__6 I1 -pin cpu_state_i__8 S0 -pin cpuregs raddr1[5] -pin cpuregs raddr2[5] -pin cpuregs waddr[5] -pin cpuregs_wrdata_i S2 -pin cpuregs_write_i I3 -pin cpuregs_write_i S2 -pin cpuregs_write_i__0 I1 -pin current_pc_i S2 -pin current_pc_i I2[31] -pin current_pc_i I2[30] -pin current_pc_i I2[29] -pin current_pc_i I2[28] -pin current_pc_i I2[27] -pin current_pc_i I2[26] -pin current_pc_i I2[25] -pin current_pc_i I2[24] -pin current_pc_i I2[23] -pin current_pc_i I2[22] -pin current_pc_i I2[21] -pin current_pc_i I2[20] -pin current_pc_i I2[19] -pin current_pc_i I2[18] -pin current_pc_i I2[17] -pin current_pc_i I2[16] -pin current_pc_i I2[15] -pin current_pc_i I2[14] -pin current_pc_i I2[13] -pin current_pc_i I2[12] -pin current_pc_i I2[11] -pin current_pc_i I2[10] -pin current_pc_i I2[9] -pin current_pc_i I2[8] -pin current_pc_i I2[7] -pin current_pc_i I2[6] -pin current_pc_i I2[5] -pin current_pc_i I2[3] -pin current_pc_i I2[2] -pin current_pc_i I2[1] -pin current_pc_i I2[0] -pin decoded_imm_i I3[0] -pin decoded_imm_i I5[31] -pin decoded_imm_i I5[30] -pin decoded_imm_i I5[29] -pin decoded_imm_i I5[28] -pin decoded_imm_i I5[27] -pin decoded_imm_i I5[26] -pin decoded_imm_i I5[25] -pin decoded_imm_i I5[24] -pin decoded_imm_i I5[23] -pin decoded_imm_i I5[22] -pin decoded_imm_i I5[21] -pin decoded_imm_i I5[20] -pin decoded_imm_i I5[19] -pin decoded_imm_i I5[18] -pin decoded_imm_i I5[17] -pin decoded_imm_i I5[16] -pin decoded_imm_i I5[15] -pin decoded_imm_i I5[14] -pin decoded_imm_i I5[13] -pin decoded_imm_i I5[12] -pin decoded_imm_i I5[11] -pin decoded_imm_i I5[10] -pin decoded_imm_i I5[9] -pin decoded_imm_i I5[8] -pin decoded_imm_i I5[7] -pin decoded_imm_i I5[6] -pin decoded_imm_i I5[5] -pin decoded_imm_i I5[4] -pin decoded_imm_i I5[3] -pin decoded_imm_i I5[2] -pin decoded_imm_i I5[1] -pin decoded_imm_i I5[0] -pin decoded_imm_j_i I1[31] -pin decoded_imm_j_i I1[30] -pin decoded_imm_j_i I1[29] -pin decoded_imm_j_i I1[28] -pin decoded_imm_j_i I1[27] -pin decoded_imm_j_i I1[26] -pin decoded_imm_j_i I1[25] -pin decoded_imm_j_i I1[24] -pin decoded_imm_j_i I1[23] -pin decoded_imm_j_i I1[22] -pin decoded_imm_j_i I1[21] -pin decoded_imm_j_i I1[20] -pin decoded_imm_j_i I1[19] -pin decoded_imm_j_i I1[18] -pin decoded_imm_j_i I1[17] -pin decoded_imm_j_i I1[16] -pin decoded_imm_j_i I1[15] -pin decoded_imm_j_i I1[14] -pin decoded_imm_j_i I1[13] -pin decoded_imm_j_i I1[12] -pin decoded_imm_j_i I1[11] -pin decoded_imm_j_i I1[10] -pin decoded_imm_j_i I1[9] -pin decoded_imm_j_i I1[8] -pin decoded_imm_j_i I1[7] -pin decoded_imm_j_i I1[6] -pin decoded_imm_j_i I1[5] -pin decoded_imm_j_i I1[4] -pin decoded_imm_j_i I1[3] -pin decoded_imm_j_i I1[2] -pin decoded_imm_j_i I1[1] -pin decoded_imm_j_i I1[0] -pin decoded_imm_j_reg[31:0] D[0] -pin decoder_pseudo_trigger_i I1 -pin decoder_pseudo_trigger_i__0 I1 -pin decoder_pseudo_trigger_i__1 I0 -pin decoder_pseudo_trigger_i__1 I1 -pin decoder_pseudo_trigger_i__1 I2 -pin decoder_pseudo_trigger_i__1 I3 -pin decoder_pseudo_trigger_i__1 I4 -pin decoder_pseudo_trigger_i__1 I5 -pin decoder_trigger_i I0 -pin do_waitirq_reg D -pin eoi_reg[31:0] CE -pin instr_getq_reg CE -pin instr_maskirq_reg CE -pin instr_retirq_reg CE -pin instr_setq_reg CE -pin instr_timer_reg CE -pin instr_trap_i I1[0] -pin instr_waitirq_reg CE -pin latched_branch_i I1 -pin latched_compr_i__0 I0 -pin latched_is_lb_i I0 -pin latched_is_lb_i__0 I1 -pin latched_is_lb_i__1 I0 -pin latched_is_lb_i__1 I2 -pin latched_is_lb_i__1 I3 -pin latched_is_lb_i__1 I4 -pin latched_is_lb_i__1 I5 -pin latched_is_lb_i__1 I6 -pin latched_is_lh_i I0 -pin latched_is_lh_i__0 I1 -pin latched_is_lh_i__1 I0 -pin latched_is_lh_i__1 I2 -pin latched_is_lh_i__1 I3 -pin latched_is_lh_i__1 I4 -pin latched_is_lh_i__1 I5 -pin latched_is_lh_i__1 I6 -pin latched_is_lu_i I0 -pin latched_is_lu_i__0 I1 -pin latched_is_lu_i__1 I0 -pin latched_is_lu_i__1 I2 -pin latched_is_lu_i__1 I3 -pin latched_is_lu_i__1 I4 -pin latched_is_lu_i__1 I5 -pin latched_is_lu_i__1 I6 -pin latched_rd_i I1[4] -pin latched_rd_i I1[3] -pin latched_rd_i I1[2] -pin latched_rd_i I1[1] -pin latched_rd_i I1[0] -pin latched_rd_i__0 I0 -pin latched_rd_i__0 I2 -pin latched_rd_i__0 I3 -pin latched_rd_i__0 I5 -pin latched_rd_i__0 I6 -pin latched_rd_i__0 I7 -pin latched_rd_i__1 I0 -pin latched_stalu_i__0 I0 -pin latched_stalu_i__1 I0 -pin latched_stalu_i__1 I2 -pin latched_stalu_i__1 I3 -pin latched_stalu_i__1 I5 -pin latched_stalu_i__1 I6 -pin latched_stalu_i__1 I7 -pin latched_store_i__0 I0 -pin latched_store_i__0 I2 -pin latched_store_i__1 I0 -pin latched_store_i__1 I2 -pin latched_store_i__1 I4 -pin latched_store_i__1 I5 -pin latched_store_i__1 I6 -pin latched_store_i__1 I7 -pin latched_store_i__1 S3 -pin latched_store_i__2 I0 -pin latched_store_i__2 I1 -pin latched_store_i__2 I2 -pin latched_store_i__2 I3 -pin latched_store_i__2 S0 -pin latched_store_i__3 I0 -pin latched_store_i__3 I6 -pin mem_addr_i I0 -pin mem_do_prefetch_i I0 -pin mem_do_prefetch_i__0 I1 -pin mem_do_prefetch_i__1 I0 -pin mem_do_prefetch_i__1 I2 -pin mem_do_prefetch_i__1 I3 -pin mem_do_prefetch_i__1 I4 -pin mem_do_prefetch_i__1 I5 -pin mem_do_prefetch_i__1 I6 -pin mem_do_prefetch_i__1 I7 -pin mem_do_prefetch_i__2 I0 -pin mem_do_rdata_reg CE -pin mem_do_rinst_i S2 -pin mem_do_rinst_i__1 I1 -pin mem_do_rinst_i__2 I0 -pin mem_do_rinst_i__2 I1 -pin mem_do_rinst_i__2 I3 -pin mem_do_rinst_i__2 I5 -pin mem_do_rinst_i__2 S3 -pin mem_do_rinst_i__3 I0 -pin mem_do_rinst_i__3 I2 -pin mem_do_rinst_i__3 S0 -pin mem_do_rinst_i__5 I1 -pin mem_do_rinst_i__6 I0 -pin mem_do_rinst_i__6 I1 -pin mem_do_rinst_i__6 I3 -pin mem_do_rinst_i__6 I5 -pin mem_do_rinst_i__6 S3 -pin mem_do_rinst_i__7 I0 -pin mem_do_rinst_i__7 I2 -pin mem_do_rinst_i__7 S0 -pin mem_do_rinst_i__8 I0 -pin mem_do_rinst_i__8 I4 -pin mem_do_rinst_i__8 I6 -pin mem_do_rinst_i__8 I7 -pin mem_do_rinst_i__9 I0 -pin mem_do_wdata_reg CE -pin mem_instr_i I0 -pin mem_instr_i__1 I1 -pin mem_instr_i__1 I2 -pin mem_instr_i__1 I3 -pin mem_instr_i__2 I0 -pin mem_la_addr_i I0[1] -pin mem_la_addr_i I0[0] -pin mem_la_addr_i I1[1] -pin mem_la_addr_i I1[0] -pin mem_rdata_word_i I0[31] -pin mem_rdata_word_i I0[30] -pin mem_rdata_word_i I0[29] -pin mem_rdata_word_i I0[28] -pin mem_rdata_word_i I0[27] -pin mem_rdata_word_i I0[26] -pin mem_rdata_word_i I0[25] -pin mem_rdata_word_i I0[24] -pin mem_rdata_word_i I0[23] -pin mem_rdata_word_i I0[22] -pin mem_rdata_word_i I0[21] -pin mem_rdata_word_i I0[20] -pin mem_rdata_word_i I0[19] -pin mem_rdata_word_i I0[18] -pin mem_rdata_word_i I0[17] -pin mem_rdata_word_i I0[16] -pin mem_rdata_word_i I1[31] -pin mem_rdata_word_i I1[30] -pin mem_rdata_word_i I1[29] -pin mem_rdata_word_i I1[28] -pin mem_rdata_word_i I1[27] -pin mem_rdata_word_i I1[26] -pin mem_rdata_word_i I1[25] -pin mem_rdata_word_i I1[24] -pin mem_rdata_word_i I1[23] -pin mem_rdata_word_i I1[22] -pin mem_rdata_word_i I1[21] -pin mem_rdata_word_i I1[20] -pin mem_rdata_word_i I1[19] -pin mem_rdata_word_i I1[18] -pin mem_rdata_word_i I1[17] -pin mem_rdata_word_i I1[16] -pin mem_rdata_word_i__0 I0[31] -pin mem_rdata_word_i__0 I0[30] -pin mem_rdata_word_i__0 I0[29] -pin mem_rdata_word_i__0 I0[28] -pin mem_rdata_word_i__0 I0[27] -pin mem_rdata_word_i__0 I0[26] -pin mem_rdata_word_i__0 I0[25] -pin mem_rdata_word_i__0 I0[24] -pin mem_rdata_word_i__0 I0[23] -pin mem_rdata_word_i__0 I0[22] -pin mem_rdata_word_i__0 I0[21] -pin mem_rdata_word_i__0 I0[20] -pin mem_rdata_word_i__0 I0[19] -pin mem_rdata_word_i__0 I0[18] -pin mem_rdata_word_i__0 I0[17] -pin mem_rdata_word_i__0 I0[16] -pin mem_rdata_word_i__0 I0[15] -pin mem_rdata_word_i__0 I0[14] -pin mem_rdata_word_i__0 I0[13] -pin mem_rdata_word_i__0 I0[12] -pin mem_rdata_word_i__0 I0[11] -pin mem_rdata_word_i__0 I0[10] -pin mem_rdata_word_i__0 I0[9] -pin mem_rdata_word_i__0 I0[8] -pin mem_rdata_word_i__0 I1[31] -pin mem_rdata_word_i__0 I1[30] -pin mem_rdata_word_i__0 I1[29] -pin mem_rdata_word_i__0 I1[28] -pin mem_rdata_word_i__0 I1[27] -pin mem_rdata_word_i__0 I1[26] -pin mem_rdata_word_i__0 I1[25] -pin mem_rdata_word_i__0 I1[24] -pin mem_rdata_word_i__0 I1[23] -pin mem_rdata_word_i__0 I1[22] -pin mem_rdata_word_i__0 I1[21] -pin mem_rdata_word_i__0 I1[20] -pin mem_rdata_word_i__0 I1[19] -pin mem_rdata_word_i__0 I1[18] -pin mem_rdata_word_i__0 I1[17] -pin mem_rdata_word_i__0 I1[16] -pin mem_rdata_word_i__0 I1[15] -pin mem_rdata_word_i__0 I1[14] -pin mem_rdata_word_i__0 I1[13] -pin mem_rdata_word_i__0 I1[12] -pin mem_rdata_word_i__0 I1[11] -pin mem_rdata_word_i__0 I1[10] -pin mem_rdata_word_i__0 I1[9] -pin mem_rdata_word_i__0 I1[8] -pin mem_rdata_word_i__0 I2[31] -pin mem_rdata_word_i__0 I2[30] -pin mem_rdata_word_i__0 I2[29] -pin mem_rdata_word_i__0 I2[28] -pin mem_rdata_word_i__0 I2[27] -pin mem_rdata_word_i__0 I2[26] -pin mem_rdata_word_i__0 I2[25] -pin mem_rdata_word_i__0 I2[24] -pin mem_rdata_word_i__0 I2[23] -pin mem_rdata_word_i__0 I2[22] -pin mem_rdata_word_i__0 I2[21] -pin mem_rdata_word_i__0 I2[20] -pin mem_rdata_word_i__0 I2[19] -pin mem_rdata_word_i__0 I2[18] -pin mem_rdata_word_i__0 I2[17] -pin mem_rdata_word_i__0 I2[16] -pin mem_rdata_word_i__0 I2[15] -pin mem_rdata_word_i__0 I2[14] -pin mem_rdata_word_i__0 I2[13] -pin mem_rdata_word_i__0 I2[12] -pin mem_rdata_word_i__0 I2[11] -pin mem_rdata_word_i__0 I2[10] -pin mem_rdata_word_i__0 I2[9] -pin mem_rdata_word_i__0 I2[8] -pin mem_rdata_word_i__0 I3[31] -pin mem_rdata_word_i__0 I3[30] -pin mem_rdata_word_i__0 I3[29] -pin mem_rdata_word_i__0 I3[28] -pin mem_rdata_word_i__0 I3[27] -pin mem_rdata_word_i__0 I3[26] -pin mem_rdata_word_i__0 I3[25] -pin mem_rdata_word_i__0 I3[24] -pin mem_rdata_word_i__0 I3[23] -pin mem_rdata_word_i__0 I3[22] -pin mem_rdata_word_i__0 I3[21] -pin mem_rdata_word_i__0 I3[20] -pin mem_rdata_word_i__0 I3[19] -pin mem_rdata_word_i__0 I3[18] -pin mem_rdata_word_i__0 I3[17] -pin mem_rdata_word_i__0 I3[16] -pin mem_rdata_word_i__0 I3[15] -pin mem_rdata_word_i__0 I3[14] -pin mem_rdata_word_i__0 I3[13] -pin mem_rdata_word_i__0 I3[12] -pin mem_rdata_word_i__0 I3[11] -pin mem_rdata_word_i__0 I3[10] -pin mem_rdata_word_i__0 I3[9] -pin mem_rdata_word_i__0 I3[8] -pin mem_state_i I0[0] -pin mem_state_i I1[1] -pin mem_state_i__0 I2[1] -pin mem_state_i__0 I2[0] -pin mem_state_i__0 I3[1] -pin mem_state_i__0 I3[0] -pin mem_state_i__3 I0 -pin mem_state_i__4 I1[1] -pin mem_state_i__4 I1[0] -pin mem_valid_i__0 I1 -pin mem_valid_i__0 I2 -pin mem_valid_i__2 I3 -pin mem_valid_i__3 I0 -pin mem_valid_i__4 I1 -pin mem_wdata_i I0 -pin mem_wordsize_i I0[0] -pin mem_wordsize_i I1[1] -pin mem_wordsize_i I2[1] -pin mem_wordsize_i I2[0] -pin mem_wordsize_i__0 I0[0] -pin mem_wordsize_i__0 I1[1] -pin mem_wordsize_i__0 I2[1] -pin mem_wordsize_i__0 I2[0] -pin mem_wordsize_i__1 I0[1] -pin mem_wordsize_i__1 I0[0] -pin mem_wordsize_i__2 I1 -pin mem_wordsize_i__3 I1 -pin mem_wordsize_i__4 I0 -pin mem_wordsize_i__4 I2 -pin mem_wordsize_i__4 I3 -pin mem_wordsize_i__4 I4 -pin mem_wordsize_i__4 I5 -pin mem_wordsize_i__5 I0 -pin mem_wstrb_i I0[3] -pin mem_wstrb_i I0[2] -pin mem_wstrb_i I0[1] -pin mem_wstrb_i I0[0] -pin mem_wstrb_i__3 I0 -pin pcpi_insn_reg[31:0] CE -pin pcpi_int_rd_reg D[31] -pin pcpi_int_rd_reg D[30] -pin pcpi_int_rd_reg D[29] -pin pcpi_int_rd_reg D[28] -pin pcpi_int_rd_reg D[27] -pin pcpi_int_rd_reg D[26] -pin pcpi_int_rd_reg D[25] -pin pcpi_int_rd_reg D[24] -pin pcpi_int_rd_reg D[23] -pin pcpi_int_rd_reg D[22] -pin pcpi_int_rd_reg D[21] -pin pcpi_int_rd_reg D[20] -pin pcpi_int_rd_reg D[19] -pin pcpi_int_rd_reg D[18] -pin pcpi_int_rd_reg D[17] -pin pcpi_int_rd_reg D[16] -pin pcpi_int_rd_reg D[15] -pin pcpi_int_rd_reg D[14] -pin pcpi_int_rd_reg D[13] -pin pcpi_int_rd_reg D[12] -pin pcpi_int_rd_reg D[11] -pin pcpi_int_rd_reg D[10] -pin pcpi_int_rd_reg D[9] -pin pcpi_int_rd_reg D[8] -pin pcpi_int_rd_reg D[7] -pin pcpi_int_rd_reg D[6] -pin pcpi_int_rd_reg D[5] -pin pcpi_int_rd_reg D[4] -pin pcpi_int_rd_reg D[3] -pin pcpi_int_rd_reg D[2] -pin pcpi_int_rd_reg D[1] -pin pcpi_int_rd_reg D[0] -pin pcpi_int_rd_reg G[31] -pin pcpi_int_rd_reg G[30] -pin pcpi_int_rd_reg G[29] -pin pcpi_int_rd_reg G[28] -pin pcpi_int_rd_reg G[27] -pin pcpi_int_rd_reg G[26] -pin pcpi_int_rd_reg G[25] -pin pcpi_int_rd_reg G[24] -pin pcpi_int_rd_reg G[23] -pin pcpi_int_rd_reg G[22] -pin pcpi_int_rd_reg G[21] -pin pcpi_int_rd_reg G[20] -pin pcpi_int_rd_reg G[19] -pin pcpi_int_rd_reg G[18] -pin pcpi_int_rd_reg G[17] -pin pcpi_int_rd_reg G[16] -pin pcpi_int_rd_reg G[15] -pin pcpi_int_rd_reg G[14] -pin pcpi_int_rd_reg G[13] -pin pcpi_int_rd_reg G[12] -pin pcpi_int_rd_reg G[11] -pin pcpi_int_rd_reg G[10] -pin pcpi_int_rd_reg G[9] -pin pcpi_int_rd_reg G[8] -pin pcpi_int_rd_reg G[7] -pin pcpi_int_rd_reg G[6] -pin pcpi_int_rd_reg G[5] -pin pcpi_int_rd_reg G[4] -pin pcpi_int_rd_reg G[3] -pin pcpi_int_rd_reg G[2] -pin pcpi_int_rd_reg G[1] -pin pcpi_int_rd_reg G[0] -pin pcpi_timeout_reg CE -pin pcpi_valid_i I0 -pin pcpi_valid_i__0 I0 -pin pcpi_valid_i__1 I1 -pin pcpi_valid_i__1 I2 -pin pcpi_valid_i__1 I3 -pin pcpi_valid_i__1 S0 -pin pcpi_valid_i__2 I0 -pin pcpi_valid_i__2 I1 -pin pcpi_valid_i__2 I2 -pin pcpi_valid_i__2 I4 -pin pcpi_valid_i__2 I5 -pin pcpi_valid_i__2 I6 -pin pcpi_valid_i__2 I7 -pin reg_op1_i S3 -pin reg_op1_i I0[31] -pin reg_op1_i I0[30] -pin reg_op1_i I0[29] -pin reg_op1_i I0[28] -pin reg_op1_i I0[27] -pin reg_op1_i I0[26] -pin reg_op1_i I0[25] -pin reg_op1_i I0[24] -pin reg_op1_i I0[23] -pin reg_op1_i I0[22] -pin reg_op1_i I0[21] -pin reg_op1_i I0[20] -pin reg_op1_i I0[19] -pin reg_op1_i I0[18] -pin reg_op1_i I0[17] -pin reg_op1_i I0[16] -pin reg_op1_i I0[15] -pin reg_op1_i I0[14] -pin reg_op1_i I0[13] -pin reg_op1_i I0[12] -pin reg_op1_i I0[11] -pin reg_op1_i I0[10] -pin reg_op1_i I0[9] -pin reg_op1_i I0[8] -pin reg_op1_i I0[7] -pin reg_op1_i I0[6] -pin reg_op1_i I0[5] -pin reg_op1_i I0[4] -pin reg_op1_i I0[3] -pin reg_op1_i I0[2] -pin reg_op1_i I0[1] -pin reg_op1_i I0[0] -pin reg_op1_i I1[31] -pin reg_op1_i I1[30] -pin reg_op1_i I1[29] -pin reg_op1_i I1[28] -pin reg_op1_i I1[27] -pin reg_op1_i I1[26] -pin reg_op1_i I1[25] -pin reg_op1_i I1[24] -pin reg_op1_i I1[23] -pin reg_op1_i I1[22] -pin reg_op1_i I1[21] -pin reg_op1_i I1[20] -pin reg_op1_i I1[19] -pin reg_op1_i I1[18] -pin reg_op1_i I1[17] -pin reg_op1_i I1[16] -pin reg_op1_i I1[15] -pin reg_op1_i I1[14] -pin reg_op1_i I1[13] -pin reg_op1_i I1[12] -pin reg_op1_i I1[11] -pin reg_op1_i I1[10] -pin reg_op1_i I1[9] -pin reg_op1_i I1[8] -pin reg_op1_i I1[7] -pin reg_op1_i I1[6] -pin reg_op1_i I1[5] -pin reg_op1_i I1[4] -pin reg_op1_i I1[3] -pin reg_op1_i I1[2] -pin reg_op1_i I1[1] -pin reg_op1_i I1[0] -pin reg_op1_i I3[31] -pin reg_op1_i I3[30] -pin reg_op1_i I3[29] -pin reg_op1_i I3[28] -pin reg_op1_i I3[27] -pin reg_op1_i I3[26] -pin reg_op1_i I3[25] -pin reg_op1_i I3[24] -pin reg_op1_i I3[23] -pin reg_op1_i I3[22] -pin reg_op1_i I3[21] -pin reg_op1_i I3[20] -pin reg_op1_i I3[19] -pin reg_op1_i I3[18] -pin reg_op1_i I3[17] -pin reg_op1_i I3[16] -pin reg_op1_i I3[15] -pin reg_op1_i I3[14] -pin reg_op1_i I3[13] -pin reg_op1_i I3[12] -pin reg_op1_i I3[11] -pin reg_op1_i I3[10] -pin reg_op1_i I3[9] -pin reg_op1_i I3[8] -pin reg_op1_i I3[7] -pin reg_op1_i I3[6] -pin reg_op1_i I3[5] -pin reg_op1_i I3[4] -pin reg_op1_i I3[3] -pin reg_op1_i I3[2] -pin reg_op1_i I3[1] -pin reg_op1_i I3[0] -pin reg_op1_i__4 I0 -pin reg_op1_i__5 I1 -pin reg_op1_i__6 I1 -pin reg_op1_i__7 I0 -pin reg_op1_i__7 I1 -pin reg_op1_i__7 I3 -pin reg_op1_i__7 I4 -pin reg_op1_i__8 I0 -pin reg_op2_i S3 -pin reg_op2_i I0[31] -pin reg_op2_i I0[30] -pin reg_op2_i I0[29] -pin reg_op2_i I0[28] -pin reg_op2_i I0[27] -pin reg_op2_i I0[26] -pin reg_op2_i I0[25] -pin reg_op2_i I0[24] -pin reg_op2_i I0[23] -pin reg_op2_i I0[22] -pin reg_op2_i I0[21] -pin reg_op2_i I0[20] -pin reg_op2_i I0[19] -pin reg_op2_i I0[18] -pin reg_op2_i I0[17] -pin reg_op2_i I0[16] -pin reg_op2_i I0[15] -pin reg_op2_i I0[14] -pin reg_op2_i I0[13] -pin reg_op2_i I0[12] -pin reg_op2_i I0[11] -pin reg_op2_i I0[10] -pin reg_op2_i I0[9] -pin reg_op2_i I0[8] -pin reg_op2_i I0[7] -pin reg_op2_i I0[6] -pin reg_op2_i I0[5] -pin reg_op2_i I0[4] -pin reg_op2_i I0[3] -pin reg_op2_i I0[2] -pin reg_op2_i I0[1] -pin reg_op2_i I0[0] -pin reg_op2_i I1[31] -pin reg_op2_i I1[30] -pin reg_op2_i I1[29] -pin reg_op2_i I1[28] -pin reg_op2_i I1[27] -pin reg_op2_i I1[26] -pin reg_op2_i I1[25] -pin reg_op2_i I1[24] -pin reg_op2_i I1[23] -pin reg_op2_i I1[22] -pin reg_op2_i I1[21] -pin reg_op2_i I1[20] -pin reg_op2_i I1[19] -pin reg_op2_i I1[18] -pin reg_op2_i I1[17] -pin reg_op2_i I1[16] -pin reg_op2_i I1[15] -pin reg_op2_i I1[14] -pin reg_op2_i I1[13] -pin reg_op2_i I1[12] -pin reg_op2_i I1[11] -pin reg_op2_i I1[10] -pin reg_op2_i I1[9] -pin reg_op2_i I1[8] -pin reg_op2_i I1[7] -pin reg_op2_i I1[6] -pin reg_op2_i I1[5] -pin reg_op2_i I1[4] -pin reg_op2_i I1[3] -pin reg_op2_i I1[2] -pin reg_op2_i I1[1] -pin reg_op2_i I1[0] -pin reg_op2_i I3[31] -pin reg_op2_i I3[30] -pin reg_op2_i I3[29] -pin reg_op2_i I3[28] -pin reg_op2_i I3[27] -pin reg_op2_i I3[26] -pin reg_op2_i I3[25] -pin reg_op2_i I3[24] -pin reg_op2_i I3[23] -pin reg_op2_i I3[22] -pin reg_op2_i I3[21] -pin reg_op2_i I3[20] -pin reg_op2_i I3[19] -pin reg_op2_i I3[18] -pin reg_op2_i I3[17] -pin reg_op2_i I3[16] -pin reg_op2_i I3[15] -pin reg_op2_i I3[14] -pin reg_op2_i I3[13] -pin reg_op2_i I3[12] -pin reg_op2_i I3[11] -pin reg_op2_i I3[10] -pin reg_op2_i I3[9] -pin reg_op2_i I3[8] -pin reg_op2_i I3[7] -pin reg_op2_i I3[6] -pin reg_op2_i I3[5] -pin reg_op2_i I3[4] -pin reg_op2_i I3[3] -pin reg_op2_i I3[2] -pin reg_op2_i I3[1] -pin reg_op2_i I3[0] -pin reg_op2_i I4[31] -pin reg_op2_i I4[30] -pin reg_op2_i I4[29] -pin reg_op2_i I4[28] -pin reg_op2_i I4[27] -pin reg_op2_i I4[26] -pin reg_op2_i I4[25] -pin reg_op2_i I4[24] -pin reg_op2_i I4[23] -pin reg_op2_i I4[22] -pin reg_op2_i I4[21] -pin reg_op2_i I4[20] -pin reg_op2_i I4[19] -pin reg_op2_i I4[18] -pin reg_op2_i I4[17] -pin reg_op2_i I4[16] -pin reg_op2_i I4[15] -pin reg_op2_i I4[14] -pin reg_op2_i I4[13] -pin reg_op2_i I4[12] -pin reg_op2_i I4[11] -pin reg_op2_i I4[10] -pin reg_op2_i I4[9] -pin reg_op2_i I4[8] -pin reg_op2_i I4[7] -pin reg_op2_i I4[6] -pin reg_op2_i I4[5] -pin reg_op2_i I4[4] -pin reg_op2_i I4[3] -pin reg_op2_i I4[2] -pin reg_op2_i I4[1] -pin reg_op2_i I4[0] -pin reg_op2_i I5[31] -pin reg_op2_i I5[30] -pin reg_op2_i I5[29] -pin reg_op2_i I5[28] -pin reg_op2_i I5[27] -pin reg_op2_i I5[26] -pin reg_op2_i I5[25] -pin reg_op2_i I5[24] -pin reg_op2_i I5[23] -pin reg_op2_i I5[22] -pin reg_op2_i I5[21] -pin reg_op2_i I5[20] -pin reg_op2_i I5[19] -pin reg_op2_i I5[18] -pin reg_op2_i I5[17] -pin reg_op2_i I5[16] -pin reg_op2_i I5[15] -pin reg_op2_i I5[14] -pin reg_op2_i I5[13] -pin reg_op2_i I5[12] -pin reg_op2_i I5[11] -pin reg_op2_i I5[10] -pin reg_op2_i I5[9] -pin reg_op2_i I5[8] -pin reg_op2_i I5[7] -pin reg_op2_i I5[6] -pin reg_op2_i I5[5] -pin reg_op2_i I5[4] -pin reg_op2_i I5[3] -pin reg_op2_i I5[2] -pin reg_op2_i I5[1] -pin reg_op2_i I5[0] -pin reg_op2_i__2 I0 -pin reg_out_i__0 S3 -pin reg_out_i__0 I0[31] -pin reg_out_i__0 I0[30] -pin reg_out_i__0 I0[29] -pin reg_out_i__0 I0[28] -pin reg_out_i__0 I0[27] -pin reg_out_i__0 I0[26] -pin reg_out_i__0 I0[25] -pin reg_out_i__0 I0[24] -pin reg_out_i__0 I0[23] -pin reg_out_i__0 I0[22] -pin reg_out_i__0 I0[21] -pin reg_out_i__0 I0[20] -pin reg_out_i__0 I0[19] -pin reg_out_i__0 I0[18] -pin reg_out_i__0 I0[17] -pin reg_out_i__0 I0[16] -pin reg_out_i__0 I0[15] -pin reg_out_i__0 I0[14] -pin reg_out_i__0 I0[13] -pin reg_out_i__0 I0[12] -pin reg_out_i__0 I0[11] -pin reg_out_i__0 I0[10] -pin reg_out_i__0 I0[9] -pin reg_out_i__0 I0[8] -pin reg_out_i__0 I0[7] -pin reg_out_i__0 I0[6] -pin reg_out_i__0 I0[5] -pin reg_out_i__0 I0[4] -pin reg_out_i__0 I0[3] -pin reg_out_i__0 I0[2] -pin reg_out_i__0 I0[1] -pin reg_out_i__0 I0[0] -pin reg_out_i__0 I2[31] -pin reg_out_i__0 I2[30] -pin reg_out_i__0 I2[29] -pin reg_out_i__0 I2[28] -pin reg_out_i__0 I2[27] -pin reg_out_i__0 I2[26] -pin reg_out_i__0 I2[25] -pin reg_out_i__0 I2[24] -pin reg_out_i__0 I2[23] -pin reg_out_i__0 I2[22] -pin reg_out_i__0 I2[21] -pin reg_out_i__0 I2[20] -pin reg_out_i__0 I2[19] -pin reg_out_i__0 I2[18] -pin reg_out_i__0 I2[17] -pin reg_out_i__0 I2[16] -pin reg_out_i__0 I2[15] -pin reg_out_i__0 I2[14] -pin reg_out_i__0 I2[13] -pin reg_out_i__0 I2[12] -pin reg_out_i__0 I2[11] -pin reg_out_i__0 I2[10] -pin reg_out_i__0 I2[9] -pin reg_out_i__0 I2[8] -pin reg_out_i__0 I2[7] -pin reg_out_i__0 I2[6] -pin reg_out_i__0 I2[5] -pin reg_out_i__0 I2[4] -pin reg_out_i__0 I2[3] -pin reg_out_i__0 I2[2] -pin reg_out_i__0 I2[1] -pin reg_out_i__0 I2[0] -pin reg_out_i__0 I4[31] -pin reg_out_i__0 I4[30] -pin reg_out_i__0 I4[29] -pin reg_out_i__0 I4[28] -pin reg_out_i__0 I4[27] -pin reg_out_i__0 I4[26] -pin reg_out_i__0 I4[25] -pin reg_out_i__0 I4[24] -pin reg_out_i__0 I4[23] -pin reg_out_i__0 I4[22] -pin reg_out_i__0 I4[21] -pin reg_out_i__0 I4[20] -pin reg_out_i__0 I4[19] -pin reg_out_i__0 I4[18] -pin reg_out_i__0 I4[17] -pin reg_out_i__0 I4[16] -pin reg_out_i__0 I4[15] -pin reg_out_i__0 I4[14] -pin reg_out_i__0 I4[13] -pin reg_out_i__0 I4[12] -pin reg_out_i__0 I4[11] -pin reg_out_i__0 I4[10] -pin reg_out_i__0 I4[9] -pin reg_out_i__0 I4[8] -pin reg_out_i__0 I4[7] -pin reg_out_i__0 I4[6] -pin reg_out_i__0 I4[5] -pin reg_out_i__0 I4[4] -pin reg_out_i__0 I4[3] -pin reg_out_i__0 I4[2] -pin reg_out_i__0 I4[1] -pin reg_out_i__0 I4[0] -pin reg_out_i__0 I5[31] -pin reg_out_i__0 I5[30] -pin reg_out_i__0 I5[29] -pin reg_out_i__0 I5[28] -pin reg_out_i__0 I5[27] -pin reg_out_i__0 I5[26] -pin reg_out_i__0 I5[25] -pin reg_out_i__0 I5[24] -pin reg_out_i__0 I5[23] -pin reg_out_i__0 I5[22] -pin reg_out_i__0 I5[21] -pin reg_out_i__0 I5[20] -pin reg_out_i__0 I5[19] -pin reg_out_i__0 I5[18] -pin reg_out_i__0 I5[17] -pin reg_out_i__0 I5[16] -pin reg_out_i__0 I5[15] -pin reg_out_i__0 I5[14] -pin reg_out_i__0 I5[13] -pin reg_out_i__0 I5[12] -pin reg_out_i__0 I5[11] -pin reg_out_i__0 I5[10] -pin reg_out_i__0 I5[9] -pin reg_out_i__0 I5[8] -pin reg_out_i__0 I5[7] -pin reg_out_i__0 I5[6] -pin reg_out_i__0 I5[5] -pin reg_out_i__0 I5[4] -pin reg_out_i__0 I5[3] -pin reg_out_i__0 I5[2] -pin reg_out_i__0 I5[1] -pin reg_out_i__0 I5[0] -pin reg_out_i__0 I6[31] -pin reg_out_i__0 I6[30] -pin reg_out_i__0 I6[29] -pin reg_out_i__0 I6[28] -pin reg_out_i__0 I6[27] -pin reg_out_i__0 I6[26] -pin reg_out_i__0 I6[25] -pin reg_out_i__0 I6[24] -pin reg_out_i__0 I6[23] -pin reg_out_i__0 I6[22] -pin reg_out_i__0 I6[21] -pin reg_out_i__0 I6[20] -pin reg_out_i__0 I6[19] -pin reg_out_i__0 I6[18] -pin reg_out_i__0 I6[17] -pin reg_out_i__0 I6[16] -pin reg_out_i__0 I6[15] -pin reg_out_i__0 I6[14] -pin reg_out_i__0 I6[13] -pin reg_out_i__0 I6[12] -pin reg_out_i__0 I6[11] -pin reg_out_i__0 I6[10] -pin reg_out_i__0 I6[9] -pin reg_out_i__0 I6[8] -pin reg_out_i__0 I6[7] -pin reg_out_i__0 I6[6] -pin reg_out_i__0 I6[5] -pin reg_out_i__0 I6[4] -pin reg_out_i__0 I6[3] -pin reg_out_i__0 I6[2] -pin reg_out_i__0 I6[1] -pin reg_out_i__0 I6[0] -pin reg_sh_i S3 -pin reg_sh_i I0[4] -pin reg_sh_i I0[3] -pin reg_sh_i I0[2] -pin reg_sh_i I0[1] -pin reg_sh_i I0[0] -pin reg_sh_i I1[4] -pin reg_sh_i I1[3] -pin reg_sh_i I1[2] -pin reg_sh_i I1[1] -pin reg_sh_i I1[0] -pin reg_sh_i I2[4] -pin reg_sh_i I2[3] -pin reg_sh_i I2[2] -pin reg_sh_i I2[1] -pin reg_sh_i I2[0] -pin reg_sh_i I3[4] -pin reg_sh_i I3[3] -pin reg_sh_i I3[2] -pin reg_sh_i I3[1] -pin reg_sh_i I3[0] -pin reg_sh_i I4[4] -pin reg_sh_i I4[3] -pin reg_sh_i I4[2] -pin reg_sh_i I4[1] -pin reg_sh_i I4[0] -pin reg_sh_i I6[4] -pin reg_sh_i I6[3] -pin reg_sh_i I6[2] -pin reg_sh_i I6[1] -pin reg_sh_i I6[0] -pin set_mem_do_rdata_i I1 -pin set_mem_do_rdata_i__0 I0 -pin set_mem_do_rdata_i__0 I1 -pin set_mem_do_rdata_i__0 I2 -pin set_mem_do_rdata_i__0 I3 -pin set_mem_do_rdata_i__0 I4 -pin set_mem_do_rdata_i__0 I5 -pin set_mem_do_rdata_i__0 I6 -pin set_mem_do_rdata_i__1 I0 -pin set_mem_do_rinst_i I1 -pin set_mem_do_rinst_i__0 I0 -pin set_mem_do_rinst_i__0 I1 -pin set_mem_do_rinst_i__0 I2 -pin set_mem_do_rinst_i__0 I3 -pin set_mem_do_rinst_i__0 I5 -pin set_mem_do_rinst_i__0 I6 -pin set_mem_do_rinst_i__0 I7 -pin set_mem_do_rinst_i__1 I0 -pin set_mem_do_wdata_i I1 -pin set_mem_do_wdata_i__0 I0 -pin set_mem_do_wdata_i__0 I1 -pin set_mem_do_wdata_i__0 I2 -pin set_mem_do_wdata_i__0 I3 -pin set_mem_do_wdata_i__0 I4 -pin set_mem_do_wdata_i__0 I5 -pin set_mem_do_wdata_i__0 I7 -pin set_mem_do_wdata_i__1 I0 -pin trace_data_reg[35:0] CE -pin trace_data_reg[35:0] D
load net <const1> -power -pin RTL_ADD__1 I1 -pin RTL_ADD__2 I1 -pin RTL_ADD__6 I1[3] -pin RTL_ADD__6 I1[2] -pin RTL_ADD__7 I1[1] -pin RTL_ADD__7 I1[0] -pin RTL_AND__67 I1[31] -pin RTL_AND__67 I1[30] -pin RTL_AND__67 I1[29] -pin RTL_AND__67 I1[28] -pin RTL_AND__67 I1[27] -pin RTL_AND__67 I1[26] -pin RTL_AND__67 I1[25] -pin RTL_AND__67 I1[24] -pin RTL_AND__67 I1[23] -pin RTL_AND__67 I1[22] -pin RTL_AND__67 I1[21] -pin RTL_AND__67 I1[20] -pin RTL_AND__67 I1[19] -pin RTL_AND__67 I1[18] -pin RTL_AND__67 I1[17] -pin RTL_AND__67 I1[16] -pin RTL_AND__67 I1[15] -pin RTL_AND__67 I1[14] -pin RTL_AND__67 I1[13] -pin RTL_AND__67 I1[12] -pin RTL_AND__67 I1[11] -pin RTL_AND__67 I1[10] -pin RTL_AND__67 I1[9] -pin RTL_AND__67 I1[8] -pin RTL_AND__67 I1[7] -pin RTL_AND__67 I1[6] -pin RTL_AND__67 I1[5] -pin RTL_AND__67 I1[4] -pin RTL_AND__67 I1[3] -pin RTL_AND__67 I1[2] -pin RTL_AND__67 I1[1] -pin RTL_AND__83 I1[31] -pin RTL_AND__83 I1[30] -pin RTL_AND__83 I1[29] -pin RTL_AND__83 I1[28] -pin RTL_AND__83 I1[27] -pin RTL_AND__83 I1[26] -pin RTL_AND__83 I1[25] -pin RTL_AND__83 I1[24] -pin RTL_AND__83 I1[23] -pin RTL_AND__83 I1[22] -pin RTL_AND__83 I1[21] -pin RTL_AND__83 I1[20] -pin RTL_AND__83 I1[19] -pin RTL_AND__83 I1[18] -pin RTL_AND__83 I1[17] -pin RTL_AND__83 I1[16] -pin RTL_AND__83 I1[15] -pin RTL_AND__83 I1[14] -pin RTL_AND__83 I1[13] -pin RTL_AND__83 I1[12] -pin RTL_AND__83 I1[11] -pin RTL_AND__83 I1[10] -pin RTL_AND__83 I1[9] -pin RTL_AND__83 I1[8] -pin RTL_AND__83 I1[7] -pin RTL_AND__83 I1[6] -pin RTL_AND__83 I1[5] -pin RTL_AND__83 I1[4] -pin RTL_AND__83 I1[3] -pin RTL_AND__83 I1[2] -pin RTL_AND__83 I1[1] -pin RTL_ARSHIFT I2 -pin RTL_ARSHIFT I1[2] -pin RTL_ARSHIFT__0 I1 -pin RTL_ARSHIFT__0 I2 -pin RTL_EQ I1[6] -pin RTL_EQ I1[5] -pin RTL_EQ I1[2] -pin RTL_EQ I1[1] -pin RTL_EQ I1[0] -pin RTL_EQ__1 I1[6] -pin RTL_EQ__1 I1[5] -pin RTL_EQ__1 I1[3] -pin RTL_EQ__1 I1[2] -pin RTL_EQ__1 I1[1] -pin RTL_EQ__1 I1[0] -pin RTL_EQ__10 I1[19] -pin RTL_EQ__10 I1[18] -pin RTL_EQ__10 I1[15] -pin RTL_EQ__10 I1[9] -pin RTL_EQ__10 I1[1] -pin RTL_EQ__11 I1[6] -pin RTL_EQ__11 I1[5] -pin RTL_EQ__11 I1[4] -pin RTL_EQ__11 I1[1] -pin RTL_EQ__11 I1[0] -pin RTL_EQ__12 I1[19] -pin RTL_EQ__12 I1[18] -pin RTL_EQ__12 I1[9] -pin RTL_EQ__12 I1[1] -pin RTL_EQ__13 I1[6] -pin RTL_EQ__13 I1[5] -pin RTL_EQ__13 I1[4] -pin RTL_EQ__13 I1[1] -pin RTL_EQ__13 I1[0] -pin RTL_EQ__14 I1[19] -pin RTL_EQ__14 I1[18] -pin RTL_EQ__14 I1[15] -pin RTL_EQ__14 I1[1] -pin RTL_EQ__15 I1[6] -pin RTL_EQ__15 I1[5] -pin RTL_EQ__15 I1[4] -pin RTL_EQ__15 I1[1] -pin RTL_EQ__15 I1[0] -pin RTL_EQ__16 I1[19] -pin RTL_EQ__16 I1[18] -pin RTL_EQ__16 I1[15] -pin RTL_EQ__16 I1[8] -pin RTL_EQ__16 I1[1] -pin RTL_EQ__17 I1[6] -pin RTL_EQ__17 I1[5] -pin RTL_EQ__17 I1[4] -pin RTL_EQ__17 I1[1] -pin RTL_EQ__17 I1[0] -pin RTL_EQ__18 I1[19] -pin RTL_EQ__18 I1[18] -pin RTL_EQ__18 I1[1] -pin RTL_EQ__19 I1[6] -pin RTL_EQ__19 I1[5] -pin RTL_EQ__19 I1[4] -pin RTL_EQ__19 I1[1] -pin RTL_EQ__19 I1[0] -pin RTL_EQ__2 I1[4] -pin RTL_EQ__2 I1[2] -pin RTL_EQ__2 I1[1] -pin RTL_EQ__2 I1[0] -pin RTL_EQ__20 I1[19] -pin RTL_EQ__20 I1[18] -pin RTL_EQ__20 I1[8] -pin RTL_EQ__20 I1[1] -pin RTL_EQ__21 I1[5] -pin RTL_EQ__21 I1[4] -pin RTL_EQ__21 I1[1] -pin RTL_EQ__21 I1[0] -pin RTL_EQ__22 I1[2] -pin RTL_EQ__22 I1[1] -pin RTL_EQ__22 I1[0] -pin RTL_EQ__24 I1[2] -pin RTL_EQ__24 I1[1] -pin RTL_EQ__26 I1[2] -pin RTL_EQ__26 I1[0] -pin RTL_EQ__27 I1[5] -pin RTL_EQ__28 I1[2] -pin RTL_EQ__28 I1[0] -pin RTL_EQ__3 I1[5] -pin RTL_EQ__3 I1[4] -pin RTL_EQ__3 I1[2] -pin RTL_EQ__3 I1[1] -pin RTL_EQ__3 I1[0] -pin RTL_EQ__30 I1[2] -pin RTL_EQ__32 I1[1] -pin RTL_EQ__32 I1[0] -pin RTL_EQ__34 I1[1] -pin RTL_EQ__36 I1[0] -pin RTL_EQ__39 I1[5] -pin RTL_EQ__4 I1[4] -pin RTL_EQ__4 I1[1] -pin RTL_EQ__4 I1[0] -pin RTL_EQ__42 I1[2] -pin RTL_EQ__42 I1[0] -pin RTL_EQ__43 I1[5] -pin RTL_EQ__44 I1[2] -pin RTL_EQ__44 I1[0] -pin RTL_EQ__46 I1[0] -pin RTL_EQ__48 I1[2] -pin RTL_EQ__48 I1[1] -pin RTL_EQ__48 I1[0] -pin RTL_EQ__49 I1[2] -pin RTL_EQ__49 I1[1] -pin RTL_EQ__5 I1[1] -pin RTL_EQ__5 I1[0] -pin RTL_EQ__50 I1[2] -pin RTL_EQ__51 I1[1] -pin RTL_EQ__51 I1[0] -pin RTL_EQ__52 I1[1] -pin RTL_EQ__54 I1[1] -pin RTL_EQ__55 I1[0] -pin RTL_EQ__57 I1[2] -pin RTL_EQ__57 I1[0] -pin RTL_EQ__58 I1[2] -pin RTL_EQ__59 I1[1] -pin RTL_EQ__6 I1[6] -pin RTL_EQ__6 I1[5] -pin RTL_EQ__6 I1[1] -pin RTL_EQ__6 I1[0] -pin RTL_EQ__60 I1[0] -pin RTL_EQ__62 I1[2] -pin RTL_EQ__62 I1[1] -pin RTL_EQ__62 I1[0] -pin RTL_EQ__63 I1[2] -pin RTL_EQ__63 I1[1] -pin RTL_EQ__64 I1[2] -pin RTL_EQ__64 I1[0] -pin RTL_EQ__65 I1[2] -pin RTL_EQ__66 I1[0] -pin RTL_EQ__68 I1[2] -pin RTL_EQ__68 I1[0] -pin RTL_EQ__69 I1[5] -pin RTL_EQ__7 I1[3] -pin RTL_EQ__7 I1[2] -pin RTL_EQ__7 I1[1] -pin RTL_EQ__7 I1[0] -pin RTL_EQ__70 I1[2] -pin RTL_EQ__70 I1[0] -pin RTL_EQ__72 I1[0] -pin RTL_EQ__74 I1[2] -pin RTL_EQ__74 I1[1] -pin RTL_EQ__74 I1[0] -pin RTL_EQ__75 I1[2] -pin RTL_EQ__75 I1[1] -pin RTL_EQ__76 I1[2] -pin RTL_EQ__77 I1[1] -pin RTL_EQ__77 I1[0] -pin RTL_EQ__78 I1[1] -pin RTL_EQ__80 I1[2] -pin RTL_EQ__80 I1[0] -pin RTL_EQ__81 I1[5] -pin RTL_EQ__82 I1[2] -pin RTL_EQ__82 I1[0] -pin RTL_EQ__84 I1[0] -pin RTL_EQ__88 I1[5] -pin RTL_EQ__88 I1[1] -pin RTL_EQ__88 I1[0] -pin RTL_EQ__89 I1[6] -pin RTL_EQ__89 I1[5] -pin RTL_EQ__89 I1[4] -pin RTL_EQ__89 I1[1] -pin RTL_EQ__89 I1[0] -pin RTL_EQ__9 I1[6] -pin RTL_EQ__9 I1[5] -pin RTL_EQ__9 I1[4] -pin RTL_EQ__9 I1[1] -pin RTL_EQ__9 I1[0] -pin RTL_EQ__93 I1[0] -pin RTL_EQ__96 I1[6] -pin RTL_GEQ I1[2] -pin RTL_LSHIFT I2 -pin RTL_LSHIFT I1[3] -pin RTL_LSHIFT I1[2] -pin RTL_LSHIFT__0 I2 -pin RTL_LSHIFT__1 I2 -pin RTL_LSHIFT__1 I1[2] -pin RTL_LSHIFT__2 I1 -pin RTL_LSHIFT__2 I2 -pin RTL_LSHIFT__3 I2 -pin RTL_LSHIFT__3 I0[0] -pin RTL_MUX I1[1] -pin RTL_MUX I1[0] -pin RTL_MUX__2 I1[63] -pin RTL_MUX__2 I1[62] -pin RTL_MUX__2 I1[61] -pin RTL_MUX__2 I1[60] -pin RTL_MUX__2 I1[59] -pin RTL_MUX__2 I1[58] -pin RTL_MUX__2 I1[57] -pin RTL_MUX__2 I1[56] -pin RTL_MUX__2 I1[55] -pin RTL_MUX__2 I1[54] -pin RTL_MUX__2 I1[53] -pin RTL_MUX__2 I1[52] -pin RTL_MUX__2 I1[51] -pin RTL_MUX__2 I1[50] -pin RTL_MUX__2 I1[49] -pin RTL_MUX__2 I1[48] -pin RTL_MUX__2 I1[47] -pin RTL_MUX__2 I1[46] -pin RTL_MUX__2 I1[45] -pin RTL_MUX__2 I1[44] -pin RTL_MUX__2 I1[43] -pin RTL_MUX__2 I1[42] -pin RTL_MUX__2 I1[41] -pin RTL_MUX__2 I1[40] -pin RTL_MUX__2 I1[39] -pin RTL_MUX__2 I1[38] -pin RTL_MUX__2 I1[37] -pin RTL_MUX__2 I1[36] -pin RTL_MUX__2 I1[35] -pin RTL_MUX__2 I1[34] -pin RTL_MUX__2 I1[33] -pin RTL_MUX__2 I1[32] -pin RTL_MUX__2 I1[31] -pin RTL_MUX__2 I1[30] -pin RTL_MUX__2 I1[29] -pin RTL_MUX__2 I1[28] -pin RTL_MUX__2 I1[27] -pin RTL_MUX__2 I1[26] -pin RTL_MUX__2 I1[25] -pin RTL_MUX__2 I1[24] -pin RTL_MUX__2 I1[23] -pin RTL_MUX__2 I1[22] -pin RTL_MUX__2 I1[21] -pin RTL_MUX__2 I1[20] -pin RTL_MUX__2 I1[19] -pin RTL_MUX__2 I1[18] -pin RTL_MUX__2 I1[17] -pin RTL_MUX__2 I1[16] -pin RTL_MUX__2 I1[15] -pin RTL_MUX__2 I1[14] -pin RTL_MUX__2 I1[13] -pin RTL_MUX__2 I1[12] -pin RTL_MUX__2 I1[11] -pin RTL_MUX__2 I1[10] -pin RTL_MUX__2 I1[9] -pin RTL_MUX__2 I1[8] -pin RTL_MUX__2 I1[7] -pin RTL_MUX__2 I1[6] -pin RTL_MUX__2 I1[5] -pin RTL_MUX__2 I1[4] -pin RTL_MUX__2 I1[3] -pin RTL_MUX__2 I1[2] -pin RTL_MUX__2 I1[1] -pin RTL_MUX__2 I1[0] -pin RTL_MUX__5 I0[1] -pin RTL_MUX__5 I1[2] -pin RTL_MUX__8 I0[3] -pin RTL_MUX__8 I0[2] -pin RTL_MUX__8 I1[1] -pin RTL_MUX__8 I1[0] -pin RTL_MUX__9 I0[1] -pin RTL_MUX__9 I1[2] -pin RTL_RSHIFT I2 -pin RTL_RSHIFT I1[2] -pin RTL_RSHIFT__0 I1 -pin RTL_RSHIFT__0 I2 -pin cpu_state_i I0[1] -pin cpu_state_i I1[2] -pin cpu_state_i I2[3] -pin cpu_state_i__0 I0[7] -pin cpu_state_i__0 I1[6] -pin cpu_state_i__0 I2[3] -pin cpu_state_i__0 I3[6] -pin cpu_state_i__0 I4[0] -pin cpu_state_i__0 I5[2] -pin cpu_state_i__0 I6[3] -pin cpu_state_i__1 S0 -pin cpu_state_i__1 I0[6] -pin cpu_state_i__1 I1[7] -pin cpu_state_i__12 I2 -pin cpu_state_i__13 I0 -pin cpu_state_i__14 I0[7] -pin cpu_state_i__14 I0[6] -pin cpu_state_i__14 I0[5] -pin cpu_state_i__14 I0[4] -pin cpu_state_i__14 I0[3] -pin cpu_state_i__14 I0[2] -pin cpu_state_i__14 I0[1] -pin cpu_state_i__14 I0[0] -pin cpu_state_i__16 I0[7] -pin cpu_state_i__16 I0[6] -pin cpu_state_i__16 I0[5] -pin cpu_state_i__16 I0[4] -pin cpu_state_i__16 I0[3] -pin cpu_state_i__16 I0[2] -pin cpu_state_i__16 I0[1] -pin cpu_state_i__16 I0[0] -pin cpu_state_i__2 I1[1] -pin cpu_state_i__2 I2[2] -pin cpu_state_i__2 I3[3] -pin cpu_state_i__3 I0[5] -pin cpu_state_i__3 I3[6] -pin cpu_state_i__3 I4[6] -pin cpu_state_i__3 I5[6] -pin cpu_state_i__3 I6[6] -pin cpu_state_i__4 I0[6] -pin cpu_state_i__5 I1 -pin cpu_state_i__7 I0 -pin cpu_state_i__7 S0 -pin cpu_state_i__8 I1 -pin cpu_state_i__8 I2 -pin cpu_state_i__8 I3 -pin cpu_state_i__9 I1 -pin cpuregs_write_i I0 -pin cpuregs_write_i I1 -pin cpuregs_write_i I2 -pin current_pc_i I2[4] -pin decoded_imm_j_i I0[31] -pin decoded_imm_j_i I0[30] -pin decoded_imm_j_i I0[29] -pin decoded_imm_j_i I0[28] -pin decoded_imm_j_i I0[27] -pin decoded_imm_j_i I0[26] -pin decoded_imm_j_i I0[25] -pin decoded_imm_j_i I0[24] -pin decoded_imm_j_i I0[23] -pin decoded_imm_j_i I0[22] -pin decoded_imm_j_i I0[21] -pin decoded_imm_j_i I0[20] -pin decoded_imm_j_i I0[19] -pin decoded_imm_j_i I0[18] -pin decoded_imm_j_i I0[17] -pin decoded_imm_j_i I0[16] -pin decoded_imm_j_i I0[15] -pin decoded_imm_j_i I0[14] -pin decoded_imm_j_i I0[13] -pin decoded_imm_j_i I0[12] -pin decoded_imm_j_i I0[11] -pin decoded_imm_j_i I0[10] -pin decoded_imm_j_i I0[9] -pin decoded_imm_j_i I0[8] -pin decoded_imm_j_i I0[7] -pin decoded_imm_j_i I0[6] -pin decoded_imm_j_i I0[5] -pin decoded_imm_j_i I0[4] -pin decoded_imm_j_i I0[3] -pin decoded_imm_j_i I0[2] -pin decoded_imm_j_i I0[1] -pin decoded_imm_j_i I0[0] -pin decoder_trigger_i__1 I0 -pin decoder_trigger_i__3 I0 -pin is_compare_i I0 -pin latched_is_lb_i__1 I1 -pin latched_is_lh_i__1 I1 -pin latched_is_lu_i__1 I1 -pin latched_rd_i__0 I1 -pin latched_stalu_i__0 I1 -pin latched_stalu_i__1 I1 -pin latched_store_i I1 -pin latched_store_i__0 I1 -pin latched_store_i__0 I4 -pin latched_store_i__0 I5 -pin latched_store_i__1 I1 -pin latched_store_i__1 I3 -pin latched_store_i__3 I1 -pin latched_store_i__3 I4 -pin latched_store_i__3 I5 -pin latched_store_i__3 I7 -pin mem_do_prefetch_i I1 -pin mem_do_rinst_i I2 -pin mem_do_rinst_i__1 I0 -pin mem_do_rinst_i__2 I4 -pin mem_do_rinst_i__3 I1 -pin mem_do_rinst_i__5 I0 -pin mem_do_rinst_i__5 I2 -pin mem_do_rinst_i__6 I2 -pin mem_do_rinst_i__6 I4 -pin mem_do_rinst_i__6 I6 -pin mem_do_rinst_i__7 I1 -pin mem_do_rinst_i__7 I3 -pin mem_do_rinst_i__8 I1 -pin mem_instr_i__0 I0 -pin mem_la_wstrb_i I0[3] -pin mem_la_wstrb_i I0[2] -pin mem_la_wstrb_i I0[1] -pin mem_la_wstrb_i I0[0] -pin mem_state_i I0[1] -pin mem_state_i I1[0] -pin mem_state_i__1 I0 -pin mem_valid_i I0 -pin mem_valid_i__1 I0 -pin mem_wordsize_i I0[1] -pin mem_wordsize_i I1[0] -pin mem_wordsize_i__0 I0[1] -pin mem_wordsize_i__0 I1[0] -pin mem_wordsize_i__4 I1 -pin mem_wstrb_i__1 I0 -pin pcpi_valid_i I1 -pin pcpi_valid_i__0 S0 -pin pcpi_valid_i__1 I0 -pin reg_op1_i__4 I1 -pin reg_op1_i__7 I2
load net RTL_ADD__0_n_0 -attr @rip(#000000) O[31] -pin RTL_ADD__0 O[31] -pin RTL_MUX__1 I1[31]
load net RTL_ADD__0_n_1 -attr @rip(#000000) O[30] -pin RTL_ADD__0 O[30] -pin RTL_MUX__1 I1[30]
load net RTL_ADD__0_n_10 -attr @rip(#000000) O[21] -pin RTL_ADD__0 O[21] -pin RTL_MUX__1 I1[21]
load net RTL_ADD__0_n_11 -attr @rip(#000000) O[20] -pin RTL_ADD__0 O[20] -pin RTL_MUX__1 I1[20]
load net RTL_ADD__0_n_12 -attr @rip(#000000) O[19] -pin RTL_ADD__0 O[19] -pin RTL_MUX__1 I1[19]
load net RTL_ADD__0_n_13 -attr @rip(#000000) O[18] -pin RTL_ADD__0 O[18] -pin RTL_MUX__1 I1[18]
load net RTL_ADD__0_n_14 -attr @rip(#000000) O[17] -pin RTL_ADD__0 O[17] -pin RTL_MUX__1 I1[17]
load net RTL_ADD__0_n_15 -attr @rip(#000000) O[16] -pin RTL_ADD__0 O[16] -pin RTL_MUX__1 I1[16]
load net RTL_ADD__0_n_16 -attr @rip(#000000) O[15] -pin RTL_ADD__0 O[15] -pin RTL_MUX__1 I1[15]
load net RTL_ADD__0_n_17 -attr @rip(#000000) O[14] -pin RTL_ADD__0 O[14] -pin RTL_MUX__1 I1[14]
load net RTL_ADD__0_n_18 -attr @rip(#000000) O[13] -pin RTL_ADD__0 O[13] -pin RTL_MUX__1 I1[13]
load net RTL_ADD__0_n_19 -attr @rip(#000000) O[12] -pin RTL_ADD__0 O[12] -pin RTL_MUX__1 I1[12]
load net RTL_ADD__0_n_2 -attr @rip(#000000) O[29] -pin RTL_ADD__0 O[29] -pin RTL_MUX__1 I1[29]
load net RTL_ADD__0_n_20 -attr @rip(#000000) O[11] -pin RTL_ADD__0 O[11] -pin RTL_MUX__1 I1[11]
load net RTL_ADD__0_n_21 -attr @rip(#000000) O[10] -pin RTL_ADD__0 O[10] -pin RTL_MUX__1 I1[10]
load net RTL_ADD__0_n_22 -attr @rip(#000000) O[9] -pin RTL_ADD__0 O[9] -pin RTL_MUX__1 I1[9]
load net RTL_ADD__0_n_23 -attr @rip(#000000) O[8] -pin RTL_ADD__0 O[8] -pin RTL_MUX__1 I1[8]
load net RTL_ADD__0_n_24 -attr @rip(#000000) O[7] -pin RTL_ADD__0 O[7] -pin RTL_MUX__1 I1[7]
load net RTL_ADD__0_n_25 -attr @rip(#000000) O[6] -pin RTL_ADD__0 O[6] -pin RTL_MUX__1 I1[6]
load net RTL_ADD__0_n_26 -attr @rip(#000000) O[5] -pin RTL_ADD__0 O[5] -pin RTL_MUX__1 I1[5]
load net RTL_ADD__0_n_27 -attr @rip(#000000) O[4] -pin RTL_ADD__0 O[4] -pin RTL_MUX__1 I1[4]
load net RTL_ADD__0_n_28 -attr @rip(#000000) O[3] -pin RTL_ADD__0 O[3] -pin RTL_MUX__1 I1[3]
load net RTL_ADD__0_n_29 -attr @rip(#000000) O[2] -pin RTL_ADD__0 O[2] -pin RTL_MUX__1 I1[2]
load net RTL_ADD__0_n_3 -attr @rip(#000000) O[28] -pin RTL_ADD__0 O[28] -pin RTL_MUX__1 I1[28]
load net RTL_ADD__0_n_30 -attr @rip(#000000) O[1] -pin RTL_ADD__0 O[1] -pin RTL_MUX__1 I1[1]
load net RTL_ADD__0_n_31 -attr @rip(#000000) O[0] -pin RTL_ADD__0 O[0] -pin RTL_MUX__1 I1[0]
load net RTL_ADD__0_n_4 -attr @rip(#000000) O[27] -pin RTL_ADD__0 O[27] -pin RTL_MUX__1 I1[27]
load net RTL_ADD__0_n_5 -attr @rip(#000000) O[26] -pin RTL_ADD__0 O[26] -pin RTL_MUX__1 I1[26]
load net RTL_ADD__0_n_6 -attr @rip(#000000) O[25] -pin RTL_ADD__0 O[25] -pin RTL_MUX__1 I1[25]
load net RTL_ADD__0_n_7 -attr @rip(#000000) O[24] -pin RTL_ADD__0 O[24] -pin RTL_MUX__1 I1[24]
load net RTL_ADD__0_n_8 -attr @rip(#000000) O[23] -pin RTL_ADD__0 O[23] -pin RTL_MUX__1 I1[23]
load net RTL_ADD__0_n_9 -attr @rip(#000000) O[22] -pin RTL_ADD__0 O[22] -pin RTL_MUX__1 I1[22]
load net RTL_ADD__10_n_0 -attr @rip(#000000) O[31] -pin RTL_ADD__10 O[31] -pin cpuregs_wrdata_i I0[31]
load net RTL_ADD__10_n_1 -attr @rip(#000000) O[30] -pin RTL_ADD__10 O[30] -pin cpuregs_wrdata_i I0[30]
load net RTL_ADD__10_n_10 -attr @rip(#000000) O[21] -pin RTL_ADD__10 O[21] -pin cpuregs_wrdata_i I0[21]
load net RTL_ADD__10_n_11 -attr @rip(#000000) O[20] -pin RTL_ADD__10 O[20] -pin cpuregs_wrdata_i I0[20]
load net RTL_ADD__10_n_12 -attr @rip(#000000) O[19] -pin RTL_ADD__10 O[19] -pin cpuregs_wrdata_i I0[19]
load net RTL_ADD__10_n_13 -attr @rip(#000000) O[18] -pin RTL_ADD__10 O[18] -pin cpuregs_wrdata_i I0[18]
load net RTL_ADD__10_n_14 -attr @rip(#000000) O[17] -pin RTL_ADD__10 O[17] -pin cpuregs_wrdata_i I0[17]
load net RTL_ADD__10_n_15 -attr @rip(#000000) O[16] -pin RTL_ADD__10 O[16] -pin cpuregs_wrdata_i I0[16]
load net RTL_ADD__10_n_16 -attr @rip(#000000) O[15] -pin RTL_ADD__10 O[15] -pin cpuregs_wrdata_i I0[15]
load net RTL_ADD__10_n_17 -attr @rip(#000000) O[14] -pin RTL_ADD__10 O[14] -pin cpuregs_wrdata_i I0[14]
load net RTL_ADD__10_n_18 -attr @rip(#000000) O[13] -pin RTL_ADD__10 O[13] -pin cpuregs_wrdata_i I0[13]
load net RTL_ADD__10_n_19 -attr @rip(#000000) O[12] -pin RTL_ADD__10 O[12] -pin cpuregs_wrdata_i I0[12]
load net RTL_ADD__10_n_2 -attr @rip(#000000) O[29] -pin RTL_ADD__10 O[29] -pin cpuregs_wrdata_i I0[29]
load net RTL_ADD__10_n_20 -attr @rip(#000000) O[11] -pin RTL_ADD__10 O[11] -pin cpuregs_wrdata_i I0[11]
load net RTL_ADD__10_n_21 -attr @rip(#000000) O[10] -pin RTL_ADD__10 O[10] -pin cpuregs_wrdata_i I0[10]
load net RTL_ADD__10_n_22 -attr @rip(#000000) O[9] -pin RTL_ADD__10 O[9] -pin cpuregs_wrdata_i I0[9]
load net RTL_ADD__10_n_23 -attr @rip(#000000) O[8] -pin RTL_ADD__10 O[8] -pin cpuregs_wrdata_i I0[8]
load net RTL_ADD__10_n_24 -attr @rip(#000000) O[7] -pin RTL_ADD__10 O[7] -pin cpuregs_wrdata_i I0[7]
load net RTL_ADD__10_n_25 -attr @rip(#000000) O[6] -pin RTL_ADD__10 O[6] -pin cpuregs_wrdata_i I0[6]
load net RTL_ADD__10_n_26 -attr @rip(#000000) O[5] -pin RTL_ADD__10 O[5] -pin cpuregs_wrdata_i I0[5]
load net RTL_ADD__10_n_27 -attr @rip(#000000) O[4] -pin RTL_ADD__10 O[4] -pin cpuregs_wrdata_i I0[4]
load net RTL_ADD__10_n_28 -attr @rip(#000000) O[3] -pin RTL_ADD__10 O[3] -pin cpuregs_wrdata_i I0[3]
load net RTL_ADD__10_n_29 -attr @rip(#000000) O[2] -pin RTL_ADD__10 O[2] -pin cpuregs_wrdata_i I0[2]
load net RTL_ADD__10_n_3 -attr @rip(#000000) O[28] -pin RTL_ADD__10 O[28] -pin cpuregs_wrdata_i I0[28]
load net RTL_ADD__10_n_30 -attr @rip(#000000) O[1] -pin RTL_ADD__10 O[1] -pin cpuregs_wrdata_i I0[1]
load net RTL_ADD__10_n_31 -attr @rip(#000000) O[0] -pin RTL_ADD__10 O[0] -pin cpuregs_wrdata_i I0[0]
load net RTL_ADD__10_n_4 -attr @rip(#000000) O[27] -pin RTL_ADD__10 O[27] -pin cpuregs_wrdata_i I0[27]
load net RTL_ADD__10_n_5 -attr @rip(#000000) O[26] -pin RTL_ADD__10 O[26] -pin cpuregs_wrdata_i I0[26]
load net RTL_ADD__10_n_6 -attr @rip(#000000) O[25] -pin RTL_ADD__10 O[25] -pin cpuregs_wrdata_i I0[25]
load net RTL_ADD__10_n_7 -attr @rip(#000000) O[24] -pin RTL_ADD__10 O[24] -pin cpuregs_wrdata_i I0[24]
load net RTL_ADD__10_n_8 -attr @rip(#000000) O[23] -pin RTL_ADD__10 O[23] -pin cpuregs_wrdata_i I0[23]
load net RTL_ADD__10_n_9 -attr @rip(#000000) O[22] -pin RTL_ADD__10 O[22] -pin cpuregs_wrdata_i I0[22]
load net RTL_ADD__1_n_0 -attr @rip(#000000) O[63] -pin RTL_ADD__1 O[63] -pin count_cycle_reg[63:0] D[63]
load net RTL_ADD__1_n_1 -attr @rip(#000000) O[62] -pin RTL_ADD__1 O[62] -pin count_cycle_reg[63:0] D[62]
load net RTL_ADD__1_n_10 -attr @rip(#000000) O[53] -pin RTL_ADD__1 O[53] -pin count_cycle_reg[63:0] D[53]
load net RTL_ADD__1_n_11 -attr @rip(#000000) O[52] -pin RTL_ADD__1 O[52] -pin count_cycle_reg[63:0] D[52]
load net RTL_ADD__1_n_12 -attr @rip(#000000) O[51] -pin RTL_ADD__1 O[51] -pin count_cycle_reg[63:0] D[51]
load net RTL_ADD__1_n_13 -attr @rip(#000000) O[50] -pin RTL_ADD__1 O[50] -pin count_cycle_reg[63:0] D[50]
load net RTL_ADD__1_n_14 -attr @rip(#000000) O[49] -pin RTL_ADD__1 O[49] -pin count_cycle_reg[63:0] D[49]
load net RTL_ADD__1_n_15 -attr @rip(#000000) O[48] -pin RTL_ADD__1 O[48] -pin count_cycle_reg[63:0] D[48]
load net RTL_ADD__1_n_16 -attr @rip(#000000) O[47] -pin RTL_ADD__1 O[47] -pin count_cycle_reg[63:0] D[47]
load net RTL_ADD__1_n_17 -attr @rip(#000000) O[46] -pin RTL_ADD__1 O[46] -pin count_cycle_reg[63:0] D[46]
load net RTL_ADD__1_n_18 -attr @rip(#000000) O[45] -pin RTL_ADD__1 O[45] -pin count_cycle_reg[63:0] D[45]
load net RTL_ADD__1_n_19 -attr @rip(#000000) O[44] -pin RTL_ADD__1 O[44] -pin count_cycle_reg[63:0] D[44]
load net RTL_ADD__1_n_2 -attr @rip(#000000) O[61] -pin RTL_ADD__1 O[61] -pin count_cycle_reg[63:0] D[61]
load net RTL_ADD__1_n_20 -attr @rip(#000000) O[43] -pin RTL_ADD__1 O[43] -pin count_cycle_reg[63:0] D[43]
load net RTL_ADD__1_n_21 -attr @rip(#000000) O[42] -pin RTL_ADD__1 O[42] -pin count_cycle_reg[63:0] D[42]
load net RTL_ADD__1_n_22 -attr @rip(#000000) O[41] -pin RTL_ADD__1 O[41] -pin count_cycle_reg[63:0] D[41]
load net RTL_ADD__1_n_23 -attr @rip(#000000) O[40] -pin RTL_ADD__1 O[40] -pin count_cycle_reg[63:0] D[40]
load net RTL_ADD__1_n_24 -attr @rip(#000000) O[39] -pin RTL_ADD__1 O[39] -pin count_cycle_reg[63:0] D[39]
load net RTL_ADD__1_n_25 -attr @rip(#000000) O[38] -pin RTL_ADD__1 O[38] -pin count_cycle_reg[63:0] D[38]
load net RTL_ADD__1_n_26 -attr @rip(#000000) O[37] -pin RTL_ADD__1 O[37] -pin count_cycle_reg[63:0] D[37]
load net RTL_ADD__1_n_27 -attr @rip(#000000) O[36] -pin RTL_ADD__1 O[36] -pin count_cycle_reg[63:0] D[36]
load net RTL_ADD__1_n_28 -attr @rip(#000000) O[35] -pin RTL_ADD__1 O[35] -pin count_cycle_reg[63:0] D[35]
load net RTL_ADD__1_n_29 -attr @rip(#000000) O[34] -pin RTL_ADD__1 O[34] -pin count_cycle_reg[63:0] D[34]
load net RTL_ADD__1_n_3 -attr @rip(#000000) O[60] -pin RTL_ADD__1 O[60] -pin count_cycle_reg[63:0] D[60]
load net RTL_ADD__1_n_30 -attr @rip(#000000) O[33] -pin RTL_ADD__1 O[33] -pin count_cycle_reg[63:0] D[33]
load net RTL_ADD__1_n_31 -attr @rip(#000000) O[32] -pin RTL_ADD__1 O[32] -pin count_cycle_reg[63:0] D[32]
load net RTL_ADD__1_n_32 -attr @rip(#000000) O[31] -pin RTL_ADD__1 O[31] -pin count_cycle_reg[63:0] D[31]
load net RTL_ADD__1_n_33 -attr @rip(#000000) O[30] -pin RTL_ADD__1 O[30] -pin count_cycle_reg[63:0] D[30]
load net RTL_ADD__1_n_34 -attr @rip(#000000) O[29] -pin RTL_ADD__1 O[29] -pin count_cycle_reg[63:0] D[29]
load net RTL_ADD__1_n_35 -attr @rip(#000000) O[28] -pin RTL_ADD__1 O[28] -pin count_cycle_reg[63:0] D[28]
load net RTL_ADD__1_n_36 -attr @rip(#000000) O[27] -pin RTL_ADD__1 O[27] -pin count_cycle_reg[63:0] D[27]
load net RTL_ADD__1_n_37 -attr @rip(#000000) O[26] -pin RTL_ADD__1 O[26] -pin count_cycle_reg[63:0] D[26]
load net RTL_ADD__1_n_38 -attr @rip(#000000) O[25] -pin RTL_ADD__1 O[25] -pin count_cycle_reg[63:0] D[25]
load net RTL_ADD__1_n_39 -attr @rip(#000000) O[24] -pin RTL_ADD__1 O[24] -pin count_cycle_reg[63:0] D[24]
load net RTL_ADD__1_n_4 -attr @rip(#000000) O[59] -pin RTL_ADD__1 O[59] -pin count_cycle_reg[63:0] D[59]
load net RTL_ADD__1_n_40 -attr @rip(#000000) O[23] -pin RTL_ADD__1 O[23] -pin count_cycle_reg[63:0] D[23]
load net RTL_ADD__1_n_41 -attr @rip(#000000) O[22] -pin RTL_ADD__1 O[22] -pin count_cycle_reg[63:0] D[22]
load net RTL_ADD__1_n_42 -attr @rip(#000000) O[21] -pin RTL_ADD__1 O[21] -pin count_cycle_reg[63:0] D[21]
load net RTL_ADD__1_n_43 -attr @rip(#000000) O[20] -pin RTL_ADD__1 O[20] -pin count_cycle_reg[63:0] D[20]
load net RTL_ADD__1_n_44 -attr @rip(#000000) O[19] -pin RTL_ADD__1 O[19] -pin count_cycle_reg[63:0] D[19]
load net RTL_ADD__1_n_45 -attr @rip(#000000) O[18] -pin RTL_ADD__1 O[18] -pin count_cycle_reg[63:0] D[18]
load net RTL_ADD__1_n_46 -attr @rip(#000000) O[17] -pin RTL_ADD__1 O[17] -pin count_cycle_reg[63:0] D[17]
load net RTL_ADD__1_n_47 -attr @rip(#000000) O[16] -pin RTL_ADD__1 O[16] -pin count_cycle_reg[63:0] D[16]
load net RTL_ADD__1_n_48 -attr @rip(#000000) O[15] -pin RTL_ADD__1 O[15] -pin count_cycle_reg[63:0] D[15]
load net RTL_ADD__1_n_49 -attr @rip(#000000) O[14] -pin RTL_ADD__1 O[14] -pin count_cycle_reg[63:0] D[14]
load net RTL_ADD__1_n_5 -attr @rip(#000000) O[58] -pin RTL_ADD__1 O[58] -pin count_cycle_reg[63:0] D[58]
load net RTL_ADD__1_n_50 -attr @rip(#000000) O[13] -pin RTL_ADD__1 O[13] -pin count_cycle_reg[63:0] D[13]
load net RTL_ADD__1_n_51 -attr @rip(#000000) O[12] -pin RTL_ADD__1 O[12] -pin count_cycle_reg[63:0] D[12]
load net RTL_ADD__1_n_52 -attr @rip(#000000) O[11] -pin RTL_ADD__1 O[11] -pin count_cycle_reg[63:0] D[11]
load net RTL_ADD__1_n_53 -attr @rip(#000000) O[10] -pin RTL_ADD__1 O[10] -pin count_cycle_reg[63:0] D[10]
load net RTL_ADD__1_n_54 -attr @rip(#000000) O[9] -pin RTL_ADD__1 O[9] -pin count_cycle_reg[63:0] D[9]
load net RTL_ADD__1_n_55 -attr @rip(#000000) O[8] -pin RTL_ADD__1 O[8] -pin count_cycle_reg[63:0] D[8]
load net RTL_ADD__1_n_56 -attr @rip(#000000) O[7] -pin RTL_ADD__1 O[7] -pin count_cycle_reg[63:0] D[7]
load net RTL_ADD__1_n_57 -attr @rip(#000000) O[6] -pin RTL_ADD__1 O[6] -pin count_cycle_reg[63:0] D[6]
load net RTL_ADD__1_n_58 -attr @rip(#000000) O[5] -pin RTL_ADD__1 O[5] -pin count_cycle_reg[63:0] D[5]
load net RTL_ADD__1_n_59 -attr @rip(#000000) O[4] -pin RTL_ADD__1 O[4] -pin count_cycle_reg[63:0] D[4]
load net RTL_ADD__1_n_6 -attr @rip(#000000) O[57] -pin RTL_ADD__1 O[57] -pin count_cycle_reg[63:0] D[57]
load net RTL_ADD__1_n_60 -attr @rip(#000000) O[3] -pin RTL_ADD__1 O[3] -pin count_cycle_reg[63:0] D[3]
load net RTL_ADD__1_n_61 -attr @rip(#000000) O[2] -pin RTL_ADD__1 O[2] -pin count_cycle_reg[63:0] D[2]
load net RTL_ADD__1_n_62 -attr @rip(#000000) O[1] -pin RTL_ADD__1 O[1] -pin count_cycle_reg[63:0] D[1]
load net RTL_ADD__1_n_63 -attr @rip(#000000) O[0] -pin RTL_ADD__1 O[0] -pin count_cycle_reg[63:0] D[0]
load net RTL_ADD__1_n_7 -attr @rip(#000000) O[56] -pin RTL_ADD__1 O[56] -pin count_cycle_reg[63:0] D[56]
load net RTL_ADD__1_n_8 -attr @rip(#000000) O[55] -pin RTL_ADD__1 O[55] -pin count_cycle_reg[63:0] D[55]
load net RTL_ADD__1_n_9 -attr @rip(#000000) O[54] -pin RTL_ADD__1 O[54] -pin count_cycle_reg[63:0] D[54]
load net RTL_ADD__2_n_0 -attr @rip(#000000) O[63] -pin RTL_ADD__2 O[63] -pin count_instr_reg[63:0] D[63]
load net RTL_ADD__2_n_1 -attr @rip(#000000) O[62] -pin RTL_ADD__2 O[62] -pin count_instr_reg[63:0] D[62]
load net RTL_ADD__2_n_10 -attr @rip(#000000) O[53] -pin RTL_ADD__2 O[53] -pin count_instr_reg[63:0] D[53]
load net RTL_ADD__2_n_11 -attr @rip(#000000) O[52] -pin RTL_ADD__2 O[52] -pin count_instr_reg[63:0] D[52]
load net RTL_ADD__2_n_12 -attr @rip(#000000) O[51] -pin RTL_ADD__2 O[51] -pin count_instr_reg[63:0] D[51]
load net RTL_ADD__2_n_13 -attr @rip(#000000) O[50] -pin RTL_ADD__2 O[50] -pin count_instr_reg[63:0] D[50]
load net RTL_ADD__2_n_14 -attr @rip(#000000) O[49] -pin RTL_ADD__2 O[49] -pin count_instr_reg[63:0] D[49]
load net RTL_ADD__2_n_15 -attr @rip(#000000) O[48] -pin RTL_ADD__2 O[48] -pin count_instr_reg[63:0] D[48]
load net RTL_ADD__2_n_16 -attr @rip(#000000) O[47] -pin RTL_ADD__2 O[47] -pin count_instr_reg[63:0] D[47]
load net RTL_ADD__2_n_17 -attr @rip(#000000) O[46] -pin RTL_ADD__2 O[46] -pin count_instr_reg[63:0] D[46]
load net RTL_ADD__2_n_18 -attr @rip(#000000) O[45] -pin RTL_ADD__2 O[45] -pin count_instr_reg[63:0] D[45]
load net RTL_ADD__2_n_19 -attr @rip(#000000) O[44] -pin RTL_ADD__2 O[44] -pin count_instr_reg[63:0] D[44]
load net RTL_ADD__2_n_2 -attr @rip(#000000) O[61] -pin RTL_ADD__2 O[61] -pin count_instr_reg[63:0] D[61]
load net RTL_ADD__2_n_20 -attr @rip(#000000) O[43] -pin RTL_ADD__2 O[43] -pin count_instr_reg[63:0] D[43]
load net RTL_ADD__2_n_21 -attr @rip(#000000) O[42] -pin RTL_ADD__2 O[42] -pin count_instr_reg[63:0] D[42]
load net RTL_ADD__2_n_22 -attr @rip(#000000) O[41] -pin RTL_ADD__2 O[41] -pin count_instr_reg[63:0] D[41]
load net RTL_ADD__2_n_23 -attr @rip(#000000) O[40] -pin RTL_ADD__2 O[40] -pin count_instr_reg[63:0] D[40]
load net RTL_ADD__2_n_24 -attr @rip(#000000) O[39] -pin RTL_ADD__2 O[39] -pin count_instr_reg[63:0] D[39]
load net RTL_ADD__2_n_25 -attr @rip(#000000) O[38] -pin RTL_ADD__2 O[38] -pin count_instr_reg[63:0] D[38]
load net RTL_ADD__2_n_26 -attr @rip(#000000) O[37] -pin RTL_ADD__2 O[37] -pin count_instr_reg[63:0] D[37]
load net RTL_ADD__2_n_27 -attr @rip(#000000) O[36] -pin RTL_ADD__2 O[36] -pin count_instr_reg[63:0] D[36]
load net RTL_ADD__2_n_28 -attr @rip(#000000) O[35] -pin RTL_ADD__2 O[35] -pin count_instr_reg[63:0] D[35]
load net RTL_ADD__2_n_29 -attr @rip(#000000) O[34] -pin RTL_ADD__2 O[34] -pin count_instr_reg[63:0] D[34]
load net RTL_ADD__2_n_3 -attr @rip(#000000) O[60] -pin RTL_ADD__2 O[60] -pin count_instr_reg[63:0] D[60]
load net RTL_ADD__2_n_30 -attr @rip(#000000) O[33] -pin RTL_ADD__2 O[33] -pin count_instr_reg[63:0] D[33]
load net RTL_ADD__2_n_31 -attr @rip(#000000) O[32] -pin RTL_ADD__2 O[32] -pin count_instr_reg[63:0] D[32]
load net RTL_ADD__2_n_32 -attr @rip(#000000) O[31] -pin RTL_ADD__2 O[31] -pin count_instr_reg[63:0] D[31]
load net RTL_ADD__2_n_33 -attr @rip(#000000) O[30] -pin RTL_ADD__2 O[30] -pin count_instr_reg[63:0] D[30]
load net RTL_ADD__2_n_34 -attr @rip(#000000) O[29] -pin RTL_ADD__2 O[29] -pin count_instr_reg[63:0] D[29]
load net RTL_ADD__2_n_35 -attr @rip(#000000) O[28] -pin RTL_ADD__2 O[28] -pin count_instr_reg[63:0] D[28]
load net RTL_ADD__2_n_36 -attr @rip(#000000) O[27] -pin RTL_ADD__2 O[27] -pin count_instr_reg[63:0] D[27]
load net RTL_ADD__2_n_37 -attr @rip(#000000) O[26] -pin RTL_ADD__2 O[26] -pin count_instr_reg[63:0] D[26]
load net RTL_ADD__2_n_38 -attr @rip(#000000) O[25] -pin RTL_ADD__2 O[25] -pin count_instr_reg[63:0] D[25]
load net RTL_ADD__2_n_39 -attr @rip(#000000) O[24] -pin RTL_ADD__2 O[24] -pin count_instr_reg[63:0] D[24]
load net RTL_ADD__2_n_4 -attr @rip(#000000) O[59] -pin RTL_ADD__2 O[59] -pin count_instr_reg[63:0] D[59]
load net RTL_ADD__2_n_40 -attr @rip(#000000) O[23] -pin RTL_ADD__2 O[23] -pin count_instr_reg[63:0] D[23]
load net RTL_ADD__2_n_41 -attr @rip(#000000) O[22] -pin RTL_ADD__2 O[22] -pin count_instr_reg[63:0] D[22]
load net RTL_ADD__2_n_42 -attr @rip(#000000) O[21] -pin RTL_ADD__2 O[21] -pin count_instr_reg[63:0] D[21]
load net RTL_ADD__2_n_43 -attr @rip(#000000) O[20] -pin RTL_ADD__2 O[20] -pin count_instr_reg[63:0] D[20]
load net RTL_ADD__2_n_44 -attr @rip(#000000) O[19] -pin RTL_ADD__2 O[19] -pin count_instr_reg[63:0] D[19]
load net RTL_ADD__2_n_45 -attr @rip(#000000) O[18] -pin RTL_ADD__2 O[18] -pin count_instr_reg[63:0] D[18]
load net RTL_ADD__2_n_46 -attr @rip(#000000) O[17] -pin RTL_ADD__2 O[17] -pin count_instr_reg[63:0] D[17]
load net RTL_ADD__2_n_47 -attr @rip(#000000) O[16] -pin RTL_ADD__2 O[16] -pin count_instr_reg[63:0] D[16]
load net RTL_ADD__2_n_48 -attr @rip(#000000) O[15] -pin RTL_ADD__2 O[15] -pin count_instr_reg[63:0] D[15]
load net RTL_ADD__2_n_49 -attr @rip(#000000) O[14] -pin RTL_ADD__2 O[14] -pin count_instr_reg[63:0] D[14]
load net RTL_ADD__2_n_5 -attr @rip(#000000) O[58] -pin RTL_ADD__2 O[58] -pin count_instr_reg[63:0] D[58]
load net RTL_ADD__2_n_50 -attr @rip(#000000) O[13] -pin RTL_ADD__2 O[13] -pin count_instr_reg[63:0] D[13]
load net RTL_ADD__2_n_51 -attr @rip(#000000) O[12] -pin RTL_ADD__2 O[12] -pin count_instr_reg[63:0] D[12]
load net RTL_ADD__2_n_52 -attr @rip(#000000) O[11] -pin RTL_ADD__2 O[11] -pin count_instr_reg[63:0] D[11]
load net RTL_ADD__2_n_53 -attr @rip(#000000) O[10] -pin RTL_ADD__2 O[10] -pin count_instr_reg[63:0] D[10]
load net RTL_ADD__2_n_54 -attr @rip(#000000) O[9] -pin RTL_ADD__2 O[9] -pin count_instr_reg[63:0] D[9]
load net RTL_ADD__2_n_55 -attr @rip(#000000) O[8] -pin RTL_ADD__2 O[8] -pin count_instr_reg[63:0] D[8]
load net RTL_ADD__2_n_56 -attr @rip(#000000) O[7] -pin RTL_ADD__2 O[7] -pin count_instr_reg[63:0] D[7]
load net RTL_ADD__2_n_57 -attr @rip(#000000) O[6] -pin RTL_ADD__2 O[6] -pin count_instr_reg[63:0] D[6]
load net RTL_ADD__2_n_58 -attr @rip(#000000) O[5] -pin RTL_ADD__2 O[5] -pin count_instr_reg[63:0] D[5]
load net RTL_ADD__2_n_59 -attr @rip(#000000) O[4] -pin RTL_ADD__2 O[4] -pin count_instr_reg[63:0] D[4]
load net RTL_ADD__2_n_6 -attr @rip(#000000) O[57] -pin RTL_ADD__2 O[57] -pin count_instr_reg[63:0] D[57]
load net RTL_ADD__2_n_60 -attr @rip(#000000) O[3] -pin RTL_ADD__2 O[3] -pin count_instr_reg[63:0] D[3]
load net RTL_ADD__2_n_61 -attr @rip(#000000) O[2] -pin RTL_ADD__2 O[2] -pin count_instr_reg[63:0] D[2]
load net RTL_ADD__2_n_62 -attr @rip(#000000) O[1] -pin RTL_ADD__2 O[1] -pin count_instr_reg[63:0] D[1]
load net RTL_ADD__2_n_63 -attr @rip(#000000) O[0] -pin RTL_ADD__2 O[0] -pin count_instr_reg[63:0] D[0]
load net RTL_ADD__2_n_7 -attr @rip(#000000) O[56] -pin RTL_ADD__2 O[56] -pin count_instr_reg[63:0] D[56]
load net RTL_ADD__2_n_8 -attr @rip(#000000) O[55] -pin RTL_ADD__2 O[55] -pin count_instr_reg[63:0] D[55]
load net RTL_ADD__2_n_9 -attr @rip(#000000) O[54] -pin RTL_ADD__2 O[54] -pin count_instr_reg[63:0] D[54]
load net RTL_ADD__3_n_0 -attr @rip(#000000) O[31] -pin RTL_ADD__3 O[31] -pin reg_out_i__2 I2[31]
load net RTL_ADD__3_n_1 -attr @rip(#000000) O[30] -pin RTL_ADD__3 O[30] -pin reg_out_i__2 I2[30]
load net RTL_ADD__3_n_10 -attr @rip(#000000) O[21] -pin RTL_ADD__3 O[21] -pin reg_out_i__2 I2[21]
load net RTL_ADD__3_n_11 -attr @rip(#000000) O[20] -pin RTL_ADD__3 O[20] -pin reg_out_i__2 I2[20]
load net RTL_ADD__3_n_12 -attr @rip(#000000) O[19] -pin RTL_ADD__3 O[19] -pin reg_out_i__2 I2[19]
load net RTL_ADD__3_n_13 -attr @rip(#000000) O[18] -pin RTL_ADD__3 O[18] -pin reg_out_i__2 I2[18]
load net RTL_ADD__3_n_14 -attr @rip(#000000) O[17] -pin RTL_ADD__3 O[17] -pin reg_out_i__2 I2[17]
load net RTL_ADD__3_n_15 -attr @rip(#000000) O[16] -pin RTL_ADD__3 O[16] -pin reg_out_i__2 I2[16]
load net RTL_ADD__3_n_16 -attr @rip(#000000) O[15] -pin RTL_ADD__3 O[15] -pin reg_out_i__2 I2[15]
load net RTL_ADD__3_n_17 -attr @rip(#000000) O[14] -pin RTL_ADD__3 O[14] -pin reg_out_i__2 I2[14]
load net RTL_ADD__3_n_18 -attr @rip(#000000) O[13] -pin RTL_ADD__3 O[13] -pin reg_out_i__2 I2[13]
load net RTL_ADD__3_n_19 -attr @rip(#000000) O[12] -pin RTL_ADD__3 O[12] -pin reg_out_i__2 I2[12]
load net RTL_ADD__3_n_2 -attr @rip(#000000) O[29] -pin RTL_ADD__3 O[29] -pin reg_out_i__2 I2[29]
load net RTL_ADD__3_n_20 -attr @rip(#000000) O[11] -pin RTL_ADD__3 O[11] -pin reg_out_i__2 I2[11]
load net RTL_ADD__3_n_21 -attr @rip(#000000) O[10] -pin RTL_ADD__3 O[10] -pin reg_out_i__2 I2[10]
load net RTL_ADD__3_n_22 -attr @rip(#000000) O[9] -pin RTL_ADD__3 O[9] -pin reg_out_i__2 I2[9]
load net RTL_ADD__3_n_23 -attr @rip(#000000) O[8] -pin RTL_ADD__3 O[8] -pin reg_out_i__2 I2[8]
load net RTL_ADD__3_n_24 -attr @rip(#000000) O[7] -pin RTL_ADD__3 O[7] -pin reg_out_i__2 I2[7]
load net RTL_ADD__3_n_25 -attr @rip(#000000) O[6] -pin RTL_ADD__3 O[6] -pin reg_out_i__2 I2[6]
load net RTL_ADD__3_n_26 -attr @rip(#000000) O[5] -pin RTL_ADD__3 O[5] -pin reg_out_i__2 I2[5]
load net RTL_ADD__3_n_27 -attr @rip(#000000) O[4] -pin RTL_ADD__3 O[4] -pin reg_out_i__2 I2[4]
load net RTL_ADD__3_n_28 -attr @rip(#000000) O[3] -pin RTL_ADD__3 O[3] -pin reg_out_i__2 I2[3]
load net RTL_ADD__3_n_29 -attr @rip(#000000) O[2] -pin RTL_ADD__3 O[2] -pin reg_out_i__2 I2[2]
load net RTL_ADD__3_n_3 -attr @rip(#000000) O[28] -pin RTL_ADD__3 O[28] -pin reg_out_i__2 I2[28]
load net RTL_ADD__3_n_30 -attr @rip(#000000) O[1] -pin RTL_ADD__3 O[1] -pin reg_out_i__2 I2[1]
load net RTL_ADD__3_n_31 -attr @rip(#000000) O[0] -pin RTL_ADD__3 O[0] -pin reg_out_i__2 I2[0]
load net RTL_ADD__3_n_4 -attr @rip(#000000) O[27] -pin RTL_ADD__3 O[27] -pin reg_out_i__2 I2[27]
load net RTL_ADD__3_n_5 -attr @rip(#000000) O[26] -pin RTL_ADD__3 O[26] -pin reg_out_i__2 I2[26]
load net RTL_ADD__3_n_6 -attr @rip(#000000) O[25] -pin RTL_ADD__3 O[25] -pin reg_out_i__2 I2[25]
load net RTL_ADD__3_n_7 -attr @rip(#000000) O[24] -pin RTL_ADD__3 O[24] -pin reg_out_i__2 I2[24]
load net RTL_ADD__3_n_8 -attr @rip(#000000) O[23] -pin RTL_ADD__3 O[23] -pin reg_out_i__2 I2[23]
load net RTL_ADD__3_n_9 -attr @rip(#000000) O[22] -pin RTL_ADD__3 O[22] -pin reg_out_i__2 I2[22]
load net RTL_ADD__4_n_0 -attr @rip(#000000) O[31] -pin RTL_ADD__4 O[31] -pin reg_next_pc_i I0[31]
load net RTL_ADD__4_n_1 -attr @rip(#000000) O[30] -pin RTL_ADD__4 O[30] -pin reg_next_pc_i I0[30]
load net RTL_ADD__4_n_10 -attr @rip(#000000) O[21] -pin RTL_ADD__4 O[21] -pin reg_next_pc_i I0[21]
load net RTL_ADD__4_n_11 -attr @rip(#000000) O[20] -pin RTL_ADD__4 O[20] -pin reg_next_pc_i I0[20]
load net RTL_ADD__4_n_12 -attr @rip(#000000) O[19] -pin RTL_ADD__4 O[19] -pin reg_next_pc_i I0[19]
load net RTL_ADD__4_n_13 -attr @rip(#000000) O[18] -pin RTL_ADD__4 O[18] -pin reg_next_pc_i I0[18]
load net RTL_ADD__4_n_14 -attr @rip(#000000) O[17] -pin RTL_ADD__4 O[17] -pin reg_next_pc_i I0[17]
load net RTL_ADD__4_n_15 -attr @rip(#000000) O[16] -pin RTL_ADD__4 O[16] -pin reg_next_pc_i I0[16]
load net RTL_ADD__4_n_16 -attr @rip(#000000) O[15] -pin RTL_ADD__4 O[15] -pin reg_next_pc_i I0[15]
load net RTL_ADD__4_n_17 -attr @rip(#000000) O[14] -pin RTL_ADD__4 O[14] -pin reg_next_pc_i I0[14]
load net RTL_ADD__4_n_18 -attr @rip(#000000) O[13] -pin RTL_ADD__4 O[13] -pin reg_next_pc_i I0[13]
load net RTL_ADD__4_n_19 -attr @rip(#000000) O[12] -pin RTL_ADD__4 O[12] -pin reg_next_pc_i I0[12]
load net RTL_ADD__4_n_2 -attr @rip(#000000) O[29] -pin RTL_ADD__4 O[29] -pin reg_next_pc_i I0[29]
load net RTL_ADD__4_n_20 -attr @rip(#000000) O[11] -pin RTL_ADD__4 O[11] -pin reg_next_pc_i I0[11]
load net RTL_ADD__4_n_21 -attr @rip(#000000) O[10] -pin RTL_ADD__4 O[10] -pin reg_next_pc_i I0[10]
load net RTL_ADD__4_n_22 -attr @rip(#000000) O[9] -pin RTL_ADD__4 O[9] -pin reg_next_pc_i I0[9]
load net RTL_ADD__4_n_23 -attr @rip(#000000) O[8] -pin RTL_ADD__4 O[8] -pin reg_next_pc_i I0[8]
load net RTL_ADD__4_n_24 -attr @rip(#000000) O[7] -pin RTL_ADD__4 O[7] -pin reg_next_pc_i I0[7]
load net RTL_ADD__4_n_25 -attr @rip(#000000) O[6] -pin RTL_ADD__4 O[6] -pin reg_next_pc_i I0[6]
load net RTL_ADD__4_n_26 -attr @rip(#000000) O[5] -pin RTL_ADD__4 O[5] -pin reg_next_pc_i I0[5]
load net RTL_ADD__4_n_27 -attr @rip(#000000) O[4] -pin RTL_ADD__4 O[4] -pin reg_next_pc_i I0[4]
load net RTL_ADD__4_n_28 -attr @rip(#000000) O[3] -pin RTL_ADD__4 O[3] -pin reg_next_pc_i I0[3]
load net RTL_ADD__4_n_29 -attr @rip(#000000) O[2] -pin RTL_ADD__4 O[2] -pin reg_next_pc_i I0[2]
load net RTL_ADD__4_n_3 -attr @rip(#000000) O[28] -pin RTL_ADD__4 O[28] -pin reg_next_pc_i I0[28]
load net RTL_ADD__4_n_30 -attr @rip(#000000) O[1] -pin RTL_ADD__4 O[1] -pin reg_next_pc_i I0[1]
load net RTL_ADD__4_n_31 -attr @rip(#000000) O[0] -pin RTL_ADD__4 O[0] -pin reg_next_pc_i I0[0]
load net RTL_ADD__4_n_4 -attr @rip(#000000) O[27] -pin RTL_ADD__4 O[27] -pin reg_next_pc_i I0[27]
load net RTL_ADD__4_n_5 -attr @rip(#000000) O[26] -pin RTL_ADD__4 O[26] -pin reg_next_pc_i I0[26]
load net RTL_ADD__4_n_6 -attr @rip(#000000) O[25] -pin RTL_ADD__4 O[25] -pin reg_next_pc_i I0[25]
load net RTL_ADD__4_n_7 -attr @rip(#000000) O[24] -pin RTL_ADD__4 O[24] -pin reg_next_pc_i I0[24]
load net RTL_ADD__4_n_8 -attr @rip(#000000) O[23] -pin RTL_ADD__4 O[23] -pin reg_next_pc_i I0[23]
load net RTL_ADD__4_n_9 -attr @rip(#000000) O[22] -pin RTL_ADD__4 O[22] -pin reg_next_pc_i I0[22]
load net RTL_ADD__5_n_0 -attr @rip(#000000) O[31] -pin RTL_ADD__5 O[31] -pin reg_next_pc_i I1[31]
load net RTL_ADD__5_n_1 -attr @rip(#000000) O[30] -pin RTL_ADD__5 O[30] -pin reg_next_pc_i I1[30]
load net RTL_ADD__5_n_10 -attr @rip(#000000) O[21] -pin RTL_ADD__5 O[21] -pin reg_next_pc_i I1[21]
load net RTL_ADD__5_n_11 -attr @rip(#000000) O[20] -pin RTL_ADD__5 O[20] -pin reg_next_pc_i I1[20]
load net RTL_ADD__5_n_12 -attr @rip(#000000) O[19] -pin RTL_ADD__5 O[19] -pin reg_next_pc_i I1[19]
load net RTL_ADD__5_n_13 -attr @rip(#000000) O[18] -pin RTL_ADD__5 O[18] -pin reg_next_pc_i I1[18]
load net RTL_ADD__5_n_14 -attr @rip(#000000) O[17] -pin RTL_ADD__5 O[17] -pin reg_next_pc_i I1[17]
load net RTL_ADD__5_n_15 -attr @rip(#000000) O[16] -pin RTL_ADD__5 O[16] -pin reg_next_pc_i I1[16]
load net RTL_ADD__5_n_16 -attr @rip(#000000) O[15] -pin RTL_ADD__5 O[15] -pin reg_next_pc_i I1[15]
load net RTL_ADD__5_n_17 -attr @rip(#000000) O[14] -pin RTL_ADD__5 O[14] -pin reg_next_pc_i I1[14]
load net RTL_ADD__5_n_18 -attr @rip(#000000) O[13] -pin RTL_ADD__5 O[13] -pin reg_next_pc_i I1[13]
load net RTL_ADD__5_n_19 -attr @rip(#000000) O[12] -pin RTL_ADD__5 O[12] -pin reg_next_pc_i I1[12]
load net RTL_ADD__5_n_2 -attr @rip(#000000) O[29] -pin RTL_ADD__5 O[29] -pin reg_next_pc_i I1[29]
load net RTL_ADD__5_n_20 -attr @rip(#000000) O[11] -pin RTL_ADD__5 O[11] -pin reg_next_pc_i I1[11]
load net RTL_ADD__5_n_21 -attr @rip(#000000) O[10] -pin RTL_ADD__5 O[10] -pin reg_next_pc_i I1[10]
load net RTL_ADD__5_n_22 -attr @rip(#000000) O[9] -pin RTL_ADD__5 O[9] -pin reg_next_pc_i I1[9]
load net RTL_ADD__5_n_23 -attr @rip(#000000) O[8] -pin RTL_ADD__5 O[8] -pin reg_next_pc_i I1[8]
load net RTL_ADD__5_n_24 -attr @rip(#000000) O[7] -pin RTL_ADD__5 O[7] -pin reg_next_pc_i I1[7]
load net RTL_ADD__5_n_25 -attr @rip(#000000) O[6] -pin RTL_ADD__5 O[6] -pin reg_next_pc_i I1[6]
load net RTL_ADD__5_n_26 -attr @rip(#000000) O[5] -pin RTL_ADD__5 O[5] -pin reg_next_pc_i I1[5]
load net RTL_ADD__5_n_27 -attr @rip(#000000) O[4] -pin RTL_ADD__5 O[4] -pin reg_next_pc_i I1[4]
load net RTL_ADD__5_n_28 -attr @rip(#000000) O[3] -pin RTL_ADD__5 O[3] -pin reg_next_pc_i I1[3]
load net RTL_ADD__5_n_29 -attr @rip(#000000) O[2] -pin RTL_ADD__5 O[2] -pin reg_next_pc_i I1[2]
load net RTL_ADD__5_n_3 -attr @rip(#000000) O[28] -pin RTL_ADD__5 O[28] -pin reg_next_pc_i I1[28]
load net RTL_ADD__5_n_30 -attr @rip(#000000) O[1] -pin RTL_ADD__5 O[1] -pin reg_next_pc_i I1[1]
load net RTL_ADD__5_n_31 -attr @rip(#000000) O[0] -pin RTL_ADD__5 O[0] -pin reg_next_pc_i I1[0]
load net RTL_ADD__5_n_4 -attr @rip(#000000) O[27] -pin RTL_ADD__5 O[27] -pin reg_next_pc_i I1[27]
load net RTL_ADD__5_n_5 -attr @rip(#000000) O[26] -pin RTL_ADD__5 O[26] -pin reg_next_pc_i I1[26]
load net RTL_ADD__5_n_6 -attr @rip(#000000) O[25] -pin RTL_ADD__5 O[25] -pin reg_next_pc_i I1[25]
load net RTL_ADD__5_n_7 -attr @rip(#000000) O[24] -pin RTL_ADD__5 O[24] -pin reg_next_pc_i I1[24]
load net RTL_ADD__5_n_8 -attr @rip(#000000) O[23] -pin RTL_ADD__5 O[23] -pin reg_next_pc_i I1[23]
load net RTL_ADD__5_n_9 -attr @rip(#000000) O[22] -pin RTL_ADD__5 O[22] -pin reg_next_pc_i I1[22]
load net RTL_ADD__6_n_0 -attr @rip(#000000) O[4] -pin RTL_ADD__6 O[4] -pin reg_sh_i__0 I0[4]
load net RTL_ADD__6_n_1 -attr @rip(#000000) O[3] -pin RTL_ADD__6 O[3] -pin reg_sh_i__0 I0[3]
load net RTL_ADD__6_n_2 -attr @rip(#000000) O[2] -pin RTL_ADD__6 O[2] -pin reg_sh_i__0 I0[2]
load net RTL_ADD__6_n_3 -attr @rip(#000000) O[1] -pin RTL_ADD__6 O[1] -pin reg_sh_i__0 I0[1]
load net RTL_ADD__6_n_4 -attr @rip(#000000) O[0] -pin RTL_ADD__6 O[0] -pin reg_sh_i__0 I0[0]
load net RTL_ADD__7_n_0 -attr @rip(#000000) O[4] -pin RTL_ADD__7 O[4] -pin reg_sh_i__0 I1[4]
load net RTL_ADD__7_n_1 -attr @rip(#000000) O[3] -pin RTL_ADD__7 O[3] -pin reg_sh_i__0 I1[3]
load net RTL_ADD__7_n_2 -attr @rip(#000000) O[2] -pin RTL_ADD__7 O[2] -pin reg_sh_i__0 I1[2]
load net RTL_ADD__7_n_3 -attr @rip(#000000) O[1] -pin RTL_ADD__7 O[1] -pin reg_sh_i__0 I1[1]
load net RTL_ADD__7_n_4 -attr @rip(#000000) O[0] -pin RTL_ADD__7 O[0] -pin reg_sh_i__0 I1[0]
load net RTL_ADD__8_n_0 -attr @rip(#000000) O[31] -pin RTL_ADD__8 O[31] -pin reg_op1_i__3 I2[31]
load net RTL_ADD__8_n_1 -attr @rip(#000000) O[30] -pin RTL_ADD__8 O[30] -pin reg_op1_i__3 I2[30]
load net RTL_ADD__8_n_10 -attr @rip(#000000) O[21] -pin RTL_ADD__8 O[21] -pin reg_op1_i__3 I2[21]
load net RTL_ADD__8_n_11 -attr @rip(#000000) O[20] -pin RTL_ADD__8 O[20] -pin reg_op1_i__3 I2[20]
load net RTL_ADD__8_n_12 -attr @rip(#000000) O[19] -pin RTL_ADD__8 O[19] -pin reg_op1_i__3 I2[19]
load net RTL_ADD__8_n_13 -attr @rip(#000000) O[18] -pin RTL_ADD__8 O[18] -pin reg_op1_i__3 I2[18]
load net RTL_ADD__8_n_14 -attr @rip(#000000) O[17] -pin RTL_ADD__8 O[17] -pin reg_op1_i__3 I2[17]
load net RTL_ADD__8_n_15 -attr @rip(#000000) O[16] -pin RTL_ADD__8 O[16] -pin reg_op1_i__3 I2[16]
load net RTL_ADD__8_n_16 -attr @rip(#000000) O[15] -pin RTL_ADD__8 O[15] -pin reg_op1_i__3 I2[15]
load net RTL_ADD__8_n_17 -attr @rip(#000000) O[14] -pin RTL_ADD__8 O[14] -pin reg_op1_i__3 I2[14]
load net RTL_ADD__8_n_18 -attr @rip(#000000) O[13] -pin RTL_ADD__8 O[13] -pin reg_op1_i__3 I2[13]
load net RTL_ADD__8_n_19 -attr @rip(#000000) O[12] -pin RTL_ADD__8 O[12] -pin reg_op1_i__3 I2[12]
load net RTL_ADD__8_n_2 -attr @rip(#000000) O[29] -pin RTL_ADD__8 O[29] -pin reg_op1_i__3 I2[29]
load net RTL_ADD__8_n_20 -attr @rip(#000000) O[11] -pin RTL_ADD__8 O[11] -pin reg_op1_i__3 I2[11]
load net RTL_ADD__8_n_21 -attr @rip(#000000) O[10] -pin RTL_ADD__8 O[10] -pin reg_op1_i__3 I2[10]
load net RTL_ADD__8_n_22 -attr @rip(#000000) O[9] -pin RTL_ADD__8 O[9] -pin reg_op1_i__3 I2[9]
load net RTL_ADD__8_n_23 -attr @rip(#000000) O[8] -pin RTL_ADD__8 O[8] -pin reg_op1_i__3 I2[8]
load net RTL_ADD__8_n_24 -attr @rip(#000000) O[7] -pin RTL_ADD__8 O[7] -pin reg_op1_i__3 I2[7]
load net RTL_ADD__8_n_25 -attr @rip(#000000) O[6] -pin RTL_ADD__8 O[6] -pin reg_op1_i__3 I2[6]
load net RTL_ADD__8_n_26 -attr @rip(#000000) O[5] -pin RTL_ADD__8 O[5] -pin reg_op1_i__3 I2[5]
load net RTL_ADD__8_n_27 -attr @rip(#000000) O[4] -pin RTL_ADD__8 O[4] -pin reg_op1_i__3 I2[4]
load net RTL_ADD__8_n_28 -attr @rip(#000000) O[3] -pin RTL_ADD__8 O[3] -pin reg_op1_i__3 I2[3]
load net RTL_ADD__8_n_29 -attr @rip(#000000) O[2] -pin RTL_ADD__8 O[2] -pin reg_op1_i__3 I2[2]
load net RTL_ADD__8_n_3 -attr @rip(#000000) O[28] -pin RTL_ADD__8 O[28] -pin reg_op1_i__3 I2[28]
load net RTL_ADD__8_n_30 -attr @rip(#000000) O[1] -pin RTL_ADD__8 O[1] -pin reg_op1_i__3 I2[1]
load net RTL_ADD__8_n_31 -attr @rip(#000000) O[0] -pin RTL_ADD__8 O[0] -pin reg_op1_i__3 I2[0]
load net RTL_ADD__8_n_4 -attr @rip(#000000) O[27] -pin RTL_ADD__8 O[27] -pin reg_op1_i__3 I2[27]
load net RTL_ADD__8_n_5 -attr @rip(#000000) O[26] -pin RTL_ADD__8 O[26] -pin reg_op1_i__3 I2[26]
load net RTL_ADD__8_n_6 -attr @rip(#000000) O[25] -pin RTL_ADD__8 O[25] -pin reg_op1_i__3 I2[25]
load net RTL_ADD__8_n_7 -attr @rip(#000000) O[24] -pin RTL_ADD__8 O[24] -pin reg_op1_i__3 I2[24]
load net RTL_ADD__8_n_8 -attr @rip(#000000) O[23] -pin RTL_ADD__8 O[23] -pin reg_op1_i__3 I2[23]
load net RTL_ADD__8_n_9 -attr @rip(#000000) O[22] -pin RTL_ADD__8 O[22] -pin reg_op1_i__3 I2[22]
load net RTL_ADD__9_n_0 -attr @rip(#000000) O[31] -pin RTL_ADD__9 O[31] -pin reg_op1_i__3 I3[31]
load net RTL_ADD__9_n_1 -attr @rip(#000000) O[30] -pin RTL_ADD__9 O[30] -pin reg_op1_i__3 I3[30]
load net RTL_ADD__9_n_10 -attr @rip(#000000) O[21] -pin RTL_ADD__9 O[21] -pin reg_op1_i__3 I3[21]
load net RTL_ADD__9_n_11 -attr @rip(#000000) O[20] -pin RTL_ADD__9 O[20] -pin reg_op1_i__3 I3[20]
load net RTL_ADD__9_n_12 -attr @rip(#000000) O[19] -pin RTL_ADD__9 O[19] -pin reg_op1_i__3 I3[19]
load net RTL_ADD__9_n_13 -attr @rip(#000000) O[18] -pin RTL_ADD__9 O[18] -pin reg_op1_i__3 I3[18]
load net RTL_ADD__9_n_14 -attr @rip(#000000) O[17] -pin RTL_ADD__9 O[17] -pin reg_op1_i__3 I3[17]
load net RTL_ADD__9_n_15 -attr @rip(#000000) O[16] -pin RTL_ADD__9 O[16] -pin reg_op1_i__3 I3[16]
load net RTL_ADD__9_n_16 -attr @rip(#000000) O[15] -pin RTL_ADD__9 O[15] -pin reg_op1_i__3 I3[15]
load net RTL_ADD__9_n_17 -attr @rip(#000000) O[14] -pin RTL_ADD__9 O[14] -pin reg_op1_i__3 I3[14]
load net RTL_ADD__9_n_18 -attr @rip(#000000) O[13] -pin RTL_ADD__9 O[13] -pin reg_op1_i__3 I3[13]
load net RTL_ADD__9_n_19 -attr @rip(#000000) O[12] -pin RTL_ADD__9 O[12] -pin reg_op1_i__3 I3[12]
load net RTL_ADD__9_n_2 -attr @rip(#000000) O[29] -pin RTL_ADD__9 O[29] -pin reg_op1_i__3 I3[29]
load net RTL_ADD__9_n_20 -attr @rip(#000000) O[11] -pin RTL_ADD__9 O[11] -pin reg_op1_i__3 I3[11]
load net RTL_ADD__9_n_21 -attr @rip(#000000) O[10] -pin RTL_ADD__9 O[10] -pin reg_op1_i__3 I3[10]
load net RTL_ADD__9_n_22 -attr @rip(#000000) O[9] -pin RTL_ADD__9 O[9] -pin reg_op1_i__3 I3[9]
load net RTL_ADD__9_n_23 -attr @rip(#000000) O[8] -pin RTL_ADD__9 O[8] -pin reg_op1_i__3 I3[8]
load net RTL_ADD__9_n_24 -attr @rip(#000000) O[7] -pin RTL_ADD__9 O[7] -pin reg_op1_i__3 I3[7]
load net RTL_ADD__9_n_25 -attr @rip(#000000) O[6] -pin RTL_ADD__9 O[6] -pin reg_op1_i__3 I3[6]
load net RTL_ADD__9_n_26 -attr @rip(#000000) O[5] -pin RTL_ADD__9 O[5] -pin reg_op1_i__3 I3[5]
load net RTL_ADD__9_n_27 -attr @rip(#000000) O[4] -pin RTL_ADD__9 O[4] -pin reg_op1_i__3 I3[4]
load net RTL_ADD__9_n_28 -attr @rip(#000000) O[3] -pin RTL_ADD__9 O[3] -pin reg_op1_i__3 I3[3]
load net RTL_ADD__9_n_29 -attr @rip(#000000) O[2] -pin RTL_ADD__9 O[2] -pin reg_op1_i__3 I3[2]
load net RTL_ADD__9_n_3 -attr @rip(#000000) O[28] -pin RTL_ADD__9 O[28] -pin reg_op1_i__3 I3[28]
load net RTL_ADD__9_n_30 -attr @rip(#000000) O[1] -pin RTL_ADD__9 O[1] -pin reg_op1_i__3 I3[1]
load net RTL_ADD__9_n_31 -attr @rip(#000000) O[0] -pin RTL_ADD__9 O[0] -pin reg_op1_i__3 I3[0]
load net RTL_ADD__9_n_4 -attr @rip(#000000) O[27] -pin RTL_ADD__9 O[27] -pin reg_op1_i__3 I3[27]
load net RTL_ADD__9_n_5 -attr @rip(#000000) O[26] -pin RTL_ADD__9 O[26] -pin reg_op1_i__3 I3[26]
load net RTL_ADD__9_n_6 -attr @rip(#000000) O[25] -pin RTL_ADD__9 O[25] -pin reg_op1_i__3 I3[25]
load net RTL_ADD__9_n_7 -attr @rip(#000000) O[24] -pin RTL_ADD__9 O[24] -pin reg_op1_i__3 I3[24]
load net RTL_ADD__9_n_8 -attr @rip(#000000) O[23] -pin RTL_ADD__9 O[23] -pin reg_op1_i__3 I3[23]
load net RTL_ADD__9_n_9 -attr @rip(#000000) O[22] -pin RTL_ADD__9 O[22] -pin reg_op1_i__3 I3[22]
load net RTL_ADD_n_0 -attr @rip(#000000) O[31] -pin RTL_ADD O[31] -pin RTL_MUX__1 I0[31]
load net RTL_ADD_n_1 -attr @rip(#000000) O[30] -pin RTL_ADD O[30] -pin RTL_MUX__1 I0[30]
load net RTL_ADD_n_10 -attr @rip(#000000) O[21] -pin RTL_ADD O[21] -pin RTL_MUX__1 I0[21]
load net RTL_ADD_n_11 -attr @rip(#000000) O[20] -pin RTL_ADD O[20] -pin RTL_MUX__1 I0[20]
load net RTL_ADD_n_12 -attr @rip(#000000) O[19] -pin RTL_ADD O[19] -pin RTL_MUX__1 I0[19]
load net RTL_ADD_n_13 -attr @rip(#000000) O[18] -pin RTL_ADD O[18] -pin RTL_MUX__1 I0[18]
load net RTL_ADD_n_14 -attr @rip(#000000) O[17] -pin RTL_ADD O[17] -pin RTL_MUX__1 I0[17]
load net RTL_ADD_n_15 -attr @rip(#000000) O[16] -pin RTL_ADD O[16] -pin RTL_MUX__1 I0[16]
load net RTL_ADD_n_16 -attr @rip(#000000) O[15] -pin RTL_ADD O[15] -pin RTL_MUX__1 I0[15]
load net RTL_ADD_n_17 -attr @rip(#000000) O[14] -pin RTL_ADD O[14] -pin RTL_MUX__1 I0[14]
load net RTL_ADD_n_18 -attr @rip(#000000) O[13] -pin RTL_ADD O[13] -pin RTL_MUX__1 I0[13]
load net RTL_ADD_n_19 -attr @rip(#000000) O[12] -pin RTL_ADD O[12] -pin RTL_MUX__1 I0[12]
load net RTL_ADD_n_2 -attr @rip(#000000) O[29] -pin RTL_ADD O[29] -pin RTL_MUX__1 I0[29]
load net RTL_ADD_n_20 -attr @rip(#000000) O[11] -pin RTL_ADD O[11] -pin RTL_MUX__1 I0[11]
load net RTL_ADD_n_21 -attr @rip(#000000) O[10] -pin RTL_ADD O[10] -pin RTL_MUX__1 I0[10]
load net RTL_ADD_n_22 -attr @rip(#000000) O[9] -pin RTL_ADD O[9] -pin RTL_MUX__1 I0[9]
load net RTL_ADD_n_23 -attr @rip(#000000) O[8] -pin RTL_ADD O[8] -pin RTL_MUX__1 I0[8]
load net RTL_ADD_n_24 -attr @rip(#000000) O[7] -pin RTL_ADD O[7] -pin RTL_MUX__1 I0[7]
load net RTL_ADD_n_25 -attr @rip(#000000) O[6] -pin RTL_ADD O[6] -pin RTL_MUX__1 I0[6]
load net RTL_ADD_n_26 -attr @rip(#000000) O[5] -pin RTL_ADD O[5] -pin RTL_MUX__1 I0[5]
load net RTL_ADD_n_27 -attr @rip(#000000) O[4] -pin RTL_ADD O[4] -pin RTL_MUX__1 I0[4]
load net RTL_ADD_n_28 -attr @rip(#000000) O[3] -pin RTL_ADD O[3] -pin RTL_MUX__1 I0[3]
load net RTL_ADD_n_29 -attr @rip(#000000) O[2] -pin RTL_ADD O[2] -pin RTL_MUX__1 I0[2]
load net RTL_ADD_n_3 -attr @rip(#000000) O[28] -pin RTL_ADD O[28] -pin RTL_MUX__1 I0[28]
load net RTL_ADD_n_30 -attr @rip(#000000) O[1] -pin RTL_ADD O[1] -pin RTL_MUX__1 I0[1]
load net RTL_ADD_n_31 -attr @rip(#000000) O[0] -pin RTL_ADD O[0] -pin RTL_MUX__1 I0[0]
load net RTL_ADD_n_4 -attr @rip(#000000) O[27] -pin RTL_ADD O[27] -pin RTL_MUX__1 I0[27]
load net RTL_ADD_n_5 -attr @rip(#000000) O[26] -pin RTL_ADD O[26] -pin RTL_MUX__1 I0[26]
load net RTL_ADD_n_6 -attr @rip(#000000) O[25] -pin RTL_ADD O[25] -pin RTL_MUX__1 I0[25]
load net RTL_ADD_n_7 -attr @rip(#000000) O[24] -pin RTL_ADD O[24] -pin RTL_MUX__1 I0[24]
load net RTL_ADD_n_8 -attr @rip(#000000) O[23] -pin RTL_ADD O[23] -pin RTL_MUX__1 I0[23]
load net RTL_ADD_n_9 -attr @rip(#000000) O[22] -pin RTL_ADD O[22] -pin RTL_MUX__1 I0[22]
load net RTL_AND__0_n_0 -pin RTL_AND__0 O -pin RTL_AND__1 I0
netloc RTL_AND__0_n_0 1 38 1 19250 7090n
load net RTL_AND__10_n_0 -pin RTL_AND__10 O -pin RTL_OR__7 I0
netloc RTL_AND__10_n_0 1 7 1 2690 2410n
load net RTL_AND__11_n_0 -pin RTL_AND__11 O -pin RTL_OR__7 I1
netloc RTL_AND__11_n_0 1 7 1 2550 2460n
load net RTL_AND__12_n_0 -pin RTL_AND__12 O -pin RTL_OR__8 I0
netloc RTL_AND__12_n_0 1 7 1 N 2550
load net RTL_AND__13_n_0 -pin RTL_AND__13 O -pin RTL_OR__8 I1
netloc RTL_AND__13_n_0 1 7 1 2610 2570n
load net RTL_AND__14_n_0 -pin RTL_AND__14 O -pin RTL_AND__15 I0
netloc RTL_AND__14_n_0 1 7 1 2470 900n
load net RTL_AND__15_n_0 -pin RTL_AND__15 O -pin instr_and_reg D
netloc RTL_AND__15_n_0 1 8 1 3360 910n
load net RTL_AND__16_n_0 -pin RTL_AND__16 O -pin RTL_AND__17 I0
netloc RTL_AND__16_n_0 1 7 1 2490 970n
load net RTL_AND__17_n_0 -pin RTL_AND__17 O -pin instr_or_reg D
netloc RTL_AND__17_n_0 1 8 1 3240 680n
load net RTL_AND__19_n_0 -pin RTL_AND__19 O -pin instr_sra_reg D
netloc RTL_AND__19_n_0 1 8 1 3260 950n
load net RTL_AND__1_n_0 -pin RTL_AND__1 O -pin RTL_OR__6 I0
netloc RTL_AND__1_n_0 1 39 1 19420 7110n
load net RTL_AND__20_n_0 -pin RTL_AND__20 O -pin RTL_AND__21 I0
netloc RTL_AND__20_n_0 1 7 1 2510 1160n
load net RTL_AND__21_n_0 -pin RTL_AND__21 O -pin instr_srl_reg D
netloc RTL_AND__21_n_0 1 8 1 3280 1090n
load net RTL_AND__22_n_0 -pin RTL_AND__22 O -pin RTL_AND__23 I0
netloc RTL_AND__22_n_0 1 7 1 2530 1270n
load net RTL_AND__23_n_0 -pin RTL_AND__23 O -pin instr_xor_reg D
netloc RTL_AND__23_n_0 1 8 1 3420 1280n
load net RTL_AND__24_n_0 -pin RTL_AND__24 O -pin RTL_AND__25 I0
netloc RTL_AND__24_n_0 1 9 1 4100 3710n
load net RTL_AND__25_n_0 -pin RTL_AND__25 O -pin instr_sltu_reg D
netloc RTL_AND__25_n_0 1 10 1 4710 3780n
load net RTL_AND__26_n_0 -pin RTL_AND__26 O -pin RTL_AND__27 I0
netloc RTL_AND__26_n_0 1 9 1 3920 3890n
load net RTL_AND__27_n_0 -pin RTL_AND__27 O -pin instr_slt_reg D
netloc RTL_AND__27_n_0 1 10 1 4670 3960n
load net RTL_AND__28_n_0 -pin RTL_AND__28 O -pin RTL_AND__29 I0
netloc RTL_AND__28_n_0 1 7 1 2570 1340n
load net RTL_AND__29_n_0 -pin RTL_AND__29 O -pin instr_sll_reg D
netloc RTL_AND__29_n_0 1 8 1 3240 1230n
load net RTL_AND__2_n_0 -pin RTL_AND__2 O -pin RTL_OR__6 I1
netloc RTL_AND__2_n_0 1 39 1 N 7180
load net RTL_AND__30_n_0 -pin RTL_AND__30 O -pin RTL_AND__31 I0
netloc RTL_AND__30_n_0 1 54 1 25120 5590n
load net RTL_AND__31_n_0 -pin RTL_AND__31 O -pin instr_sub_reg D
netloc RTL_AND__31_n_0 1 55 1 25530 5820n
load net RTL_AND__32_n_0 -pin RTL_AND__32 O -pin RTL_AND__33 I0
netloc RTL_AND__32_n_0 1 54 1 25080 5660n
load net RTL_AND__33_n_0 -pin RTL_AND__33 O -pin instr_add_reg D
netloc RTL_AND__33_n_0 1 55 1 25510 5940n
load net RTL_AND__34_n_0 -pin RTL_AND__34 O -pin RTL_AND__35 I0
netloc RTL_AND__34_n_0 1 7 1 2630 1440n
load net RTL_AND__35_n_0 -pin RTL_AND__35 O -pin instr_srai_reg D
netloc RTL_AND__35_n_0 1 8 1 3260 1360n
load net RTL_AND__36_n_0 -pin RTL_AND__36 O -pin RTL_AND__37 I0
netloc RTL_AND__36_n_0 1 7 1 2670 1620n
load net RTL_AND__37_n_0 -pin RTL_AND__37 O -pin instr_srli_reg D
netloc RTL_AND__37_n_0 1 8 1 3260 1630n
load net RTL_AND__38_n_0 -pin RTL_AND__38 O -pin RTL_AND__39 I0
netloc RTL_AND__38_n_0 1 7 1 2730 1690n
load net RTL_AND__39_n_0 -pin RTL_AND__39 O -pin instr_slli_reg D
netloc RTL_AND__39_n_0 1 8 1 3600 1700n
load net RTL_AND__3_n_0 -pin RTL_AND__3 O -pin decoder_trigger_i I1 -pin decoder_trigger_i__0 I1 -pin decoder_trigger_i__1 I1 -pin decoder_trigger_i__2 I1 -pin decoder_trigger_i__3 I1 -pin decoder_trigger_i__4 I1 -pin decoder_trigger_i__5 I0 -pin decoder_trigger_i__5 I1 -pin decoder_trigger_i__5 I2 -pin decoder_trigger_i__5 I3 -pin decoder_trigger_i__5 I5 -pin decoder_trigger_i__6 I0
netloc RTL_AND__3_n_0 1 49 4 23030 6150 23470 6230 23770 6470 24180J
load net RTL_AND__40_n_0 -pin RTL_AND__40 O -pin instr_andi_reg D
netloc RTL_AND__40_n_0 1 8 1 3240 1500n
load net RTL_AND__41_n_0 -pin RTL_AND__41 O -pin instr_ori_reg D
netloc RTL_AND__41_n_0 1 8 1 3280 1640n
load net RTL_AND__42_n_0 -pin RTL_AND__42 O -pin instr_xori_reg D
netloc RTL_AND__42_n_0 1 8 1 3320 2630n
load net RTL_AND__43_n_0 -pin RTL_AND__43 O -pin instr_sltiu_reg D
netloc RTL_AND__43_n_0 1 10 1 N 6520
load net RTL_AND__44_n_0 -pin RTL_AND__44 O -pin instr_slti_reg D
netloc RTL_AND__44_n_0 1 10 1 4410 6610n
load net RTL_AND__45_n_0 -pin RTL_AND__45 O -pin instr_addi_reg D
netloc RTL_AND__45_n_0 1 55 1 25390 6060n
load net RTL_AND__46_n_0 -pin RTL_AND__46 O -pin instr_sw_reg D
netloc RTL_AND__46_n_0 1 8 1 3260 2700n
load net RTL_AND__47_n_0 -pin RTL_AND__47 O -pin instr_sh_reg D
netloc RTL_AND__47_n_0 1 8 1 3340 2710n
load net RTL_AND__48_n_0 -pin RTL_AND__48 O -pin instr_sb_reg D
netloc RTL_AND__48_n_0 1 8 1 N 2840
load net RTL_AND__49_n_0 -pin RTL_AND__49 O -pin instr_lhu_reg D
netloc RTL_AND__49_n_0 1 8 1 N 2970
load net RTL_AND__4_n_0 -pin RTL_AND__4 O -pin cpu_state_i__10 I0 -pin decoder_pseudo_trigger_i I0 -pin decoder_trigger_i__1 S
netloc RTL_AND__4_n_0 1 29 22 15720 6530 16270J 6560 NJ 6560 NJ 6560 NJ 6560 NJ 6560 18270J 6580 NJ 6580 NJ 6580 NJ 6580 NJ 6580 NJ 6580 NJ 6580 NJ 6580 NJ 6580 NJ 6580 NJ 6580 NJ 6580 NJ 6580 NJ 6580 23070 6370N 23350
load net RTL_AND__50_n_0 -pin RTL_AND__50 O -pin instr_lbu_reg D
netloc RTL_AND__50_n_0 1 8 1 3280 3100n
load net RTL_AND__51_n_0 -pin RTL_AND__51 O -pin instr_lw_reg D
netloc RTL_AND__51_n_0 1 8 1 3340 3430n
load net RTL_AND__52_n_0 -pin RTL_AND__52 O -pin instr_lh_reg D
netloc RTL_AND__52_n_0 1 8 1 3460 3230n
load net RTL_AND__53_n_0 -pin RTL_AND__53 O -pin instr_lb_reg D
netloc RTL_AND__53_n_0 1 8 1 3480 3360n
load net RTL_AND__54_n_0 -pin RTL_AND__54 O -pin instr_bgeu_reg D
netloc RTL_AND__54_n_0 1 8 1 3240 2320n
load net RTL_AND__55_n_0 -pin RTL_AND__55 O -pin instr_bltu_reg D
netloc RTL_AND__55_n_0 1 10 1 4390 6700n
load net RTL_AND__56_n_0 -pin RTL_AND__56 O -pin instr_bge_reg D
netloc RTL_AND__56_n_0 1 8 1 3400 2180n
load net RTL_AND__57_n_0 -pin RTL_AND__57 O -pin instr_blt_reg D
netloc RTL_AND__57_n_0 1 10 1 4430 6790n
load net RTL_AND__58_n_0 -pin RTL_AND__58 O -pin instr_bne_reg D
netloc RTL_AND__58_n_0 1 8 1 3500 3500n
load net RTL_AND__59_n_0 -pin RTL_AND__59 O -pin instr_beq_reg D
netloc RTL_AND__59_n_0 1 8 1 3440 2040n
load net RTL_AND__5_n_0 -pin RTL_AND__5 O -pin cpu_state_i__11 I0 -pin decoder_pseudo_trigger_i__0 I0 -pin decoder_trigger_i__3 S
netloc RTL_AND__5_n_0 1 29 22 15740 6550 16250J 6600 NJ 6600 NJ 6600 NJ 6600 17960J 6730 NJ 6730 NJ 6730 NJ 6730 NJ 6730 NJ 6730 NJ 6730 19770J 6660 20140J 6640 NJ 6640 NJ 6640 NJ 6640 22180J 6610 NJ 6610 NJ 6610 23010J 6660N 23370
load net RTL_AND__60_n_0 -pin RTL_AND__60 O -pin cpu_state_i__0 S4 -pin latched_store_i__1 S4 -pin mem_do_rinst_i__2 S4 -pin mem_do_rinst_i__6 S4 -pin reg_op1_i S4 -pin reg_op2_i S4 -pin reg_out_i__0 S4 -pin reg_sh_i S4
netloc RTL_AND__60_n_0 1 14 54 7750 4870N NJ 4870 9380 4890N NJ 4890 NJ 4890 NJ 4890 NJ 4890 NJ 4890 NJ 4890 NJ 4890 NJ 4890 NJ 4890 14070 4990N N 4990 NJ 4990 NJ 4990N NJ 4990 NJ 4990 NJ 4990 NJ 4990 NJ 4990 NJ 4990 NJ 4990 NJ 4990 NJ 4990 NJ 4990 NJ 4990 NJ 4990 NJ 4990 NJ 4990 20870 5040N 21490 4900N 22140J 4820 NJ 4820 NJ 4820 NJ 4820 NJ 4820 NJ 4820 NJ 4820 NJ 4820 NJ 4820 NJ 4820 NJ 4820 NJ 4820 NJ 4820 NJ 4820 NJ 4820 NJ 4820 NJ 4820 NJ 4820 NJ 4820 28340J 4740 28780 4760N N
load net RTL_AND__64_n_0 -pin RTL_AND__64 O -pin is_slli_srli_srai_reg D
netloc RTL_AND__64_n_0 1 13 1 6630 4860n
load net RTL_AND__65_n_0 -pin RTL_AND__65 O -pin RTL_OR__9 I1
netloc RTL_AND__65_n_0 1 12 1 5960 4730n
load net RTL_AND__66_n_0 -attr @rip(#000000) O[31] -pin RTL_AND__66 O[31] -pin alu_out_i I4[31]
load net RTL_AND__66_n_1 -attr @rip(#000000) O[30] -pin RTL_AND__66 O[30] -pin alu_out_i I4[30]
load net RTL_AND__66_n_10 -attr @rip(#000000) O[21] -pin RTL_AND__66 O[21] -pin alu_out_i I4[21]
load net RTL_AND__66_n_11 -attr @rip(#000000) O[20] -pin RTL_AND__66 O[20] -pin alu_out_i I4[20]
load net RTL_AND__66_n_12 -attr @rip(#000000) O[19] -pin RTL_AND__66 O[19] -pin alu_out_i I4[19]
load net RTL_AND__66_n_13 -attr @rip(#000000) O[18] -pin RTL_AND__66 O[18] -pin alu_out_i I4[18]
load net RTL_AND__66_n_14 -attr @rip(#000000) O[17] -pin RTL_AND__66 O[17] -pin alu_out_i I4[17]
load net RTL_AND__66_n_15 -attr @rip(#000000) O[16] -pin RTL_AND__66 O[16] -pin alu_out_i I4[16]
load net RTL_AND__66_n_16 -attr @rip(#000000) O[15] -pin RTL_AND__66 O[15] -pin alu_out_i I4[15]
load net RTL_AND__66_n_17 -attr @rip(#000000) O[14] -pin RTL_AND__66 O[14] -pin alu_out_i I4[14]
load net RTL_AND__66_n_18 -attr @rip(#000000) O[13] -pin RTL_AND__66 O[13] -pin alu_out_i I4[13]
load net RTL_AND__66_n_19 -attr @rip(#000000) O[12] -pin RTL_AND__66 O[12] -pin alu_out_i I4[12]
load net RTL_AND__66_n_2 -attr @rip(#000000) O[29] -pin RTL_AND__66 O[29] -pin alu_out_i I4[29]
load net RTL_AND__66_n_20 -attr @rip(#000000) O[11] -pin RTL_AND__66 O[11] -pin alu_out_i I4[11]
load net RTL_AND__66_n_21 -attr @rip(#000000) O[10] -pin RTL_AND__66 O[10] -pin alu_out_i I4[10]
load net RTL_AND__66_n_22 -attr @rip(#000000) O[9] -pin RTL_AND__66 O[9] -pin alu_out_i I4[9]
load net RTL_AND__66_n_23 -attr @rip(#000000) O[8] -pin RTL_AND__66 O[8] -pin alu_out_i I4[8]
load net RTL_AND__66_n_24 -attr @rip(#000000) O[7] -pin RTL_AND__66 O[7] -pin alu_out_i I4[7]
load net RTL_AND__66_n_25 -attr @rip(#000000) O[6] -pin RTL_AND__66 O[6] -pin alu_out_i I4[6]
load net RTL_AND__66_n_26 -attr @rip(#000000) O[5] -pin RTL_AND__66 O[5] -pin alu_out_i I4[5]
load net RTL_AND__66_n_27 -attr @rip(#000000) O[4] -pin RTL_AND__66 O[4] -pin alu_out_i I4[4]
load net RTL_AND__66_n_28 -attr @rip(#000000) O[3] -pin RTL_AND__66 O[3] -pin alu_out_i I4[3]
load net RTL_AND__66_n_29 -attr @rip(#000000) O[2] -pin RTL_AND__66 O[2] -pin alu_out_i I4[2]
load net RTL_AND__66_n_3 -attr @rip(#000000) O[28] -pin RTL_AND__66 O[28] -pin alu_out_i I4[28]
load net RTL_AND__66_n_30 -attr @rip(#000000) O[1] -pin RTL_AND__66 O[1] -pin alu_out_i I4[1]
load net RTL_AND__66_n_31 -attr @rip(#000000) O[0] -pin RTL_AND__66 O[0] -pin alu_out_i I4[0]
load net RTL_AND__66_n_4 -attr @rip(#000000) O[27] -pin RTL_AND__66 O[27] -pin alu_out_i I4[27]
load net RTL_AND__66_n_5 -attr @rip(#000000) O[26] -pin RTL_AND__66 O[26] -pin alu_out_i I4[26]
load net RTL_AND__66_n_6 -attr @rip(#000000) O[25] -pin RTL_AND__66 O[25] -pin alu_out_i I4[25]
load net RTL_AND__66_n_7 -attr @rip(#000000) O[24] -pin RTL_AND__66 O[24] -pin alu_out_i I4[24]
load net RTL_AND__66_n_8 -attr @rip(#000000) O[23] -pin RTL_AND__66 O[23] -pin alu_out_i I4[23]
load net RTL_AND__66_n_9 -attr @rip(#000000) O[22] -pin RTL_AND__66 O[22] -pin alu_out_i I4[22]
load net RTL_AND__67_n_0 -attr @rip(#000000) O[31] -pin RTL_AND__67 O[31] -pin RTL_MUX__6 I0[31]
load net RTL_AND__67_n_1 -attr @rip(#000000) O[30] -pin RTL_AND__67 O[30] -pin RTL_MUX__6 I0[30]
load net RTL_AND__67_n_10 -attr @rip(#000000) O[21] -pin RTL_AND__67 O[21] -pin RTL_MUX__6 I0[21]
load net RTL_AND__67_n_11 -attr @rip(#000000) O[20] -pin RTL_AND__67 O[20] -pin RTL_MUX__6 I0[20]
load net RTL_AND__67_n_12 -attr @rip(#000000) O[19] -pin RTL_AND__67 O[19] -pin RTL_MUX__6 I0[19]
load net RTL_AND__67_n_13 -attr @rip(#000000) O[18] -pin RTL_AND__67 O[18] -pin RTL_MUX__6 I0[18]
load net RTL_AND__67_n_14 -attr @rip(#000000) O[17] -pin RTL_AND__67 O[17] -pin RTL_MUX__6 I0[17]
load net RTL_AND__67_n_15 -attr @rip(#000000) O[16] -pin RTL_AND__67 O[16] -pin RTL_MUX__6 I0[16]
load net RTL_AND__67_n_16 -attr @rip(#000000) O[15] -pin RTL_AND__67 O[15] -pin RTL_MUX__6 I0[15]
load net RTL_AND__67_n_17 -attr @rip(#000000) O[14] -pin RTL_AND__67 O[14] -pin RTL_MUX__6 I0[14]
load net RTL_AND__67_n_18 -attr @rip(#000000) O[13] -pin RTL_AND__67 O[13] -pin RTL_MUX__6 I0[13]
load net RTL_AND__67_n_19 -attr @rip(#000000) O[12] -pin RTL_AND__67 O[12] -pin RTL_MUX__6 I0[12]
load net RTL_AND__67_n_2 -attr @rip(#000000) O[29] -pin RTL_AND__67 O[29] -pin RTL_MUX__6 I0[29]
load net RTL_AND__67_n_20 -attr @rip(#000000) O[11] -pin RTL_AND__67 O[11] -pin RTL_MUX__6 I0[11]
load net RTL_AND__67_n_21 -attr @rip(#000000) O[10] -pin RTL_AND__67 O[10] -pin RTL_MUX__6 I0[10]
load net RTL_AND__67_n_22 -attr @rip(#000000) O[9] -pin RTL_AND__67 O[9] -pin RTL_MUX__6 I0[9]
load net RTL_AND__67_n_23 -attr @rip(#000000) O[8] -pin RTL_AND__67 O[8] -pin RTL_MUX__6 I0[8]
load net RTL_AND__67_n_24 -attr @rip(#000000) O[7] -pin RTL_AND__67 O[7] -pin RTL_MUX__6 I0[7]
load net RTL_AND__67_n_25 -attr @rip(#000000) O[6] -pin RTL_AND__67 O[6] -pin RTL_MUX__6 I0[6]
load net RTL_AND__67_n_26 -attr @rip(#000000) O[5] -pin RTL_AND__67 O[5] -pin RTL_MUX__6 I0[5]
load net RTL_AND__67_n_27 -attr @rip(#000000) O[4] -pin RTL_AND__67 O[4] -pin RTL_MUX__6 I0[4]
load net RTL_AND__67_n_28 -attr @rip(#000000) O[3] -pin RTL_AND__67 O[3] -pin RTL_MUX__6 I0[3]
load net RTL_AND__67_n_29 -attr @rip(#000000) O[2] -pin RTL_AND__67 O[2] -pin RTL_MUX__6 I0[2]
load net RTL_AND__67_n_3 -attr @rip(#000000) O[28] -pin RTL_AND__67 O[28] -pin RTL_MUX__6 I0[28]
load net RTL_AND__67_n_30 -attr @rip(#000000) O[1] -pin RTL_AND__67 O[1] -pin RTL_MUX__6 I0[1]
load net RTL_AND__67_n_31 -attr @rip(#000000) O[0] -pin RTL_AND__67 O[0] -pin RTL_MUX__6 I0[0]
load net RTL_AND__67_n_4 -attr @rip(#000000) O[27] -pin RTL_AND__67 O[27] -pin RTL_MUX__6 I0[27]
load net RTL_AND__67_n_5 -attr @rip(#000000) O[26] -pin RTL_AND__67 O[26] -pin RTL_MUX__6 I0[26]
load net RTL_AND__67_n_6 -attr @rip(#000000) O[25] -pin RTL_AND__67 O[25] -pin RTL_MUX__6 I0[25]
load net RTL_AND__67_n_7 -attr @rip(#000000) O[24] -pin RTL_AND__67 O[24] -pin RTL_MUX__6 I0[24]
load net RTL_AND__67_n_8 -attr @rip(#000000) O[23] -pin RTL_AND__67 O[23] -pin RTL_MUX__6 I0[23]
load net RTL_AND__67_n_9 -attr @rip(#000000) O[22] -pin RTL_AND__67 O[22] -pin RTL_MUX__6 I0[22]
load net RTL_AND__68_n_0 -attr @rip(#000000) 0 -pin RTL_AND__68 O -pin RTL_REDUCTION_OR__10 I0[0]
load net RTL_AND__69_n_0 -attr @rip(#000000) 1 -pin RTL_AND__69 O -pin RTL_REDUCTION_OR__10 I0[1]
load net RTL_AND__6_n_0 -pin RTL_AND__6 O -pin decoded_imm_reg[31:0] CE -pin instr_add_reg CE -pin instr_addi_reg CE -pin instr_and_reg CE -pin instr_andi_reg CE -pin instr_beq_reg CE -pin instr_bge_reg CE -pin instr_bgeu_reg CE -pin instr_blt_reg CE -pin instr_bltu_reg CE -pin instr_bne_reg CE -pin instr_ecall_ebreak_reg CE -pin instr_fence_reg CE -pin instr_getq_i S -pin instr_getq_reg RST -pin instr_lb_reg CE -pin instr_lbu_reg CE -pin instr_lh_reg CE -pin instr_lhu_reg CE -pin instr_lw_reg CE -pin instr_maskirq_i S -pin instr_maskirq_reg RST -pin instr_or_reg CE -pin instr_ori_reg CE -pin instr_rdcycle_reg CE -pin instr_rdcycleh_reg CE -pin instr_rdinstr_reg CE -pin instr_rdinstrh_reg CE -pin instr_sb_reg CE -pin instr_setq_i S -pin instr_setq_reg RST -pin instr_sh_reg CE -pin instr_sll_reg CE -pin instr_slli_reg CE -pin instr_slt_reg CE -pin instr_slti_reg CE -pin instr_sltiu_reg CE -pin instr_sltu_reg CE -pin instr_sra_reg CE -pin instr_srai_reg CE -pin instr_srl_reg CE -pin instr_srli_reg CE -pin instr_sub_reg CE -pin instr_sw_reg CE -pin instr_timer_i S -pin instr_timer_reg RST -pin instr_xor_reg CE -pin instr_xori_reg CE -pin is_compare_i I1 -pin is_jalr_addi_slti_sltiu_xori_ori_andi_reg CE -pin is_lui_auipc_jal_jalr_addi_add_sub_reg RST -pin is_sll_srl_sra_reg CE -pin is_slli_srli_srai_reg CE -pin pcpi_insn_i S
netloc RTL_AND__6_n_0 1 8 61 3300 5030N 4040J 5170 4650 6370 5200J 6510 NJ 6510 7030 5960 NJ 5960N 8820 5660 NJ 5660 NJ 5660 NJ 5660 NJ 5660 NJ 5660 NJ 5660 NJ 5660 NJ 5660 NJ 5660 NJ 5660 14150 5760 NJ 5760 15030J 5910 15560J 5700 NJ 5700 NJ 5700 NJ 5700 NJ 5700 NJ 5700 NJ 5700 NJ 5700 NJ 5700 NJ 5700 NJ 5700 NJ 5700 NJ 5700 NJ 5700 NJ 5700 20730J 5610 21330J 5780 NJ 5780 NJ 5780 NJ 5780 NJ 5780 NJ 5780 NJ 5780 24180J 5800 24710J 5890 NJ 5890 25450 5560 NJ 5560 NJ 5560 NJ 5560 NJ 5560 NJ 5560 NJ 5560 NJ 5560 NJ 5560 NJ 5560 NJ 5560 NJ 5560 NJ 5560 30270J
load net RTL_AND__70_n_0 -attr @rip(#000000) 2 -pin RTL_AND__70 O -pin RTL_REDUCTION_OR__10 I0[2]
load net RTL_AND__71_n_0 -pin RTL_AND__71 O -pin is_sll_srl_sra_reg D
netloc RTL_AND__71_n_0 1 15 1 8540 5980n
load net RTL_AND__72_n_0 -pin RTL_AND__72 O -pin current_pc_i S1 -pin mem_do_rinst_i S1
netloc RTL_AND__72_n_0 1 20 25 11490 6430N 11890 5800 NJ 5800 NJ 5800 NJ 5800 NJ 5800 13970J 5820 NJ 5820 14990J 5930 NJ 5930 16230J 5800 NJ 5800 NJ 5800 NJ 5800 NJ 5800 NJ 5800 NJ 5800 NJ 5800 NJ 5800 NJ 5800 NJ 5800 NJ 5800 NJ 5800 20430J 5720 20730J
load net RTL_AND__73_n_0 -pin RTL_AND__73 O -pin mem_do_rinst_i I0 -pin mem_do_rinst_i I1 -pin mem_do_rinst_i I3
netloc RTL_AND__73_n_0 1 44 1 20870 5680n
load net RTL_AND__74_n_0 -pin RTL_AND__74 O -pin compressed_instr_i S -pin compressed_instr_reg RST -pin decoded_imm_j_i S -pin decoded_rd_reg[4:0] CE -pin decoded_rs1_reg[4:0] CE -pin decoded_rs2_reg[4:0] CE -pin instr_auipc_reg CE -pin instr_jal_reg CE -pin instr_jalr_reg CE -pin instr_lui_reg CE -pin instr_retirq_i S -pin instr_retirq_reg RST -pin instr_waitirq_i S -pin instr_waitirq_reg RST -pin is_alu_reg_imm_reg CE -pin is_alu_reg_reg_reg CE -pin is_beq_bne_blt_bge_bltu_bgeu_reg CE -pin is_lb_lh_lw_lbu_lhu_reg CE -pin is_sb_sh_sw_reg CE
netloc RTL_AND__74_n_0 1 5 51 1450 4340 1780 4660 2470 5430N 3500 5310N 4040 5190 4590 6970N 5400 6970 5760 6960N 6990 6820N 7650 7020 NJ 7020 NJ 7020 NJ 7020 NJ 7020 NJ 7020 11510 7090 NJ 7090 NJ 7090 12900 6830 13280J 6890 NJ 6890 NJ 6890 NJ 6890 NJ 6890 NJ 6890 NJ 6890 NJ 6890 NJ 6890 NJ 6890 NJ 6890 18270J 7030 NJ 7030 18860J 6980 NJ 6980 NJ 6980 NJ 6980 19750J 7000 20140 6840 NJ 6840 NJ 6840 NJ 6840 NJ 6840 22530J 6850 NJ 6850 NJ 6850 NJ 6850 NJ 6850 NJ 6850 NJ 6850 NJ 6850 25390J
load net RTL_AND__75_n_0 -pin RTL_AND__75 O -pin mem_do_prefetch_reg D
netloc RTL_AND__75_n_0 1 60 1 26960 5820n
load net RTL_AND__76_n_0 -pin RTL_AND__76 O -pin RTL_AND__77 I0
netloc RTL_AND__76_n_0 1 25 1 13630 4270n
load net RTL_AND__78_n_0 -pin RTL_AND__78 O -pin cpu_state_i__14 I1[7] -pin cpu_state_i__14 I1[6] -pin cpu_state_i__14 I1[5] -pin cpu_state_i__14 I1[4] -pin cpu_state_i__14 I1[3] -pin cpu_state_i__14 I1[2] -pin cpu_state_i__14 I1[1] -pin cpu_state_i__14 I1[0]
netloc RTL_AND__78_n_0 1 29 1 15600 7130n
load net RTL_AND__79_n_0 -pin RTL_AND__79 O -pin cpu_state_i__14 S
netloc RTL_AND__79_n_0 1 29 1 15500 7230n
load net RTL_AND__80_n_0 -pin RTL_AND__80 O -pin cpu_state_i__15 S
netloc RTL_AND__80_n_0 1 30 1 16410 7100n
load net RTL_AND__81_n_0 -pin RTL_AND__81 O -pin RTL_AND__82 I0
netloc RTL_AND__81_n_0 1 30 1 16290 7020n
load net RTL_AND__82_n_0 -pin RTL_AND__82 O -pin cpu_state_i__16 S
netloc RTL_AND__82_n_0 1 31 1 N 7030
load net RTL_AND__83_n_0 -attr @rip(#000000) O[31] -pin RTL_AND__83 O[31] -pin next_pc_i I0[31]
load net RTL_AND__83_n_1 -attr @rip(#000000) O[30] -pin RTL_AND__83 O[30] -pin next_pc_i I0[30]
load net RTL_AND__83_n_10 -attr @rip(#000000) O[21] -pin RTL_AND__83 O[21] -pin next_pc_i I0[21]
load net RTL_AND__83_n_11 -attr @rip(#000000) O[20] -pin RTL_AND__83 O[20] -pin next_pc_i I0[20]
load net RTL_AND__83_n_12 -attr @rip(#000000) O[19] -pin RTL_AND__83 O[19] -pin next_pc_i I0[19]
load net RTL_AND__83_n_13 -attr @rip(#000000) O[18] -pin RTL_AND__83 O[18] -pin next_pc_i I0[18]
load net RTL_AND__83_n_14 -attr @rip(#000000) O[17] -pin RTL_AND__83 O[17] -pin next_pc_i I0[17]
load net RTL_AND__83_n_15 -attr @rip(#000000) O[16] -pin RTL_AND__83 O[16] -pin next_pc_i I0[16]
load net RTL_AND__83_n_16 -attr @rip(#000000) O[15] -pin RTL_AND__83 O[15] -pin next_pc_i I0[15]
load net RTL_AND__83_n_17 -attr @rip(#000000) O[14] -pin RTL_AND__83 O[14] -pin next_pc_i I0[14]
load net RTL_AND__83_n_18 -attr @rip(#000000) O[13] -pin RTL_AND__83 O[13] -pin next_pc_i I0[13]
load net RTL_AND__83_n_19 -attr @rip(#000000) O[12] -pin RTL_AND__83 O[12] -pin next_pc_i I0[12]
load net RTL_AND__83_n_2 -attr @rip(#000000) O[29] -pin RTL_AND__83 O[29] -pin next_pc_i I0[29]
load net RTL_AND__83_n_20 -attr @rip(#000000) O[11] -pin RTL_AND__83 O[11] -pin next_pc_i I0[11]
load net RTL_AND__83_n_21 -attr @rip(#000000) O[10] -pin RTL_AND__83 O[10] -pin next_pc_i I0[10]
load net RTL_AND__83_n_22 -attr @rip(#000000) O[9] -pin RTL_AND__83 O[9] -pin next_pc_i I0[9]
load net RTL_AND__83_n_23 -attr @rip(#000000) O[8] -pin RTL_AND__83 O[8] -pin next_pc_i I0[8]
load net RTL_AND__83_n_24 -attr @rip(#000000) O[7] -pin RTL_AND__83 O[7] -pin next_pc_i I0[7]
load net RTL_AND__83_n_25 -attr @rip(#000000) O[6] -pin RTL_AND__83 O[6] -pin next_pc_i I0[6]
load net RTL_AND__83_n_26 -attr @rip(#000000) O[5] -pin RTL_AND__83 O[5] -pin next_pc_i I0[5]
load net RTL_AND__83_n_27 -attr @rip(#000000) O[4] -pin RTL_AND__83 O[4] -pin next_pc_i I0[4]
load net RTL_AND__83_n_28 -attr @rip(#000000) O[3] -pin RTL_AND__83 O[3] -pin next_pc_i I0[3]
load net RTL_AND__83_n_29 -attr @rip(#000000) O[2] -pin RTL_AND__83 O[2] -pin next_pc_i I0[2]
load net RTL_AND__83_n_3 -attr @rip(#000000) O[28] -pin RTL_AND__83 O[28] -pin next_pc_i I0[28]
load net RTL_AND__83_n_30 -attr @rip(#000000) O[1] -pin RTL_AND__83 O[1] -pin next_pc_i I0[1]
load net RTL_AND__83_n_31 -attr @rip(#000000) O[0] -pin RTL_AND__83 O[0] -pin next_pc_i I0[0]
load net RTL_AND__83_n_4 -attr @rip(#000000) O[27] -pin RTL_AND__83 O[27] -pin next_pc_i I0[27]
load net RTL_AND__83_n_5 -attr @rip(#000000) O[26] -pin RTL_AND__83 O[26] -pin next_pc_i I0[26]
load net RTL_AND__83_n_6 -attr @rip(#000000) O[25] -pin RTL_AND__83 O[25] -pin next_pc_i I0[25]
load net RTL_AND__83_n_7 -attr @rip(#000000) O[24] -pin RTL_AND__83 O[24] -pin next_pc_i I0[24]
load net RTL_AND__83_n_8 -attr @rip(#000000) O[23] -pin RTL_AND__83 O[23] -pin next_pc_i I0[23]
load net RTL_AND__83_n_9 -attr @rip(#000000) O[22] -pin RTL_AND__83 O[22] -pin next_pc_i I0[22]
load net RTL_AND__84_n_0 -pin RTL_AND__84 O -pin next_pc_i S
netloc RTL_AND__84_n_0 1 67 1 29510 6200n
load net RTL_AND__85_n_0 -pin RTL_AND__85 O -pin mem_la_read_i I1
netloc RTL_AND__85_n_0 1 69 1 31000 6980n
load net RTL_AND__86_n_0 -pin RTL_AND__86 O -pin mem_la_write_i I0
netloc RTL_AND__86_n_0 1 69 1 31200 6960n
load net RTL_AND__88_n_0 -pin RTL_AND__88 O -pin cpuregs_wrdata_i S1 -pin cpuregs_write_i S1
netloc RTL_AND__88_n_0 1 20 4 N 6190N N 6190 NJ 6190 NJ
load net RTL_AND__89_n_0 -pin RTL_AND__89 O -pin RTL_AND__90 I0
netloc RTL_AND__89_n_0 1 23 1 12820 6580n
load net RTL_AND__8_n_0 -pin RTL_AND__8 O -pin instr_rdinstrh_reg D
netloc RTL_AND__8_n_0 1 8 1 3220 240n
load net RTL_AND__90_n_0 -pin RTL_AND__90 O -pin cpuregs wen
netloc RTL_AND__90_n_0 1 24 1 13300 6510n
load net RTL_AND__9_n_0 -pin RTL_AND__9 O -pin instr_rdinstr_reg D
netloc RTL_AND__9_n_0 1 8 1 3260 800n
load net RTL_AND_n_0 -pin RTL_AND O -pin instr_jalr_reg D
netloc RTL_AND_n_0 1 5 1 N 4290
load net RTL_ARSHIFT__0_n_0 -attr @rip(#000000) O[31] -pin RTL_ARSHIFT__0 O[31] -pin reg_op1_i__1 I2[31]
load net RTL_ARSHIFT__0_n_1 -attr @rip(#000000) O[30] -pin RTL_ARSHIFT__0 O[30] -pin reg_op1_i__1 I2[30]
load net RTL_ARSHIFT__0_n_10 -attr @rip(#000000) O[21] -pin RTL_ARSHIFT__0 O[21] -pin reg_op1_i__1 I2[21]
load net RTL_ARSHIFT__0_n_11 -attr @rip(#000000) O[20] -pin RTL_ARSHIFT__0 O[20] -pin reg_op1_i__1 I2[20]
load net RTL_ARSHIFT__0_n_12 -attr @rip(#000000) O[19] -pin RTL_ARSHIFT__0 O[19] -pin reg_op1_i__1 I2[19]
load net RTL_ARSHIFT__0_n_13 -attr @rip(#000000) O[18] -pin RTL_ARSHIFT__0 O[18] -pin reg_op1_i__1 I2[18]
load net RTL_ARSHIFT__0_n_14 -attr @rip(#000000) O[17] -pin RTL_ARSHIFT__0 O[17] -pin reg_op1_i__1 I2[17]
load net RTL_ARSHIFT__0_n_15 -attr @rip(#000000) O[16] -pin RTL_ARSHIFT__0 O[16] -pin reg_op1_i__1 I2[16]
load net RTL_ARSHIFT__0_n_16 -attr @rip(#000000) O[15] -pin RTL_ARSHIFT__0 O[15] -pin reg_op1_i__1 I2[15]
load net RTL_ARSHIFT__0_n_17 -attr @rip(#000000) O[14] -pin RTL_ARSHIFT__0 O[14] -pin reg_op1_i__1 I2[14]
load net RTL_ARSHIFT__0_n_18 -attr @rip(#000000) O[13] -pin RTL_ARSHIFT__0 O[13] -pin reg_op1_i__1 I2[13]
load net RTL_ARSHIFT__0_n_19 -attr @rip(#000000) O[12] -pin RTL_ARSHIFT__0 O[12] -pin reg_op1_i__1 I2[12]
load net RTL_ARSHIFT__0_n_2 -attr @rip(#000000) O[29] -pin RTL_ARSHIFT__0 O[29] -pin reg_op1_i__1 I2[29]
load net RTL_ARSHIFT__0_n_20 -attr @rip(#000000) O[11] -pin RTL_ARSHIFT__0 O[11] -pin reg_op1_i__1 I2[11]
load net RTL_ARSHIFT__0_n_21 -attr @rip(#000000) O[10] -pin RTL_ARSHIFT__0 O[10] -pin reg_op1_i__1 I2[10]
load net RTL_ARSHIFT__0_n_22 -attr @rip(#000000) O[9] -pin RTL_ARSHIFT__0 O[9] -pin reg_op1_i__1 I2[9]
load net RTL_ARSHIFT__0_n_23 -attr @rip(#000000) O[8] -pin RTL_ARSHIFT__0 O[8] -pin reg_op1_i__1 I2[8]
load net RTL_ARSHIFT__0_n_24 -attr @rip(#000000) O[7] -pin RTL_ARSHIFT__0 O[7] -pin reg_op1_i__1 I2[7]
load net RTL_ARSHIFT__0_n_25 -attr @rip(#000000) O[6] -pin RTL_ARSHIFT__0 O[6] -pin reg_op1_i__1 I2[6]
load net RTL_ARSHIFT__0_n_26 -attr @rip(#000000) O[5] -pin RTL_ARSHIFT__0 O[5] -pin reg_op1_i__1 I2[5]
load net RTL_ARSHIFT__0_n_27 -attr @rip(#000000) O[4] -pin RTL_ARSHIFT__0 O[4] -pin reg_op1_i__1 I2[4]
load net RTL_ARSHIFT__0_n_28 -attr @rip(#000000) O[3] -pin RTL_ARSHIFT__0 O[3] -pin reg_op1_i__1 I2[3]
load net RTL_ARSHIFT__0_n_29 -attr @rip(#000000) O[2] -pin RTL_ARSHIFT__0 O[2] -pin reg_op1_i__1 I2[2]
load net RTL_ARSHIFT__0_n_3 -attr @rip(#000000) O[28] -pin RTL_ARSHIFT__0 O[28] -pin reg_op1_i__1 I2[28]
load net RTL_ARSHIFT__0_n_30 -attr @rip(#000000) O[1] -pin RTL_ARSHIFT__0 O[1] -pin reg_op1_i__1 I2[1]
load net RTL_ARSHIFT__0_n_31 -attr @rip(#000000) O[0] -pin RTL_ARSHIFT__0 O[0] -pin reg_op1_i__1 I2[0]
load net RTL_ARSHIFT__0_n_4 -attr @rip(#000000) O[27] -pin RTL_ARSHIFT__0 O[27] -pin reg_op1_i__1 I2[27]
load net RTL_ARSHIFT__0_n_5 -attr @rip(#000000) O[26] -pin RTL_ARSHIFT__0 O[26] -pin reg_op1_i__1 I2[26]
load net RTL_ARSHIFT__0_n_6 -attr @rip(#000000) O[25] -pin RTL_ARSHIFT__0 O[25] -pin reg_op1_i__1 I2[25]
load net RTL_ARSHIFT__0_n_7 -attr @rip(#000000) O[24] -pin RTL_ARSHIFT__0 O[24] -pin reg_op1_i__1 I2[24]
load net RTL_ARSHIFT__0_n_8 -attr @rip(#000000) O[23] -pin RTL_ARSHIFT__0 O[23] -pin reg_op1_i__1 I2[23]
load net RTL_ARSHIFT__0_n_9 -attr @rip(#000000) O[22] -pin RTL_ARSHIFT__0 O[22] -pin reg_op1_i__1 I2[22]
load net RTL_ARSHIFT_n_0 -attr @rip(#000000) O[31] -pin RTL_ARSHIFT O[31] -pin reg_op1_i__0 I2[31]
load net RTL_ARSHIFT_n_1 -attr @rip(#000000) O[30] -pin RTL_ARSHIFT O[30] -pin reg_op1_i__0 I2[30]
load net RTL_ARSHIFT_n_10 -attr @rip(#000000) O[21] -pin RTL_ARSHIFT O[21] -pin reg_op1_i__0 I2[21]
load net RTL_ARSHIFT_n_11 -attr @rip(#000000) O[20] -pin RTL_ARSHIFT O[20] -pin reg_op1_i__0 I2[20]
load net RTL_ARSHIFT_n_12 -attr @rip(#000000) O[19] -pin RTL_ARSHIFT O[19] -pin reg_op1_i__0 I2[19]
load net RTL_ARSHIFT_n_13 -attr @rip(#000000) O[18] -pin RTL_ARSHIFT O[18] -pin reg_op1_i__0 I2[18]
load net RTL_ARSHIFT_n_14 -attr @rip(#000000) O[17] -pin RTL_ARSHIFT O[17] -pin reg_op1_i__0 I2[17]
load net RTL_ARSHIFT_n_15 -attr @rip(#000000) O[16] -pin RTL_ARSHIFT O[16] -pin reg_op1_i__0 I2[16]
load net RTL_ARSHIFT_n_16 -attr @rip(#000000) O[15] -pin RTL_ARSHIFT O[15] -pin reg_op1_i__0 I2[15]
load net RTL_ARSHIFT_n_17 -attr @rip(#000000) O[14] -pin RTL_ARSHIFT O[14] -pin reg_op1_i__0 I2[14]
load net RTL_ARSHIFT_n_18 -attr @rip(#000000) O[13] -pin RTL_ARSHIFT O[13] -pin reg_op1_i__0 I2[13]
load net RTL_ARSHIFT_n_19 -attr @rip(#000000) O[12] -pin RTL_ARSHIFT O[12] -pin reg_op1_i__0 I2[12]
load net RTL_ARSHIFT_n_2 -attr @rip(#000000) O[29] -pin RTL_ARSHIFT O[29] -pin reg_op1_i__0 I2[29]
load net RTL_ARSHIFT_n_20 -attr @rip(#000000) O[11] -pin RTL_ARSHIFT O[11] -pin reg_op1_i__0 I2[11]
load net RTL_ARSHIFT_n_21 -attr @rip(#000000) O[10] -pin RTL_ARSHIFT O[10] -pin reg_op1_i__0 I2[10]
load net RTL_ARSHIFT_n_22 -attr @rip(#000000) O[9] -pin RTL_ARSHIFT O[9] -pin reg_op1_i__0 I2[9]
load net RTL_ARSHIFT_n_23 -attr @rip(#000000) O[8] -pin RTL_ARSHIFT O[8] -pin reg_op1_i__0 I2[8]
load net RTL_ARSHIFT_n_24 -attr @rip(#000000) O[7] -pin RTL_ARSHIFT O[7] -pin reg_op1_i__0 I2[7]
load net RTL_ARSHIFT_n_25 -attr @rip(#000000) O[6] -pin RTL_ARSHIFT O[6] -pin reg_op1_i__0 I2[6]
load net RTL_ARSHIFT_n_26 -attr @rip(#000000) O[5] -pin RTL_ARSHIFT O[5] -pin reg_op1_i__0 I2[5]
load net RTL_ARSHIFT_n_27 -attr @rip(#000000) O[4] -pin RTL_ARSHIFT O[4] -pin reg_op1_i__0 I2[4]
load net RTL_ARSHIFT_n_28 -attr @rip(#000000) O[3] -pin RTL_ARSHIFT O[3] -pin reg_op1_i__0 I2[3]
load net RTL_ARSHIFT_n_29 -attr @rip(#000000) O[2] -pin RTL_ARSHIFT O[2] -pin reg_op1_i__0 I2[2]
load net RTL_ARSHIFT_n_3 -attr @rip(#000000) O[28] -pin RTL_ARSHIFT O[28] -pin reg_op1_i__0 I2[28]
load net RTL_ARSHIFT_n_30 -attr @rip(#000000) O[1] -pin RTL_ARSHIFT O[1] -pin reg_op1_i__0 I2[1]
load net RTL_ARSHIFT_n_31 -attr @rip(#000000) O[0] -pin RTL_ARSHIFT O[0] -pin reg_op1_i__0 I2[0]
load net RTL_ARSHIFT_n_4 -attr @rip(#000000) O[27] -pin RTL_ARSHIFT O[27] -pin reg_op1_i__0 I2[27]
load net RTL_ARSHIFT_n_5 -attr @rip(#000000) O[26] -pin RTL_ARSHIFT O[26] -pin reg_op1_i__0 I2[26]
load net RTL_ARSHIFT_n_6 -attr @rip(#000000) O[25] -pin RTL_ARSHIFT O[25] -pin reg_op1_i__0 I2[25]
load net RTL_ARSHIFT_n_7 -attr @rip(#000000) O[24] -pin RTL_ARSHIFT O[24] -pin reg_op1_i__0 I2[24]
load net RTL_ARSHIFT_n_8 -attr @rip(#000000) O[23] -pin RTL_ARSHIFT O[23] -pin reg_op1_i__0 I2[23]
load net RTL_ARSHIFT_n_9 -attr @rip(#000000) O[22] -pin RTL_ARSHIFT O[22] -pin reg_op1_i__0 I2[22]
load net RTL_EQ__0_n_0 -pin RTL_AND I1 -pin RTL_EQ__0 O
netloc RTL_EQ__0_n_0 1 4 1 1080J 4300n
load net RTL_EQ__10_n_0 -pin RTL_AND__8 I1 -pin RTL_EQ__10 O
netloc RTL_EQ__10_n_0 1 7 1 2450 340n
load net RTL_EQ__11_n_0 -pin RTL_AND__9 I0 -pin RTL_EQ__11 O
netloc RTL_EQ__11_n_0 1 7 1 2450 720n
load net RTL_EQ__12_n_0 -pin RTL_AND__9 I1 -pin RTL_EQ__12 O
netloc RTL_EQ__12_n_0 1 7 1 N 810
load net RTL_EQ__13_n_0 -pin RTL_AND__10 I0 -pin RTL_EQ__13 O
netloc RTL_EQ__13_n_0 1 6 1 1960 2000n
load net RTL_EQ__14_n_0 -pin RTL_AND__10 I1 -pin RTL_EQ__14 O
netloc RTL_EQ__14_n_0 1 6 1 1940 2090n
load net RTL_EQ__15_n_0 -pin RTL_AND__11 I0 -pin RTL_EQ__15 O
netloc RTL_EQ__15_n_0 1 6 1 1920 2180n
load net RTL_EQ__16_n_0 -pin RTL_AND__11 I1 -pin RTL_EQ__16 O
netloc RTL_EQ__16_n_0 1 6 1 1900 2270n
load net RTL_EQ__17_n_0 -pin RTL_AND__12 I0 -pin RTL_EQ__17 O
netloc RTL_EQ__17_n_0 1 6 1 1800 2360n
load net RTL_EQ__18_n_0 -pin RTL_AND__12 I1 -pin RTL_EQ__18 O
netloc RTL_EQ__18_n_0 1 6 1 1740 2450n
load net RTL_EQ__19_n_0 -pin RTL_AND__13 I0 -pin RTL_EQ__19 O
netloc RTL_EQ__19_n_0 1 6 1 1720 2540n
load net RTL_EQ__1_n_0 -pin RTL_EQ__1 O -pin instr_jal_reg D
netloc RTL_EQ__1_n_0 1 55 1 25530J 6860n
load net RTL_EQ__20_n_0 -pin RTL_AND__13 I1 -pin RTL_EQ__20 O
netloc RTL_EQ__20_n_0 1 6 1 N 2630
load net RTL_EQ__21_n_0 -pin RTL_EQ__21 O -pin is_alu_reg_reg_reg D
netloc RTL_EQ__21_n_0 1 5 1 1370 4560n
load net RTL_EQ__22_n_0 -pin RTL_AND__14 I1 -pin RTL_EQ__22 O
netloc RTL_EQ__22_n_0 1 6 1 1720 2700n
load net RTL_EQ__23_n_0 -pin RTL_AND__15 I1 -pin RTL_EQ__23 O
netloc RTL_EQ__23_n_0 1 7 1 2450 900n
load net RTL_EQ__24_n_0 -pin RTL_AND__16 I1 -pin RTL_EQ__24 O
netloc RTL_EQ__24_n_0 1 6 1 1720 2770n
load net RTL_EQ__25_n_0 -pin RTL_AND__17 I1 -pin RTL_EQ__25 O
netloc RTL_EQ__25_n_0 1 7 1 N 990
load net RTL_EQ__26_n_0 -pin RTL_AND__18 I1 -pin RTL_EQ__26 O
netloc RTL_EQ__26_n_0 1 6 1 1720 2840n
load net RTL_EQ__27_n_0 -pin RTL_AND__19 I1 -pin RTL_EQ__27 O
netloc RTL_EQ__27_n_0 1 7 1 N 1090
load net RTL_EQ__28_n_0 -pin RTL_AND__20 I1 -pin RTL_EQ__28 O
netloc RTL_EQ__28_n_0 1 6 1 1740 2910n
load net RTL_EQ__29_n_0 -pin RTL_AND__21 I1 -pin RTL_EQ__29 O
netloc RTL_EQ__29_n_0 1 7 1 N 1180
load net RTL_EQ__2_n_0 -pin RTL_EQ__2 O -pin instr_auipc_reg D
netloc RTL_EQ__2_n_0 1 10 1 4570 4630n
load net RTL_EQ__30_n_0 -pin RTL_AND__22 I1 -pin RTL_EQ__30 O
netloc RTL_EQ__30_n_0 1 6 1 1720 2980n
load net RTL_EQ__31_n_0 -pin RTL_AND__23 I1 -pin RTL_EQ__31 O
netloc RTL_EQ__31_n_0 1 7 1 2450 1270n
load net RTL_EQ__32_n_0 -pin RTL_AND__24 I1 -pin RTL_EQ__32 O
netloc RTL_EQ__32_n_0 1 8 1 3520 3720n
load net RTL_EQ__33_n_0 -pin RTL_AND__25 I1 -pin RTL_EQ__33 O
netloc RTL_EQ__33_n_0 1 9 1 N 3790
load net RTL_EQ__34_n_0 -pin RTL_AND__26 I1 -pin RTL_EQ__34 O
netloc RTL_EQ__34_n_0 1 8 1 3540 3900n
load net RTL_EQ__35_n_0 -pin RTL_AND__27 I1 -pin RTL_EQ__35 O
netloc RTL_EQ__35_n_0 1 9 1 N 3970
load net RTL_EQ__36_n_0 -pin RTL_AND__28 I1 -pin RTL_EQ__36 O
netloc RTL_EQ__36_n_0 1 6 1 1820 3050n
load net RTL_EQ__37_n_0 -pin RTL_AND__29 I1 -pin RTL_EQ__37 O
netloc RTL_EQ__37_n_0 1 7 1 N 1360
load net RTL_EQ__38_n_0 -pin RTL_AND__30 I1 -pin RTL_EQ__38 O
netloc RTL_EQ__38_n_0 1 53 1 24670 5450n
load net RTL_EQ__39_n_0 -pin RTL_AND__31 I1 -pin RTL_EQ__39 O
netloc RTL_EQ__39_n_0 1 54 1 25060 5830n
load net RTL_EQ__3_n_0 -pin RTL_EQ__3 O -pin instr_lui_reg D
netloc RTL_EQ__3_n_0 1 10 1 4430 4730n
load net RTL_EQ__40_n_0 -pin RTL_AND__32 I1 -pin RTL_EQ__40 O
netloc RTL_EQ__40_n_0 1 53 1 N 5670
load net RTL_EQ__41_n_0 -pin RTL_AND__33 I1 -pin RTL_EQ__41 O
netloc RTL_EQ__41_n_0 1 54 1 25020 5940n
load net RTL_EQ__42_n_0 -pin RTL_AND__34 I1 -pin RTL_EQ__42 O
netloc RTL_EQ__42_n_0 1 6 1 1840 3120n
load net RTL_EQ__43_n_0 -pin RTL_AND__35 I1 -pin RTL_EQ__43 O
netloc RTL_EQ__43_n_0 1 7 1 N 1460
load net RTL_EQ__44_n_0 -pin RTL_AND__36 I1 -pin RTL_EQ__44 O
netloc RTL_EQ__44_n_0 1 6 1 1860 3190n
load net RTL_EQ__45_n_0 -pin RTL_AND__37 I1 -pin RTL_EQ__45 O
netloc RTL_EQ__45_n_0 1 7 1 2790 1550n
load net RTL_EQ__46_n_0 -pin RTL_AND__38 I1 -pin RTL_EQ__46 O
netloc RTL_EQ__46_n_0 1 6 1 1960 3260n
load net RTL_EQ__47_n_0 -pin RTL_AND__39 I1 -pin RTL_EQ__47 O
netloc RTL_EQ__47_n_0 1 7 1 2770 1640n
load net RTL_EQ__48_n_0 -pin RTL_AND__40 I1 -pin RTL_EQ__48 O
netloc RTL_EQ__48_n_0 1 7 1 2770 1760n
load net RTL_EQ__49_n_0 -pin RTL_AND__41 I1 -pin RTL_EQ__49 O
netloc RTL_EQ__49_n_0 1 7 1 N 1850
load net RTL_EQ__4_n_0 -pin RTL_EQ__4 O -pin is_alu_reg_imm_reg D
netloc RTL_EQ__4_n_0 1 5 1 1350 4430n
load net RTL_EQ__50_n_0 -pin RTL_AND__42 I1 -pin RTL_EQ__50 O
netloc RTL_EQ__50_n_0 1 7 1 2770 1940n
load net RTL_EQ__51_n_0 -pin RTL_AND__43 I1 -pin RTL_EQ__51 O
netloc RTL_EQ__51_n_0 1 9 1 N 6530
load net RTL_EQ__52_n_0 -pin RTL_AND__44 I1 -pin RTL_EQ__52 O
netloc RTL_EQ__52_n_0 1 9 1 N 6620
load net RTL_EQ__53_n_0 -pin RTL_AND__45 I1 -pin RTL_EQ__53 O
netloc RTL_EQ__53_n_0 1 54 1 25000 6060n
load net RTL_EQ__54_n_0 -pin RTL_AND__46 I1 -pin RTL_EQ__54 O
netloc RTL_EQ__54_n_0 1 7 1 2750 2030n
load net RTL_EQ__55_n_0 -pin RTL_AND__47 I1 -pin RTL_EQ__55 O
netloc RTL_EQ__55_n_0 1 7 1 2710 2120n
load net RTL_EQ__56_n_0 -pin RTL_AND__48 I1 -pin RTL_EQ__56 O
netloc RTL_EQ__56_n_0 1 7 1 2650 2210n
load net RTL_EQ__57_n_0 -pin RTL_AND__49 I1 -pin RTL_EQ__57 O
netloc RTL_EQ__57_n_0 1 7 1 2590 2310n
load net RTL_EQ__58_n_0 -pin RTL_AND__50 I1 -pin RTL_EQ__58 O
netloc RTL_EQ__58_n_0 1 7 1 N 3350
load net RTL_EQ__59_n_0 -pin RTL_AND__51 I1 -pin RTL_EQ__59 O
netloc RTL_EQ__59_n_0 1 7 1 N 3440
load net RTL_EQ__5_n_0 -pin RTL_EQ__5 O -pin is_lb_lh_lw_lbu_lhu_reg D
netloc RTL_EQ__5_n_0 1 5 1 1410 4680n
load net RTL_EQ__60_n_0 -pin RTL_AND__52 I1 -pin RTL_EQ__60 O
netloc RTL_EQ__60_n_0 1 7 1 2450 3510n
load net RTL_EQ__61_n_0 -pin RTL_AND__53 I1 -pin RTL_EQ__61 O
netloc RTL_EQ__61_n_0 1 7 1 2450 3580n
load net RTL_EQ__62_n_0 -pin RTL_AND__54 I1 -pin RTL_EQ__62 O
netloc RTL_EQ__62_n_0 1 7 1 2450 3650n
load net RTL_EQ__63_n_0 -pin RTL_AND__55 I1 -pin RTL_EQ__63 O
netloc RTL_EQ__63_n_0 1 9 1 N 6710
load net RTL_EQ__64_n_0 -pin RTL_AND__56 I1 -pin RTL_EQ__64 O
netloc RTL_EQ__64_n_0 1 7 1 2490 3720n
load net RTL_EQ__65_n_0 -pin RTL_AND__57 I1 -pin RTL_EQ__65 O
netloc RTL_EQ__65_n_0 1 9 1 N 6800
load net RTL_EQ__66_n_0 -pin RTL_AND__58 I1 -pin RTL_EQ__66 O
netloc RTL_EQ__66_n_0 1 7 1 2730 3790n
load net RTL_EQ__67_n_0 -pin RTL_AND__59 I1 -pin RTL_EQ__67 O
netloc RTL_EQ__67_n_0 1 7 1 2830 3860n
load net RTL_EQ__68_n_0 -pin RTL_AND__61 I0 -pin RTL_EQ__68 O
netloc RTL_EQ__68_n_0 1 10 1 4550 4720n
load net RTL_EQ__69_n_0 -pin RTL_AND__61 I1 -pin RTL_EQ__69 O
netloc RTL_EQ__69_n_0 1 10 1 4450 4740n
load net RTL_EQ__6_n_0 -pin RTL_EQ__6 O -pin is_beq_bne_blt_bge_bltu_bgeu_reg D
netloc RTL_EQ__6_n_0 1 6 1 1880 1910n
load net RTL_EQ__70_n_0 -pin RTL_AND__62 I0 -pin RTL_EQ__70 O
netloc RTL_EQ__70_n_0 1 10 1 4530 5010n
load net RTL_EQ__71_n_0 -pin RTL_AND__62 I1 -pin RTL_EQ__71 O
netloc RTL_EQ__71_n_0 1 10 1 N 5100
load net RTL_EQ__72_n_0 -pin RTL_AND__63 I0 -pin RTL_EQ__72 O
netloc RTL_EQ__72_n_0 1 10 1 4430 5280n
load net RTL_EQ__73_n_0 -pin RTL_AND__63 I1 -pin RTL_EQ__73 O
netloc RTL_EQ__73_n_0 1 10 1 4390 5370n
load net RTL_EQ__74_n_0 -attr @rip(#000000) 0 -pin RTL_EQ__74 O -pin RTL_REDUCTION_OR__5 I0[0]
load net RTL_EQ__75_n_0 -attr @rip(#000000) 1 -pin RTL_EQ__75 O -pin RTL_REDUCTION_OR__5 I0[1]
load net RTL_EQ__76_n_0 -attr @rip(#000000) 2 -pin RTL_EQ__76 O -pin RTL_REDUCTION_OR__5 I0[2]
load net RTL_EQ__77_n_0 -attr @rip(#000000) 3 -pin RTL_EQ__77 O -pin RTL_REDUCTION_OR__5 I0[3]
load net RTL_EQ__78_n_0 -attr @rip(#000000) 4 -pin RTL_EQ__78 O -pin RTL_REDUCTION_OR__5 I0[4]
load net RTL_EQ__79_n_0 -attr @rip(#000000) 5 -pin RTL_EQ__79 O -pin RTL_REDUCTION_OR__5 I0[5]
load net RTL_EQ__7_n_0 -pin RTL_AND__7 I0 -pin RTL_EQ__7 O
netloc RTL_EQ__7_n_0 1 7 1 2450 130n
load net RTL_EQ__80_n_0 -pin RTL_AND__68 I0 -pin RTL_EQ__80 O
netloc RTL_EQ__80_n_0 1 12 1 6140 5550n
load net RTL_EQ__81_n_0 -pin RTL_AND__68 I1 -pin RTL_EQ__81 O
netloc RTL_EQ__81_n_0 1 12 1 6160 5570n
load net RTL_EQ__82_n_0 -pin RTL_AND__69 I0 -pin RTL_EQ__82 O
netloc RTL_EQ__82_n_0 1 12 1 6160 5770n
load net RTL_EQ__83_n_0 -pin RTL_AND__69 I1 -pin RTL_EQ__83 O
netloc RTL_EQ__83_n_0 1 12 1 6080 5870n
load net RTL_EQ__84_n_0 -pin RTL_AND__70 I0 -pin RTL_EQ__84 O
netloc RTL_EQ__84_n_0 1 12 1 5980 5970n
load net RTL_EQ__85_n_0 -pin RTL_AND__70 I1 -pin RTL_EQ__85 O
netloc RTL_EQ__85_n_0 1 12 1 6160 6010n
load net RTL_EQ__86_n_0 -pin RTL_EQ__86 O -pin cpu_state_i__12 I5 -pin mem_do_rinst_i__8 I5 -pin reg_op1_i__4 S
netloc RTL_EQ__86_n_0 1 30 37 16450 5920 NJ 5920 NJ 5920 NJ 5920 NJ 5920 NJ 5920 NJ 5920 NJ 5920 NJ 5920 NJ 5920 NJ 5920 NJ 5920 NJ 5920 NJ 5920 NJ 5920 21550 5700 22060J 5520 NJ 5520 NJ 5520 NJ 5520 NJ 5520 NJ 5520 NJ 5520 24590J 5500 NJ 5500 NJ 5500 NJ 5500 NJ 5500 NJ 5500 NJ 5500 NJ 5500 NJ 5500 NJ 5500 NJ 5500 NJ 5500 NJ 5500 28840
load net RTL_EQ__88_n_0 -pin RTL_EQ__88 O -pin is_sb_sh_sw_reg D
netloc RTL_EQ__88_n_0 1 42 1 NJ 6770
load net RTL_EQ__89_n_0 -pin RTL_AND__76 I0 -pin RTL_EQ__89 O
netloc RTL_EQ__89_n_0 1 24 1 13260 4190n
load net RTL_EQ__8_n_0 -pin RTL_AND__7 I1 -pin RTL_EQ__8 O
netloc RTL_EQ__8_n_0 1 7 1 N 220
load net RTL_EQ__90_n_0 -pin RTL_AND__76 I1 -pin RTL_EQ__90 O
netloc RTL_EQ__90_n_0 1 24 1 N 4280
load net RTL_EQ__91_n_0 -pin RTL_AND__77 I1 -pin RTL_EQ__91 O
netloc RTL_EQ__91_n_0 1 25 1 NJ 4450
load net RTL_EQ__92_n_0 -pin RTL_AND__78 I0 -pin RTL_EQ__92 O
netloc RTL_EQ__92_n_0 1 28 1 15030 6700n
load net RTL_EQ__93_n_0 -pin RTL_AND__79 I0 -pin RTL_EQ__93 O
netloc RTL_EQ__93_n_0 1 28 1 14990 6800n
load net RTL_EQ__94_n_0 -pin RTL_AND__85 I0 -pin RTL_EQ__94 O
netloc RTL_EQ__94_n_0 1 68 1 30510 6970n
load net RTL_EQ__95_n_0 -pin RTL_AND__86 I1 -pin RTL_EQ__95 O
netloc RTL_EQ__95_n_0 1 68 1 30510 7090n
load net RTL_EQ__96_n_0 -pin RTL_EQ__96 O -pin cpuregs_write_i__0 S
netloc RTL_EQ__96_n_0 1 21 1 11990J 6580n
load net RTL_EQ__9_n_0 -pin RTL_AND__8 I0 -pin RTL_EQ__9 O
netloc RTL_EQ__9_n_0 1 7 1 N 320
load net RTL_EQ_n_0 -pin RTL_AND I0 -pin RTL_EQ O
netloc RTL_EQ_n_0 1 4 1 NJ 4280
load net RTL_GEQ_n_0 -pin RTL_GEQ O -pin reg_op1_i__2 S -pin reg_sh_i__0 S
netloc RTL_GEQ_n_0 1 26 42 14150 6390N 14570 5160 NJ 5160 NJ 5160 NJ 5160 NJ 5160 NJ 5160 NJ 5160 NJ 5160 NJ 5160 NJ 5160 NJ 5160 NJ 5160 NJ 5160 NJ 5160 NJ 5160 NJ 5160 20450J 5330 20730J 5350 NJ 5350 22060J 5340 NJ 5340 NJ 5340 NJ 5340 NJ 5340 NJ 5340 NJ 5340 NJ 5340 NJ 5340 NJ 5340 NJ 5340 NJ 5340 NJ 5340 NJ 5340 NJ 5340 NJ 5340 NJ 5340 NJ 5340 NJ 5340 NJ 5340 28920J 5270 29590J
load net RTL_INV__0_n_0 -pin RTL_INV__0 O -pin RTL_OR I0
netloc RTL_INV__0_n_0 1 8 1 NJ 7440
load net RTL_INV__10_n_0 -pin RTL_AND__6 I1 -pin RTL_INV__10 O
netloc RTL_INV__10_n_0 1 54 1 25020J 5730n
load net RTL_INV__11_n_0 -pin RTL_AND__60 I1 -pin RTL_INV__11 O
netloc RTL_INV__11_n_0 1 13 1 6890 4680n
load net RTL_INV__12_n_0 -pin RTL_AND__72 I1 -pin RTL_INV__12 O
netloc RTL_INV__12_n_0 1 19 1 11050 5980n
load net RTL_INV__13_n_0 -pin RTL_INV__13 O -pin alu_out_0_i I1
netloc RTL_INV__13_n_0 1 14 1 7970 3860n
load net RTL_INV__14_n_0 -pin RTL_INV__14 O -pin alu_out_0_i I2
netloc RTL_INV__14_n_0 1 14 1 7930 3940n
load net RTL_INV__15_n_0 -pin RTL_INV__15 O -pin alu_out_0_i I3
netloc RTL_INV__15_n_0 1 14 1 7870 4020n
load net RTL_INV__16_n_0 -pin RTL_AND__73 I0 -pin RTL_INV__16 O
netloc RTL_INV__16_n_0 1 43 1 20370 5660n
load net RTL_INV__17_n_0 -pin RTL_AND__73 I1 -pin RTL_INV__17 O
netloc RTL_INV__17_n_0 1 43 1 20490 5780n
load net RTL_INV__18_n_0 -pin RTL_AND__75 I0 -pin RTL_INV__18 O
netloc RTL_INV__18_n_0 1 59 1 26630 5760n
load net RTL_INV__19_n_0 -pin RTL_AND__75 I1 -pin RTL_INV__19 O
netloc RTL_INV__19_n_0 1 59 1 N 5830
load net RTL_INV__1_n_0 -pin RTL_INV__1 O -pin count_instr_reg[63:0] RST -pin cpu_state_i__13 S -pin cpu_state_i__4 S -pin decoder_pseudo_trigger_reg RST -pin decoder_trigger_i__6 S -pin eoi_i S -pin eoi_reg[31:0] RST -pin latched_branch_reg RST -pin latched_compr_i__0 S -pin latched_is_lb_reg RST -pin latched_is_lh_reg RST -pin latched_is_lu_reg RST -pin latched_rd_i__1 S -pin latched_stalu_reg RST -pin latched_store_reg RST -pin mem_do_prefetch_i__2 S -pin mem_do_rinst_i__9 S -pin mem_wordsize_i__5 S -pin pcpi_timeout_i S -pin pcpi_timeout_reg RST -pin pcpi_valid_reg RST -pin reg_next_pc_reg[31:0] RST -pin reg_op1_i__8 S -pin reg_op2_i__2 S -pin reg_pc_reg[31:0] RST -pin set_mem_do_rdata_i__1 S -pin set_mem_do_rinst_i__1 S -pin set_mem_do_wdata_i__1 S -pin trap_reg RST
netloc RTL_INV__1_n_0 1 5 65 NJ 6160N 2000 4480 2450J 4620 NJ 4620 3920J 4500 4430J 4250 5140J 4140N 5800 3810N 6910 5350N 7690J 5490 8760J 5620 9420 6420N 9970 6580N 10550 6330N 11050 6610N 11470 6760 11990 6700N 12410 5550 NJ 5550 NJ 5550 NJ 5550N 13990 5400N 14510 5470 14990J 5390 15700J 5510 NJ 5510 16880 6520N NJ 6520 17660J 6500 18000 6680N 18330 6520 NJ 6520 NJ 6520 NJ 6520 NJ 6520 NJ 6520 NJ 6520 NJ 6520 NJ 6520 NJ 6520 NJ 6520 22220 6390N NJ 6390 NJ 6390 NJ 6390 23410J 6380 23730J 6490 24220 6240N NJ 6240 NJ 6240 25430J 6370 NJ 6370 26000J 6310 NJ 6310 26650 6100N 26900 7570 NJ 7570 NJ 7570 NJ 7570 NJ 7570 NJ 7570 NJ 7570 NJ 7570N 30570 7400N 31120
load net RTL_INV__20_n_0 -pin RTL_INV__20 O -pin RTL_OR__24 I0
netloc RTL_INV__20_n_0 1 67 1 29610J 4850n
load net RTL_INV__21_n_0 -pin RTL_AND__88 I1 -pin RTL_INV__21 O
netloc RTL_INV__21_n_0 1 19 1 11010 6120n
load net RTL_INV__2_n_0 -pin RTL_INV__2 O -pin RTL_OR__0 I0
netloc RTL_INV__2_n_0 1 6 1 1880 4830n
load net RTL_INV__3_n_0 -pin RTL_INV__3 O -pin latched_is_lb_i__0 I0 -pin latched_is_lh_i__0 I0 -pin latched_is_lu_i__0 I0 -pin mem_wordsize_i__3 I0 -pin reg_op1_i__6 I0 -pin set_mem_do_rdata_i I0
netloc RTL_INV__3_n_0 1 3 64 760 7270 NJ 7270 NJ 7270 NJ 7270 NJ 7270 NJ 7270 3960 7440 NJ 7440 5320 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ 7770 NJ
load net RTL_INV__4_n_0 -pin RTL_INV__4 O -pin RTL_OR__1 I0
netloc RTL_INV__4_n_0 1 2 1 NJ 7380
load net RTL_INV__5_n_0 -pin RTL_INV__5 O -pin RTL_OR__3 I0
netloc RTL_INV__5_n_0 1 64 1 NJ 7310
load net RTL_INV__6_n_0 -pin RTL_INV__6 O -pin mem_state_i__4 I0[1] -pin mem_state_i__4 I0[0]
netloc RTL_INV__6_n_0 1 65 1 28300 7160n
load net RTL_INV__7_n_0 -pin RTL_INV__7 O -pin instr_add_reg RST -pin instr_addi_reg RST -pin instr_and_reg RST -pin instr_andi_reg RST -pin instr_beq_reg RST -pin instr_bge_reg RST -pin instr_bgeu_reg RST -pin instr_blt_reg RST -pin instr_bltu_reg RST -pin instr_bne_reg RST -pin instr_fence_reg RST -pin instr_or_reg RST -pin instr_ori_reg RST -pin instr_sll_reg RST -pin instr_slt_reg RST -pin instr_slti_reg RST -pin instr_sltiu_reg RST -pin instr_sltu_reg RST -pin instr_sra_reg RST -pin instr_srl_reg RST -pin instr_sub_reg RST -pin instr_xor_reg RST -pin instr_xori_reg RST -pin is_beq_bne_blt_bge_bltu_bgeu_reg RST -pin is_compare_i S
netloc RTL_INV__7_n_0 1 6 50 1980 4500N N 4500 3220 4440N NJ 4440 4470 6710N 5140 6530 NJ 6530 6630J 6560N 7910 6380 8840J 6070 NJ 6070 NJ 6070 NJ 6070 11070J 6040 11510J 5960 NJ 5960 12450J 6030 NJ 6030 NJ 6030 NJ 6030 NJ 6030 NJ 6030 NJ 6030 NJ 6030 16370J 5900 NJ 5900 NJ 5900 NJ 5900 NJ 5900 NJ 5900 NJ 5900 NJ 5900 NJ 5900 NJ 5900 NJ 5900 NJ 5900 NJ 5900 NJ 5900 NJ 5900 NJ 5900 NJ 5900 NJ 5900 NJ 5900 NJ 5900 NJ 5900 NJ 5900 NJ 5900 24590J 6150 NJ 6150 25490
load net RTL_INV__8_n_0 -pin RTL_AND__4 I0 -pin RTL_INV__8 O
netloc RTL_INV__8_n_0 1 28 1 14990 6460n
load net RTL_INV__9_n_0 -pin RTL_AND__5 I0 -pin RTL_INV__9 O
netloc RTL_INV__9_n_0 1 28 1 N 6610
load net RTL_INV_n_0 -pin RTL_INV O -pin mem_wordsize_i__2 I0 -pin reg_op1_i__5 I0 -pin set_mem_do_wdata_i I0
netloc RTL_INV_n_0 1 9 58 4080 7730 NJ 7730 NJ 7730 NJ 7730 NJ 7730 NJ 7730 NJ 7730 NJ 7730 NJ 7730 NJ 7730 NJ 7730 NJ 7730 NJ 7730 NJ 7730 NJ 7730 NJ 7730 NJ 7730 NJ 7730 NJ 7730 NJ 7730 NJ 7730 NJ 7730 NJ 7730 17280 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ 7650 NJ
load net RTL_LSHIFT__1_n_0 -attr @rip(#000000) O[31] -pin RTL_LSHIFT__1 O[31] -pin reg_op1_i__0 I0[31]
load net RTL_LSHIFT__1_n_1 -attr @rip(#000000) O[30] -pin RTL_LSHIFT__1 O[30] -pin reg_op1_i__0 I0[30]
load net RTL_LSHIFT__1_n_10 -attr @rip(#000000) O[21] -pin RTL_LSHIFT__1 O[21] -pin reg_op1_i__0 I0[21]
load net RTL_LSHIFT__1_n_11 -attr @rip(#000000) O[20] -pin RTL_LSHIFT__1 O[20] -pin reg_op1_i__0 I0[20]
load net RTL_LSHIFT__1_n_12 -attr @rip(#000000) O[19] -pin RTL_LSHIFT__1 O[19] -pin reg_op1_i__0 I0[19]
load net RTL_LSHIFT__1_n_13 -attr @rip(#000000) O[18] -pin RTL_LSHIFT__1 O[18] -pin reg_op1_i__0 I0[18]
load net RTL_LSHIFT__1_n_14 -attr @rip(#000000) O[17] -pin RTL_LSHIFT__1 O[17] -pin reg_op1_i__0 I0[17]
load net RTL_LSHIFT__1_n_15 -attr @rip(#000000) O[16] -pin RTL_LSHIFT__1 O[16] -pin reg_op1_i__0 I0[16]
load net RTL_LSHIFT__1_n_16 -attr @rip(#000000) O[15] -pin RTL_LSHIFT__1 O[15] -pin reg_op1_i__0 I0[15]
load net RTL_LSHIFT__1_n_17 -attr @rip(#000000) O[14] -pin RTL_LSHIFT__1 O[14] -pin reg_op1_i__0 I0[14]
load net RTL_LSHIFT__1_n_18 -attr @rip(#000000) O[13] -pin RTL_LSHIFT__1 O[13] -pin reg_op1_i__0 I0[13]
load net RTL_LSHIFT__1_n_19 -attr @rip(#000000) O[12] -pin RTL_LSHIFT__1 O[12] -pin reg_op1_i__0 I0[12]
load net RTL_LSHIFT__1_n_2 -attr @rip(#000000) O[29] -pin RTL_LSHIFT__1 O[29] -pin reg_op1_i__0 I0[29]
load net RTL_LSHIFT__1_n_20 -attr @rip(#000000) O[11] -pin RTL_LSHIFT__1 O[11] -pin reg_op1_i__0 I0[11]
load net RTL_LSHIFT__1_n_21 -attr @rip(#000000) O[10] -pin RTL_LSHIFT__1 O[10] -pin reg_op1_i__0 I0[10]
load net RTL_LSHIFT__1_n_22 -attr @rip(#000000) O[9] -pin RTL_LSHIFT__1 O[9] -pin reg_op1_i__0 I0[9]
load net RTL_LSHIFT__1_n_23 -attr @rip(#000000) O[8] -pin RTL_LSHIFT__1 O[8] -pin reg_op1_i__0 I0[8]
load net RTL_LSHIFT__1_n_24 -attr @rip(#000000) O[7] -pin RTL_LSHIFT__1 O[7] -pin reg_op1_i__0 I0[7]
load net RTL_LSHIFT__1_n_25 -attr @rip(#000000) O[6] -pin RTL_LSHIFT__1 O[6] -pin reg_op1_i__0 I0[6]
load net RTL_LSHIFT__1_n_26 -attr @rip(#000000) O[5] -pin RTL_LSHIFT__1 O[5] -pin reg_op1_i__0 I0[5]
load net RTL_LSHIFT__1_n_27 -attr @rip(#000000) O[4] -pin RTL_LSHIFT__1 O[4] -pin reg_op1_i__0 I0[4]
load net RTL_LSHIFT__1_n_28 -attr @rip(#000000) O[3] -pin RTL_LSHIFT__1 O[3] -pin reg_op1_i__0 I0[3]
load net RTL_LSHIFT__1_n_29 -attr @rip(#000000) O[2] -pin RTL_LSHIFT__1 O[2] -pin reg_op1_i__0 I0[2]
load net RTL_LSHIFT__1_n_3 -attr @rip(#000000) O[28] -pin RTL_LSHIFT__1 O[28] -pin reg_op1_i__0 I0[28]
load net RTL_LSHIFT__1_n_30 -attr @rip(#000000) O[1] -pin RTL_LSHIFT__1 O[1] -pin reg_op1_i__0 I0[1]
load net RTL_LSHIFT__1_n_31 -attr @rip(#000000) O[0] -pin RTL_LSHIFT__1 O[0] -pin reg_op1_i__0 I0[0]
load net RTL_LSHIFT__1_n_4 -attr @rip(#000000) O[27] -pin RTL_LSHIFT__1 O[27] -pin reg_op1_i__0 I0[27]
load net RTL_LSHIFT__1_n_5 -attr @rip(#000000) O[26] -pin RTL_LSHIFT__1 O[26] -pin reg_op1_i__0 I0[26]
load net RTL_LSHIFT__1_n_6 -attr @rip(#000000) O[25] -pin RTL_LSHIFT__1 O[25] -pin reg_op1_i__0 I0[25]
load net RTL_LSHIFT__1_n_7 -attr @rip(#000000) O[24] -pin RTL_LSHIFT__1 O[24] -pin reg_op1_i__0 I0[24]
load net RTL_LSHIFT__1_n_8 -attr @rip(#000000) O[23] -pin RTL_LSHIFT__1 O[23] -pin reg_op1_i__0 I0[23]
load net RTL_LSHIFT__1_n_9 -attr @rip(#000000) O[22] -pin RTL_LSHIFT__1 O[22] -pin reg_op1_i__0 I0[22]
load net RTL_LSHIFT__2_n_0 -attr @rip(#000000) O[31] -pin RTL_LSHIFT__2 O[31] -pin reg_op1_i__1 I0[31]
load net RTL_LSHIFT__2_n_1 -attr @rip(#000000) O[30] -pin RTL_LSHIFT__2 O[30] -pin reg_op1_i__1 I0[30]
load net RTL_LSHIFT__2_n_10 -attr @rip(#000000) O[21] -pin RTL_LSHIFT__2 O[21] -pin reg_op1_i__1 I0[21]
load net RTL_LSHIFT__2_n_11 -attr @rip(#000000) O[20] -pin RTL_LSHIFT__2 O[20] -pin reg_op1_i__1 I0[20]
load net RTL_LSHIFT__2_n_12 -attr @rip(#000000) O[19] -pin RTL_LSHIFT__2 O[19] -pin reg_op1_i__1 I0[19]
load net RTL_LSHIFT__2_n_13 -attr @rip(#000000) O[18] -pin RTL_LSHIFT__2 O[18] -pin reg_op1_i__1 I0[18]
load net RTL_LSHIFT__2_n_14 -attr @rip(#000000) O[17] -pin RTL_LSHIFT__2 O[17] -pin reg_op1_i__1 I0[17]
load net RTL_LSHIFT__2_n_15 -attr @rip(#000000) O[16] -pin RTL_LSHIFT__2 O[16] -pin reg_op1_i__1 I0[16]
load net RTL_LSHIFT__2_n_16 -attr @rip(#000000) O[15] -pin RTL_LSHIFT__2 O[15] -pin reg_op1_i__1 I0[15]
load net RTL_LSHIFT__2_n_17 -attr @rip(#000000) O[14] -pin RTL_LSHIFT__2 O[14] -pin reg_op1_i__1 I0[14]
load net RTL_LSHIFT__2_n_18 -attr @rip(#000000) O[13] -pin RTL_LSHIFT__2 O[13] -pin reg_op1_i__1 I0[13]
load net RTL_LSHIFT__2_n_19 -attr @rip(#000000) O[12] -pin RTL_LSHIFT__2 O[12] -pin reg_op1_i__1 I0[12]
load net RTL_LSHIFT__2_n_2 -attr @rip(#000000) O[29] -pin RTL_LSHIFT__2 O[29] -pin reg_op1_i__1 I0[29]
load net RTL_LSHIFT__2_n_20 -attr @rip(#000000) O[11] -pin RTL_LSHIFT__2 O[11] -pin reg_op1_i__1 I0[11]
load net RTL_LSHIFT__2_n_21 -attr @rip(#000000) O[10] -pin RTL_LSHIFT__2 O[10] -pin reg_op1_i__1 I0[10]
load net RTL_LSHIFT__2_n_22 -attr @rip(#000000) O[9] -pin RTL_LSHIFT__2 O[9] -pin reg_op1_i__1 I0[9]
load net RTL_LSHIFT__2_n_23 -attr @rip(#000000) O[8] -pin RTL_LSHIFT__2 O[8] -pin reg_op1_i__1 I0[8]
load net RTL_LSHIFT__2_n_24 -attr @rip(#000000) O[7] -pin RTL_LSHIFT__2 O[7] -pin reg_op1_i__1 I0[7]
load net RTL_LSHIFT__2_n_25 -attr @rip(#000000) O[6] -pin RTL_LSHIFT__2 O[6] -pin reg_op1_i__1 I0[6]
load net RTL_LSHIFT__2_n_26 -attr @rip(#000000) O[5] -pin RTL_LSHIFT__2 O[5] -pin reg_op1_i__1 I0[5]
load net RTL_LSHIFT__2_n_27 -attr @rip(#000000) O[4] -pin RTL_LSHIFT__2 O[4] -pin reg_op1_i__1 I0[4]
load net RTL_LSHIFT__2_n_28 -attr @rip(#000000) O[3] -pin RTL_LSHIFT__2 O[3] -pin reg_op1_i__1 I0[3]
load net RTL_LSHIFT__2_n_29 -attr @rip(#000000) O[2] -pin RTL_LSHIFT__2 O[2] -pin reg_op1_i__1 I0[2]
load net RTL_LSHIFT__2_n_3 -attr @rip(#000000) O[28] -pin RTL_LSHIFT__2 O[28] -pin reg_op1_i__1 I0[28]
load net RTL_LSHIFT__2_n_30 -attr @rip(#000000) O[1] -pin RTL_LSHIFT__2 O[1] -pin reg_op1_i__1 I0[1]
load net RTL_LSHIFT__2_n_31 -attr @rip(#000000) O[0] -pin RTL_LSHIFT__2 O[0] -pin reg_op1_i__1 I0[0]
load net RTL_LSHIFT__2_n_4 -attr @rip(#000000) O[27] -pin RTL_LSHIFT__2 O[27] -pin reg_op1_i__1 I0[27]
load net RTL_LSHIFT__2_n_5 -attr @rip(#000000) O[26] -pin RTL_LSHIFT__2 O[26] -pin reg_op1_i__1 I0[26]
load net RTL_LSHIFT__2_n_6 -attr @rip(#000000) O[25] -pin RTL_LSHIFT__2 O[25] -pin reg_op1_i__1 I0[25]
load net RTL_LSHIFT__2_n_7 -attr @rip(#000000) O[24] -pin RTL_LSHIFT__2 O[24] -pin reg_op1_i__1 I0[24]
load net RTL_LSHIFT__2_n_8 -attr @rip(#000000) O[23] -pin RTL_LSHIFT__2 O[23] -pin reg_op1_i__1 I0[23]
load net RTL_LSHIFT__2_n_9 -attr @rip(#000000) O[22] -pin RTL_LSHIFT__2 O[22] -pin reg_op1_i__1 I0[22]
load net RTL_LSHIFT__3_n_0 -attr @rip(#000000) O[3] -pin RTL_LSHIFT__3 O[3] -pin mem_la_wstrb_i I2[3]
load net RTL_LSHIFT__3_n_1 -attr @rip(#000000) O[2] -pin RTL_LSHIFT__3 O[2] -pin mem_la_wstrb_i I2[2]
load net RTL_LSHIFT__3_n_2 -attr @rip(#000000) O[1] -pin RTL_LSHIFT__3 O[1] -pin mem_la_wstrb_i I2[1]
load net RTL_LSHIFT__3_n_3 -attr @rip(#000000) O[0] -pin RTL_LSHIFT__3 O[0] -pin mem_la_wstrb_i I2[0]
load net RTL_LSHIFT_n_0 -attr @rip(#000000) O[31] -pin RTL_LSHIFT O[31] -pin decoded_imm_i I1[31]
load net RTL_LSHIFT_n_1 -attr @rip(#000000) O[30] -pin RTL_LSHIFT O[30] -pin decoded_imm_i I1[30]
load net RTL_LSHIFT_n_10 -attr @rip(#000000) O[21] -pin RTL_LSHIFT O[21] -pin decoded_imm_i I1[21]
load net RTL_LSHIFT_n_11 -attr @rip(#000000) O[20] -pin RTL_LSHIFT O[20] -pin decoded_imm_i I1[20]
load net RTL_LSHIFT_n_12 -attr @rip(#000000) O[19] -pin RTL_LSHIFT O[19] -pin decoded_imm_i I1[19]
load net RTL_LSHIFT_n_13 -attr @rip(#000000) O[18] -pin RTL_LSHIFT O[18] -pin decoded_imm_i I1[18]
load net RTL_LSHIFT_n_14 -attr @rip(#000000) O[17] -pin RTL_LSHIFT O[17] -pin decoded_imm_i I1[17]
load net RTL_LSHIFT_n_15 -attr @rip(#000000) O[16] -pin RTL_LSHIFT O[16] -pin decoded_imm_i I1[16]
load net RTL_LSHIFT_n_16 -attr @rip(#000000) O[15] -pin RTL_LSHIFT O[15] -pin decoded_imm_i I1[15]
load net RTL_LSHIFT_n_17 -attr @rip(#000000) O[14] -pin RTL_LSHIFT O[14] -pin decoded_imm_i I1[14]
load net RTL_LSHIFT_n_18 -attr @rip(#000000) O[13] -pin RTL_LSHIFT O[13] -pin decoded_imm_i I1[13]
load net RTL_LSHIFT_n_19 -attr @rip(#000000) O[12] -pin RTL_LSHIFT O[12] -pin decoded_imm_i I1[12]
load net RTL_LSHIFT_n_2 -attr @rip(#000000) O[29] -pin RTL_LSHIFT O[29] -pin decoded_imm_i I1[29]
load net RTL_LSHIFT_n_20 -attr @rip(#000000) O[11] -pin RTL_LSHIFT O[11] -pin decoded_imm_i I1[11]
load net RTL_LSHIFT_n_21 -attr @rip(#000000) O[10] -pin RTL_LSHIFT O[10] -pin decoded_imm_i I1[10]
load net RTL_LSHIFT_n_22 -attr @rip(#000000) O[9] -pin RTL_LSHIFT O[9] -pin decoded_imm_i I1[9]
load net RTL_LSHIFT_n_23 -attr @rip(#000000) O[8] -pin RTL_LSHIFT O[8] -pin decoded_imm_i I1[8]
load net RTL_LSHIFT_n_24 -attr @rip(#000000) O[7] -pin RTL_LSHIFT O[7] -pin decoded_imm_i I1[7]
load net RTL_LSHIFT_n_25 -attr @rip(#000000) O[6] -pin RTL_LSHIFT O[6] -pin decoded_imm_i I1[6]
load net RTL_LSHIFT_n_26 -attr @rip(#000000) O[5] -pin RTL_LSHIFT O[5] -pin decoded_imm_i I1[5]
load net RTL_LSHIFT_n_27 -attr @rip(#000000) O[4] -pin RTL_LSHIFT O[4] -pin decoded_imm_i I1[4]
load net RTL_LSHIFT_n_28 -attr @rip(#000000) O[3] -pin RTL_LSHIFT O[3] -pin decoded_imm_i I1[3]
load net RTL_LSHIFT_n_29 -attr @rip(#000000) O[2] -pin RTL_LSHIFT O[2] -pin decoded_imm_i I1[2]
load net RTL_LSHIFT_n_3 -attr @rip(#000000) O[28] -pin RTL_LSHIFT O[28] -pin decoded_imm_i I1[28]
load net RTL_LSHIFT_n_30 -attr @rip(#000000) O[1] -pin RTL_LSHIFT O[1] -pin decoded_imm_i I1[1]
load net RTL_LSHIFT_n_31 -attr @rip(#000000) O[0] -pin RTL_LSHIFT O[0] -pin decoded_imm_i I1[0]
load net RTL_LSHIFT_n_4 -attr @rip(#000000) O[27] -pin RTL_LSHIFT O[27] -pin decoded_imm_i I1[27]
load net RTL_LSHIFT_n_5 -attr @rip(#000000) O[26] -pin RTL_LSHIFT O[26] -pin decoded_imm_i I1[26]
load net RTL_LSHIFT_n_6 -attr @rip(#000000) O[25] -pin RTL_LSHIFT O[25] -pin decoded_imm_i I1[25]
load net RTL_LSHIFT_n_7 -attr @rip(#000000) O[24] -pin RTL_LSHIFT O[24] -pin decoded_imm_i I1[24]
load net RTL_LSHIFT_n_8 -attr @rip(#000000) O[23] -pin RTL_LSHIFT O[23] -pin decoded_imm_i I1[23]
load net RTL_LSHIFT_n_9 -attr @rip(#000000) O[22] -pin RTL_LSHIFT O[22] -pin decoded_imm_i I1[22]
load net RTL_MINUS_n_0 -attr @rip(#000000) O[31] -pin RTL_ADD I1[31] -pin RTL_MINUS O[31]
load net RTL_MINUS_n_1 -attr @rip(#000000) O[30] -pin RTL_ADD I1[30] -pin RTL_MINUS O[30]
load net RTL_MINUS_n_10 -attr @rip(#000000) O[21] -pin RTL_ADD I1[21] -pin RTL_MINUS O[21]
load net RTL_MINUS_n_11 -attr @rip(#000000) O[20] -pin RTL_ADD I1[20] -pin RTL_MINUS O[20]
load net RTL_MINUS_n_12 -attr @rip(#000000) O[19] -pin RTL_ADD I1[19] -pin RTL_MINUS O[19]
load net RTL_MINUS_n_13 -attr @rip(#000000) O[18] -pin RTL_ADD I1[18] -pin RTL_MINUS O[18]
load net RTL_MINUS_n_14 -attr @rip(#000000) O[17] -pin RTL_ADD I1[17] -pin RTL_MINUS O[17]
load net RTL_MINUS_n_15 -attr @rip(#000000) O[16] -pin RTL_ADD I1[16] -pin RTL_MINUS O[16]
load net RTL_MINUS_n_16 -attr @rip(#000000) O[15] -pin RTL_ADD I1[15] -pin RTL_MINUS O[15]
load net RTL_MINUS_n_17 -attr @rip(#000000) O[14] -pin RTL_ADD I1[14] -pin RTL_MINUS O[14]
load net RTL_MINUS_n_18 -attr @rip(#000000) O[13] -pin RTL_ADD I1[13] -pin RTL_MINUS O[13]
load net RTL_MINUS_n_19 -attr @rip(#000000) O[12] -pin RTL_ADD I1[12] -pin RTL_MINUS O[12]
load net RTL_MINUS_n_2 -attr @rip(#000000) O[29] -pin RTL_ADD I1[29] -pin RTL_MINUS O[29]
load net RTL_MINUS_n_20 -attr @rip(#000000) O[11] -pin RTL_ADD I1[11] -pin RTL_MINUS O[11]
load net RTL_MINUS_n_21 -attr @rip(#000000) O[10] -pin RTL_ADD I1[10] -pin RTL_MINUS O[10]
load net RTL_MINUS_n_22 -attr @rip(#000000) O[9] -pin RTL_ADD I1[9] -pin RTL_MINUS O[9]
load net RTL_MINUS_n_23 -attr @rip(#000000) O[8] -pin RTL_ADD I1[8] -pin RTL_MINUS O[8]
load net RTL_MINUS_n_24 -attr @rip(#000000) O[7] -pin RTL_ADD I1[7] -pin RTL_MINUS O[7]
load net RTL_MINUS_n_25 -attr @rip(#000000) O[6] -pin RTL_ADD I1[6] -pin RTL_MINUS O[6]
load net RTL_MINUS_n_26 -attr @rip(#000000) O[5] -pin RTL_ADD I1[5] -pin RTL_MINUS O[5]
load net RTL_MINUS_n_27 -attr @rip(#000000) O[4] -pin RTL_ADD I1[4] -pin RTL_MINUS O[4]
load net RTL_MINUS_n_28 -attr @rip(#000000) O[3] -pin RTL_ADD I1[3] -pin RTL_MINUS O[3]
load net RTL_MINUS_n_29 -attr @rip(#000000) O[2] -pin RTL_ADD I1[2] -pin RTL_MINUS O[2]
load net RTL_MINUS_n_3 -attr @rip(#000000) O[28] -pin RTL_ADD I1[28] -pin RTL_MINUS O[28]
load net RTL_MINUS_n_30 -attr @rip(#000000) O[1] -pin RTL_ADD I1[1] -pin RTL_MINUS O[1]
load net RTL_MINUS_n_31 -attr @rip(#000000) O[0] -pin RTL_ADD I1[0] -pin RTL_MINUS O[0]
load net RTL_MINUS_n_4 -attr @rip(#000000) O[27] -pin RTL_ADD I1[27] -pin RTL_MINUS O[27]
load net RTL_MINUS_n_5 -attr @rip(#000000) O[26] -pin RTL_ADD I1[26] -pin RTL_MINUS O[26]
load net RTL_MINUS_n_6 -attr @rip(#000000) O[25] -pin RTL_ADD I1[25] -pin RTL_MINUS O[25]
load net RTL_MINUS_n_7 -attr @rip(#000000) O[24] -pin RTL_ADD I1[24] -pin RTL_MINUS O[24]
load net RTL_MINUS_n_8 -attr @rip(#000000) O[23] -pin RTL_ADD I1[23] -pin RTL_MINUS O[23]
load net RTL_MINUS_n_9 -attr @rip(#000000) O[22] -pin RTL_ADD I1[22] -pin RTL_MINUS O[22]
load net RTL_MUX__10_n_0 -attr @rip(#000000) O[31] -pin RTL_MUX__10 O[31] -pin cpuregs_wrdata_i I1[31]
load net RTL_MUX__10_n_1 -attr @rip(#000000) O[30] -pin RTL_MUX__10 O[30] -pin cpuregs_wrdata_i I1[30]
load net RTL_MUX__10_n_10 -attr @rip(#000000) O[21] -pin RTL_MUX__10 O[21] -pin cpuregs_wrdata_i I1[21]
load net RTL_MUX__10_n_11 -attr @rip(#000000) O[20] -pin RTL_MUX__10 O[20] -pin cpuregs_wrdata_i I1[20]
load net RTL_MUX__10_n_12 -attr @rip(#000000) O[19] -pin RTL_MUX__10 O[19] -pin cpuregs_wrdata_i I1[19]
load net RTL_MUX__10_n_13 -attr @rip(#000000) O[18] -pin RTL_MUX__10 O[18] -pin cpuregs_wrdata_i I1[18]
load net RTL_MUX__10_n_14 -attr @rip(#000000) O[17] -pin RTL_MUX__10 O[17] -pin cpuregs_wrdata_i I1[17]
load net RTL_MUX__10_n_15 -attr @rip(#000000) O[16] -pin RTL_MUX__10 O[16] -pin cpuregs_wrdata_i I1[16]
load net RTL_MUX__10_n_16 -attr @rip(#000000) O[15] -pin RTL_MUX__10 O[15] -pin cpuregs_wrdata_i I1[15]
load net RTL_MUX__10_n_17 -attr @rip(#000000) O[14] -pin RTL_MUX__10 O[14] -pin cpuregs_wrdata_i I1[14]
load net RTL_MUX__10_n_18 -attr @rip(#000000) O[13] -pin RTL_MUX__10 O[13] -pin cpuregs_wrdata_i I1[13]
load net RTL_MUX__10_n_19 -attr @rip(#000000) O[12] -pin RTL_MUX__10 O[12] -pin cpuregs_wrdata_i I1[12]
load net RTL_MUX__10_n_2 -attr @rip(#000000) O[29] -pin RTL_MUX__10 O[29] -pin cpuregs_wrdata_i I1[29]
load net RTL_MUX__10_n_20 -attr @rip(#000000) O[11] -pin RTL_MUX__10 O[11] -pin cpuregs_wrdata_i I1[11]
load net RTL_MUX__10_n_21 -attr @rip(#000000) O[10] -pin RTL_MUX__10 O[10] -pin cpuregs_wrdata_i I1[10]
load net RTL_MUX__10_n_22 -attr @rip(#000000) O[9] -pin RTL_MUX__10 O[9] -pin cpuregs_wrdata_i I1[9]
load net RTL_MUX__10_n_23 -attr @rip(#000000) O[8] -pin RTL_MUX__10 O[8] -pin cpuregs_wrdata_i I1[8]
load net RTL_MUX__10_n_24 -attr @rip(#000000) O[7] -pin RTL_MUX__10 O[7] -pin cpuregs_wrdata_i I1[7]
load net RTL_MUX__10_n_25 -attr @rip(#000000) O[6] -pin RTL_MUX__10 O[6] -pin cpuregs_wrdata_i I1[6]
load net RTL_MUX__10_n_26 -attr @rip(#000000) O[5] -pin RTL_MUX__10 O[5] -pin cpuregs_wrdata_i I1[5]
load net RTL_MUX__10_n_27 -attr @rip(#000000) O[4] -pin RTL_MUX__10 O[4] -pin cpuregs_wrdata_i I1[4]
load net RTL_MUX__10_n_28 -attr @rip(#000000) O[3] -pin RTL_MUX__10 O[3] -pin cpuregs_wrdata_i I1[3]
load net RTL_MUX__10_n_29 -attr @rip(#000000) O[2] -pin RTL_MUX__10 O[2] -pin cpuregs_wrdata_i I1[2]
load net RTL_MUX__10_n_3 -attr @rip(#000000) O[28] -pin RTL_MUX__10 O[28] -pin cpuregs_wrdata_i I1[28]
load net RTL_MUX__10_n_30 -attr @rip(#000000) O[1] -pin RTL_MUX__10 O[1] -pin cpuregs_wrdata_i I1[1]
load net RTL_MUX__10_n_31 -attr @rip(#000000) O[0] -pin RTL_MUX__10 O[0] -pin cpuregs_wrdata_i I1[0]
load net RTL_MUX__10_n_4 -attr @rip(#000000) O[27] -pin RTL_MUX__10 O[27] -pin cpuregs_wrdata_i I1[27]
load net RTL_MUX__10_n_5 -attr @rip(#000000) O[26] -pin RTL_MUX__10 O[26] -pin cpuregs_wrdata_i I1[26]
load net RTL_MUX__10_n_6 -attr @rip(#000000) O[25] -pin RTL_MUX__10 O[25] -pin cpuregs_wrdata_i I1[25]
load net RTL_MUX__10_n_7 -attr @rip(#000000) O[24] -pin RTL_MUX__10 O[24] -pin cpuregs_wrdata_i I1[24]
load net RTL_MUX__10_n_8 -attr @rip(#000000) O[23] -pin RTL_MUX__10 O[23] -pin cpuregs_wrdata_i I1[23]
load net RTL_MUX__10_n_9 -attr @rip(#000000) O[22] -pin RTL_MUX__10 O[22] -pin cpuregs_wrdata_i I1[22]
load net RTL_MUX__2_n_0 -attr @rip(#000000) O[63] -pin RTL_MUX__2 O[63] -pin count_cycle_reg[63:0] RST[63]
load net RTL_MUX__2_n_1 -attr @rip(#000000) O[62] -pin RTL_MUX__2 O[62] -pin count_cycle_reg[63:0] RST[62]
load net RTL_MUX__2_n_10 -attr @rip(#000000) O[53] -pin RTL_MUX__2 O[53] -pin count_cycle_reg[63:0] RST[53]
load net RTL_MUX__2_n_11 -attr @rip(#000000) O[52] -pin RTL_MUX__2 O[52] -pin count_cycle_reg[63:0] RST[52]
load net RTL_MUX__2_n_12 -attr @rip(#000000) O[51] -pin RTL_MUX__2 O[51] -pin count_cycle_reg[63:0] RST[51]
load net RTL_MUX__2_n_13 -attr @rip(#000000) O[50] -pin RTL_MUX__2 O[50] -pin count_cycle_reg[63:0] RST[50]
load net RTL_MUX__2_n_14 -attr @rip(#000000) O[49] -pin RTL_MUX__2 O[49] -pin count_cycle_reg[63:0] RST[49]
load net RTL_MUX__2_n_15 -attr @rip(#000000) O[48] -pin RTL_MUX__2 O[48] -pin count_cycle_reg[63:0] RST[48]
load net RTL_MUX__2_n_16 -attr @rip(#000000) O[47] -pin RTL_MUX__2 O[47] -pin count_cycle_reg[63:0] RST[47]
load net RTL_MUX__2_n_17 -attr @rip(#000000) O[46] -pin RTL_MUX__2 O[46] -pin count_cycle_reg[63:0] RST[46]
load net RTL_MUX__2_n_18 -attr @rip(#000000) O[45] -pin RTL_MUX__2 O[45] -pin count_cycle_reg[63:0] RST[45]
load net RTL_MUX__2_n_19 -attr @rip(#000000) O[44] -pin RTL_MUX__2 O[44] -pin count_cycle_reg[63:0] RST[44]
load net RTL_MUX__2_n_2 -attr @rip(#000000) O[61] -pin RTL_MUX__2 O[61] -pin count_cycle_reg[63:0] RST[61]
load net RTL_MUX__2_n_20 -attr @rip(#000000) O[43] -pin RTL_MUX__2 O[43] -pin count_cycle_reg[63:0] RST[43]
load net RTL_MUX__2_n_21 -attr @rip(#000000) O[42] -pin RTL_MUX__2 O[42] -pin count_cycle_reg[63:0] RST[42]
load net RTL_MUX__2_n_22 -attr @rip(#000000) O[41] -pin RTL_MUX__2 O[41] -pin count_cycle_reg[63:0] RST[41]
load net RTL_MUX__2_n_23 -attr @rip(#000000) O[40] -pin RTL_MUX__2 O[40] -pin count_cycle_reg[63:0] RST[40]
load net RTL_MUX__2_n_24 -attr @rip(#000000) O[39] -pin RTL_MUX__2 O[39] -pin count_cycle_reg[63:0] RST[39]
load net RTL_MUX__2_n_25 -attr @rip(#000000) O[38] -pin RTL_MUX__2 O[38] -pin count_cycle_reg[63:0] RST[38]
load net RTL_MUX__2_n_26 -attr @rip(#000000) O[37] -pin RTL_MUX__2 O[37] -pin count_cycle_reg[63:0] RST[37]
load net RTL_MUX__2_n_27 -attr @rip(#000000) O[36] -pin RTL_MUX__2 O[36] -pin count_cycle_reg[63:0] RST[36]
load net RTL_MUX__2_n_28 -attr @rip(#000000) O[35] -pin RTL_MUX__2 O[35] -pin count_cycle_reg[63:0] RST[35]
load net RTL_MUX__2_n_29 -attr @rip(#000000) O[34] -pin RTL_MUX__2 O[34] -pin count_cycle_reg[63:0] RST[34]
load net RTL_MUX__2_n_3 -attr @rip(#000000) O[60] -pin RTL_MUX__2 O[60] -pin count_cycle_reg[63:0] RST[60]
load net RTL_MUX__2_n_30 -attr @rip(#000000) O[33] -pin RTL_MUX__2 O[33] -pin count_cycle_reg[63:0] RST[33]
load net RTL_MUX__2_n_31 -attr @rip(#000000) O[32] -pin RTL_MUX__2 O[32] -pin count_cycle_reg[63:0] RST[32]
load net RTL_MUX__2_n_32 -attr @rip(#000000) O[31] -pin RTL_MUX__2 O[31] -pin count_cycle_reg[63:0] RST[31]
load net RTL_MUX__2_n_33 -attr @rip(#000000) O[30] -pin RTL_MUX__2 O[30] -pin count_cycle_reg[63:0] RST[30]
load net RTL_MUX__2_n_34 -attr @rip(#000000) O[29] -pin RTL_MUX__2 O[29] -pin count_cycle_reg[63:0] RST[29]
load net RTL_MUX__2_n_35 -attr @rip(#000000) O[28] -pin RTL_MUX__2 O[28] -pin count_cycle_reg[63:0] RST[28]
load net RTL_MUX__2_n_36 -attr @rip(#000000) O[27] -pin RTL_MUX__2 O[27] -pin count_cycle_reg[63:0] RST[27]
load net RTL_MUX__2_n_37 -attr @rip(#000000) O[26] -pin RTL_MUX__2 O[26] -pin count_cycle_reg[63:0] RST[26]
load net RTL_MUX__2_n_38 -attr @rip(#000000) O[25] -pin RTL_MUX__2 O[25] -pin count_cycle_reg[63:0] RST[25]
load net RTL_MUX__2_n_39 -attr @rip(#000000) O[24] -pin RTL_MUX__2 O[24] -pin count_cycle_reg[63:0] RST[24]
load net RTL_MUX__2_n_4 -attr @rip(#000000) O[59] -pin RTL_MUX__2 O[59] -pin count_cycle_reg[63:0] RST[59]
load net RTL_MUX__2_n_40 -attr @rip(#000000) O[23] -pin RTL_MUX__2 O[23] -pin count_cycle_reg[63:0] RST[23]
load net RTL_MUX__2_n_41 -attr @rip(#000000) O[22] -pin RTL_MUX__2 O[22] -pin count_cycle_reg[63:0] RST[22]
load net RTL_MUX__2_n_42 -attr @rip(#000000) O[21] -pin RTL_MUX__2 O[21] -pin count_cycle_reg[63:0] RST[21]
load net RTL_MUX__2_n_43 -attr @rip(#000000) O[20] -pin RTL_MUX__2 O[20] -pin count_cycle_reg[63:0] RST[20]
load net RTL_MUX__2_n_44 -attr @rip(#000000) O[19] -pin RTL_MUX__2 O[19] -pin count_cycle_reg[63:0] RST[19]
load net RTL_MUX__2_n_45 -attr @rip(#000000) O[18] -pin RTL_MUX__2 O[18] -pin count_cycle_reg[63:0] RST[18]
load net RTL_MUX__2_n_46 -attr @rip(#000000) O[17] -pin RTL_MUX__2 O[17] -pin count_cycle_reg[63:0] RST[17]
load net RTL_MUX__2_n_47 -attr @rip(#000000) O[16] -pin RTL_MUX__2 O[16] -pin count_cycle_reg[63:0] RST[16]
load net RTL_MUX__2_n_48 -attr @rip(#000000) O[15] -pin RTL_MUX__2 O[15] -pin count_cycle_reg[63:0] RST[15]
load net RTL_MUX__2_n_49 -attr @rip(#000000) O[14] -pin RTL_MUX__2 O[14] -pin count_cycle_reg[63:0] RST[14]
load net RTL_MUX__2_n_5 -attr @rip(#000000) O[58] -pin RTL_MUX__2 O[58] -pin count_cycle_reg[63:0] RST[58]
load net RTL_MUX__2_n_50 -attr @rip(#000000) O[13] -pin RTL_MUX__2 O[13] -pin count_cycle_reg[63:0] RST[13]
load net RTL_MUX__2_n_51 -attr @rip(#000000) O[12] -pin RTL_MUX__2 O[12] -pin count_cycle_reg[63:0] RST[12]
load net RTL_MUX__2_n_52 -attr @rip(#000000) O[11] -pin RTL_MUX__2 O[11] -pin count_cycle_reg[63:0] RST[11]
load net RTL_MUX__2_n_53 -attr @rip(#000000) O[10] -pin RTL_MUX__2 O[10] -pin count_cycle_reg[63:0] RST[10]
load net RTL_MUX__2_n_54 -attr @rip(#000000) O[9] -pin RTL_MUX__2 O[9] -pin count_cycle_reg[63:0] RST[9]
load net RTL_MUX__2_n_55 -attr @rip(#000000) O[8] -pin RTL_MUX__2 O[8] -pin count_cycle_reg[63:0] RST[8]
load net RTL_MUX__2_n_56 -attr @rip(#000000) O[7] -pin RTL_MUX__2 O[7] -pin count_cycle_reg[63:0] RST[7]
load net RTL_MUX__2_n_57 -attr @rip(#000000) O[6] -pin RTL_MUX__2 O[6] -pin count_cycle_reg[63:0] RST[6]
load net RTL_MUX__2_n_58 -attr @rip(#000000) O[5] -pin RTL_MUX__2 O[5] -pin count_cycle_reg[63:0] RST[5]
load net RTL_MUX__2_n_59 -attr @rip(#000000) O[4] -pin RTL_MUX__2 O[4] -pin count_cycle_reg[63:0] RST[4]
load net RTL_MUX__2_n_6 -attr @rip(#000000) O[57] -pin RTL_MUX__2 O[57] -pin count_cycle_reg[63:0] RST[57]
load net RTL_MUX__2_n_60 -attr @rip(#000000) O[3] -pin RTL_MUX__2 O[3] -pin count_cycle_reg[63:0] RST[3]
load net RTL_MUX__2_n_61 -attr @rip(#000000) O[2] -pin RTL_MUX__2 O[2] -pin count_cycle_reg[63:0] RST[2]
load net RTL_MUX__2_n_62 -attr @rip(#000000) O[1] -pin RTL_MUX__2 O[1] -pin count_cycle_reg[63:0] RST[1]
load net RTL_MUX__2_n_63 -attr @rip(#000000) O[0] -pin RTL_MUX__2 O[0] -pin count_cycle_reg[63:0] RST[0]
load net RTL_MUX__2_n_7 -attr @rip(#000000) O[56] -pin RTL_MUX__2 O[56] -pin count_cycle_reg[63:0] RST[56]
load net RTL_MUX__2_n_8 -attr @rip(#000000) O[55] -pin RTL_MUX__2 O[55] -pin count_cycle_reg[63:0] RST[55]
load net RTL_MUX__2_n_9 -attr @rip(#000000) O[54] -pin RTL_MUX__2 O[54] -pin count_cycle_reg[63:0] RST[54]
load net RTL_MUX__4_n_0 -attr @rip(#000000) O[31] -pin RTL_AND__67 I0[31] -pin RTL_MUX__4 O[31]
load net RTL_MUX__4_n_1 -attr @rip(#000000) O[30] -pin RTL_AND__67 I0[30] -pin RTL_MUX__4 O[30]
load net RTL_MUX__4_n_10 -attr @rip(#000000) O[21] -pin RTL_AND__67 I0[21] -pin RTL_MUX__4 O[21]
load net RTL_MUX__4_n_11 -attr @rip(#000000) O[20] -pin RTL_AND__67 I0[20] -pin RTL_MUX__4 O[20]
load net RTL_MUX__4_n_12 -attr @rip(#000000) O[19] -pin RTL_AND__67 I0[19] -pin RTL_MUX__4 O[19]
load net RTL_MUX__4_n_13 -attr @rip(#000000) O[18] -pin RTL_AND__67 I0[18] -pin RTL_MUX__4 O[18]
load net RTL_MUX__4_n_14 -attr @rip(#000000) O[17] -pin RTL_AND__67 I0[17] -pin RTL_MUX__4 O[17]
load net RTL_MUX__4_n_15 -attr @rip(#000000) O[16] -pin RTL_AND__67 I0[16] -pin RTL_MUX__4 O[16]
load net RTL_MUX__4_n_16 -attr @rip(#000000) O[15] -pin RTL_AND__67 I0[15] -pin RTL_MUX__4 O[15]
load net RTL_MUX__4_n_17 -attr @rip(#000000) O[14] -pin RTL_AND__67 I0[14] -pin RTL_MUX__4 O[14]
load net RTL_MUX__4_n_18 -attr @rip(#000000) O[13] -pin RTL_AND__67 I0[13] -pin RTL_MUX__4 O[13]
load net RTL_MUX__4_n_19 -attr @rip(#000000) O[12] -pin RTL_AND__67 I0[12] -pin RTL_MUX__4 O[12]
load net RTL_MUX__4_n_2 -attr @rip(#000000) O[29] -pin RTL_AND__67 I0[29] -pin RTL_MUX__4 O[29]
load net RTL_MUX__4_n_20 -attr @rip(#000000) O[11] -pin RTL_AND__67 I0[11] -pin RTL_MUX__4 O[11]
load net RTL_MUX__4_n_21 -attr @rip(#000000) O[10] -pin RTL_AND__67 I0[10] -pin RTL_MUX__4 O[10]
load net RTL_MUX__4_n_22 -attr @rip(#000000) O[9] -pin RTL_AND__67 I0[9] -pin RTL_MUX__4 O[9]
load net RTL_MUX__4_n_23 -attr @rip(#000000) O[8] -pin RTL_AND__67 I0[8] -pin RTL_MUX__4 O[8]
load net RTL_MUX__4_n_24 -attr @rip(#000000) O[7] -pin RTL_AND__67 I0[7] -pin RTL_MUX__4 O[7]
load net RTL_MUX__4_n_25 -attr @rip(#000000) O[6] -pin RTL_AND__67 I0[6] -pin RTL_MUX__4 O[6]
load net RTL_MUX__4_n_26 -attr @rip(#000000) O[5] -pin RTL_AND__67 I0[5] -pin RTL_MUX__4 O[5]
load net RTL_MUX__4_n_27 -attr @rip(#000000) O[4] -pin RTL_AND__67 I0[4] -pin RTL_MUX__4 O[4]
load net RTL_MUX__4_n_28 -attr @rip(#000000) O[3] -pin RTL_AND__67 I0[3] -pin RTL_MUX__4 O[3]
load net RTL_MUX__4_n_29 -attr @rip(#000000) O[2] -pin RTL_AND__67 I0[2] -pin RTL_MUX__4 O[2]
load net RTL_MUX__4_n_3 -attr @rip(#000000) O[28] -pin RTL_AND__67 I0[28] -pin RTL_MUX__4 O[28]
load net RTL_MUX__4_n_30 -attr @rip(#000000) O[1] -pin RTL_AND__67 I0[1] -pin RTL_MUX__4 O[1]
load net RTL_MUX__4_n_31 -attr @rip(#000000) O[0] -pin RTL_AND__67 I0[0] -pin RTL_MUX__4 O[0]
load net RTL_MUX__4_n_4 -attr @rip(#000000) O[27] -pin RTL_AND__67 I0[27] -pin RTL_MUX__4 O[27]
load net RTL_MUX__4_n_5 -attr @rip(#000000) O[26] -pin RTL_AND__67 I0[26] -pin RTL_MUX__4 O[26]
load net RTL_MUX__4_n_6 -attr @rip(#000000) O[25] -pin RTL_AND__67 I0[25] -pin RTL_MUX__4 O[25]
load net RTL_MUX__4_n_7 -attr @rip(#000000) O[24] -pin RTL_AND__67 I0[24] -pin RTL_MUX__4 O[24]
load net RTL_MUX__4_n_8 -attr @rip(#000000) O[23] -pin RTL_AND__67 I0[23] -pin RTL_MUX__4 O[23]
load net RTL_MUX__4_n_9 -attr @rip(#000000) O[22] -pin RTL_AND__67 I0[22] -pin RTL_MUX__4 O[22]
load net RTL_MUX__5_n_0 -attr @rip(#000000) O[2] -pin RTL_ADD__5 I1[2] -pin RTL_MUX__5 O[2]
load net RTL_MUX__5_n_1 -attr @rip(#000000) O[1] -pin RTL_ADD__5 I1[1] -pin RTL_MUX__5 O[1]
load net RTL_MUX__5_n_2 -attr @rip(#000000) O[0] -pin RTL_ADD__5 I1[0] -pin RTL_MUX__5 O[0]
load net RTL_MUX__6_n_0 -attr @rip(#000000) O[31] -pin RTL_MUX__6 O[31] -pin current_pc_i I0[31]
load net RTL_MUX__6_n_1 -attr @rip(#000000) O[30] -pin RTL_MUX__6 O[30] -pin current_pc_i I0[30]
load net RTL_MUX__6_n_10 -attr @rip(#000000) O[21] -pin RTL_MUX__6 O[21] -pin current_pc_i I0[21]
load net RTL_MUX__6_n_11 -attr @rip(#000000) O[20] -pin RTL_MUX__6 O[20] -pin current_pc_i I0[20]
load net RTL_MUX__6_n_12 -attr @rip(#000000) O[19] -pin RTL_MUX__6 O[19] -pin current_pc_i I0[19]
load net RTL_MUX__6_n_13 -attr @rip(#000000) O[18] -pin RTL_MUX__6 O[18] -pin current_pc_i I0[18]
load net RTL_MUX__6_n_14 -attr @rip(#000000) O[17] -pin RTL_MUX__6 O[17] -pin current_pc_i I0[17]
load net RTL_MUX__6_n_15 -attr @rip(#000000) O[16] -pin RTL_MUX__6 O[16] -pin current_pc_i I0[16]
load net RTL_MUX__6_n_16 -attr @rip(#000000) O[15] -pin RTL_MUX__6 O[15] -pin current_pc_i I0[15]
load net RTL_MUX__6_n_17 -attr @rip(#000000) O[14] -pin RTL_MUX__6 O[14] -pin current_pc_i I0[14]
load net RTL_MUX__6_n_18 -attr @rip(#000000) O[13] -pin RTL_MUX__6 O[13] -pin current_pc_i I0[13]
load net RTL_MUX__6_n_19 -attr @rip(#000000) O[12] -pin RTL_MUX__6 O[12] -pin current_pc_i I0[12]
load net RTL_MUX__6_n_2 -attr @rip(#000000) O[29] -pin RTL_MUX__6 O[29] -pin current_pc_i I0[29]
load net RTL_MUX__6_n_20 -attr @rip(#000000) O[11] -pin RTL_MUX__6 O[11] -pin current_pc_i I0[11]
load net RTL_MUX__6_n_21 -attr @rip(#000000) O[10] -pin RTL_MUX__6 O[10] -pin current_pc_i I0[10]
load net RTL_MUX__6_n_22 -attr @rip(#000000) O[9] -pin RTL_MUX__6 O[9] -pin current_pc_i I0[9]
load net RTL_MUX__6_n_23 -attr @rip(#000000) O[8] -pin RTL_MUX__6 O[8] -pin current_pc_i I0[8]
load net RTL_MUX__6_n_24 -attr @rip(#000000) O[7] -pin RTL_MUX__6 O[7] -pin current_pc_i I0[7]
load net RTL_MUX__6_n_25 -attr @rip(#000000) O[6] -pin RTL_MUX__6 O[6] -pin current_pc_i I0[6]
load net RTL_MUX__6_n_26 -attr @rip(#000000) O[5] -pin RTL_MUX__6 O[5] -pin current_pc_i I0[5]
load net RTL_MUX__6_n_27 -attr @rip(#000000) O[4] -pin RTL_MUX__6 O[4] -pin current_pc_i I0[4]
load net RTL_MUX__6_n_28 -attr @rip(#000000) O[3] -pin RTL_MUX__6 O[3] -pin current_pc_i I0[3]
load net RTL_MUX__6_n_29 -attr @rip(#000000) O[2] -pin RTL_MUX__6 O[2] -pin current_pc_i I0[2]
load net RTL_MUX__6_n_3 -attr @rip(#000000) O[28] -pin RTL_MUX__6 O[28] -pin current_pc_i I0[28]
load net RTL_MUX__6_n_30 -attr @rip(#000000) O[1] -pin RTL_MUX__6 O[1] -pin current_pc_i I0[1]
load net RTL_MUX__6_n_31 -attr @rip(#000000) O[0] -pin RTL_MUX__6 O[0] -pin current_pc_i I0[0]
load net RTL_MUX__6_n_4 -attr @rip(#000000) O[27] -pin RTL_MUX__6 O[27] -pin current_pc_i I0[27]
load net RTL_MUX__6_n_5 -attr @rip(#000000) O[26] -pin RTL_MUX__6 O[26] -pin current_pc_i I0[26]
load net RTL_MUX__6_n_6 -attr @rip(#000000) O[25] -pin RTL_MUX__6 O[25] -pin current_pc_i I0[25]
load net RTL_MUX__6_n_7 -attr @rip(#000000) O[24] -pin RTL_MUX__6 O[24] -pin current_pc_i I0[24]
load net RTL_MUX__6_n_8 -attr @rip(#000000) O[23] -pin RTL_MUX__6 O[23] -pin current_pc_i I0[23]
load net RTL_MUX__6_n_9 -attr @rip(#000000) O[22] -pin RTL_MUX__6 O[22] -pin current_pc_i I0[22]
load net RTL_MUX__7_n_0 -attr @rip(#000000) O[31] -pin RTL_MUX__7 O[31] -pin reg_op1_i I2[31]
load net RTL_MUX__7_n_1 -attr @rip(#000000) O[30] -pin RTL_MUX__7 O[30] -pin reg_op1_i I2[30]
load net RTL_MUX__7_n_10 -attr @rip(#000000) O[21] -pin RTL_MUX__7 O[21] -pin reg_op1_i I2[21]
load net RTL_MUX__7_n_11 -attr @rip(#000000) O[20] -pin RTL_MUX__7 O[20] -pin reg_op1_i I2[20]
load net RTL_MUX__7_n_12 -attr @rip(#000000) O[19] -pin RTL_MUX__7 O[19] -pin reg_op1_i I2[19]
load net RTL_MUX__7_n_13 -attr @rip(#000000) O[18] -pin RTL_MUX__7 O[18] -pin reg_op1_i I2[18]
load net RTL_MUX__7_n_14 -attr @rip(#000000) O[17] -pin RTL_MUX__7 O[17] -pin reg_op1_i I2[17]
load net RTL_MUX__7_n_15 -attr @rip(#000000) O[16] -pin RTL_MUX__7 O[16] -pin reg_op1_i I2[16]
load net RTL_MUX__7_n_16 -attr @rip(#000000) O[15] -pin RTL_MUX__7 O[15] -pin reg_op1_i I2[15]
load net RTL_MUX__7_n_17 -attr @rip(#000000) O[14] -pin RTL_MUX__7 O[14] -pin reg_op1_i I2[14]
load net RTL_MUX__7_n_18 -attr @rip(#000000) O[13] -pin RTL_MUX__7 O[13] -pin reg_op1_i I2[13]
load net RTL_MUX__7_n_19 -attr @rip(#000000) O[12] -pin RTL_MUX__7 O[12] -pin reg_op1_i I2[12]
load net RTL_MUX__7_n_2 -attr @rip(#000000) O[29] -pin RTL_MUX__7 O[29] -pin reg_op1_i I2[29]
load net RTL_MUX__7_n_20 -attr @rip(#000000) O[11] -pin RTL_MUX__7 O[11] -pin reg_op1_i I2[11]
load net RTL_MUX__7_n_21 -attr @rip(#000000) O[10] -pin RTL_MUX__7 O[10] -pin reg_op1_i I2[10]
load net RTL_MUX__7_n_22 -attr @rip(#000000) O[9] -pin RTL_MUX__7 O[9] -pin reg_op1_i I2[9]
load net RTL_MUX__7_n_23 -attr @rip(#000000) O[8] -pin RTL_MUX__7 O[8] -pin reg_op1_i I2[8]
load net RTL_MUX__7_n_24 -attr @rip(#000000) O[7] -pin RTL_MUX__7 O[7] -pin reg_op1_i I2[7]
load net RTL_MUX__7_n_25 -attr @rip(#000000) O[6] -pin RTL_MUX__7 O[6] -pin reg_op1_i I2[6]
load net RTL_MUX__7_n_26 -attr @rip(#000000) O[5] -pin RTL_MUX__7 O[5] -pin reg_op1_i I2[5]
load net RTL_MUX__7_n_27 -attr @rip(#000000) O[4] -pin RTL_MUX__7 O[4] -pin reg_op1_i I2[4]
load net RTL_MUX__7_n_28 -attr @rip(#000000) O[3] -pin RTL_MUX__7 O[3] -pin reg_op1_i I2[3]
load net RTL_MUX__7_n_29 -attr @rip(#000000) O[2] -pin RTL_MUX__7 O[2] -pin reg_op1_i I2[2]
load net RTL_MUX__7_n_3 -attr @rip(#000000) O[28] -pin RTL_MUX__7 O[28] -pin reg_op1_i I2[28]
load net RTL_MUX__7_n_30 -attr @rip(#000000) O[1] -pin RTL_MUX__7 O[1] -pin reg_op1_i I2[1]
load net RTL_MUX__7_n_31 -attr @rip(#000000) O[0] -pin RTL_MUX__7 O[0] -pin reg_op1_i I2[0]
load net RTL_MUX__7_n_4 -attr @rip(#000000) O[27] -pin RTL_MUX__7 O[27] -pin reg_op1_i I2[27]
load net RTL_MUX__7_n_5 -attr @rip(#000000) O[26] -pin RTL_MUX__7 O[26] -pin reg_op1_i I2[26]
load net RTL_MUX__7_n_6 -attr @rip(#000000) O[25] -pin RTL_MUX__7 O[25] -pin reg_op1_i I2[25]
load net RTL_MUX__7_n_7 -attr @rip(#000000) O[24] -pin RTL_MUX__7 O[24] -pin reg_op1_i I2[24]
load net RTL_MUX__7_n_8 -attr @rip(#000000) O[23] -pin RTL_MUX__7 O[23] -pin reg_op1_i I2[23]
load net RTL_MUX__7_n_9 -attr @rip(#000000) O[22] -pin RTL_MUX__7 O[22] -pin reg_op1_i I2[22]
load net RTL_MUX__8_n_0 -attr @rip(#000000) O[3] -pin RTL_MUX__8 O[3] -pin mem_la_wstrb_i I1[3]
load net RTL_MUX__8_n_1 -attr @rip(#000000) O[2] -pin RTL_MUX__8 O[2] -pin mem_la_wstrb_i I1[2]
load net RTL_MUX__8_n_2 -attr @rip(#000000) O[1] -pin RTL_MUX__8 O[1] -pin mem_la_wstrb_i I1[1]
load net RTL_MUX__8_n_3 -attr @rip(#000000) O[0] -pin RTL_MUX__8 O[0] -pin mem_la_wstrb_i I1[0]
load net RTL_MUX__9_n_0 -attr @rip(#000000) O[2] -pin RTL_ADD__10 I1[2] -pin RTL_MUX__9 O[2]
load net RTL_MUX__9_n_1 -attr @rip(#000000) O[1] -pin RTL_ADD__10 I1[1] -pin RTL_MUX__9 O[1]
load net RTL_MUX__9_n_2 -attr @rip(#000000) O[0] -pin RTL_ADD__10 I1[0] -pin RTL_MUX__9 O[0]
load net RTL_MUX_n_0 -attr @rip(#000000) O[1] -pin RTL_MUX O[1] -pin mem_state_i__0 I1[1]
load net RTL_MUX_n_1 -attr @rip(#000000) O[0] -pin RTL_MUX O[0] -pin mem_state_i__0 I1[0]
load net RTL_NEQ__0_n_0 -pin RTL_AND__79 I1 -pin RTL_NEQ__0 O
netloc RTL_NEQ__0_n_0 1 28 1 NJ 7240
load net RTL_NEQ_n_0 -pin RTL_AND__78 I1 -pin RTL_NEQ O
netloc RTL_NEQ_n_0 1 28 1 NJ 7140
load net RTL_OR__0_n_0 -pin RTL_OR__0 O -pin mem_do_prefetch_reg RST -pin mem_do_rdata_reg RST -pin mem_do_rinst_reg RST -pin mem_do_wdata_reg RST
netloc RTL_OR__0_n_0 1 7 54 N 6370N 3440 7320 NJ 7320 NJ 7320 NJ 7320 NJ 7320 NJ 7320 NJ 7320 NJ 7320 NJ 7320 NJ 7320 NJ 7320 NJ 7320 11430J 7440 NJ 7440 NJ 7440 NJ 7440 NJ 7440 NJ 7440 NJ 7440 NJ 7440 NJ 7440 NJ 7440 16490J 7300 NJ 7300 NJ 7300 NJ 7300 NJ 7300 NJ 7300 18540J 6860N NJ 6860 NJ 6860 NJ 6860 NJ 6860 NJ 6860 NJ 6860 NJ 6860 NJ 6860 NJ 6860 NJ 6860 22510 6630N NJ 6630 22990J 6680 23350J 6790 NJ 6790 NJ 6790 NJ 6790 NJ 6790 25390J 6700 NJ 6700 NJ 6700 NJ 6700 NJ 6700 26920
load net RTL_OR__10_n_0 -attr @rip(#000000) O[31] -pin RTL_OR__10 O[31] -pin alu_out_i I3[31]
load net RTL_OR__10_n_1 -attr @rip(#000000) O[30] -pin RTL_OR__10 O[30] -pin alu_out_i I3[30]
load net RTL_OR__10_n_10 -attr @rip(#000000) O[21] -pin RTL_OR__10 O[21] -pin alu_out_i I3[21]
load net RTL_OR__10_n_11 -attr @rip(#000000) O[20] -pin RTL_OR__10 O[20] -pin alu_out_i I3[20]
load net RTL_OR__10_n_12 -attr @rip(#000000) O[19] -pin RTL_OR__10 O[19] -pin alu_out_i I3[19]
load net RTL_OR__10_n_13 -attr @rip(#000000) O[18] -pin RTL_OR__10 O[18] -pin alu_out_i I3[18]
load net RTL_OR__10_n_14 -attr @rip(#000000) O[17] -pin RTL_OR__10 O[17] -pin alu_out_i I3[17]
load net RTL_OR__10_n_15 -attr @rip(#000000) O[16] -pin RTL_OR__10 O[16] -pin alu_out_i I3[16]
load net RTL_OR__10_n_16 -attr @rip(#000000) O[15] -pin RTL_OR__10 O[15] -pin alu_out_i I3[15]
load net RTL_OR__10_n_17 -attr @rip(#000000) O[14] -pin RTL_OR__10 O[14] -pin alu_out_i I3[14]
load net RTL_OR__10_n_18 -attr @rip(#000000) O[13] -pin RTL_OR__10 O[13] -pin alu_out_i I3[13]
load net RTL_OR__10_n_19 -attr @rip(#000000) O[12] -pin RTL_OR__10 O[12] -pin alu_out_i I3[12]
load net RTL_OR__10_n_2 -attr @rip(#000000) O[29] -pin RTL_OR__10 O[29] -pin alu_out_i I3[29]
load net RTL_OR__10_n_20 -attr @rip(#000000) O[11] -pin RTL_OR__10 O[11] -pin alu_out_i I3[11]
load net RTL_OR__10_n_21 -attr @rip(#000000) O[10] -pin RTL_OR__10 O[10] -pin alu_out_i I3[10]
load net RTL_OR__10_n_22 -attr @rip(#000000) O[9] -pin RTL_OR__10 O[9] -pin alu_out_i I3[9]
load net RTL_OR__10_n_23 -attr @rip(#000000) O[8] -pin RTL_OR__10 O[8] -pin alu_out_i I3[8]
load net RTL_OR__10_n_24 -attr @rip(#000000) O[7] -pin RTL_OR__10 O[7] -pin alu_out_i I3[7]
load net RTL_OR__10_n_25 -attr @rip(#000000) O[6] -pin RTL_OR__10 O[6] -pin alu_out_i I3[6]
load net RTL_OR__10_n_26 -attr @rip(#000000) O[5] -pin RTL_OR__10 O[5] -pin alu_out_i I3[5]
load net RTL_OR__10_n_27 -attr @rip(#000000) O[4] -pin RTL_OR__10 O[4] -pin alu_out_i I3[4]
load net RTL_OR__10_n_28 -attr @rip(#000000) O[3] -pin RTL_OR__10 O[3] -pin alu_out_i I3[3]
load net RTL_OR__10_n_29 -attr @rip(#000000) O[2] -pin RTL_OR__10 O[2] -pin alu_out_i I3[2]
load net RTL_OR__10_n_3 -attr @rip(#000000) O[28] -pin RTL_OR__10 O[28] -pin alu_out_i I3[28]
load net RTL_OR__10_n_30 -attr @rip(#000000) O[1] -pin RTL_OR__10 O[1] -pin alu_out_i I3[1]
load net RTL_OR__10_n_31 -attr @rip(#000000) O[0] -pin RTL_OR__10 O[0] -pin alu_out_i I3[0]
load net RTL_OR__10_n_4 -attr @rip(#000000) O[27] -pin RTL_OR__10 O[27] -pin alu_out_i I3[27]
load net RTL_OR__10_n_5 -attr @rip(#000000) O[26] -pin RTL_OR__10 O[26] -pin alu_out_i I3[26]
load net RTL_OR__10_n_6 -attr @rip(#000000) O[25] -pin RTL_OR__10 O[25] -pin alu_out_i I3[25]
load net RTL_OR__10_n_7 -attr @rip(#000000) O[24] -pin RTL_OR__10 O[24] -pin alu_out_i I3[24]
load net RTL_OR__10_n_8 -attr @rip(#000000) O[23] -pin RTL_OR__10 O[23] -pin alu_out_i I3[23]
load net RTL_OR__10_n_9 -attr @rip(#000000) O[22] -pin RTL_OR__10 O[22] -pin alu_out_i I3[22]
load net RTL_OR__11_n_0 -pin RTL_OR__11 O -pin alu_out_i S2
netloc RTL_OR__11_n_0 1 15 1 8820 5250n
load net RTL_OR__12_n_0 -pin RTL_OR__12 O -pin alu_out_i S3
netloc RTL_OR__12_n_0 1 15 1 8540 5370n
load net RTL_OR__13_n_0 -pin RTL_OR__13 O -pin alu_out_i S4
netloc RTL_OR__13_n_0 1 15 1 8520 5440n
load net RTL_OR__14_n_0 -pin RTL_OR__14 O -pin mem_wordsize_i__0 S0
netloc RTL_OR__14_n_0 1 10 1 4730 4130n
load net RTL_OR__15_n_0 -pin RTL_OR__15 O -pin mem_wordsize_i__0 S1
netloc RTL_OR__15_n_0 1 10 1 N 4200
load net RTL_OR__16_n_0 -pin RTL_OR__16 O -pin reg_op1_i__0 S0
netloc RTL_OR__16_n_0 1 66 1 28860 4050n
load net RTL_OR__17_n_0 -pin RTL_OR__17 O -pin reg_op1_i__0 S1
netloc RTL_OR__17_n_0 1 66 1 N 4120
load net RTL_OR__18_n_0 -pin RTL_OR__18 O -pin reg_op1_i__0 S2
netloc RTL_OR__18_n_0 1 66 1 28940 4140n
load net RTL_OR__19_n_0 -pin RTL_OR__19 O -pin reg_op1_i__1 S0
netloc RTL_OR__19_n_0 1 66 1 28920 4650n
load net RTL_OR__1_n_0 -pin RTL_OR__1 O -pin cpu_state_i__11 S -pin decoder_pseudo_trigger_i__0 S -pin decoder_trigger_i__4 S -pin latched_is_lb_i__0 S -pin latched_is_lh_i__0 S -pin latched_is_lu_i__0 S -pin mem_wordsize_i__3 S -pin reg_op1_i__6 S -pin set_mem_do_rdata_i S
netloc RTL_OR__1_n_0 1 3 64 N 7390N 1080 7700 NJ 7700 NJ 7700 NJ 7700 NJ 7700 NJ 7700N 4730J 6410 5280 6350N 6020 6150 7010J 6100 NJ 6100 8760J 5720 NJ 5720 NJ 5720 10490J 5740 NJ 5740 NJ 5740 NJ 5740 NJ 5740 NJ 5740 NJ 5740 NJ 5740 NJ 5740 NJ 5740 15050J 5890 15540J 6790N 16330 6250 NJ 6250 NJ 6250 17600J 6230 NJ 6230 NJ 6230 NJ 6230 NJ 6230 NJ 6230 NJ 6230 NJ 6230 NJ 6230 NJ 6230 NJ 6230 NJ 6230 NJ 6230 NJ 6230 NJ 6230 NJ 6230 NJ 6230 23390 6760N 23730 7840 NJ 7840 NJ 7840 NJ 7840 NJ 7840 NJ 7840 NJ 7840 NJ 7840 NJ 7840 NJ 7840 NJ 7840 NJ 7840 NJ 7840 NJ 7840 NJ 7840 NJ
load net RTL_OR__20_n_0 -pin RTL_OR__20 O -pin reg_op1_i__1 S1
netloc RTL_OR__20_n_0 1 66 1 28880 4830n
load net RTL_OR__21_n_0 -pin RTL_OR__21 O -pin reg_op1_i__1 S2
netloc RTL_OR__21_n_0 1 66 1 28780 5130n
load net RTL_OR__22_n_0 -pin RTL_OR__22 O -pin RTL_OR__23 I0
netloc RTL_OR__22_n_0 1 62 1 27450 7110n
load net RTL_OR__23_n_0 -pin RTL_OR__23 O -pin mem_instr_i__0 I1 -pin mem_state_i__1 I1 -pin mem_valid_i I1 -pin mem_valid_i__1 I1 -pin mem_wstrb_i S -pin mem_wstrb_i__1 S
netloc RTL_OR__23_n_0 1 63 5 27640 6760 NJ 6760 NJ 6760 29020 6460N 29690
load net RTL_OR__24_n_0 -pin RTL_OR__24 O -pin mem_valid_i__4 I0
netloc RTL_OR__24_n_0 1 68 1 30150 4780n
load net RTL_OR__25_n_0 -pin RTL_OR__25 O -pin cpu_state_i__7 I1 -pin pcpi_valid_i S
netloc RTL_OR__25_n_0 1 28 40 15110 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 NJ 4350 28420J 4370 NJ 4370 29710J
load net RTL_OR__26_n_0 -pin RTL_AND__80 I1 -pin RTL_OR__26 O
netloc RTL_OR__26_n_0 1 29 1 15700 7110n
load net RTL_OR__27_n_0 -pin RTL_OR__27 O -pin mem_instr_i I1
netloc RTL_OR__27_n_0 1 68 1 30290 6850n
load net RTL_OR__28_n_0 -pin RTL_OR__28 O -pin mem_la_addr_i S
netloc RTL_OR__28_n_0 1 68 1 30490 6400n
load net RTL_OR__29_n_0 -pin RTL_OR__29 O -pin RTL_OR__30 I0
netloc RTL_OR__29_n_0 1 67 1 29490 7250n
load net RTL_OR__2_n_0 -pin RTL_MUX S -pin RTL_OR__2 O
netloc RTL_OR__2_n_0 1 64 1 27940 6900n
load net RTL_OR__30_n_0 -pin RTL_AND__85 I1 -pin RTL_OR__30 O
netloc RTL_OR__30_n_0 1 68 1 30530 6990n
load net RTL_OR__31_n_0 -pin RTL_OR__31 O -pin mem_addr_i I1 -pin mem_wstrb_i__1 I1 -pin mem_wstrb_i__2 I1 -pin mem_wstrb_i__2 I2 -pin mem_wstrb_i__2 I3
netloc RTL_OR__31_n_0 1 66 3 28980 6500 29630 6500 30250J
load net RTL_OR__32_n_0 -attr @rip(#000000) O[31] -pin RTL_OR__32 O[31] -pin cpuregs_wrdata_i I2[31]
load net RTL_OR__32_n_1 -attr @rip(#000000) O[30] -pin RTL_OR__32 O[30] -pin cpuregs_wrdata_i I2[30]
load net RTL_OR__32_n_10 -attr @rip(#000000) O[21] -pin RTL_OR__32 O[21] -pin cpuregs_wrdata_i I2[21]
load net RTL_OR__32_n_11 -attr @rip(#000000) O[20] -pin RTL_OR__32 O[20] -pin cpuregs_wrdata_i I2[20]
load net RTL_OR__32_n_12 -attr @rip(#000000) O[19] -pin RTL_OR__32 O[19] -pin cpuregs_wrdata_i I2[19]
load net RTL_OR__32_n_13 -attr @rip(#000000) O[18] -pin RTL_OR__32 O[18] -pin cpuregs_wrdata_i I2[18]
load net RTL_OR__32_n_14 -attr @rip(#000000) O[17] -pin RTL_OR__32 O[17] -pin cpuregs_wrdata_i I2[17]
load net RTL_OR__32_n_15 -attr @rip(#000000) O[16] -pin RTL_OR__32 O[16] -pin cpuregs_wrdata_i I2[16]
load net RTL_OR__32_n_16 -attr @rip(#000000) O[15] -pin RTL_OR__32 O[15] -pin cpuregs_wrdata_i I2[15]
load net RTL_OR__32_n_17 -attr @rip(#000000) O[14] -pin RTL_OR__32 O[14] -pin cpuregs_wrdata_i I2[14]
load net RTL_OR__32_n_18 -attr @rip(#000000) O[13] -pin RTL_OR__32 O[13] -pin cpuregs_wrdata_i I2[13]
load net RTL_OR__32_n_19 -attr @rip(#000000) O[12] -pin RTL_OR__32 O[12] -pin cpuregs_wrdata_i I2[12]
load net RTL_OR__32_n_2 -attr @rip(#000000) O[29] -pin RTL_OR__32 O[29] -pin cpuregs_wrdata_i I2[29]
load net RTL_OR__32_n_20 -attr @rip(#000000) O[11] -pin RTL_OR__32 O[11] -pin cpuregs_wrdata_i I2[11]
load net RTL_OR__32_n_21 -attr @rip(#000000) O[10] -pin RTL_OR__32 O[10] -pin cpuregs_wrdata_i I2[10]
load net RTL_OR__32_n_22 -attr @rip(#000000) O[9] -pin RTL_OR__32 O[9] -pin cpuregs_wrdata_i I2[9]
load net RTL_OR__32_n_23 -attr @rip(#000000) O[8] -pin RTL_OR__32 O[8] -pin cpuregs_wrdata_i I2[8]
load net RTL_OR__32_n_24 -attr @rip(#000000) O[7] -pin RTL_OR__32 O[7] -pin cpuregs_wrdata_i I2[7]
load net RTL_OR__32_n_25 -attr @rip(#000000) O[6] -pin RTL_OR__32 O[6] -pin cpuregs_wrdata_i I2[6]
load net RTL_OR__32_n_26 -attr @rip(#000000) O[5] -pin RTL_OR__32 O[5] -pin cpuregs_wrdata_i I2[5]
load net RTL_OR__32_n_27 -attr @rip(#000000) O[4] -pin RTL_OR__32 O[4] -pin cpuregs_wrdata_i I2[4]
load net RTL_OR__32_n_28 -attr @rip(#000000) O[3] -pin RTL_OR__32 O[3] -pin cpuregs_wrdata_i I2[3]
load net RTL_OR__32_n_29 -attr @rip(#000000) O[2] -pin RTL_OR__32 O[2] -pin cpuregs_wrdata_i I2[2]
load net RTL_OR__32_n_3 -attr @rip(#000000) O[28] -pin RTL_OR__32 O[28] -pin cpuregs_wrdata_i I2[28]
load net RTL_OR__32_n_30 -attr @rip(#000000) O[1] -pin RTL_OR__32 O[1] -pin cpuregs_wrdata_i I2[1]
load net RTL_OR__32_n_31 -attr @rip(#000000) O[0] -pin RTL_OR__32 O[0] -pin cpuregs_wrdata_i I2[0]
load net RTL_OR__32_n_4 -attr @rip(#000000) O[27] -pin RTL_OR__32 O[27] -pin cpuregs_wrdata_i I2[27]
load net RTL_OR__32_n_5 -attr @rip(#000000) O[26] -pin RTL_OR__32 O[26] -pin cpuregs_wrdata_i I2[26]
load net RTL_OR__32_n_6 -attr @rip(#000000) O[25] -pin RTL_OR__32 O[25] -pin cpuregs_wrdata_i I2[25]
load net RTL_OR__32_n_7 -attr @rip(#000000) O[24] -pin RTL_OR__32 O[24] -pin cpuregs_wrdata_i I2[24]
load net RTL_OR__32_n_8 -attr @rip(#000000) O[23] -pin RTL_OR__32 O[23] -pin cpuregs_wrdata_i I2[23]
load net RTL_OR__32_n_9 -attr @rip(#000000) O[22] -pin RTL_OR__32 O[22] -pin cpuregs_wrdata_i I2[22]
load net RTL_OR__3_n_0 -pin RTL_OR__3 O -pin mem_addr_i S -pin mem_instr_i__2 S -pin mem_state_i__3 S -pin mem_state_i__4 S -pin mem_valid_i__3 S -pin mem_valid_i__4 S -pin mem_wdata_i S -pin mem_wstrb_i__3 S
netloc RTL_OR__3_n_0 1 65 4 28440 7110N 28960 6050 NJ 6050 30410
load net RTL_OR__4_n_0 -pin RTL_OR__4 O -pin RTL_OR__5 I0
netloc RTL_OR__4_n_0 1 37 1 18920 7220n
load net RTL_OR__5_n_0 -pin RTL_AND__1 I1 -pin RTL_OR__5 O
netloc RTL_OR__5_n_0 1 38 1 19250 7120n
load net RTL_OR__6_n_0 -pin RTL_OR__6 O -pin mem_done_i I1
netloc RTL_OR__6_n_0 1 40 1 N 7170
load net RTL_OR__7_n_0 -pin RTL_OR__7 O -pin instr_rdcycleh_reg D
netloc RTL_OR__7_n_0 1 8 1 N 2450
load net RTL_OR__8_n_0 -pin RTL_OR__8 O -pin instr_rdcycle_reg D
netloc RTL_OR__8_n_0 1 8 1 3260 2560n
load net RTL_OR__9_n_0 -pin RTL_OR__9 O -pin is_jalr_addi_slti_sltiu_xori_ori_andi_reg D
netloc RTL_OR__9_n_0 1 13 1 6770 4790n
load net RTL_OR_n_0 -pin RTL_OR O -pin cpu_state_i__10 S -pin decoder_pseudo_trigger_i S -pin decoder_trigger_i__2 S -pin mem_wordsize_i__2 S -pin reg_op1_i__5 S -pin set_mem_do_wdata_i S
netloc RTL_OR_n_0 1 9 58 3900 7560N NJ 7560 NJ 7560 NJ 7560 NJ 7560 NJ 7560 NJ 7560 NJ 7560 NJ 7560 NJ 7560 NJ 7560 NJ 7560 NJ 7560 NJ 7560 NJ 7560 NJ 7560 NJ 7560 NJ 7560 NJ 7560 NJ 7560 15720 6670N NJ 6670 NJ 6670 17240 6740N 17680 6520 NJ 6520 18310J 6540 NJ 6540 NJ 6540 NJ 6540 NJ 6540 NJ 6540 NJ 6540 NJ 6540 NJ 6540 NJ 6540 NJ 6540 NJ 6540 NJ 6540 NJ 6540 23050J 6500 23430 6350N 23750 7720 NJ 7720 NJ 7720 NJ 7720 NJ 7720 NJ 7720 NJ 7720 NJ 7720 NJ 7720 NJ 7720 NJ 7720 NJ 7720 NJ 7720 NJ 7720 NJ 7720 NJ
load net RTL_REDUCTION_AND_n_0 -pin RTL_AND__2 I0 -pin RTL_REDUCTION_AND O
netloc RTL_REDUCTION_AND_n_0 1 38 1 19210J 7160n
load net RTL_REDUCTION_OR__0_n_0 -pin RTL_REDUCTION_OR__0 O -pin decoded_imm_i S1
netloc RTL_REDUCTION_OR__0_n_0 1 12 1 6120 5060n
load net RTL_REDUCTION_OR__10_n_0 -pin RTL_AND__71 I1 -pin RTL_REDUCTION_OR__10 O
netloc RTL_REDUCTION_OR__10_n_0 1 14 1 7850 6200n
load net RTL_REDUCTION_OR__11_n_0 -pin RTL_REDUCTION_OR__11 O -pin is_slti_blt_slt_reg D
netloc RTL_REDUCTION_OR__11_n_0 1 13 1 6930 4620n
load net RTL_REDUCTION_OR__12_n_0 -pin RTL_REDUCTION_OR__12 O -pin is_sltiu_bltu_sltu_reg D
netloc RTL_REDUCTION_OR__12_n_0 1 13 1 6870 4480n
load net RTL_REDUCTION_OR__13_n_0 -pin RTL_AND__82 I1 -pin RTL_REDUCTION_OR__13 O
netloc RTL_REDUCTION_OR__13_n_0 1 30 1 16190J 7030n
load net RTL_REDUCTION_OR__1_n_0 -pin RTL_REDUCTION_OR__1 O -pin decoded_imm_i S2
netloc RTL_REDUCTION_OR__1_n_0 1 12 1 6100 5130n
load net RTL_REDUCTION_OR__2_n_0 -pin RTL_MUX__0 S -pin RTL_REDUCTION_OR__2 O
netloc RTL_REDUCTION_OR__2_n_0 1 25 1 13630J 5900n
load net RTL_REDUCTION_OR__3_n_0 -pin RTL_REDUCTION_OR__3 O -pin is_lui_auipc_jal_reg D
netloc RTL_REDUCTION_OR__3_n_0 1 13 1 6770 5280n
load net RTL_REDUCTION_OR__4_n_0 -pin RTL_AND__64 I1 -pin RTL_REDUCTION_OR__4 O
netloc RTL_REDUCTION_OR__4_n_0 1 12 1 6240 4870n
load net RTL_REDUCTION_OR__5_n_0 -pin RTL_AND__65 I1 -pin RTL_REDUCTION_OR__5 O
netloc RTL_REDUCTION_OR__5_n_0 1 11 1 5320 4300n
load net RTL_REDUCTION_OR__6_n_0 -pin RTL_REDUCTION_OR__6 O -pin is_lui_auipc_jal_jalr_addi_add_sub_reg D
netloc RTL_REDUCTION_OR__6_n_0 1 14 1 7530 5580n
load net RTL_REDUCTION_OR__7_n_0 -pin RTL_REDUCTION_OR__7 O -pin is_compare_reg D
netloc RTL_REDUCTION_OR__7_n_0 1 14 1 7510 6170n
load net RTL_REDUCTION_OR__8_n_0 -pin RTL_MUX__3 S -pin RTL_REDUCTION_OR__8 O
netloc RTL_REDUCTION_OR__8_n_0 1 13 1 6650 6580n
load net RTL_REDUCTION_OR__9_n_0 -pin RTL_REDUCTION_OR__9 O -pin is_lbu_lhu_lw_reg D
netloc RTL_REDUCTION_OR__9_n_0 1 11 1 5160 4220n
load net RTL_REDUCTION_OR_n_0 -pin RTL_AND__0 I1 -pin RTL_REDUCTION_OR O
netloc RTL_REDUCTION_OR_n_0 1 37 1 NJ 7100
load net RTL_RSHIFT__0_n_0 -attr @rip(#000000) O[31] -pin RTL_RSHIFT__0 O[31] -pin reg_op1_i__1 I1[31]
load net RTL_RSHIFT__0_n_1 -attr @rip(#000000) O[30] -pin RTL_RSHIFT__0 O[30] -pin reg_op1_i__1 I1[30]
load net RTL_RSHIFT__0_n_10 -attr @rip(#000000) O[21] -pin RTL_RSHIFT__0 O[21] -pin reg_op1_i__1 I1[21]
load net RTL_RSHIFT__0_n_11 -attr @rip(#000000) O[20] -pin RTL_RSHIFT__0 O[20] -pin reg_op1_i__1 I1[20]
load net RTL_RSHIFT__0_n_12 -attr @rip(#000000) O[19] -pin RTL_RSHIFT__0 O[19] -pin reg_op1_i__1 I1[19]
load net RTL_RSHIFT__0_n_13 -attr @rip(#000000) O[18] -pin RTL_RSHIFT__0 O[18] -pin reg_op1_i__1 I1[18]
load net RTL_RSHIFT__0_n_14 -attr @rip(#000000) O[17] -pin RTL_RSHIFT__0 O[17] -pin reg_op1_i__1 I1[17]
load net RTL_RSHIFT__0_n_15 -attr @rip(#000000) O[16] -pin RTL_RSHIFT__0 O[16] -pin reg_op1_i__1 I1[16]
load net RTL_RSHIFT__0_n_16 -attr @rip(#000000) O[15] -pin RTL_RSHIFT__0 O[15] -pin reg_op1_i__1 I1[15]
load net RTL_RSHIFT__0_n_17 -attr @rip(#000000) O[14] -pin RTL_RSHIFT__0 O[14] -pin reg_op1_i__1 I1[14]
load net RTL_RSHIFT__0_n_18 -attr @rip(#000000) O[13] -pin RTL_RSHIFT__0 O[13] -pin reg_op1_i__1 I1[13]
load net RTL_RSHIFT__0_n_19 -attr @rip(#000000) O[12] -pin RTL_RSHIFT__0 O[12] -pin reg_op1_i__1 I1[12]
load net RTL_RSHIFT__0_n_2 -attr @rip(#000000) O[29] -pin RTL_RSHIFT__0 O[29] -pin reg_op1_i__1 I1[29]
load net RTL_RSHIFT__0_n_20 -attr @rip(#000000) O[11] -pin RTL_RSHIFT__0 O[11] -pin reg_op1_i__1 I1[11]
load net RTL_RSHIFT__0_n_21 -attr @rip(#000000) O[10] -pin RTL_RSHIFT__0 O[10] -pin reg_op1_i__1 I1[10]
load net RTL_RSHIFT__0_n_22 -attr @rip(#000000) O[9] -pin RTL_RSHIFT__0 O[9] -pin reg_op1_i__1 I1[9]
load net RTL_RSHIFT__0_n_23 -attr @rip(#000000) O[8] -pin RTL_RSHIFT__0 O[8] -pin reg_op1_i__1 I1[8]
load net RTL_RSHIFT__0_n_24 -attr @rip(#000000) O[7] -pin RTL_RSHIFT__0 O[7] -pin reg_op1_i__1 I1[7]
load net RTL_RSHIFT__0_n_25 -attr @rip(#000000) O[6] -pin RTL_RSHIFT__0 O[6] -pin reg_op1_i__1 I1[6]
load net RTL_RSHIFT__0_n_26 -attr @rip(#000000) O[5] -pin RTL_RSHIFT__0 O[5] -pin reg_op1_i__1 I1[5]
load net RTL_RSHIFT__0_n_27 -attr @rip(#000000) O[4] -pin RTL_RSHIFT__0 O[4] -pin reg_op1_i__1 I1[4]
load net RTL_RSHIFT__0_n_28 -attr @rip(#000000) O[3] -pin RTL_RSHIFT__0 O[3] -pin reg_op1_i__1 I1[3]
load net RTL_RSHIFT__0_n_29 -attr @rip(#000000) O[2] -pin RTL_RSHIFT__0 O[2] -pin reg_op1_i__1 I1[2]
load net RTL_RSHIFT__0_n_3 -attr @rip(#000000) O[28] -pin RTL_RSHIFT__0 O[28] -pin reg_op1_i__1 I1[28]
load net RTL_RSHIFT__0_n_30 -attr @rip(#000000) O[1] -pin RTL_RSHIFT__0 O[1] -pin reg_op1_i__1 I1[1]
load net RTL_RSHIFT__0_n_31 -attr @rip(#000000) O[0] -pin RTL_RSHIFT__0 O[0] -pin reg_op1_i__1 I1[0]
load net RTL_RSHIFT__0_n_4 -attr @rip(#000000) O[27] -pin RTL_RSHIFT__0 O[27] -pin reg_op1_i__1 I1[27]
load net RTL_RSHIFT__0_n_5 -attr @rip(#000000) O[26] -pin RTL_RSHIFT__0 O[26] -pin reg_op1_i__1 I1[26]
load net RTL_RSHIFT__0_n_6 -attr @rip(#000000) O[25] -pin RTL_RSHIFT__0 O[25] -pin reg_op1_i__1 I1[25]
load net RTL_RSHIFT__0_n_7 -attr @rip(#000000) O[24] -pin RTL_RSHIFT__0 O[24] -pin reg_op1_i__1 I1[24]
load net RTL_RSHIFT__0_n_8 -attr @rip(#000000) O[23] -pin RTL_RSHIFT__0 O[23] -pin reg_op1_i__1 I1[23]
load net RTL_RSHIFT__0_n_9 -attr @rip(#000000) O[22] -pin RTL_RSHIFT__0 O[22] -pin reg_op1_i__1 I1[22]
load net RTL_RSHIFT_n_0 -attr @rip(#000000) O[31] -pin RTL_RSHIFT O[31] -pin reg_op1_i__0 I1[31]
load net RTL_RSHIFT_n_1 -attr @rip(#000000) O[30] -pin RTL_RSHIFT O[30] -pin reg_op1_i__0 I1[30]
load net RTL_RSHIFT_n_10 -attr @rip(#000000) O[21] -pin RTL_RSHIFT O[21] -pin reg_op1_i__0 I1[21]
load net RTL_RSHIFT_n_11 -attr @rip(#000000) O[20] -pin RTL_RSHIFT O[20] -pin reg_op1_i__0 I1[20]
load net RTL_RSHIFT_n_12 -attr @rip(#000000) O[19] -pin RTL_RSHIFT O[19] -pin reg_op1_i__0 I1[19]
load net RTL_RSHIFT_n_13 -attr @rip(#000000) O[18] -pin RTL_RSHIFT O[18] -pin reg_op1_i__0 I1[18]
load net RTL_RSHIFT_n_14 -attr @rip(#000000) O[17] -pin RTL_RSHIFT O[17] -pin reg_op1_i__0 I1[17]
load net RTL_RSHIFT_n_15 -attr @rip(#000000) O[16] -pin RTL_RSHIFT O[16] -pin reg_op1_i__0 I1[16]
load net RTL_RSHIFT_n_16 -attr @rip(#000000) O[15] -pin RTL_RSHIFT O[15] -pin reg_op1_i__0 I1[15]
load net RTL_RSHIFT_n_17 -attr @rip(#000000) O[14] -pin RTL_RSHIFT O[14] -pin reg_op1_i__0 I1[14]
load net RTL_RSHIFT_n_18 -attr @rip(#000000) O[13] -pin RTL_RSHIFT O[13] -pin reg_op1_i__0 I1[13]
load net RTL_RSHIFT_n_19 -attr @rip(#000000) O[12] -pin RTL_RSHIFT O[12] -pin reg_op1_i__0 I1[12]
load net RTL_RSHIFT_n_2 -attr @rip(#000000) O[29] -pin RTL_RSHIFT O[29] -pin reg_op1_i__0 I1[29]
load net RTL_RSHIFT_n_20 -attr @rip(#000000) O[11] -pin RTL_RSHIFT O[11] -pin reg_op1_i__0 I1[11]
load net RTL_RSHIFT_n_21 -attr @rip(#000000) O[10] -pin RTL_RSHIFT O[10] -pin reg_op1_i__0 I1[10]
load net RTL_RSHIFT_n_22 -attr @rip(#000000) O[9] -pin RTL_RSHIFT O[9] -pin reg_op1_i__0 I1[9]
load net RTL_RSHIFT_n_23 -attr @rip(#000000) O[8] -pin RTL_RSHIFT O[8] -pin reg_op1_i__0 I1[8]
load net RTL_RSHIFT_n_24 -attr @rip(#000000) O[7] -pin RTL_RSHIFT O[7] -pin reg_op1_i__0 I1[7]
load net RTL_RSHIFT_n_25 -attr @rip(#000000) O[6] -pin RTL_RSHIFT O[6] -pin reg_op1_i__0 I1[6]
load net RTL_RSHIFT_n_26 -attr @rip(#000000) O[5] -pin RTL_RSHIFT O[5] -pin reg_op1_i__0 I1[5]
load net RTL_RSHIFT_n_27 -attr @rip(#000000) O[4] -pin RTL_RSHIFT O[4] -pin reg_op1_i__0 I1[4]
load net RTL_RSHIFT_n_28 -attr @rip(#000000) O[3] -pin RTL_RSHIFT O[3] -pin reg_op1_i__0 I1[3]
load net RTL_RSHIFT_n_29 -attr @rip(#000000) O[2] -pin RTL_RSHIFT O[2] -pin reg_op1_i__0 I1[2]
load net RTL_RSHIFT_n_3 -attr @rip(#000000) O[28] -pin RTL_RSHIFT O[28] -pin reg_op1_i__0 I1[28]
load net RTL_RSHIFT_n_30 -attr @rip(#000000) O[1] -pin RTL_RSHIFT O[1] -pin reg_op1_i__0 I1[1]
load net RTL_RSHIFT_n_31 -attr @rip(#000000) O[0] -pin RTL_RSHIFT O[0] -pin reg_op1_i__0 I1[0]
load net RTL_RSHIFT_n_4 -attr @rip(#000000) O[27] -pin RTL_RSHIFT O[27] -pin reg_op1_i__0 I1[27]
load net RTL_RSHIFT_n_5 -attr @rip(#000000) O[26] -pin RTL_RSHIFT O[26] -pin reg_op1_i__0 I1[26]
load net RTL_RSHIFT_n_6 -attr @rip(#000000) O[25] -pin RTL_RSHIFT O[25] -pin reg_op1_i__0 I1[25]
load net RTL_RSHIFT_n_7 -attr @rip(#000000) O[24] -pin RTL_RSHIFT O[24] -pin reg_op1_i__0 I1[24]
load net RTL_RSHIFT_n_8 -attr @rip(#000000) O[23] -pin RTL_RSHIFT O[23] -pin reg_op1_i__0 I1[23]
load net RTL_RSHIFT_n_9 -attr @rip(#000000) O[22] -pin RTL_RSHIFT O[22] -pin reg_op1_i__0 I1[22]
load net RTL_XOR_n_0 -attr @rip(#000000) O[31] -pin RTL_XOR O[31] -pin alu_out_i I2[31]
load net RTL_XOR_n_1 -attr @rip(#000000) O[30] -pin RTL_XOR O[30] -pin alu_out_i I2[30]
load net RTL_XOR_n_10 -attr @rip(#000000) O[21] -pin RTL_XOR O[21] -pin alu_out_i I2[21]
load net RTL_XOR_n_11 -attr @rip(#000000) O[20] -pin RTL_XOR O[20] -pin alu_out_i I2[20]
load net RTL_XOR_n_12 -attr @rip(#000000) O[19] -pin RTL_XOR O[19] -pin alu_out_i I2[19]
load net RTL_XOR_n_13 -attr @rip(#000000) O[18] -pin RTL_XOR O[18] -pin alu_out_i I2[18]
load net RTL_XOR_n_14 -attr @rip(#000000) O[17] -pin RTL_XOR O[17] -pin alu_out_i I2[17]
load net RTL_XOR_n_15 -attr @rip(#000000) O[16] -pin RTL_XOR O[16] -pin alu_out_i I2[16]
load net RTL_XOR_n_16 -attr @rip(#000000) O[15] -pin RTL_XOR O[15] -pin alu_out_i I2[15]
load net RTL_XOR_n_17 -attr @rip(#000000) O[14] -pin RTL_XOR O[14] -pin alu_out_i I2[14]
load net RTL_XOR_n_18 -attr @rip(#000000) O[13] -pin RTL_XOR O[13] -pin alu_out_i I2[13]
load net RTL_XOR_n_19 -attr @rip(#000000) O[12] -pin RTL_XOR O[12] -pin alu_out_i I2[12]
load net RTL_XOR_n_2 -attr @rip(#000000) O[29] -pin RTL_XOR O[29] -pin alu_out_i I2[29]
load net RTL_XOR_n_20 -attr @rip(#000000) O[11] -pin RTL_XOR O[11] -pin alu_out_i I2[11]
load net RTL_XOR_n_21 -attr @rip(#000000) O[10] -pin RTL_XOR O[10] -pin alu_out_i I2[10]
load net RTL_XOR_n_22 -attr @rip(#000000) O[9] -pin RTL_XOR O[9] -pin alu_out_i I2[9]
load net RTL_XOR_n_23 -attr @rip(#000000) O[8] -pin RTL_XOR O[8] -pin alu_out_i I2[8]
load net RTL_XOR_n_24 -attr @rip(#000000) O[7] -pin RTL_XOR O[7] -pin alu_out_i I2[7]
load net RTL_XOR_n_25 -attr @rip(#000000) O[6] -pin RTL_XOR O[6] -pin alu_out_i I2[6]
load net RTL_XOR_n_26 -attr @rip(#000000) O[5] -pin RTL_XOR O[5] -pin alu_out_i I2[5]
load net RTL_XOR_n_27 -attr @rip(#000000) O[4] -pin RTL_XOR O[4] -pin alu_out_i I2[4]
load net RTL_XOR_n_28 -attr @rip(#000000) O[3] -pin RTL_XOR O[3] -pin alu_out_i I2[3]
load net RTL_XOR_n_29 -attr @rip(#000000) O[2] -pin RTL_XOR O[2] -pin alu_out_i I2[2]
load net RTL_XOR_n_3 -attr @rip(#000000) O[28] -pin RTL_XOR O[28] -pin alu_out_i I2[28]
load net RTL_XOR_n_30 -attr @rip(#000000) O[1] -pin RTL_XOR O[1] -pin alu_out_i I2[1]
load net RTL_XOR_n_31 -attr @rip(#000000) O[0] -pin RTL_XOR O[0] -pin alu_out_i I2[0]
load net RTL_XOR_n_4 -attr @rip(#000000) O[27] -pin RTL_XOR O[27] -pin alu_out_i I2[27]
load net RTL_XOR_n_5 -attr @rip(#000000) O[26] -pin RTL_XOR O[26] -pin alu_out_i I2[26]
load net RTL_XOR_n_6 -attr @rip(#000000) O[25] -pin RTL_XOR O[25] -pin alu_out_i I2[25]
load net RTL_XOR_n_7 -attr @rip(#000000) O[24] -pin RTL_XOR O[24] -pin alu_out_i I2[24]
load net RTL_XOR_n_8 -attr @rip(#000000) O[23] -pin RTL_XOR O[23] -pin alu_out_i I2[23]
load net RTL_XOR_n_9 -attr @rip(#000000) O[22] -pin RTL_XOR O[22] -pin alu_out_i I2[22]
load net alu_add_sub[0] -attr @rip(#000000) O[0] -pin RTL_MUX__1 O[0] -pin alu_out_i I0[0]
load net alu_add_sub[10] -attr @rip(#000000) O[10] -pin RTL_MUX__1 O[10] -pin alu_out_i I0[10]
load net alu_add_sub[11] -attr @rip(#000000) O[11] -pin RTL_MUX__1 O[11] -pin alu_out_i I0[11]
load net alu_add_sub[12] -attr @rip(#000000) O[12] -pin RTL_MUX__1 O[12] -pin alu_out_i I0[12]
load net alu_add_sub[13] -attr @rip(#000000) O[13] -pin RTL_MUX__1 O[13] -pin alu_out_i I0[13]
load net alu_add_sub[14] -attr @rip(#000000) O[14] -pin RTL_MUX__1 O[14] -pin alu_out_i I0[14]
load net alu_add_sub[15] -attr @rip(#000000) O[15] -pin RTL_MUX__1 O[15] -pin alu_out_i I0[15]
load net alu_add_sub[16] -attr @rip(#000000) O[16] -pin RTL_MUX__1 O[16] -pin alu_out_i I0[16]
load net alu_add_sub[17] -attr @rip(#000000) O[17] -pin RTL_MUX__1 O[17] -pin alu_out_i I0[17]
load net alu_add_sub[18] -attr @rip(#000000) O[18] -pin RTL_MUX__1 O[18] -pin alu_out_i I0[18]
load net alu_add_sub[19] -attr @rip(#000000) O[19] -pin RTL_MUX__1 O[19] -pin alu_out_i I0[19]
load net alu_add_sub[1] -attr @rip(#000000) O[1] -pin RTL_MUX__1 O[1] -pin alu_out_i I0[1]
load net alu_add_sub[20] -attr @rip(#000000) O[20] -pin RTL_MUX__1 O[20] -pin alu_out_i I0[20]
load net alu_add_sub[21] -attr @rip(#000000) O[21] -pin RTL_MUX__1 O[21] -pin alu_out_i I0[21]
load net alu_add_sub[22] -attr @rip(#000000) O[22] -pin RTL_MUX__1 O[22] -pin alu_out_i I0[22]
load net alu_add_sub[23] -attr @rip(#000000) O[23] -pin RTL_MUX__1 O[23] -pin alu_out_i I0[23]
load net alu_add_sub[24] -attr @rip(#000000) O[24] -pin RTL_MUX__1 O[24] -pin alu_out_i I0[24]
load net alu_add_sub[25] -attr @rip(#000000) O[25] -pin RTL_MUX__1 O[25] -pin alu_out_i I0[25]
load net alu_add_sub[26] -attr @rip(#000000) O[26] -pin RTL_MUX__1 O[26] -pin alu_out_i I0[26]
load net alu_add_sub[27] -attr @rip(#000000) O[27] -pin RTL_MUX__1 O[27] -pin alu_out_i I0[27]
load net alu_add_sub[28] -attr @rip(#000000) O[28] -pin RTL_MUX__1 O[28] -pin alu_out_i I0[28]
load net alu_add_sub[29] -attr @rip(#000000) O[29] -pin RTL_MUX__1 O[29] -pin alu_out_i I0[29]
load net alu_add_sub[2] -attr @rip(#000000) O[2] -pin RTL_MUX__1 O[2] -pin alu_out_i I0[2]
load net alu_add_sub[30] -attr @rip(#000000) O[30] -pin RTL_MUX__1 O[30] -pin alu_out_i I0[30]
load net alu_add_sub[31] -attr @rip(#000000) O[31] -pin RTL_MUX__1 O[31] -pin alu_out_i I0[31]
load net alu_add_sub[3] -attr @rip(#000000) O[3] -pin RTL_MUX__1 O[3] -pin alu_out_i I0[3]
load net alu_add_sub[4] -attr @rip(#000000) O[4] -pin RTL_MUX__1 O[4] -pin alu_out_i I0[4]
load net alu_add_sub[5] -attr @rip(#000000) O[5] -pin RTL_MUX__1 O[5] -pin alu_out_i I0[5]
load net alu_add_sub[6] -attr @rip(#000000) O[6] -pin RTL_MUX__1 O[6] -pin alu_out_i I0[6]
load net alu_add_sub[7] -attr @rip(#000000) O[7] -pin RTL_MUX__1 O[7] -pin alu_out_i I0[7]
load net alu_add_sub[8] -attr @rip(#000000) O[8] -pin RTL_MUX__1 O[8] -pin alu_out_i I0[8]
load net alu_add_sub[9] -attr @rip(#000000) O[9] -pin RTL_MUX__1 O[9] -pin alu_out_i I0[9]
load net alu_eq -pin RTL_EQ__87 O -pin RTL_INV__13 I0 -pin alu_out_0_i I0
netloc alu_eq 1 13 2 7110 3900 7950
load net alu_lts -pin RTL_INV__14 I0 -pin RTL_LT O -pin alu_out_0_i I4
netloc alu_lts 1 13 2 7030 3980 7890
load net alu_ltu -pin RTL_INV__15 I0 -pin RTL_LT__0 O -pin alu_out_0_i I5
netloc alu_ltu 1 13 2 6990 4060 7830
load net alu_out[0] -attr @rip(#000000) O[0] -pin alu_out_i O[0] -pin alu_out_q_reg[31:0] D[0]
load net alu_out[10] -attr @rip(#000000) O[10] -pin alu_out_i O[10] -pin alu_out_q_reg[31:0] D[10]
load net alu_out[11] -attr @rip(#000000) O[11] -pin alu_out_i O[11] -pin alu_out_q_reg[31:0] D[11]
load net alu_out[12] -attr @rip(#000000) O[12] -pin alu_out_i O[12] -pin alu_out_q_reg[31:0] D[12]
load net alu_out[13] -attr @rip(#000000) O[13] -pin alu_out_i O[13] -pin alu_out_q_reg[31:0] D[13]
load net alu_out[14] -attr @rip(#000000) O[14] -pin alu_out_i O[14] -pin alu_out_q_reg[31:0] D[14]
load net alu_out[15] -attr @rip(#000000) O[15] -pin alu_out_i O[15] -pin alu_out_q_reg[31:0] D[15]
load net alu_out[16] -attr @rip(#000000) O[16] -pin alu_out_i O[16] -pin alu_out_q_reg[31:0] D[16]
load net alu_out[17] -attr @rip(#000000) O[17] -pin alu_out_i O[17] -pin alu_out_q_reg[31:0] D[17]
load net alu_out[18] -attr @rip(#000000) O[18] -pin alu_out_i O[18] -pin alu_out_q_reg[31:0] D[18]
load net alu_out[19] -attr @rip(#000000) O[19] -pin alu_out_i O[19] -pin alu_out_q_reg[31:0] D[19]
load net alu_out[1] -attr @rip(#000000) O[1] -pin alu_out_i O[1] -pin alu_out_q_reg[31:0] D[1]
load net alu_out[20] -attr @rip(#000000) O[20] -pin alu_out_i O[20] -pin alu_out_q_reg[31:0] D[20]
load net alu_out[21] -attr @rip(#000000) O[21] -pin alu_out_i O[21] -pin alu_out_q_reg[31:0] D[21]
load net alu_out[22] -attr @rip(#000000) O[22] -pin alu_out_i O[22] -pin alu_out_q_reg[31:0] D[22]
load net alu_out[23] -attr @rip(#000000) O[23] -pin alu_out_i O[23] -pin alu_out_q_reg[31:0] D[23]
load net alu_out[24] -attr @rip(#000000) O[24] -pin alu_out_i O[24] -pin alu_out_q_reg[31:0] D[24]
load net alu_out[25] -attr @rip(#000000) O[25] -pin alu_out_i O[25] -pin alu_out_q_reg[31:0] D[25]
load net alu_out[26] -attr @rip(#000000) O[26] -pin alu_out_i O[26] -pin alu_out_q_reg[31:0] D[26]
load net alu_out[27] -attr @rip(#000000) O[27] -pin alu_out_i O[27] -pin alu_out_q_reg[31:0] D[27]
load net alu_out[28] -attr @rip(#000000) O[28] -pin alu_out_i O[28] -pin alu_out_q_reg[31:0] D[28]
load net alu_out[29] -attr @rip(#000000) O[29] -pin alu_out_i O[29] -pin alu_out_q_reg[31:0] D[29]
load net alu_out[2] -attr @rip(#000000) O[2] -pin alu_out_i O[2] -pin alu_out_q_reg[31:0] D[2]
load net alu_out[30] -attr @rip(#000000) O[30] -pin alu_out_i O[30] -pin alu_out_q_reg[31:0] D[30]
load net alu_out[31] -attr @rip(#000000) O[31] -pin alu_out_i O[31] -pin alu_out_q_reg[31:0] D[31]
load net alu_out[3] -attr @rip(#000000) O[3] -pin alu_out_i O[3] -pin alu_out_q_reg[31:0] D[3]
load net alu_out[4] -attr @rip(#000000) O[4] -pin alu_out_i O[4] -pin alu_out_q_reg[31:0] D[4]
load net alu_out[5] -attr @rip(#000000) O[5] -pin alu_out_i O[5] -pin alu_out_q_reg[31:0] D[5]
load net alu_out[6] -attr @rip(#000000) O[6] -pin alu_out_i O[6] -pin alu_out_q_reg[31:0] D[6]
load net alu_out[7] -attr @rip(#000000) O[7] -pin alu_out_i O[7] -pin alu_out_q_reg[31:0] D[7]
load net alu_out[8] -attr @rip(#000000) O[8] -pin alu_out_i O[8] -pin alu_out_q_reg[31:0] D[8]
load net alu_out[9] -attr @rip(#000000) O[9] -pin alu_out_i O[9] -pin alu_out_q_reg[31:0] D[9]
load net alu_out_0 -pin alu_out_0_i O -pin alu_out_i I1 -pin decoder_trigger_i S -pin latched_branch_i__0 I0 -pin latched_store_i I0 -pin set_mem_do_rinst_i I0
netloc alu_out_0 1 15 35 8740 7150 9320 7520 NJ 7520 NJ 7520 NJ 7520 NJ 7520 NJ 7520 NJ 7520 NJ 7520 NJ 7520 NJ 7520 NJ 7520 NJ 7520 NJ 7520 NJ 7520 NJ 7520 NJ 7520 NJ 7520 NJ 7520 NJ 7520 NJ 7520 NJ 7520 NJ 7520 NJ 7520 NJ 7520 NJ 7520 NJ 7520 NJ 7520 NJ 7520 20730 6250 NJ 6250 NJ 6250 NJ 6250 NJ 6250 23010
load net alu_out_q[0] -attr @rip(#000000) 0 -pin RTL_MUX__10 I0[0] -pin RTL_MUX__4 I0[0] -pin alu_out_q_reg[31:0] Q[0]
load net alu_out_q[10] -attr @rip(#000000) 10 -pin RTL_MUX__10 I0[10] -pin RTL_MUX__4 I0[10] -pin alu_out_q_reg[31:0] Q[10]
load net alu_out_q[11] -attr @rip(#000000) 11 -pin RTL_MUX__10 I0[11] -pin RTL_MUX__4 I0[11] -pin alu_out_q_reg[31:0] Q[11]
load net alu_out_q[12] -attr @rip(#000000) 12 -pin RTL_MUX__10 I0[12] -pin RTL_MUX__4 I0[12] -pin alu_out_q_reg[31:0] Q[12]
load net alu_out_q[13] -attr @rip(#000000) 13 -pin RTL_MUX__10 I0[13] -pin RTL_MUX__4 I0[13] -pin alu_out_q_reg[31:0] Q[13]
load net alu_out_q[14] -attr @rip(#000000) 14 -pin RTL_MUX__10 I0[14] -pin RTL_MUX__4 I0[14] -pin alu_out_q_reg[31:0] Q[14]
load net alu_out_q[15] -attr @rip(#000000) 15 -pin RTL_MUX__10 I0[15] -pin RTL_MUX__4 I0[15] -pin alu_out_q_reg[31:0] Q[15]
load net alu_out_q[16] -attr @rip(#000000) 16 -pin RTL_MUX__10 I0[16] -pin RTL_MUX__4 I0[16] -pin alu_out_q_reg[31:0] Q[16]
load net alu_out_q[17] -attr @rip(#000000) 17 -pin RTL_MUX__10 I0[17] -pin RTL_MUX__4 I0[17] -pin alu_out_q_reg[31:0] Q[17]
load net alu_out_q[18] -attr @rip(#000000) 18 -pin RTL_MUX__10 I0[18] -pin RTL_MUX__4 I0[18] -pin alu_out_q_reg[31:0] Q[18]
load net alu_out_q[19] -attr @rip(#000000) 19 -pin RTL_MUX__10 I0[19] -pin RTL_MUX__4 I0[19] -pin alu_out_q_reg[31:0] Q[19]
load net alu_out_q[1] -attr @rip(#000000) 1 -pin RTL_MUX__10 I0[1] -pin RTL_MUX__4 I0[1] -pin alu_out_q_reg[31:0] Q[1]
load net alu_out_q[20] -attr @rip(#000000) 20 -pin RTL_MUX__10 I0[20] -pin RTL_MUX__4 I0[20] -pin alu_out_q_reg[31:0] Q[20]
load net alu_out_q[21] -attr @rip(#000000) 21 -pin RTL_MUX__10 I0[21] -pin RTL_MUX__4 I0[21] -pin alu_out_q_reg[31:0] Q[21]
load net alu_out_q[22] -attr @rip(#000000) 22 -pin RTL_MUX__10 I0[22] -pin RTL_MUX__4 I0[22] -pin alu_out_q_reg[31:0] Q[22]
load net alu_out_q[23] -attr @rip(#000000) 23 -pin RTL_MUX__10 I0[23] -pin RTL_MUX__4 I0[23] -pin alu_out_q_reg[31:0] Q[23]
load net alu_out_q[24] -attr @rip(#000000) 24 -pin RTL_MUX__10 I0[24] -pin RTL_MUX__4 I0[24] -pin alu_out_q_reg[31:0] Q[24]
load net alu_out_q[25] -attr @rip(#000000) 25 -pin RTL_MUX__10 I0[25] -pin RTL_MUX__4 I0[25] -pin alu_out_q_reg[31:0] Q[25]
load net alu_out_q[26] -attr @rip(#000000) 26 -pin RTL_MUX__10 I0[26] -pin RTL_MUX__4 I0[26] -pin alu_out_q_reg[31:0] Q[26]
load net alu_out_q[27] -attr @rip(#000000) 27 -pin RTL_MUX__10 I0[27] -pin RTL_MUX__4 I0[27] -pin alu_out_q_reg[31:0] Q[27]
load net alu_out_q[28] -attr @rip(#000000) 28 -pin RTL_MUX__10 I0[28] -pin RTL_MUX__4 I0[28] -pin alu_out_q_reg[31:0] Q[28]
load net alu_out_q[29] -attr @rip(#000000) 29 -pin RTL_MUX__10 I0[29] -pin RTL_MUX__4 I0[29] -pin alu_out_q_reg[31:0] Q[29]
load net alu_out_q[2] -attr @rip(#000000) 2 -pin RTL_MUX__10 I0[2] -pin RTL_MUX__4 I0[2] -pin alu_out_q_reg[31:0] Q[2]
load net alu_out_q[30] -attr @rip(#000000) 30 -pin RTL_MUX__10 I0[30] -pin RTL_MUX__4 I0[30] -pin alu_out_q_reg[31:0] Q[30]
load net alu_out_q[31] -attr @rip(#000000) 31 -pin RTL_MUX__10 I0[31] -pin RTL_MUX__4 I0[31] -pin alu_out_q_reg[31:0] Q[31]
load net alu_out_q[3] -attr @rip(#000000) 3 -pin RTL_MUX__10 I0[3] -pin RTL_MUX__4 I0[3] -pin alu_out_q_reg[31:0] Q[3]
load net alu_out_q[4] -attr @rip(#000000) 4 -pin RTL_MUX__10 I0[4] -pin RTL_MUX__4 I0[4] -pin alu_out_q_reg[31:0] Q[4]
load net alu_out_q[5] -attr @rip(#000000) 5 -pin RTL_MUX__10 I0[5] -pin RTL_MUX__4 I0[5] -pin alu_out_q_reg[31:0] Q[5]
load net alu_out_q[6] -attr @rip(#000000) 6 -pin RTL_MUX__10 I0[6] -pin RTL_MUX__4 I0[6] -pin alu_out_q_reg[31:0] Q[6]
load net alu_out_q[7] -attr @rip(#000000) 7 -pin RTL_MUX__10 I0[7] -pin RTL_MUX__4 I0[7] -pin alu_out_q_reg[31:0] Q[7]
load net alu_out_q[8] -attr @rip(#000000) 8 -pin RTL_MUX__10 I0[8] -pin RTL_MUX__4 I0[8] -pin alu_out_q_reg[31:0] Q[8]
load net alu_out_q[9] -attr @rip(#000000) 9 -pin RTL_MUX__10 I0[9] -pin RTL_MUX__4 I0[9] -pin alu_out_q_reg[31:0] Q[9]
load net alu_shl[0] -attr @rip(#000000) O[0] -pin RTL_LSHIFT__0 O[0] -pin alu_out_i I5[0]
load net alu_shl[10] -attr @rip(#000000) O[10] -pin RTL_LSHIFT__0 O[10] -pin alu_out_i I5[10]
load net alu_shl[11] -attr @rip(#000000) O[11] -pin RTL_LSHIFT__0 O[11] -pin alu_out_i I5[11]
load net alu_shl[12] -attr @rip(#000000) O[12] -pin RTL_LSHIFT__0 O[12] -pin alu_out_i I5[12]
load net alu_shl[13] -attr @rip(#000000) O[13] -pin RTL_LSHIFT__0 O[13] -pin alu_out_i I5[13]
load net alu_shl[14] -attr @rip(#000000) O[14] -pin RTL_LSHIFT__0 O[14] -pin alu_out_i I5[14]
load net alu_shl[15] -attr @rip(#000000) O[15] -pin RTL_LSHIFT__0 O[15] -pin alu_out_i I5[15]
load net alu_shl[16] -attr @rip(#000000) O[16] -pin RTL_LSHIFT__0 O[16] -pin alu_out_i I5[16]
load net alu_shl[17] -attr @rip(#000000) O[17] -pin RTL_LSHIFT__0 O[17] -pin alu_out_i I5[17]
load net alu_shl[18] -attr @rip(#000000) O[18] -pin RTL_LSHIFT__0 O[18] -pin alu_out_i I5[18]
load net alu_shl[19] -attr @rip(#000000) O[19] -pin RTL_LSHIFT__0 O[19] -pin alu_out_i I5[19]
load net alu_shl[1] -attr @rip(#000000) O[1] -pin RTL_LSHIFT__0 O[1] -pin alu_out_i I5[1]
load net alu_shl[20] -attr @rip(#000000) O[20] -pin RTL_LSHIFT__0 O[20] -pin alu_out_i I5[20]
load net alu_shl[21] -attr @rip(#000000) O[21] -pin RTL_LSHIFT__0 O[21] -pin alu_out_i I5[21]
load net alu_shl[22] -attr @rip(#000000) O[22] -pin RTL_LSHIFT__0 O[22] -pin alu_out_i I5[22]
load net alu_shl[23] -attr @rip(#000000) O[23] -pin RTL_LSHIFT__0 O[23] -pin alu_out_i I5[23]
load net alu_shl[24] -attr @rip(#000000) O[24] -pin RTL_LSHIFT__0 O[24] -pin alu_out_i I5[24]
load net alu_shl[25] -attr @rip(#000000) O[25] -pin RTL_LSHIFT__0 O[25] -pin alu_out_i I5[25]
load net alu_shl[26] -attr @rip(#000000) O[26] -pin RTL_LSHIFT__0 O[26] -pin alu_out_i I5[26]
load net alu_shl[27] -attr @rip(#000000) O[27] -pin RTL_LSHIFT__0 O[27] -pin alu_out_i I5[27]
load net alu_shl[28] -attr @rip(#000000) O[28] -pin RTL_LSHIFT__0 O[28] -pin alu_out_i I5[28]
load net alu_shl[29] -attr @rip(#000000) O[29] -pin RTL_LSHIFT__0 O[29] -pin alu_out_i I5[29]
load net alu_shl[2] -attr @rip(#000000) O[2] -pin RTL_LSHIFT__0 O[2] -pin alu_out_i I5[2]
load net alu_shl[30] -attr @rip(#000000) O[30] -pin RTL_LSHIFT__0 O[30] -pin alu_out_i I5[30]
load net alu_shl[31] -attr @rip(#000000) O[31] -pin RTL_LSHIFT__0 O[31] -pin alu_out_i I5[31]
load net alu_shl[3] -attr @rip(#000000) O[3] -pin RTL_LSHIFT__0 O[3] -pin alu_out_i I5[3]
load net alu_shl[4] -attr @rip(#000000) O[4] -pin RTL_LSHIFT__0 O[4] -pin alu_out_i I5[4]
load net alu_shl[5] -attr @rip(#000000) O[5] -pin RTL_LSHIFT__0 O[5] -pin alu_out_i I5[5]
load net alu_shl[6] -attr @rip(#000000) O[6] -pin RTL_LSHIFT__0 O[6] -pin alu_out_i I5[6]
load net alu_shl[7] -attr @rip(#000000) O[7] -pin RTL_LSHIFT__0 O[7] -pin alu_out_i I5[7]
load net alu_shl[8] -attr @rip(#000000) O[8] -pin RTL_LSHIFT__0 O[8] -pin alu_out_i I5[8]
load net alu_shl[9] -attr @rip(#000000) O[9] -pin RTL_LSHIFT__0 O[9] -pin alu_out_i I5[9]
load net clk -pin alu_out_q_reg[31:0] C -port clk -pin compressed_instr_reg C -pin count_cycle_reg[63:0] C -pin count_instr_reg[63:0] C -pin cpu_state_reg[7:0] C -pin cpuregs clk -pin decoded_imm_j_reg[31:0] C -pin decoded_imm_reg[31:0] C -pin decoded_rd_reg[4:0] C -pin decoded_rs1_reg[4:0] C -pin decoded_rs2_reg[4:0] C -pin decoder_pseudo_trigger_reg C -pin decoder_trigger_reg C -pin do_waitirq_reg C -pin eoi_reg[31:0] C -pin instr_add_reg C -pin instr_addi_reg C -pin instr_and_reg C -pin instr_andi_reg C -pin instr_auipc_reg C -pin instr_beq_reg C -pin instr_bge_reg C -pin instr_bgeu_reg C -pin instr_blt_reg C -pin instr_bltu_reg C -pin instr_bne_reg C -pin instr_ecall_ebreak_reg C -pin instr_fence_reg C -pin instr_getq_reg C -pin instr_jal_reg C -pin instr_jalr_reg C -pin instr_lb_reg C -pin instr_lbu_reg C -pin instr_lh_reg C -pin instr_lhu_reg C -pin instr_lui_reg C -pin instr_lw_reg C -pin instr_maskirq_reg C -pin instr_or_reg C -pin instr_ori_reg C -pin instr_rdcycle_reg C -pin instr_rdcycleh_reg C -pin instr_rdinstr_reg C -pin instr_rdinstrh_reg C -pin instr_retirq_reg C -pin instr_sb_reg C -pin instr_setq_reg C -pin instr_sh_reg C -pin instr_sll_reg C -pin instr_slli_reg C -pin instr_slt_reg C -pin instr_slti_reg C -pin instr_sltiu_reg C -pin instr_sltu_reg C -pin instr_sra_reg C -pin instr_srai_reg C -pin instr_srl_reg C -pin instr_srli_reg C -pin instr_sub_reg C -pin instr_sw_reg C -pin instr_timer_reg C -pin instr_waitirq_reg C -pin instr_xor_reg C -pin instr_xori_reg C -pin is_alu_reg_imm_reg C -pin is_alu_reg_reg_reg C -pin is_beq_bne_blt_bge_bltu_bgeu_reg C -pin is_compare_reg C -pin is_jalr_addi_slti_sltiu_xori_ori_andi_reg C -pin is_lb_lh_lw_lbu_lhu_reg C -pin is_lbu_lhu_lw_reg C -pin is_lui_auipc_jal_jalr_addi_add_sub_reg C -pin is_lui_auipc_jal_reg C -pin is_sb_sh_sw_reg C -pin is_sll_srl_sra_reg C -pin is_slli_srli_srai_reg C -pin is_slti_blt_slt_reg C -pin is_sltiu_bltu_sltu_reg C -pin latched_branch_reg C -pin latched_compr_reg C -pin latched_is_lb_reg C -pin latched_is_lh_reg C -pin latched_is_lu_reg C -pin latched_rd_reg[4:0] C -pin latched_stalu_reg C -pin latched_store_reg C -pin mem_addr_reg[31:0] C -pin mem_do_prefetch_reg C -pin mem_do_rdata_reg C -pin mem_do_rinst_reg C -pin mem_do_wdata_reg C -pin mem_instr_reg C -pin mem_rdata_q_reg[31:0] C -pin mem_state_reg[1:0] C -pin mem_valid_reg C -pin mem_wdata_reg[31:0] C -pin mem_wordsize_reg[1:0] C -pin mem_wstrb_reg[3:0] C -pin pcpi_insn_reg[31:0] C -pin pcpi_timeout_reg C -pin pcpi_valid_reg C -pin reg_next_pc_reg[31:0] C -pin reg_op1_reg[31:0] C -pin reg_op2_reg[31:0] C -pin reg_out_reg[31:0] C -pin reg_pc_reg[31:0] C -pin reg_sh_reg[4:0] C -pin trace_data_reg[35:0] C -pin trap_reg C
netloc clk 1 0 70 NJ 4530 240 4630 NJ 4630 NJ 4630 NJ 4630 1430 4950 2020 4640 2610 5450 3380 5810 NJ 5810 4690 5260 5300 4540 5860 4290 6710 6010 7810 6140 8860 6480 9320 6780 9910 6720 10650 6720 NJ 6720 11510 6780 12050 6880 12510 6640 12880 6640 13280 6250 NJ 6250 14050 6210 NJ 6210 15170 6210 NJ 6210 NJ 6210 NJ 6210 17300 6620 NJ 6620 17940J 6750 NJ 6750 18600 6820 NJ 6820 NJ 6820 NJ 6820 NJ 6820 19790J 6700 20180 6660 NJ 6660 NJ 6660 NJ 6660 22080J 6760 22550 6830 NJ 6830 NJ 6830 NJ 6830 NJ 6830 24240 6500 24650 6500 NJ 6500 25470 6740 NJ 6740 NJ 6740 NJ 6740 NJ 6740 26980 6930 27280J 6740 NJ 6740 NJ 6740 NJ 6740 NJ 6740 28760 7090 NJ 7090 30330 7280 31060
load net compressed_instr -pin RTL_MUX__5 S -pin compressed_instr_reg Q -pin latched_compr_reg D
netloc compressed_instr 1 14 7 7510 6950N 8460J 6980 NJ 6980 10170J 6880 10590J 6860 NJ 6860 11490
load net compressed_instr__0 -pin compressed_instr_i O -pin compressed_instr_reg D
netloc compressed_instr__0 1 13 1 6630 6900n
load net count_cycle[0] -attr @rip(#000000) 0 -pin RTL_ADD__1 I0[0] -pin count_cycle_reg[63:0] Q[0] -pin reg_out_i I0[0]
load net count_cycle[10] -attr @rip(#000000) 10 -pin RTL_ADD__1 I0[10] -pin count_cycle_reg[63:0] Q[10] -pin reg_out_i I0[10]
load net count_cycle[11] -attr @rip(#000000) 11 -pin RTL_ADD__1 I0[11] -pin count_cycle_reg[63:0] Q[11] -pin reg_out_i I0[11]
load net count_cycle[12] -attr @rip(#000000) 12 -pin RTL_ADD__1 I0[12] -pin count_cycle_reg[63:0] Q[12] -pin reg_out_i I0[12]
load net count_cycle[13] -attr @rip(#000000) 13 -pin RTL_ADD__1 I0[13] -pin count_cycle_reg[63:0] Q[13] -pin reg_out_i I0[13]
load net count_cycle[14] -attr @rip(#000000) 14 -pin RTL_ADD__1 I0[14] -pin count_cycle_reg[63:0] Q[14] -pin reg_out_i I0[14]
load net count_cycle[15] -attr @rip(#000000) 15 -pin RTL_ADD__1 I0[15] -pin count_cycle_reg[63:0] Q[15] -pin reg_out_i I0[15]
load net count_cycle[16] -attr @rip(#000000) 16 -pin RTL_ADD__1 I0[16] -pin count_cycle_reg[63:0] Q[16] -pin reg_out_i I0[16]
load net count_cycle[17] -attr @rip(#000000) 17 -pin RTL_ADD__1 I0[17] -pin count_cycle_reg[63:0] Q[17] -pin reg_out_i I0[17]
load net count_cycle[18] -attr @rip(#000000) 18 -pin RTL_ADD__1 I0[18] -pin count_cycle_reg[63:0] Q[18] -pin reg_out_i I0[18]
load net count_cycle[19] -attr @rip(#000000) 19 -pin RTL_ADD__1 I0[19] -pin count_cycle_reg[63:0] Q[19] -pin reg_out_i I0[19]
load net count_cycle[1] -attr @rip(#000000) 1 -pin RTL_ADD__1 I0[1] -pin count_cycle_reg[63:0] Q[1] -pin reg_out_i I0[1]
load net count_cycle[20] -attr @rip(#000000) 20 -pin RTL_ADD__1 I0[20] -pin count_cycle_reg[63:0] Q[20] -pin reg_out_i I0[20]
load net count_cycle[21] -attr @rip(#000000) 21 -pin RTL_ADD__1 I0[21] -pin count_cycle_reg[63:0] Q[21] -pin reg_out_i I0[21]
load net count_cycle[22] -attr @rip(#000000) 22 -pin RTL_ADD__1 I0[22] -pin count_cycle_reg[63:0] Q[22] -pin reg_out_i I0[22]
load net count_cycle[23] -attr @rip(#000000) 23 -pin RTL_ADD__1 I0[23] -pin count_cycle_reg[63:0] Q[23] -pin reg_out_i I0[23]
load net count_cycle[24] -attr @rip(#000000) 24 -pin RTL_ADD__1 I0[24] -pin count_cycle_reg[63:0] Q[24] -pin reg_out_i I0[24]
load net count_cycle[25] -attr @rip(#000000) 25 -pin RTL_ADD__1 I0[25] -pin count_cycle_reg[63:0] Q[25] -pin reg_out_i I0[25]
load net count_cycle[26] -attr @rip(#000000) 26 -pin RTL_ADD__1 I0[26] -pin count_cycle_reg[63:0] Q[26] -pin reg_out_i I0[26]
load net count_cycle[27] -attr @rip(#000000) 27 -pin RTL_ADD__1 I0[27] -pin count_cycle_reg[63:0] Q[27] -pin reg_out_i I0[27]
load net count_cycle[28] -attr @rip(#000000) 28 -pin RTL_ADD__1 I0[28] -pin count_cycle_reg[63:0] Q[28] -pin reg_out_i I0[28]
load net count_cycle[29] -attr @rip(#000000) 29 -pin RTL_ADD__1 I0[29] -pin count_cycle_reg[63:0] Q[29] -pin reg_out_i I0[29]
load net count_cycle[2] -attr @rip(#000000) 2 -pin RTL_ADD__1 I0[2] -pin count_cycle_reg[63:0] Q[2] -pin reg_out_i I0[2]
load net count_cycle[30] -attr @rip(#000000) 30 -pin RTL_ADD__1 I0[30] -pin count_cycle_reg[63:0] Q[30] -pin reg_out_i I0[30]
load net count_cycle[31] -attr @rip(#000000) 31 -pin RTL_ADD__1 I0[31] -pin count_cycle_reg[63:0] Q[31] -pin reg_out_i I0[31]
load net count_cycle[32] -pin RTL_ADD__1 I0[32] -pin count_cycle_reg[63:0] Q[32] -pin reg_out_i I1[0]
load net count_cycle[33] -pin RTL_ADD__1 I0[33] -pin count_cycle_reg[63:0] Q[33] -pin reg_out_i I1[1]
load net count_cycle[34] -pin RTL_ADD__1 I0[34] -pin count_cycle_reg[63:0] Q[34] -pin reg_out_i I1[2]
load net count_cycle[35] -pin RTL_ADD__1 I0[35] -pin count_cycle_reg[63:0] Q[35] -pin reg_out_i I1[3]
load net count_cycle[36] -pin RTL_ADD__1 I0[36] -pin count_cycle_reg[63:0] Q[36] -pin reg_out_i I1[4]
load net count_cycle[37] -pin RTL_ADD__1 I0[37] -pin count_cycle_reg[63:0] Q[37] -pin reg_out_i I1[5]
load net count_cycle[38] -pin RTL_ADD__1 I0[38] -pin count_cycle_reg[63:0] Q[38] -pin reg_out_i I1[6]
load net count_cycle[39] -pin RTL_ADD__1 I0[39] -pin count_cycle_reg[63:0] Q[39] -pin reg_out_i I1[7]
load net count_cycle[3] -attr @rip(#000000) 3 -pin RTL_ADD__1 I0[3] -pin count_cycle_reg[63:0] Q[3] -pin reg_out_i I0[3]
load net count_cycle[40] -pin RTL_ADD__1 I0[40] -pin count_cycle_reg[63:0] Q[40] -pin reg_out_i I1[8]
load net count_cycle[41] -pin RTL_ADD__1 I0[41] -pin count_cycle_reg[63:0] Q[41] -pin reg_out_i I1[9]
load net count_cycle[42] -pin RTL_ADD__1 I0[42] -pin count_cycle_reg[63:0] Q[42] -pin reg_out_i I1[10]
load net count_cycle[43] -pin RTL_ADD__1 I0[43] -pin count_cycle_reg[63:0] Q[43] -pin reg_out_i I1[11]
load net count_cycle[44] -pin RTL_ADD__1 I0[44] -pin count_cycle_reg[63:0] Q[44] -pin reg_out_i I1[12]
load net count_cycle[45] -pin RTL_ADD__1 I0[45] -pin count_cycle_reg[63:0] Q[45] -pin reg_out_i I1[13]
load net count_cycle[46] -pin RTL_ADD__1 I0[46] -pin count_cycle_reg[63:0] Q[46] -pin reg_out_i I1[14]
load net count_cycle[47] -pin RTL_ADD__1 I0[47] -pin count_cycle_reg[63:0] Q[47] -pin reg_out_i I1[15]
load net count_cycle[48] -pin RTL_ADD__1 I0[48] -pin count_cycle_reg[63:0] Q[48] -pin reg_out_i I1[16]
load net count_cycle[49] -pin RTL_ADD__1 I0[49] -pin count_cycle_reg[63:0] Q[49] -pin reg_out_i I1[17]
load net count_cycle[4] -attr @rip(#000000) 4 -pin RTL_ADD__1 I0[4] -pin count_cycle_reg[63:0] Q[4] -pin reg_out_i I0[4]
load net count_cycle[50] -pin RTL_ADD__1 I0[50] -pin count_cycle_reg[63:0] Q[50] -pin reg_out_i I1[18]
load net count_cycle[51] -pin RTL_ADD__1 I0[51] -pin count_cycle_reg[63:0] Q[51] -pin reg_out_i I1[19]
load net count_cycle[52] -pin RTL_ADD__1 I0[52] -pin count_cycle_reg[63:0] Q[52] -pin reg_out_i I1[20]
load net count_cycle[53] -pin RTL_ADD__1 I0[53] -pin count_cycle_reg[63:0] Q[53] -pin reg_out_i I1[21]
load net count_cycle[54] -pin RTL_ADD__1 I0[54] -pin count_cycle_reg[63:0] Q[54] -pin reg_out_i I1[22]
load net count_cycle[55] -pin RTL_ADD__1 I0[55] -pin count_cycle_reg[63:0] Q[55] -pin reg_out_i I1[23]
load net count_cycle[56] -pin RTL_ADD__1 I0[56] -pin count_cycle_reg[63:0] Q[56] -pin reg_out_i I1[24]
load net count_cycle[57] -pin RTL_ADD__1 I0[57] -pin count_cycle_reg[63:0] Q[57] -pin reg_out_i I1[25]
load net count_cycle[58] -pin RTL_ADD__1 I0[58] -pin count_cycle_reg[63:0] Q[58] -pin reg_out_i I1[26]
load net count_cycle[59] -pin RTL_ADD__1 I0[59] -pin count_cycle_reg[63:0] Q[59] -pin reg_out_i I1[27]
load net count_cycle[5] -attr @rip(#000000) 5 -pin RTL_ADD__1 I0[5] -pin count_cycle_reg[63:0] Q[5] -pin reg_out_i I0[5]
load net count_cycle[60] -pin RTL_ADD__1 I0[60] -pin count_cycle_reg[63:0] Q[60] -pin reg_out_i I1[28]
load net count_cycle[61] -pin RTL_ADD__1 I0[61] -pin count_cycle_reg[63:0] Q[61] -pin reg_out_i I1[29]
load net count_cycle[62] -pin RTL_ADD__1 I0[62] -pin count_cycle_reg[63:0] Q[62] -pin reg_out_i I1[30]
load net count_cycle[63] -pin RTL_ADD__1 I0[63] -pin count_cycle_reg[63:0] Q[63] -pin reg_out_i I1[31]
load net count_cycle[6] -attr @rip(#000000) 6 -pin RTL_ADD__1 I0[6] -pin count_cycle_reg[63:0] Q[6] -pin reg_out_i I0[6]
load net count_cycle[7] -attr @rip(#000000) 7 -pin RTL_ADD__1 I0[7] -pin count_cycle_reg[63:0] Q[7] -pin reg_out_i I0[7]
load net count_cycle[8] -attr @rip(#000000) 8 -pin RTL_ADD__1 I0[8] -pin count_cycle_reg[63:0] Q[8] -pin reg_out_i I0[8]
load net count_cycle[9] -attr @rip(#000000) 9 -pin RTL_ADD__1 I0[9] -pin count_cycle_reg[63:0] Q[9] -pin reg_out_i I0[9]
load net count_instr[0] -attr @rip(#000000) 0 -pin RTL_ADD__2 I0[0] -pin count_instr_reg[63:0] Q[0] -pin reg_out_i I2[0]
load net count_instr[10] -attr @rip(#000000) 10 -pin RTL_ADD__2 I0[10] -pin count_instr_reg[63:0] Q[10] -pin reg_out_i I2[10]
load net count_instr[11] -attr @rip(#000000) 11 -pin RTL_ADD__2 I0[11] -pin count_instr_reg[63:0] Q[11] -pin reg_out_i I2[11]
load net count_instr[12] -attr @rip(#000000) 12 -pin RTL_ADD__2 I0[12] -pin count_instr_reg[63:0] Q[12] -pin reg_out_i I2[12]
load net count_instr[13] -attr @rip(#000000) 13 -pin RTL_ADD__2 I0[13] -pin count_instr_reg[63:0] Q[13] -pin reg_out_i I2[13]
load net count_instr[14] -attr @rip(#000000) 14 -pin RTL_ADD__2 I0[14] -pin count_instr_reg[63:0] Q[14] -pin reg_out_i I2[14]
load net count_instr[15] -attr @rip(#000000) 15 -pin RTL_ADD__2 I0[15] -pin count_instr_reg[63:0] Q[15] -pin reg_out_i I2[15]
load net count_instr[16] -attr @rip(#000000) 16 -pin RTL_ADD__2 I0[16] -pin count_instr_reg[63:0] Q[16] -pin reg_out_i I2[16]
load net count_instr[17] -attr @rip(#000000) 17 -pin RTL_ADD__2 I0[17] -pin count_instr_reg[63:0] Q[17] -pin reg_out_i I2[17]
load net count_instr[18] -attr @rip(#000000) 18 -pin RTL_ADD__2 I0[18] -pin count_instr_reg[63:0] Q[18] -pin reg_out_i I2[18]
load net count_instr[19] -attr @rip(#000000) 19 -pin RTL_ADD__2 I0[19] -pin count_instr_reg[63:0] Q[19] -pin reg_out_i I2[19]
load net count_instr[1] -attr @rip(#000000) 1 -pin RTL_ADD__2 I0[1] -pin count_instr_reg[63:0] Q[1] -pin reg_out_i I2[1]
load net count_instr[20] -attr @rip(#000000) 20 -pin RTL_ADD__2 I0[20] -pin count_instr_reg[63:0] Q[20] -pin reg_out_i I2[20]
load net count_instr[21] -attr @rip(#000000) 21 -pin RTL_ADD__2 I0[21] -pin count_instr_reg[63:0] Q[21] -pin reg_out_i I2[21]
load net count_instr[22] -attr @rip(#000000) 22 -pin RTL_ADD__2 I0[22] -pin count_instr_reg[63:0] Q[22] -pin reg_out_i I2[22]
load net count_instr[23] -attr @rip(#000000) 23 -pin RTL_ADD__2 I0[23] -pin count_instr_reg[63:0] Q[23] -pin reg_out_i I2[23]
load net count_instr[24] -attr @rip(#000000) 24 -pin RTL_ADD__2 I0[24] -pin count_instr_reg[63:0] Q[24] -pin reg_out_i I2[24]
load net count_instr[25] -attr @rip(#000000) 25 -pin RTL_ADD__2 I0[25] -pin count_instr_reg[63:0] Q[25] -pin reg_out_i I2[25]
load net count_instr[26] -attr @rip(#000000) 26 -pin RTL_ADD__2 I0[26] -pin count_instr_reg[63:0] Q[26] -pin reg_out_i I2[26]
load net count_instr[27] -attr @rip(#000000) 27 -pin RTL_ADD__2 I0[27] -pin count_instr_reg[63:0] Q[27] -pin reg_out_i I2[27]
load net count_instr[28] -attr @rip(#000000) 28 -pin RTL_ADD__2 I0[28] -pin count_instr_reg[63:0] Q[28] -pin reg_out_i I2[28]
load net count_instr[29] -attr @rip(#000000) 29 -pin RTL_ADD__2 I0[29] -pin count_instr_reg[63:0] Q[29] -pin reg_out_i I2[29]
load net count_instr[2] -attr @rip(#000000) 2 -pin RTL_ADD__2 I0[2] -pin count_instr_reg[63:0] Q[2] -pin reg_out_i I2[2]
load net count_instr[30] -attr @rip(#000000) 30 -pin RTL_ADD__2 I0[30] -pin count_instr_reg[63:0] Q[30] -pin reg_out_i I2[30]
load net count_instr[31] -attr @rip(#000000) 31 -pin RTL_ADD__2 I0[31] -pin count_instr_reg[63:0] Q[31] -pin reg_out_i I2[31]
load net count_instr[32] -pin RTL_ADD__2 I0[32] -pin count_instr_reg[63:0] Q[32] -pin reg_out_i I3[0]
load net count_instr[33] -pin RTL_ADD__2 I0[33] -pin count_instr_reg[63:0] Q[33] -pin reg_out_i I3[1]
load net count_instr[34] -pin RTL_ADD__2 I0[34] -pin count_instr_reg[63:0] Q[34] -pin reg_out_i I3[2]
load net count_instr[35] -pin RTL_ADD__2 I0[35] -pin count_instr_reg[63:0] Q[35] -pin reg_out_i I3[3]
load net count_instr[36] -pin RTL_ADD__2 I0[36] -pin count_instr_reg[63:0] Q[36] -pin reg_out_i I3[4]
load net count_instr[37] -pin RTL_ADD__2 I0[37] -pin count_instr_reg[63:0] Q[37] -pin reg_out_i I3[5]
load net count_instr[38] -pin RTL_ADD__2 I0[38] -pin count_instr_reg[63:0] Q[38] -pin reg_out_i I3[6]
load net count_instr[39] -pin RTL_ADD__2 I0[39] -pin count_instr_reg[63:0] Q[39] -pin reg_out_i I3[7]
load net count_instr[3] -attr @rip(#000000) 3 -pin RTL_ADD__2 I0[3] -pin count_instr_reg[63:0] Q[3] -pin reg_out_i I2[3]
load net count_instr[40] -pin RTL_ADD__2 I0[40] -pin count_instr_reg[63:0] Q[40] -pin reg_out_i I3[8]
load net count_instr[41] -pin RTL_ADD__2 I0[41] -pin count_instr_reg[63:0] Q[41] -pin reg_out_i I3[9]
load net count_instr[42] -pin RTL_ADD__2 I0[42] -pin count_instr_reg[63:0] Q[42] -pin reg_out_i I3[10]
load net count_instr[43] -pin RTL_ADD__2 I0[43] -pin count_instr_reg[63:0] Q[43] -pin reg_out_i I3[11]
load net count_instr[44] -pin RTL_ADD__2 I0[44] -pin count_instr_reg[63:0] Q[44] -pin reg_out_i I3[12]
load net count_instr[45] -pin RTL_ADD__2 I0[45] -pin count_instr_reg[63:0] Q[45] -pin reg_out_i I3[13]
load net count_instr[46] -pin RTL_ADD__2 I0[46] -pin count_instr_reg[63:0] Q[46] -pin reg_out_i I3[14]
load net count_instr[47] -pin RTL_ADD__2 I0[47] -pin count_instr_reg[63:0] Q[47] -pin reg_out_i I3[15]
load net count_instr[48] -pin RTL_ADD__2 I0[48] -pin count_instr_reg[63:0] Q[48] -pin reg_out_i I3[16]
load net count_instr[49] -pin RTL_ADD__2 I0[49] -pin count_instr_reg[63:0] Q[49] -pin reg_out_i I3[17]
load net count_instr[4] -attr @rip(#000000) 4 -pin RTL_ADD__2 I0[4] -pin count_instr_reg[63:0] Q[4] -pin reg_out_i I2[4]
load net count_instr[50] -pin RTL_ADD__2 I0[50] -pin count_instr_reg[63:0] Q[50] -pin reg_out_i I3[18]
load net count_instr[51] -pin RTL_ADD__2 I0[51] -pin count_instr_reg[63:0] Q[51] -pin reg_out_i I3[19]
load net count_instr[52] -pin RTL_ADD__2 I0[52] -pin count_instr_reg[63:0] Q[52] -pin reg_out_i I3[20]
load net count_instr[53] -pin RTL_ADD__2 I0[53] -pin count_instr_reg[63:0] Q[53] -pin reg_out_i I3[21]
load net count_instr[54] -pin RTL_ADD__2 I0[54] -pin count_instr_reg[63:0] Q[54] -pin reg_out_i I3[22]
load net count_instr[55] -pin RTL_ADD__2 I0[55] -pin count_instr_reg[63:0] Q[55] -pin reg_out_i I3[23]
load net count_instr[56] -pin RTL_ADD__2 I0[56] -pin count_instr_reg[63:0] Q[56] -pin reg_out_i I3[24]
load net count_instr[57] -pin RTL_ADD__2 I0[57] -pin count_instr_reg[63:0] Q[57] -pin reg_out_i I3[25]
load net count_instr[58] -pin RTL_ADD__2 I0[58] -pin count_instr_reg[63:0] Q[58] -pin reg_out_i I3[26]
load net count_instr[59] -pin RTL_ADD__2 I0[59] -pin count_instr_reg[63:0] Q[59] -pin reg_out_i I3[27]
load net count_instr[5] -attr @rip(#000000) 5 -pin RTL_ADD__2 I0[5] -pin count_instr_reg[63:0] Q[5] -pin reg_out_i I2[5]
load net count_instr[60] -pin RTL_ADD__2 I0[60] -pin count_instr_reg[63:0] Q[60] -pin reg_out_i I3[28]
load net count_instr[61] -pin RTL_ADD__2 I0[61] -pin count_instr_reg[63:0] Q[61] -pin reg_out_i I3[29]
load net count_instr[62] -pin RTL_ADD__2 I0[62] -pin count_instr_reg[63:0] Q[62] -pin reg_out_i I3[30]
load net count_instr[63] -pin RTL_ADD__2 I0[63] -pin count_instr_reg[63:0] Q[63] -pin reg_out_i I3[31]
load net count_instr[6] -attr @rip(#000000) 6 -pin RTL_ADD__2 I0[6] -pin count_instr_reg[63:0] Q[6] -pin reg_out_i I2[6]
load net count_instr[7] -attr @rip(#000000) 7 -pin RTL_ADD__2 I0[7] -pin count_instr_reg[63:0] Q[7] -pin reg_out_i I2[7]
load net count_instr[8] -attr @rip(#000000) 8 -pin RTL_ADD__2 I0[8] -pin count_instr_reg[63:0] Q[8] -pin reg_out_i I2[8]
load net count_instr[9] -attr @rip(#000000) 9 -pin RTL_ADD__2 I0[9] -pin count_instr_reg[63:0] Q[9] -pin reg_out_i I2[9]
load net count_instr__0 -pin count_instr_i O -pin count_instr_reg[63:0] CE
netloc count_instr__0 1 12 1 5880 3880n
load net cpu_state1_out -pin cpu_state_i__13 O -pin cpu_state_reg[7:0] CE
netloc cpu_state1_out 1 32 1 17280 6420n
load net cpu_state2_out[0] -attr @rip(#000000) O[0] -pin cpu_state_i__4 O[0] -pin cpu_state_reg[7:0] D[0]
load net cpu_state2_out[1] -attr @rip(#000000) O[1] -pin cpu_state_i__4 O[1] -pin cpu_state_reg[7:0] D[1]
load net cpu_state2_out[2] -attr @rip(#000000) O[2] -pin cpu_state_i__4 O[2] -pin cpu_state_reg[7:0] D[2]
load net cpu_state2_out[3] -attr @rip(#000000) O[3] -pin cpu_state_i__4 O[3] -pin cpu_state_reg[7:0] D[3]
load net cpu_state2_out[4] -attr @rip(#000000) O[4] -pin cpu_state_i__4 O[4] -pin cpu_state_reg[7:0] D[4]
load net cpu_state2_out[5] -attr @rip(#000000) O[5] -pin cpu_state_i__4 O[5] -pin cpu_state_reg[7:0] D[5]
load net cpu_state2_out[6] -attr @rip(#000000) O[6] -pin cpu_state_i__4 O[6] -pin cpu_state_reg[7:0] D[6]
load net cpu_state2_out[7] -attr @rip(#000000) O[7] -pin cpu_state_i__4 O[7] -pin cpu_state_reg[7:0] D[7]
load net cpu_state6_out -pin cpu_state_i__12 O -pin cpu_state_i__13 I1
netloc cpu_state6_out 1 31 1 16860 6390n
load net cpu_state[0] -attr @rip(#000000) 0 -pin RTL_EQ__96 I0[0] -pin count_instr_i S[0] -pin cpu_state_i__12 S[0] -pin cpu_state_i__3 S[0] -pin cpu_state_reg[7:0] Q[0] -pin decoder_pseudo_trigger_i__1 S[0] -pin decoder_trigger_i__5 S[0] -pin latched_branch_i__1 S[0] -pin latched_branch_i__2 A[0] -pin latched_compr_i A[0] -pin latched_is_lb_i S[0] -pin latched_is_lb_i__1 S[0] -pin latched_is_lh_i S[0] -pin latched_is_lh_i__1 S[0] -pin latched_is_lu_i S[0] -pin latched_is_lu_i__1 S[0] -pin latched_rd_i S[0] -pin latched_rd_i__0 S[0] -pin latched_stalu_i A[0] -pin latched_stalu_i__1 S[0] -pin latched_store_i__0 S[0] -pin latched_store_i__3 S[0] -pin mem_do_prefetch_i__1 S[0] -pin mem_do_rinst_i__4 S[0] -pin mem_do_rinst_i__8 S[0] -pin mem_wordsize_i__1 S[0] -pin mem_wordsize_i__4 S[0] -pin pcpi_valid_i__2 S[0] -pin reg_next_pc_i__1 A[0] -pin reg_op1_i__3 S[0] -pin reg_op1_i__7 S[0] -pin reg_op2_i__0 S[0] -pin reg_op2_i__1 A[0] -pin reg_out_i__2 S[0] -pin reg_pc_i A[0] -pin reg_sh_i__1 S[0] -pin set_mem_do_rdata_i__0 S[0] -pin set_mem_do_rinst_i__0 S[0] -pin set_mem_do_wdata_i__0 S[0] -pin trap_i A[0]
load net cpu_state[1] -attr @rip(#000000) 1 -pin RTL_EQ__96 I0[1] -pin count_instr_i S[1] -pin cpu_state_i__12 S[1] -pin cpu_state_i__3 S[1] -pin cpu_state_reg[7:0] Q[1] -pin decoder_pseudo_trigger_i__1 S[1] -pin decoder_trigger_i__5 S[1] -pin latched_branch_i__1 S[1] -pin latched_branch_i__2 A[1] -pin latched_compr_i A[1] -pin latched_is_lb_i S[1] -pin latched_is_lb_i__1 S[1] -pin latched_is_lh_i S[1] -pin latched_is_lh_i__1 S[1] -pin latched_is_lu_i S[1] -pin latched_is_lu_i__1 S[1] -pin latched_rd_i S[1] -pin latched_rd_i__0 S[1] -pin latched_stalu_i A[1] -pin latched_stalu_i__1 S[1] -pin latched_store_i__0 S[1] -pin latched_store_i__3 S[1] -pin mem_do_prefetch_i__1 S[1] -pin mem_do_rinst_i__4 S[1] -pin mem_do_rinst_i__8 S[1] -pin mem_wordsize_i__1 S[1] -pin mem_wordsize_i__4 S[1] -pin pcpi_valid_i__2 S[1] -pin reg_next_pc_i__1 A[1] -pin reg_op1_i__3 S[1] -pin reg_op1_i__7 S[1] -pin reg_op2_i__0 S[1] -pin reg_op2_i__1 A[1] -pin reg_out_i__2 S[1] -pin reg_pc_i A[1] -pin reg_sh_i__1 S[1] -pin set_mem_do_rdata_i__0 S[1] -pin set_mem_do_rinst_i__0 S[1] -pin set_mem_do_wdata_i__0 S[1] -pin trap_i A[1]
load net cpu_state[2] -attr @rip(#000000) 2 -pin RTL_EQ__96 I0[2] -pin count_instr_i S[2] -pin cpu_state_i__12 S[2] -pin cpu_state_i__3 S[2] -pin cpu_state_reg[7:0] Q[2] -pin decoder_pseudo_trigger_i__1 S[2] -pin decoder_trigger_i__5 S[2] -pin latched_branch_i__1 S[2] -pin latched_branch_i__2 A[2] -pin latched_compr_i A[2] -pin latched_is_lb_i S[2] -pin latched_is_lb_i__1 S[2] -pin latched_is_lh_i S[2] -pin latched_is_lh_i__1 S[2] -pin latched_is_lu_i S[2] -pin latched_is_lu_i__1 S[2] -pin latched_rd_i S[2] -pin latched_rd_i__0 S[2] -pin latched_stalu_i A[2] -pin latched_stalu_i__1 S[2] -pin latched_store_i__0 S[2] -pin latched_store_i__3 S[2] -pin mem_do_prefetch_i__1 S[2] -pin mem_do_rinst_i__4 S[2] -pin mem_do_rinst_i__8 S[2] -pin mem_wordsize_i__1 S[2] -pin mem_wordsize_i__4 S[2] -pin pcpi_valid_i__2 S[2] -pin reg_next_pc_i__1 A[2] -pin reg_op1_i__3 S[2] -pin reg_op1_i__7 S[2] -pin reg_op2_i__0 S[2] -pin reg_op2_i__1 A[2] -pin reg_out_i__2 S[2] -pin reg_pc_i A[2] -pin reg_sh_i__1 S[2] -pin set_mem_do_rdata_i__0 S[2] -pin set_mem_do_rinst_i__0 S[2] -pin set_mem_do_wdata_i__0 S[2] -pin trap_i A[2]
load net cpu_state[3] -attr @rip(#000000) 3 -pin RTL_EQ__96 I0[3] -pin count_instr_i S[3] -pin cpu_state_i__12 S[3] -pin cpu_state_i__3 S[3] -pin cpu_state_reg[7:0] Q[3] -pin decoder_pseudo_trigger_i__1 S[3] -pin decoder_trigger_i__5 S[3] -pin latched_branch_i__1 S[3] -pin latched_branch_i__2 A[3] -pin latched_compr_i A[3] -pin latched_is_lb_i S[3] -pin latched_is_lb_i__1 S[3] -pin latched_is_lh_i S[3] -pin latched_is_lh_i__1 S[3] -pin latched_is_lu_i S[3] -pin latched_is_lu_i__1 S[3] -pin latched_rd_i S[3] -pin latched_rd_i__0 S[3] -pin latched_stalu_i A[3] -pin latched_stalu_i__1 S[3] -pin latched_store_i__0 S[3] -pin latched_store_i__3 S[3] -pin mem_do_prefetch_i__1 S[3] -pin mem_do_rinst_i__4 S[3] -pin mem_do_rinst_i__8 S[3] -pin mem_wordsize_i__1 S[3] -pin mem_wordsize_i__4 S[3] -pin pcpi_valid_i__2 S[3] -pin reg_next_pc_i__1 A[3] -pin reg_op1_i__3 S[3] -pin reg_op1_i__7 S[3] -pin reg_op2_i__0 S[3] -pin reg_op2_i__1 A[3] -pin reg_out_i__2 S[3] -pin reg_pc_i A[3] -pin reg_sh_i__1 S[3] -pin set_mem_do_rdata_i__0 S[3] -pin set_mem_do_rinst_i__0 S[3] -pin set_mem_do_wdata_i__0 S[3] -pin trap_i A[3]
load net cpu_state[4] -attr @rip(#000000) 4 -pin RTL_EQ__96 I0[4] -pin count_instr_i S[4] -pin cpu_state_i__12 S[4] -pin cpu_state_i__3 S[4] -pin cpu_state_reg[7:0] Q[4] -pin decoder_pseudo_trigger_i__1 S[4] -pin decoder_trigger_i__5 S[4] -pin latched_branch_i__1 S[4] -pin latched_branch_i__2 A[4] -pin latched_compr_i A[4] -pin latched_is_lb_i S[4] -pin latched_is_lb_i__1 S[4] -pin latched_is_lh_i S[4] -pin latched_is_lh_i__1 S[4] -pin latched_is_lu_i S[4] -pin latched_is_lu_i__1 S[4] -pin latched_rd_i S[4] -pin latched_rd_i__0 S[4] -pin latched_stalu_i A[4] -pin latched_stalu_i__1 S[4] -pin latched_store_i__0 S[4] -pin latched_store_i__3 S[4] -pin mem_do_prefetch_i__1 S[4] -pin mem_do_rinst_i__4 S[4] -pin mem_do_rinst_i__8 S[4] -pin mem_wordsize_i__1 S[4] -pin mem_wordsize_i__4 S[4] -pin pcpi_valid_i__2 S[4] -pin reg_next_pc_i__1 A[4] -pin reg_op1_i__3 S[4] -pin reg_op1_i__7 S[4] -pin reg_op2_i__0 S[4] -pin reg_op2_i__1 A[4] -pin reg_out_i__2 S[4] -pin reg_pc_i A[4] -pin reg_sh_i__1 S[4] -pin set_mem_do_rdata_i__0 S[4] -pin set_mem_do_rinst_i__0 S[4] -pin set_mem_do_wdata_i__0 S[4] -pin trap_i A[4]
load net cpu_state[5] -attr @rip(#000000) 5 -pin RTL_EQ__96 I0[5] -pin count_instr_i S[5] -pin cpu_state_i__12 S[5] -pin cpu_state_i__3 S[5] -pin cpu_state_reg[7:0] Q[5] -pin decoder_pseudo_trigger_i__1 S[5] -pin decoder_trigger_i__5 S[5] -pin latched_branch_i__1 S[5] -pin latched_branch_i__2 A[5] -pin latched_compr_i A[5] -pin latched_is_lb_i S[5] -pin latched_is_lb_i__1 S[5] -pin latched_is_lh_i S[5] -pin latched_is_lh_i__1 S[5] -pin latched_is_lu_i S[5] -pin latched_is_lu_i__1 S[5] -pin latched_rd_i S[5] -pin latched_rd_i__0 S[5] -pin latched_stalu_i A[5] -pin latched_stalu_i__1 S[5] -pin latched_store_i__0 S[5] -pin latched_store_i__3 S[5] -pin mem_do_prefetch_i__1 S[5] -pin mem_do_rinst_i__4 S[5] -pin mem_do_rinst_i__8 S[5] -pin mem_wordsize_i__1 S[5] -pin mem_wordsize_i__4 S[5] -pin pcpi_valid_i__2 S[5] -pin reg_next_pc_i__1 A[5] -pin reg_op1_i__3 S[5] -pin reg_op1_i__7 S[5] -pin reg_op2_i__0 S[5] -pin reg_op2_i__1 A[5] -pin reg_out_i__2 S[5] -pin reg_pc_i A[5] -pin reg_sh_i__1 S[5] -pin set_mem_do_rdata_i__0 S[5] -pin set_mem_do_rinst_i__0 S[5] -pin set_mem_do_wdata_i__0 S[5] -pin trap_i A[5]
load net cpu_state[6] -attr @rip(#000000) 6 -pin RTL_EQ__96 I0[6] -pin count_instr_i S[6] -pin cpu_state_i__12 S[6] -pin cpu_state_i__3 S[6] -pin cpu_state_reg[7:0] Q[6] -pin decoder_pseudo_trigger_i__1 S[6] -pin decoder_trigger_i__5 S[6] -pin latched_branch_i__1 S[6] -pin latched_branch_i__2 A[6] -pin latched_compr_i A[6] -pin latched_is_lb_i S[6] -pin latched_is_lb_i__1 S[6] -pin latched_is_lh_i S[6] -pin latched_is_lh_i__1 S[6] -pin latched_is_lu_i S[6] -pin latched_is_lu_i__1 S[6] -pin latched_rd_i S[6] -pin latched_rd_i__0 S[6] -pin latched_stalu_i A[6] -pin latched_stalu_i__1 S[6] -pin latched_store_i__0 S[6] -pin latched_store_i__3 S[6] -pin mem_do_prefetch_i__1 S[6] -pin mem_do_rinst_i__4 S[6] -pin mem_do_rinst_i__8 S[6] -pin mem_wordsize_i__1 S[6] -pin mem_wordsize_i__4 S[6] -pin pcpi_valid_i__2 S[6] -pin reg_next_pc_i__1 A[6] -pin reg_op1_i__3 S[6] -pin reg_op1_i__7 S[6] -pin reg_op2_i__0 S[6] -pin reg_op2_i__1 A[6] -pin reg_out_i__2 S[6] -pin reg_pc_i A[6] -pin reg_sh_i__1 S[6] -pin set_mem_do_rdata_i__0 S[6] -pin set_mem_do_rinst_i__0 S[6] -pin set_mem_do_wdata_i__0 S[6] -pin trap_i A[6]
load net cpu_state[7] -attr @rip(#000000) 7 -pin RTL_EQ__96 I0[7] -pin count_instr_i S[7] -pin cpu_state_i__12 S[7] -pin cpu_state_i__3 S[7] -pin cpu_state_reg[7:0] Q[7] -pin decoder_pseudo_trigger_i__1 S[7] -pin decoder_trigger_i__5 S[7] -pin latched_branch_i__1 S[7] -pin latched_branch_i__2 A[7] -pin latched_compr_i A[7] -pin latched_is_lb_i S[7] -pin latched_is_lb_i__1 S[7] -pin latched_is_lh_i S[7] -pin latched_is_lh_i__1 S[7] -pin latched_is_lu_i S[7] -pin latched_is_lu_i__1 S[7] -pin latched_rd_i S[7] -pin latched_rd_i__0 S[7] -pin latched_stalu_i A[7] -pin latched_stalu_i__1 S[7] -pin latched_store_i__0 S[7] -pin latched_store_i__3 S[7] -pin mem_do_prefetch_i__1 S[7] -pin mem_do_rinst_i__4 S[7] -pin mem_do_rinst_i__8 S[7] -pin mem_wordsize_i__1 S[7] -pin mem_wordsize_i__4 S[7] -pin pcpi_valid_i__2 S[7] -pin reg_next_pc_i__1 A[7] -pin reg_op1_i__3 S[7] -pin reg_op1_i__7 S[7] -pin reg_op2_i__0 S[7] -pin reg_op2_i__1 A[7] -pin reg_out_i__2 S[7] -pin reg_pc_i A[7] -pin reg_sh_i__1 S[7] -pin set_mem_do_rdata_i__0 S[7] -pin set_mem_do_rinst_i__0 S[7] -pin set_mem_do_wdata_i__0 S[7] -pin trap_i A[7]
load net cpu_state__0[0] -attr @rip(#000000) O[0] -pin cpu_state_i__3 O[0] -pin cpu_state_i__4 I1[0]
load net cpu_state__0[1] -attr @rip(#000000) O[1] -pin cpu_state_i__3 O[1] -pin cpu_state_i__4 I1[1]
load net cpu_state__0[2] -attr @rip(#000000) O[2] -pin cpu_state_i__3 O[2] -pin cpu_state_i__4 I1[2]
load net cpu_state__0[3] -attr @rip(#000000) O[3] -pin cpu_state_i__3 O[3] -pin cpu_state_i__4 I1[3]
load net cpu_state__0[4] -attr @rip(#000000) O[4] -pin cpu_state_i__3 O[4] -pin cpu_state_i__4 I1[4]
load net cpu_state__0[5] -attr @rip(#000000) O[5] -pin cpu_state_i__3 O[5] -pin cpu_state_i__4 I1[5]
load net cpu_state__0[6] -attr @rip(#000000) O[6] -pin cpu_state_i__3 O[6] -pin cpu_state_i__4 I1[6]
load net cpu_state__0[7] -attr @rip(#000000) O[7] -pin cpu_state_i__3 O[7] -pin cpu_state_i__4 I1[7]
load net cpu_state_i__0_n_0 -attr @rip(#000000) O[7] -pin cpu_state_i__0 O[7] -pin cpu_state_i__3 I1[7]
load net cpu_state_i__0_n_1 -attr @rip(#000000) O[6] -pin cpu_state_i__0 O[6] -pin cpu_state_i__3 I1[6]
load net cpu_state_i__0_n_2 -attr @rip(#000000) O[5] -pin cpu_state_i__0 O[5] -pin cpu_state_i__3 I1[5]
load net cpu_state_i__0_n_3 -attr @rip(#000000) O[4] -pin cpu_state_i__0 O[4] -pin cpu_state_i__3 I1[4]
load net cpu_state_i__0_n_4 -attr @rip(#000000) O[3] -pin cpu_state_i__0 O[3] -pin cpu_state_i__3 I1[3]
load net cpu_state_i__0_n_5 -attr @rip(#000000) O[2] -pin cpu_state_i__0 O[2] -pin cpu_state_i__3 I1[2]
load net cpu_state_i__0_n_6 -attr @rip(#000000) O[1] -pin cpu_state_i__0 O[1] -pin cpu_state_i__3 I1[1]
load net cpu_state_i__0_n_7 -attr @rip(#000000) O[0] -pin cpu_state_i__0 O[0] -pin cpu_state_i__3 I1[0]
load net cpu_state_i__10_n_0 -pin cpu_state_i__10 O -pin cpu_state_i__12 I6
netloc cpu_state_i__10_n_0 1 30 1 16230 6440n
load net cpu_state_i__11_n_0 -pin cpu_state_i__11 O -pin cpu_state_i__12 I7
netloc cpu_state_i__11_n_0 1 30 1 16350 6460n
load net cpu_state_i__14_n_0 -attr @rip(#000000) O[7] -pin cpu_state_i__14 O[7] -pin cpu_state_i__15 I0[7]
load net cpu_state_i__14_n_1 -attr @rip(#000000) O[6] -pin cpu_state_i__14 O[6] -pin cpu_state_i__15 I0[6]
load net cpu_state_i__14_n_2 -attr @rip(#000000) O[5] -pin cpu_state_i__14 O[5] -pin cpu_state_i__15 I0[5]
load net cpu_state_i__14_n_3 -attr @rip(#000000) O[4] -pin cpu_state_i__14 O[4] -pin cpu_state_i__15 I0[4]
load net cpu_state_i__14_n_4 -attr @rip(#000000) O[3] -pin cpu_state_i__14 O[3] -pin cpu_state_i__15 I0[3]
load net cpu_state_i__14_n_5 -attr @rip(#000000) O[2] -pin cpu_state_i__14 O[2] -pin cpu_state_i__15 I0[2]
load net cpu_state_i__14_n_6 -attr @rip(#000000) O[1] -pin cpu_state_i__14 O[1] -pin cpu_state_i__15 I0[1]
load net cpu_state_i__14_n_7 -attr @rip(#000000) O[0] -pin cpu_state_i__14 O[0] -pin cpu_state_i__15 I0[0]
load net cpu_state_i__15_n_0 -attr @rip(#000000) O[7] -pin cpu_state_i__15 O[7] -pin cpu_state_i__16 I1[7]
load net cpu_state_i__15_n_1 -attr @rip(#000000) O[6] -pin cpu_state_i__15 O[6] -pin cpu_state_i__16 I1[6]
load net cpu_state_i__15_n_2 -attr @rip(#000000) O[5] -pin cpu_state_i__15 O[5] -pin cpu_state_i__16 I1[5]
load net cpu_state_i__15_n_3 -attr @rip(#000000) O[4] -pin cpu_state_i__15 O[4] -pin cpu_state_i__16 I1[4]
load net cpu_state_i__15_n_4 -attr @rip(#000000) O[3] -pin cpu_state_i__15 O[3] -pin cpu_state_i__16 I1[3]
load net cpu_state_i__15_n_5 -attr @rip(#000000) O[2] -pin cpu_state_i__15 O[2] -pin cpu_state_i__16 I1[2]
load net cpu_state_i__15_n_6 -attr @rip(#000000) O[1] -pin cpu_state_i__15 O[1] -pin cpu_state_i__16 I1[1]
load net cpu_state_i__15_n_7 -attr @rip(#000000) O[0] -pin cpu_state_i__15 O[0] -pin cpu_state_i__16 I1[0]
load net cpu_state_i__16_n_0 -attr @rip(#000000) O[7] -pin cpu_state_i__16 O[7] -pin cpu_state_reg[7:0] SET[7]
load net cpu_state_i__16_n_1 -attr @rip(#000000) O[6] -pin cpu_state_i__16 O[6] -pin cpu_state_reg[7:0] RST[6]
load net cpu_state_i__16_n_2 -attr @rip(#000000) O[5] -pin cpu_state_i__16 O[5] -pin cpu_state_reg[7:0] RST[5]
load net cpu_state_i__16_n_3 -attr @rip(#000000) O[4] -pin cpu_state_i__16 O[4] -pin cpu_state_reg[7:0] RST[4]
load net cpu_state_i__16_n_4 -attr @rip(#000000) O[3] -pin cpu_state_i__16 O[3] -pin cpu_state_reg[7:0] RST[3]
load net cpu_state_i__16_n_5 -attr @rip(#000000) O[2] -pin cpu_state_i__16 O[2] -pin cpu_state_reg[7:0] RST[2]
load net cpu_state_i__16_n_6 -attr @rip(#000000) O[1] -pin cpu_state_i__16 O[1] -pin cpu_state_reg[7:0] RST[1]
load net cpu_state_i__16_n_7 -attr @rip(#000000) O[0] -pin cpu_state_i__16 O[0] -pin cpu_state_reg[7:0] RST[0]
load net cpu_state_i__1_n_0 -attr @rip(#000000) O[7] -pin cpu_state_i__1 O[7] -pin cpu_state_i__2 I0[7]
load net cpu_state_i__1_n_1 -attr @rip(#000000) O[6] -pin cpu_state_i__1 O[6] -pin cpu_state_i__2 I0[6]
load net cpu_state_i__1_n_2 -attr @rip(#000000) O[5] -pin cpu_state_i__1 O[5] -pin cpu_state_i__2 I0[5]
load net cpu_state_i__1_n_3 -attr @rip(#000000) O[4] -pin cpu_state_i__1 O[4] -pin cpu_state_i__2 I0[4]
load net cpu_state_i__1_n_4 -attr @rip(#000000) O[3] -pin cpu_state_i__1 O[3] -pin cpu_state_i__2 I0[3]
load net cpu_state_i__1_n_5 -attr @rip(#000000) O[2] -pin cpu_state_i__1 O[2] -pin cpu_state_i__2 I0[2]
load net cpu_state_i__1_n_6 -attr @rip(#000000) O[1] -pin cpu_state_i__1 O[1] -pin cpu_state_i__2 I0[1]
load net cpu_state_i__1_n_7 -attr @rip(#000000) O[0] -pin cpu_state_i__1 O[0] -pin cpu_state_i__2 I0[0]
load net cpu_state_i__2_n_0 -attr @rip(#000000) O[7] -pin cpu_state_i__2 O[7] -pin cpu_state_i__3 I2[7]
load net cpu_state_i__2_n_1 -attr @rip(#000000) O[6] -pin cpu_state_i__2 O[6] -pin cpu_state_i__3 I2[6]
load net cpu_state_i__2_n_2 -attr @rip(#000000) O[5] -pin cpu_state_i__2 O[5] -pin cpu_state_i__3 I2[5]
load net cpu_state_i__2_n_3 -attr @rip(#000000) O[4] -pin cpu_state_i__2 O[4] -pin cpu_state_i__3 I2[4]
load net cpu_state_i__2_n_4 -attr @rip(#000000) O[3] -pin cpu_state_i__2 O[3] -pin cpu_state_i__3 I2[3]
load net cpu_state_i__2_n_5 -attr @rip(#000000) O[2] -pin cpu_state_i__2 O[2] -pin cpu_state_i__3 I2[2]
load net cpu_state_i__2_n_6 -attr @rip(#000000) O[1] -pin cpu_state_i__2 O[1] -pin cpu_state_i__3 I2[1]
load net cpu_state_i__2_n_7 -attr @rip(#000000) O[0] -pin cpu_state_i__2 O[0] -pin cpu_state_i__3 I2[0]
load net cpu_state_i__5_n_0 -pin cpu_state_i__5 O -pin cpu_state_i__6 I0
netloc cpu_state_i__5_n_0 1 29 1 15560 5600n
load net cpu_state_i__6_n_0 -pin cpu_state_i__12 I1 -pin cpu_state_i__6 O
netloc cpu_state_i__6_n_0 1 30 1 16390 5610n
load net cpu_state_i__7_n_0 -pin cpu_state_i__7 O -pin cpu_state_i__8 I0
netloc cpu_state_i__7_n_0 1 29 1 15640 5770n
load net cpu_state_i__8_n_0 -pin cpu_state_i__12 I3 -pin cpu_state_i__8 O
netloc cpu_state_i__8_n_0 1 30 1 16190 5800n
load net cpu_state_i__9_n_0 -pin cpu_state_i__12 I4 -pin cpu_state_i__9 O
netloc cpu_state_i__9_n_0 1 30 1 16210 6400n
load net cpu_state_i_n_0 -attr @rip(#000000) O[3] -pin cpu_state_i O[3] -pin cpu_state_i__0 I7[3]
load net cpu_state_i_n_1 -attr @rip(#000000) O[2] -pin cpu_state_i O[2] -pin cpu_state_i__0 I7[2]
load net cpu_state_i_n_2 -attr @rip(#000000) O[1] -pin cpu_state_i O[1] -pin cpu_state_i__0 I7[1]
load net cpu_state_i_n_3 -attr @rip(#000000) O[0] -pin cpu_state_i O[0] -pin cpu_state_i__0 I7[0]
load net cpuregs_rdata1[0] -attr @rip(#000000) rdata1[0] -pin RTL_MUX__3 I0[0] -pin cpuregs rdata1[0]
load net cpuregs_rdata1[10] -attr @rip(#000000) rdata1[10] -pin RTL_MUX__3 I0[10] -pin cpuregs rdata1[10]
load net cpuregs_rdata1[11] -attr @rip(#000000) rdata1[11] -pin RTL_MUX__3 I0[11] -pin cpuregs rdata1[11]
load net cpuregs_rdata1[12] -attr @rip(#000000) rdata1[12] -pin RTL_MUX__3 I0[12] -pin cpuregs rdata1[12]
load net cpuregs_rdata1[13] -attr @rip(#000000) rdata1[13] -pin RTL_MUX__3 I0[13] -pin cpuregs rdata1[13]
load net cpuregs_rdata1[14] -attr @rip(#000000) rdata1[14] -pin RTL_MUX__3 I0[14] -pin cpuregs rdata1[14]
load net cpuregs_rdata1[15] -attr @rip(#000000) rdata1[15] -pin RTL_MUX__3 I0[15] -pin cpuregs rdata1[15]
load net cpuregs_rdata1[16] -attr @rip(#000000) rdata1[16] -pin RTL_MUX__3 I0[16] -pin cpuregs rdata1[16]
load net cpuregs_rdata1[17] -attr @rip(#000000) rdata1[17] -pin RTL_MUX__3 I0[17] -pin cpuregs rdata1[17]
load net cpuregs_rdata1[18] -attr @rip(#000000) rdata1[18] -pin RTL_MUX__3 I0[18] -pin cpuregs rdata1[18]
load net cpuregs_rdata1[19] -attr @rip(#000000) rdata1[19] -pin RTL_MUX__3 I0[19] -pin cpuregs rdata1[19]
load net cpuregs_rdata1[1] -attr @rip(#000000) rdata1[1] -pin RTL_MUX__3 I0[1] -pin cpuregs rdata1[1]
load net cpuregs_rdata1[20] -attr @rip(#000000) rdata1[20] -pin RTL_MUX__3 I0[20] -pin cpuregs rdata1[20]
load net cpuregs_rdata1[21] -attr @rip(#000000) rdata1[21] -pin RTL_MUX__3 I0[21] -pin cpuregs rdata1[21]
load net cpuregs_rdata1[22] -attr @rip(#000000) rdata1[22] -pin RTL_MUX__3 I0[22] -pin cpuregs rdata1[22]
load net cpuregs_rdata1[23] -attr @rip(#000000) rdata1[23] -pin RTL_MUX__3 I0[23] -pin cpuregs rdata1[23]
load net cpuregs_rdata1[24] -attr @rip(#000000) rdata1[24] -pin RTL_MUX__3 I0[24] -pin cpuregs rdata1[24]
load net cpuregs_rdata1[25] -attr @rip(#000000) rdata1[25] -pin RTL_MUX__3 I0[25] -pin cpuregs rdata1[25]
load net cpuregs_rdata1[26] -attr @rip(#000000) rdata1[26] -pin RTL_MUX__3 I0[26] -pin cpuregs rdata1[26]
load net cpuregs_rdata1[27] -attr @rip(#000000) rdata1[27] -pin RTL_MUX__3 I0[27] -pin cpuregs rdata1[27]
load net cpuregs_rdata1[28] -attr @rip(#000000) rdata1[28] -pin RTL_MUX__3 I0[28] -pin cpuregs rdata1[28]
load net cpuregs_rdata1[29] -attr @rip(#000000) rdata1[29] -pin RTL_MUX__3 I0[29] -pin cpuregs rdata1[29]
load net cpuregs_rdata1[2] -attr @rip(#000000) rdata1[2] -pin RTL_MUX__3 I0[2] -pin cpuregs rdata1[2]
load net cpuregs_rdata1[30] -attr @rip(#000000) rdata1[30] -pin RTL_MUX__3 I0[30] -pin cpuregs rdata1[30]
load net cpuregs_rdata1[31] -attr @rip(#000000) rdata1[31] -pin RTL_MUX__3 I0[31] -pin cpuregs rdata1[31]
load net cpuregs_rdata1[3] -attr @rip(#000000) rdata1[3] -pin RTL_MUX__3 I0[3] -pin cpuregs rdata1[3]
load net cpuregs_rdata1[4] -attr @rip(#000000) rdata1[4] -pin RTL_MUX__3 I0[4] -pin cpuregs rdata1[4]
load net cpuregs_rdata1[5] -attr @rip(#000000) rdata1[5] -pin RTL_MUX__3 I0[5] -pin cpuregs rdata1[5]
load net cpuregs_rdata1[6] -attr @rip(#000000) rdata1[6] -pin RTL_MUX__3 I0[6] -pin cpuregs rdata1[6]
load net cpuregs_rdata1[7] -attr @rip(#000000) rdata1[7] -pin RTL_MUX__3 I0[7] -pin cpuregs rdata1[7]
load net cpuregs_rdata1[8] -attr @rip(#000000) rdata1[8] -pin RTL_MUX__3 I0[8] -pin cpuregs rdata1[8]
load net cpuregs_rdata1[9] -attr @rip(#000000) rdata1[9] -pin RTL_MUX__3 I0[9] -pin cpuregs rdata1[9]
load net cpuregs_rdata2[0] -attr @rip(#000000) rdata2[0] -pin RTL_MUX__0 I0[0] -pin cpuregs rdata2[0]
load net cpuregs_rdata2[10] -attr @rip(#000000) rdata2[10] -pin RTL_MUX__0 I0[10] -pin cpuregs rdata2[10]
load net cpuregs_rdata2[11] -attr @rip(#000000) rdata2[11] -pin RTL_MUX__0 I0[11] -pin cpuregs rdata2[11]
load net cpuregs_rdata2[12] -attr @rip(#000000) rdata2[12] -pin RTL_MUX__0 I0[12] -pin cpuregs rdata2[12]
load net cpuregs_rdata2[13] -attr @rip(#000000) rdata2[13] -pin RTL_MUX__0 I0[13] -pin cpuregs rdata2[13]
load net cpuregs_rdata2[14] -attr @rip(#000000) rdata2[14] -pin RTL_MUX__0 I0[14] -pin cpuregs rdata2[14]
load net cpuregs_rdata2[15] -attr @rip(#000000) rdata2[15] -pin RTL_MUX__0 I0[15] -pin cpuregs rdata2[15]
load net cpuregs_rdata2[16] -attr @rip(#000000) rdata2[16] -pin RTL_MUX__0 I0[16] -pin cpuregs rdata2[16]
load net cpuregs_rdata2[17] -attr @rip(#000000) rdata2[17] -pin RTL_MUX__0 I0[17] -pin cpuregs rdata2[17]
load net cpuregs_rdata2[18] -attr @rip(#000000) rdata2[18] -pin RTL_MUX__0 I0[18] -pin cpuregs rdata2[18]
load net cpuregs_rdata2[19] -attr @rip(#000000) rdata2[19] -pin RTL_MUX__0 I0[19] -pin cpuregs rdata2[19]
load net cpuregs_rdata2[1] -attr @rip(#000000) rdata2[1] -pin RTL_MUX__0 I0[1] -pin cpuregs rdata2[1]
load net cpuregs_rdata2[20] -attr @rip(#000000) rdata2[20] -pin RTL_MUX__0 I0[20] -pin cpuregs rdata2[20]
load net cpuregs_rdata2[21] -attr @rip(#000000) rdata2[21] -pin RTL_MUX__0 I0[21] -pin cpuregs rdata2[21]
load net cpuregs_rdata2[22] -attr @rip(#000000) rdata2[22] -pin RTL_MUX__0 I0[22] -pin cpuregs rdata2[22]
load net cpuregs_rdata2[23] -attr @rip(#000000) rdata2[23] -pin RTL_MUX__0 I0[23] -pin cpuregs rdata2[23]
load net cpuregs_rdata2[24] -attr @rip(#000000) rdata2[24] -pin RTL_MUX__0 I0[24] -pin cpuregs rdata2[24]
load net cpuregs_rdata2[25] -attr @rip(#000000) rdata2[25] -pin RTL_MUX__0 I0[25] -pin cpuregs rdata2[25]
load net cpuregs_rdata2[26] -attr @rip(#000000) rdata2[26] -pin RTL_MUX__0 I0[26] -pin cpuregs rdata2[26]
load net cpuregs_rdata2[27] -attr @rip(#000000) rdata2[27] -pin RTL_MUX__0 I0[27] -pin cpuregs rdata2[27]
load net cpuregs_rdata2[28] -attr @rip(#000000) rdata2[28] -pin RTL_MUX__0 I0[28] -pin cpuregs rdata2[28]
load net cpuregs_rdata2[29] -attr @rip(#000000) rdata2[29] -pin RTL_MUX__0 I0[29] -pin cpuregs rdata2[29]
load net cpuregs_rdata2[2] -attr @rip(#000000) rdata2[2] -pin RTL_MUX__0 I0[2] -pin cpuregs rdata2[2]
load net cpuregs_rdata2[30] -attr @rip(#000000) rdata2[30] -pin RTL_MUX__0 I0[30] -pin cpuregs rdata2[30]
load net cpuregs_rdata2[31] -attr @rip(#000000) rdata2[31] -pin RTL_MUX__0 I0[31] -pin cpuregs rdata2[31]
load net cpuregs_rdata2[3] -attr @rip(#000000) rdata2[3] -pin RTL_MUX__0 I0[3] -pin cpuregs rdata2[3]
load net cpuregs_rdata2[4] -attr @rip(#000000) rdata2[4] -pin RTL_MUX__0 I0[4] -pin cpuregs rdata2[4]
load net cpuregs_rdata2[5] -attr @rip(#000000) rdata2[5] -pin RTL_MUX__0 I0[5] -pin cpuregs rdata2[5]
load net cpuregs_rdata2[6] -attr @rip(#000000) rdata2[6] -pin RTL_MUX__0 I0[6] -pin cpuregs rdata2[6]
load net cpuregs_rdata2[7] -attr @rip(#000000) rdata2[7] -pin RTL_MUX__0 I0[7] -pin cpuregs rdata2[7]
load net cpuregs_rdata2[8] -attr @rip(#000000) rdata2[8] -pin RTL_MUX__0 I0[8] -pin cpuregs rdata2[8]
load net cpuregs_rdata2[9] -attr @rip(#000000) rdata2[9] -pin RTL_MUX__0 I0[9] -pin cpuregs rdata2[9]
load net cpuregs_rs1[0] -attr @rip(#000000) O[0] -pin RTL_MUX__3 O[0] -pin reg_op1_i I4[0] -pin reg_op1_i I5[0] -pin reg_op1_i I6[0] -pin reg_op1_i I7[0] -pin reg_out_i__0 I3[0]
load net cpuregs_rs1[10] -attr @rip(#000000) O[10] -pin RTL_MUX__3 O[10] -pin reg_op1_i I4[10] -pin reg_op1_i I5[10] -pin reg_op1_i I6[10] -pin reg_op1_i I7[10] -pin reg_out_i__0 I3[10]
load net cpuregs_rs1[11] -attr @rip(#000000) O[11] -pin RTL_MUX__3 O[11] -pin reg_op1_i I4[11] -pin reg_op1_i I5[11] -pin reg_op1_i I6[11] -pin reg_op1_i I7[11] -pin reg_out_i__0 I3[11]
load net cpuregs_rs1[12] -attr @rip(#000000) O[12] -pin RTL_MUX__3 O[12] -pin reg_op1_i I4[12] -pin reg_op1_i I5[12] -pin reg_op1_i I6[12] -pin reg_op1_i I7[12] -pin reg_out_i__0 I3[12]
load net cpuregs_rs1[13] -attr @rip(#000000) O[13] -pin RTL_MUX__3 O[13] -pin reg_op1_i I4[13] -pin reg_op1_i I5[13] -pin reg_op1_i I6[13] -pin reg_op1_i I7[13] -pin reg_out_i__0 I3[13]
load net cpuregs_rs1[14] -attr @rip(#000000) O[14] -pin RTL_MUX__3 O[14] -pin reg_op1_i I4[14] -pin reg_op1_i I5[14] -pin reg_op1_i I6[14] -pin reg_op1_i I7[14] -pin reg_out_i__0 I3[14]
load net cpuregs_rs1[15] -attr @rip(#000000) O[15] -pin RTL_MUX__3 O[15] -pin reg_op1_i I4[15] -pin reg_op1_i I5[15] -pin reg_op1_i I6[15] -pin reg_op1_i I7[15] -pin reg_out_i__0 I3[15]
load net cpuregs_rs1[16] -attr @rip(#000000) O[16] -pin RTL_MUX__3 O[16] -pin reg_op1_i I4[16] -pin reg_op1_i I5[16] -pin reg_op1_i I6[16] -pin reg_op1_i I7[16] -pin reg_out_i__0 I3[16]
load net cpuregs_rs1[17] -attr @rip(#000000) O[17] -pin RTL_MUX__3 O[17] -pin reg_op1_i I4[17] -pin reg_op1_i I5[17] -pin reg_op1_i I6[17] -pin reg_op1_i I7[17] -pin reg_out_i__0 I3[17]
load net cpuregs_rs1[18] -attr @rip(#000000) O[18] -pin RTL_MUX__3 O[18] -pin reg_op1_i I4[18] -pin reg_op1_i I5[18] -pin reg_op1_i I6[18] -pin reg_op1_i I7[18] -pin reg_out_i__0 I3[18]
load net cpuregs_rs1[19] -attr @rip(#000000) O[19] -pin RTL_MUX__3 O[19] -pin reg_op1_i I4[19] -pin reg_op1_i I5[19] -pin reg_op1_i I6[19] -pin reg_op1_i I7[19] -pin reg_out_i__0 I3[19]
load net cpuregs_rs1[1] -attr @rip(#000000) O[1] -pin RTL_MUX__3 O[1] -pin reg_op1_i I4[1] -pin reg_op1_i I5[1] -pin reg_op1_i I6[1] -pin reg_op1_i I7[1] -pin reg_out_i__0 I3[1]
load net cpuregs_rs1[20] -attr @rip(#000000) O[20] -pin RTL_MUX__3 O[20] -pin reg_op1_i I4[20] -pin reg_op1_i I5[20] -pin reg_op1_i I6[20] -pin reg_op1_i I7[20] -pin reg_out_i__0 I3[20]
load net cpuregs_rs1[21] -attr @rip(#000000) O[21] -pin RTL_MUX__3 O[21] -pin reg_op1_i I4[21] -pin reg_op1_i I5[21] -pin reg_op1_i I6[21] -pin reg_op1_i I7[21] -pin reg_out_i__0 I3[21]
load net cpuregs_rs1[22] -attr @rip(#000000) O[22] -pin RTL_MUX__3 O[22] -pin reg_op1_i I4[22] -pin reg_op1_i I5[22] -pin reg_op1_i I6[22] -pin reg_op1_i I7[22] -pin reg_out_i__0 I3[22]
load net cpuregs_rs1[23] -attr @rip(#000000) O[23] -pin RTL_MUX__3 O[23] -pin reg_op1_i I4[23] -pin reg_op1_i I5[23] -pin reg_op1_i I6[23] -pin reg_op1_i I7[23] -pin reg_out_i__0 I3[23]
load net cpuregs_rs1[24] -attr @rip(#000000) O[24] -pin RTL_MUX__3 O[24] -pin reg_op1_i I4[24] -pin reg_op1_i I5[24] -pin reg_op1_i I6[24] -pin reg_op1_i I7[24] -pin reg_out_i__0 I3[24]
load net cpuregs_rs1[25] -attr @rip(#000000) O[25] -pin RTL_MUX__3 O[25] -pin reg_op1_i I4[25] -pin reg_op1_i I5[25] -pin reg_op1_i I6[25] -pin reg_op1_i I7[25] -pin reg_out_i__0 I3[25]
load net cpuregs_rs1[26] -attr @rip(#000000) O[26] -pin RTL_MUX__3 O[26] -pin reg_op1_i I4[26] -pin reg_op1_i I5[26] -pin reg_op1_i I6[26] -pin reg_op1_i I7[26] -pin reg_out_i__0 I3[26]
load net cpuregs_rs1[27] -attr @rip(#000000) O[27] -pin RTL_MUX__3 O[27] -pin reg_op1_i I4[27] -pin reg_op1_i I5[27] -pin reg_op1_i I6[27] -pin reg_op1_i I7[27] -pin reg_out_i__0 I3[27]
load net cpuregs_rs1[28] -attr @rip(#000000) O[28] -pin RTL_MUX__3 O[28] -pin reg_op1_i I4[28] -pin reg_op1_i I5[28] -pin reg_op1_i I6[28] -pin reg_op1_i I7[28] -pin reg_out_i__0 I3[28]
load net cpuregs_rs1[29] -attr @rip(#000000) O[29] -pin RTL_MUX__3 O[29] -pin reg_op1_i I4[29] -pin reg_op1_i I5[29] -pin reg_op1_i I6[29] -pin reg_op1_i I7[29] -pin reg_out_i__0 I3[29]
load net cpuregs_rs1[2] -attr @rip(#000000) O[2] -pin RTL_MUX__3 O[2] -pin reg_op1_i I4[2] -pin reg_op1_i I5[2] -pin reg_op1_i I6[2] -pin reg_op1_i I7[2] -pin reg_out_i__0 I3[2]
load net cpuregs_rs1[30] -attr @rip(#000000) O[30] -pin RTL_MUX__3 O[30] -pin reg_op1_i I4[30] -pin reg_op1_i I5[30] -pin reg_op1_i I6[30] -pin reg_op1_i I7[30] -pin reg_out_i__0 I3[30]
load net cpuregs_rs1[31] -attr @rip(#000000) O[31] -pin RTL_MUX__3 O[31] -pin reg_op1_i I4[31] -pin reg_op1_i I5[31] -pin reg_op1_i I6[31] -pin reg_op1_i I7[31] -pin reg_out_i__0 I3[31]
load net cpuregs_rs1[3] -attr @rip(#000000) O[3] -pin RTL_MUX__3 O[3] -pin reg_op1_i I4[3] -pin reg_op1_i I5[3] -pin reg_op1_i I6[3] -pin reg_op1_i I7[3] -pin reg_out_i__0 I3[3]
load net cpuregs_rs1[4] -attr @rip(#000000) O[4] -pin RTL_MUX__3 O[4] -pin reg_op1_i I4[4] -pin reg_op1_i I5[4] -pin reg_op1_i I6[4] -pin reg_op1_i I7[4] -pin reg_out_i__0 I3[4]
load net cpuregs_rs1[5] -attr @rip(#000000) O[5] -pin RTL_MUX__3 O[5] -pin reg_op1_i I4[5] -pin reg_op1_i I5[5] -pin reg_op1_i I6[5] -pin reg_op1_i I7[5] -pin reg_out_i__0 I3[5]
load net cpuregs_rs1[6] -attr @rip(#000000) O[6] -pin RTL_MUX__3 O[6] -pin reg_op1_i I4[6] -pin reg_op1_i I5[6] -pin reg_op1_i I6[6] -pin reg_op1_i I7[6] -pin reg_out_i__0 I3[6]
load net cpuregs_rs1[7] -attr @rip(#000000) O[7] -pin RTL_MUX__3 O[7] -pin reg_op1_i I4[7] -pin reg_op1_i I5[7] -pin reg_op1_i I6[7] -pin reg_op1_i I7[7] -pin reg_out_i__0 I3[7]
load net cpuregs_rs1[8] -attr @rip(#000000) O[8] -pin RTL_MUX__3 O[8] -pin reg_op1_i I4[8] -pin reg_op1_i I5[8] -pin reg_op1_i I6[8] -pin reg_op1_i I7[8] -pin reg_out_i__0 I3[8]
load net cpuregs_rs1[9] -attr @rip(#000000) O[9] -pin RTL_MUX__3 O[9] -pin reg_op1_i I4[9] -pin reg_op1_i I5[9] -pin reg_op1_i I6[9] -pin reg_op1_i I7[9] -pin reg_out_i__0 I3[9]
load net cpuregs_rs2[0] -attr @rip(#000000) O[0] -pin RTL_MUX__0 O[0] -pin reg_op2_i I7[0] -pin reg_op2_i__0 I1[0] -pin reg_sh_i I7[0] -pin reg_sh_i__1 I1[0]
load net cpuregs_rs2[10] -attr @rip(#000000) O[10] -pin RTL_MUX__0 O[10] -pin reg_op2_i I7[10] -pin reg_op2_i__0 I1[10]
load net cpuregs_rs2[11] -attr @rip(#000000) O[11] -pin RTL_MUX__0 O[11] -pin reg_op2_i I7[11] -pin reg_op2_i__0 I1[11]
load net cpuregs_rs2[12] -attr @rip(#000000) O[12] -pin RTL_MUX__0 O[12] -pin reg_op2_i I7[12] -pin reg_op2_i__0 I1[12]
load net cpuregs_rs2[13] -attr @rip(#000000) O[13] -pin RTL_MUX__0 O[13] -pin reg_op2_i I7[13] -pin reg_op2_i__0 I1[13]
load net cpuregs_rs2[14] -attr @rip(#000000) O[14] -pin RTL_MUX__0 O[14] -pin reg_op2_i I7[14] -pin reg_op2_i__0 I1[14]
load net cpuregs_rs2[15] -attr @rip(#000000) O[15] -pin RTL_MUX__0 O[15] -pin reg_op2_i I7[15] -pin reg_op2_i__0 I1[15]
load net cpuregs_rs2[16] -attr @rip(#000000) O[16] -pin RTL_MUX__0 O[16] -pin reg_op2_i I7[16] -pin reg_op2_i__0 I1[16]
load net cpuregs_rs2[17] -attr @rip(#000000) O[17] -pin RTL_MUX__0 O[17] -pin reg_op2_i I7[17] -pin reg_op2_i__0 I1[17]
load net cpuregs_rs2[18] -attr @rip(#000000) O[18] -pin RTL_MUX__0 O[18] -pin reg_op2_i I7[18] -pin reg_op2_i__0 I1[18]
load net cpuregs_rs2[19] -attr @rip(#000000) O[19] -pin RTL_MUX__0 O[19] -pin reg_op2_i I7[19] -pin reg_op2_i__0 I1[19]
load net cpuregs_rs2[1] -attr @rip(#000000) O[1] -pin RTL_MUX__0 O[1] -pin reg_op2_i I7[1] -pin reg_op2_i__0 I1[1] -pin reg_sh_i I7[1] -pin reg_sh_i__1 I1[1]
load net cpuregs_rs2[20] -attr @rip(#000000) O[20] -pin RTL_MUX__0 O[20] -pin reg_op2_i I7[20] -pin reg_op2_i__0 I1[20]
load net cpuregs_rs2[21] -attr @rip(#000000) O[21] -pin RTL_MUX__0 O[21] -pin reg_op2_i I7[21] -pin reg_op2_i__0 I1[21]
load net cpuregs_rs2[22] -attr @rip(#000000) O[22] -pin RTL_MUX__0 O[22] -pin reg_op2_i I7[22] -pin reg_op2_i__0 I1[22]
load net cpuregs_rs2[23] -attr @rip(#000000) O[23] -pin RTL_MUX__0 O[23] -pin reg_op2_i I7[23] -pin reg_op2_i__0 I1[23]
load net cpuregs_rs2[24] -attr @rip(#000000) O[24] -pin RTL_MUX__0 O[24] -pin reg_op2_i I7[24] -pin reg_op2_i__0 I1[24]
load net cpuregs_rs2[25] -attr @rip(#000000) O[25] -pin RTL_MUX__0 O[25] -pin reg_op2_i I7[25] -pin reg_op2_i__0 I1[25]
load net cpuregs_rs2[26] -attr @rip(#000000) O[26] -pin RTL_MUX__0 O[26] -pin reg_op2_i I7[26] -pin reg_op2_i__0 I1[26]
load net cpuregs_rs2[27] -attr @rip(#000000) O[27] -pin RTL_MUX__0 O[27] -pin reg_op2_i I7[27] -pin reg_op2_i__0 I1[27]
load net cpuregs_rs2[28] -attr @rip(#000000) O[28] -pin RTL_MUX__0 O[28] -pin reg_op2_i I7[28] -pin reg_op2_i__0 I1[28]
load net cpuregs_rs2[29] -attr @rip(#000000) O[29] -pin RTL_MUX__0 O[29] -pin reg_op2_i I7[29] -pin reg_op2_i__0 I1[29]
load net cpuregs_rs2[2] -attr @rip(#000000) O[2] -pin RTL_MUX__0 O[2] -pin reg_op2_i I7[2] -pin reg_op2_i__0 I1[2] -pin reg_sh_i I7[2] -pin reg_sh_i__1 I1[2]
load net cpuregs_rs2[30] -attr @rip(#000000) O[30] -pin RTL_MUX__0 O[30] -pin reg_op2_i I7[30] -pin reg_op2_i__0 I1[30]
load net cpuregs_rs2[31] -attr @rip(#000000) O[31] -pin RTL_MUX__0 O[31] -pin reg_op2_i I7[31] -pin reg_op2_i__0 I1[31]
load net cpuregs_rs2[3] -attr @rip(#000000) O[3] -pin RTL_MUX__0 O[3] -pin reg_op2_i I7[3] -pin reg_op2_i__0 I1[3] -pin reg_sh_i I7[3] -pin reg_sh_i__1 I1[3]
load net cpuregs_rs2[4] -attr @rip(#000000) O[4] -pin RTL_MUX__0 O[4] -pin reg_op2_i I7[4] -pin reg_op2_i__0 I1[4] -pin reg_sh_i I7[4] -pin reg_sh_i__1 I1[4]
load net cpuregs_rs2[5] -attr @rip(#000000) O[5] -pin RTL_MUX__0 O[5] -pin reg_op2_i I7[5] -pin reg_op2_i__0 I1[5]
load net cpuregs_rs2[6] -attr @rip(#000000) O[6] -pin RTL_MUX__0 O[6] -pin reg_op2_i I7[6] -pin reg_op2_i__0 I1[6]
load net cpuregs_rs2[7] -attr @rip(#000000) O[7] -pin RTL_MUX__0 O[7] -pin reg_op2_i I7[7] -pin reg_op2_i__0 I1[7]
load net cpuregs_rs2[8] -attr @rip(#000000) O[8] -pin RTL_MUX__0 O[8] -pin reg_op2_i I7[8] -pin reg_op2_i__0 I1[8]
load net cpuregs_rs2[9] -attr @rip(#000000) O[9] -pin RTL_MUX__0 O[9] -pin reg_op2_i I7[9] -pin reg_op2_i__0 I1[9]
load net cpuregs_wrdata[0] -attr @rip(#000000) O[0] -pin cpuregs wdata[0] -pin cpuregs_wrdata_i O[0]
load net cpuregs_wrdata[10] -attr @rip(#000000) O[10] -pin cpuregs wdata[10] -pin cpuregs_wrdata_i O[10]
load net cpuregs_wrdata[11] -attr @rip(#000000) O[11] -pin cpuregs wdata[11] -pin cpuregs_wrdata_i O[11]
load net cpuregs_wrdata[12] -attr @rip(#000000) O[12] -pin cpuregs wdata[12] -pin cpuregs_wrdata_i O[12]
load net cpuregs_wrdata[13] -attr @rip(#000000) O[13] -pin cpuregs wdata[13] -pin cpuregs_wrdata_i O[13]
load net cpuregs_wrdata[14] -attr @rip(#000000) O[14] -pin cpuregs wdata[14] -pin cpuregs_wrdata_i O[14]
load net cpuregs_wrdata[15] -attr @rip(#000000) O[15] -pin cpuregs wdata[15] -pin cpuregs_wrdata_i O[15]
load net cpuregs_wrdata[16] -attr @rip(#000000) O[16] -pin cpuregs wdata[16] -pin cpuregs_wrdata_i O[16]
load net cpuregs_wrdata[17] -attr @rip(#000000) O[17] -pin cpuregs wdata[17] -pin cpuregs_wrdata_i O[17]
load net cpuregs_wrdata[18] -attr @rip(#000000) O[18] -pin cpuregs wdata[18] -pin cpuregs_wrdata_i O[18]
load net cpuregs_wrdata[19] -attr @rip(#000000) O[19] -pin cpuregs wdata[19] -pin cpuregs_wrdata_i O[19]
load net cpuregs_wrdata[1] -attr @rip(#000000) O[1] -pin cpuregs wdata[1] -pin cpuregs_wrdata_i O[1]
load net cpuregs_wrdata[20] -attr @rip(#000000) O[20] -pin cpuregs wdata[20] -pin cpuregs_wrdata_i O[20]
load net cpuregs_wrdata[21] -attr @rip(#000000) O[21] -pin cpuregs wdata[21] -pin cpuregs_wrdata_i O[21]
load net cpuregs_wrdata[22] -attr @rip(#000000) O[22] -pin cpuregs wdata[22] -pin cpuregs_wrdata_i O[22]
load net cpuregs_wrdata[23] -attr @rip(#000000) O[23] -pin cpuregs wdata[23] -pin cpuregs_wrdata_i O[23]
load net cpuregs_wrdata[24] -attr @rip(#000000) O[24] -pin cpuregs wdata[24] -pin cpuregs_wrdata_i O[24]
load net cpuregs_wrdata[25] -attr @rip(#000000) O[25] -pin cpuregs wdata[25] -pin cpuregs_wrdata_i O[25]
load net cpuregs_wrdata[26] -attr @rip(#000000) O[26] -pin cpuregs wdata[26] -pin cpuregs_wrdata_i O[26]
load net cpuregs_wrdata[27] -attr @rip(#000000) O[27] -pin cpuregs wdata[27] -pin cpuregs_wrdata_i O[27]
load net cpuregs_wrdata[28] -attr @rip(#000000) O[28] -pin cpuregs wdata[28] -pin cpuregs_wrdata_i O[28]
load net cpuregs_wrdata[29] -attr @rip(#000000) O[29] -pin cpuregs wdata[29] -pin cpuregs_wrdata_i O[29]
load net cpuregs_wrdata[2] -attr @rip(#000000) O[2] -pin cpuregs wdata[2] -pin cpuregs_wrdata_i O[2]
load net cpuregs_wrdata[30] -attr @rip(#000000) O[30] -pin cpuregs wdata[30] -pin cpuregs_wrdata_i O[30]
load net cpuregs_wrdata[31] -attr @rip(#000000) O[31] -pin cpuregs wdata[31] -pin cpuregs_wrdata_i O[31]
load net cpuregs_wrdata[3] -attr @rip(#000000) O[3] -pin cpuregs wdata[3] -pin cpuregs_wrdata_i O[3]
load net cpuregs_wrdata[4] -attr @rip(#000000) O[4] -pin cpuregs wdata[4] -pin cpuregs_wrdata_i O[4]
load net cpuregs_wrdata[5] -attr @rip(#000000) O[5] -pin cpuregs wdata[5] -pin cpuregs_wrdata_i O[5]
load net cpuregs_wrdata[6] -attr @rip(#000000) O[6] -pin cpuregs wdata[6] -pin cpuregs_wrdata_i O[6]
load net cpuregs_wrdata[7] -attr @rip(#000000) O[7] -pin cpuregs wdata[7] -pin cpuregs_wrdata_i O[7]
load net cpuregs_wrdata[8] -attr @rip(#000000) O[8] -pin cpuregs wdata[8] -pin cpuregs_wrdata_i O[8]
load net cpuregs_wrdata[9] -attr @rip(#000000) O[9] -pin cpuregs wdata[9] -pin cpuregs_wrdata_i O[9]
load net cpuregs_write -pin RTL_AND__89 I1 -pin cpuregs_write_i__0 O
netloc cpuregs_write 1 22 1 12430 6520n
load net cpuregs_write_i_n_0 -pin cpuregs_write_i O -pin cpuregs_write_i__0 I0
netloc cpuregs_write_i_n_0 1 21 1 12010 6060n
load net current_pc_i_n_0 -attr @rip(#000000) O[31] -pin RTL_ADD__4 I0[31] -pin RTL_ADD__5 I0[31] -pin current_pc_i O[31] -pin reg_next_pc_i__0 I1[31] -pin reg_pc_reg[31:0] D[31]
load net current_pc_i_n_1 -attr @rip(#000000) O[30] -pin RTL_ADD__4 I0[30] -pin RTL_ADD__5 I0[30] -pin current_pc_i O[30] -pin reg_next_pc_i__0 I1[30] -pin reg_pc_reg[31:0] D[30]
load net current_pc_i_n_10 -attr @rip(#000000) O[21] -pin RTL_ADD__4 I0[21] -pin RTL_ADD__5 I0[21] -pin current_pc_i O[21] -pin reg_next_pc_i__0 I1[21] -pin reg_pc_reg[31:0] D[21]
load net current_pc_i_n_11 -attr @rip(#000000) O[20] -pin RTL_ADD__4 I0[20] -pin RTL_ADD__5 I0[20] -pin current_pc_i O[20] -pin reg_next_pc_i__0 I1[20] -pin reg_pc_reg[31:0] D[20]
load net current_pc_i_n_12 -attr @rip(#000000) O[19] -pin RTL_ADD__4 I0[19] -pin RTL_ADD__5 I0[19] -pin current_pc_i O[19] -pin reg_next_pc_i__0 I1[19] -pin reg_pc_reg[31:0] D[19]
load net current_pc_i_n_13 -attr @rip(#000000) O[18] -pin RTL_ADD__4 I0[18] -pin RTL_ADD__5 I0[18] -pin current_pc_i O[18] -pin reg_next_pc_i__0 I1[18] -pin reg_pc_reg[31:0] D[18]
load net current_pc_i_n_14 -attr @rip(#000000) O[17] -pin RTL_ADD__4 I0[17] -pin RTL_ADD__5 I0[17] -pin current_pc_i O[17] -pin reg_next_pc_i__0 I1[17] -pin reg_pc_reg[31:0] D[17]
load net current_pc_i_n_15 -attr @rip(#000000) O[16] -pin RTL_ADD__4 I0[16] -pin RTL_ADD__5 I0[16] -pin current_pc_i O[16] -pin reg_next_pc_i__0 I1[16] -pin reg_pc_reg[31:0] D[16]
load net current_pc_i_n_16 -attr @rip(#000000) O[15] -pin RTL_ADD__4 I0[15] -pin RTL_ADD__5 I0[15] -pin current_pc_i O[15] -pin reg_next_pc_i__0 I1[15] -pin reg_pc_reg[31:0] D[15]
load net current_pc_i_n_17 -attr @rip(#000000) O[14] -pin RTL_ADD__4 I0[14] -pin RTL_ADD__5 I0[14] -pin current_pc_i O[14] -pin reg_next_pc_i__0 I1[14] -pin reg_pc_reg[31:0] D[14]
load net current_pc_i_n_18 -attr @rip(#000000) O[13] -pin RTL_ADD__4 I0[13] -pin RTL_ADD__5 I0[13] -pin current_pc_i O[13] -pin reg_next_pc_i__0 I1[13] -pin reg_pc_reg[31:0] D[13]
load net current_pc_i_n_19 -attr @rip(#000000) O[12] -pin RTL_ADD__4 I0[12] -pin RTL_ADD__5 I0[12] -pin current_pc_i O[12] -pin reg_next_pc_i__0 I1[12] -pin reg_pc_reg[31:0] D[12]
load net current_pc_i_n_2 -attr @rip(#000000) O[29] -pin RTL_ADD__4 I0[29] -pin RTL_ADD__5 I0[29] -pin current_pc_i O[29] -pin reg_next_pc_i__0 I1[29] -pin reg_pc_reg[31:0] D[29]
load net current_pc_i_n_20 -attr @rip(#000000) O[11] -pin RTL_ADD__4 I0[11] -pin RTL_ADD__5 I0[11] -pin current_pc_i O[11] -pin reg_next_pc_i__0 I1[11] -pin reg_pc_reg[31:0] D[11]
load net current_pc_i_n_21 -attr @rip(#000000) O[10] -pin RTL_ADD__4 I0[10] -pin RTL_ADD__5 I0[10] -pin current_pc_i O[10] -pin reg_next_pc_i__0 I1[10] -pin reg_pc_reg[31:0] D[10]
load net current_pc_i_n_22 -attr @rip(#000000) O[9] -pin RTL_ADD__4 I0[9] -pin RTL_ADD__5 I0[9] -pin current_pc_i O[9] -pin reg_next_pc_i__0 I1[9] -pin reg_pc_reg[31:0] D[9]
load net current_pc_i_n_23 -attr @rip(#000000) O[8] -pin RTL_ADD__4 I0[8] -pin RTL_ADD__5 I0[8] -pin current_pc_i O[8] -pin reg_next_pc_i__0 I1[8] -pin reg_pc_reg[31:0] D[8]
load net current_pc_i_n_24 -attr @rip(#000000) O[7] -pin RTL_ADD__4 I0[7] -pin RTL_ADD__5 I0[7] -pin current_pc_i O[7] -pin reg_next_pc_i__0 I1[7] -pin reg_pc_reg[31:0] D[7]
load net current_pc_i_n_25 -attr @rip(#000000) O[6] -pin RTL_ADD__4 I0[6] -pin RTL_ADD__5 I0[6] -pin current_pc_i O[6] -pin reg_next_pc_i__0 I1[6] -pin reg_pc_reg[31:0] D[6]
load net current_pc_i_n_26 -attr @rip(#000000) O[5] -pin RTL_ADD__4 I0[5] -pin RTL_ADD__5 I0[5] -pin current_pc_i O[5] -pin reg_next_pc_i__0 I1[5] -pin reg_pc_reg[31:0] D[5]
load net current_pc_i_n_27 -attr @rip(#000000) O[4] -pin RTL_ADD__4 I0[4] -pin RTL_ADD__5 I0[4] -pin current_pc_i O[4] -pin reg_next_pc_i__0 I1[4] -pin reg_pc_reg[31:0] D[4]
load net current_pc_i_n_28 -attr @rip(#000000) O[3] -pin RTL_ADD__4 I0[3] -pin RTL_ADD__5 I0[3] -pin current_pc_i O[3] -pin reg_next_pc_i__0 I1[3] -pin reg_pc_reg[31:0] D[3]
load net current_pc_i_n_29 -attr @rip(#000000) O[2] -pin RTL_ADD__4 I0[2] -pin RTL_ADD__5 I0[2] -pin current_pc_i O[2] -pin reg_next_pc_i__0 I1[2] -pin reg_pc_reg[31:0] D[2]
load net current_pc_i_n_3 -attr @rip(#000000) O[28] -pin RTL_ADD__4 I0[28] -pin RTL_ADD__5 I0[28] -pin current_pc_i O[28] -pin reg_next_pc_i__0 I1[28] -pin reg_pc_reg[31:0] D[28]
load net current_pc_i_n_30 -attr @rip(#000000) O[1] -pin RTL_ADD__4 I0[1] -pin RTL_ADD__5 I0[1] -pin current_pc_i O[1] -pin reg_next_pc_i__0 I1[1] -pin reg_pc_reg[31:0] D[1]
load net current_pc_i_n_31 -attr @rip(#000000) O[0] -pin RTL_ADD__4 I0[0] -pin RTL_ADD__5 I0[0] -pin current_pc_i O[0] -pin reg_next_pc_i__0 I1[0] -pin reg_pc_reg[31:0] D[0]
load net current_pc_i_n_4 -attr @rip(#000000) O[27] -pin RTL_ADD__4 I0[27] -pin RTL_ADD__5 I0[27] -pin current_pc_i O[27] -pin reg_next_pc_i__0 I1[27] -pin reg_pc_reg[31:0] D[27]
load net current_pc_i_n_5 -attr @rip(#000000) O[26] -pin RTL_ADD__4 I0[26] -pin RTL_ADD__5 I0[26] -pin current_pc_i O[26] -pin reg_next_pc_i__0 I1[26] -pin reg_pc_reg[31:0] D[26]
load net current_pc_i_n_6 -attr @rip(#000000) O[25] -pin RTL_ADD__4 I0[25] -pin RTL_ADD__5 I0[25] -pin current_pc_i O[25] -pin reg_next_pc_i__0 I1[25] -pin reg_pc_reg[31:0] D[25]
load net current_pc_i_n_7 -attr @rip(#000000) O[24] -pin RTL_ADD__4 I0[24] -pin RTL_ADD__5 I0[24] -pin current_pc_i O[24] -pin reg_next_pc_i__0 I1[24] -pin reg_pc_reg[31:0] D[24]
load net current_pc_i_n_8 -attr @rip(#000000) O[23] -pin RTL_ADD__4 I0[23] -pin RTL_ADD__5 I0[23] -pin current_pc_i O[23] -pin reg_next_pc_i__0 I1[23] -pin reg_pc_reg[31:0] D[23]
load net current_pc_i_n_9 -attr @rip(#000000) O[22] -pin RTL_ADD__4 I0[22] -pin RTL_ADD__5 I0[22] -pin current_pc_i O[22] -pin reg_next_pc_i__0 I1[22] -pin reg_pc_reg[31:0] D[22]
load net decoded_imm[0] -attr @rip(#000000) 0 -pin RTL_ADD__3 I1[0] -pin RTL_ADD__8 I1[0] -pin RTL_ADD__9 I1[0] -pin decoded_imm_reg[31:0] Q[0] -pin reg_op2_i I2[0] -pin reg_op2_i I6[0]
load net decoded_imm[10] -attr @rip(#000000) 10 -pin RTL_ADD__3 I1[10] -pin RTL_ADD__8 I1[10] -pin RTL_ADD__9 I1[10] -pin decoded_imm_reg[31:0] Q[10] -pin reg_op2_i I2[10] -pin reg_op2_i I6[10]
load net decoded_imm[11] -attr @rip(#000000) 11 -pin RTL_ADD__3 I1[11] -pin RTL_ADD__8 I1[11] -pin RTL_ADD__9 I1[11] -pin decoded_imm_reg[31:0] Q[11] -pin reg_op2_i I2[11] -pin reg_op2_i I6[11]
load net decoded_imm[12] -attr @rip(#000000) 12 -pin RTL_ADD__3 I1[12] -pin RTL_ADD__8 I1[12] -pin RTL_ADD__9 I1[12] -pin decoded_imm_reg[31:0] Q[12] -pin reg_op2_i I2[12] -pin reg_op2_i I6[12]
load net decoded_imm[13] -attr @rip(#000000) 13 -pin RTL_ADD__3 I1[13] -pin RTL_ADD__8 I1[13] -pin RTL_ADD__9 I1[13] -pin decoded_imm_reg[31:0] Q[13] -pin reg_op2_i I2[13] -pin reg_op2_i I6[13]
load net decoded_imm[14] -attr @rip(#000000) 14 -pin RTL_ADD__3 I1[14] -pin RTL_ADD__8 I1[14] -pin RTL_ADD__9 I1[14] -pin decoded_imm_reg[31:0] Q[14] -pin reg_op2_i I2[14] -pin reg_op2_i I6[14]
load net decoded_imm[15] -attr @rip(#000000) 15 -pin RTL_ADD__3 I1[15] -pin RTL_ADD__8 I1[15] -pin RTL_ADD__9 I1[15] -pin decoded_imm_reg[31:0] Q[15] -pin reg_op2_i I2[15] -pin reg_op2_i I6[15]
load net decoded_imm[16] -attr @rip(#000000) 16 -pin RTL_ADD__3 I1[16] -pin RTL_ADD__8 I1[16] -pin RTL_ADD__9 I1[16] -pin decoded_imm_reg[31:0] Q[16] -pin reg_op2_i I2[16] -pin reg_op2_i I6[16]
load net decoded_imm[17] -attr @rip(#000000) 17 -pin RTL_ADD__3 I1[17] -pin RTL_ADD__8 I1[17] -pin RTL_ADD__9 I1[17] -pin decoded_imm_reg[31:0] Q[17] -pin reg_op2_i I2[17] -pin reg_op2_i I6[17]
load net decoded_imm[18] -attr @rip(#000000) 18 -pin RTL_ADD__3 I1[18] -pin RTL_ADD__8 I1[18] -pin RTL_ADD__9 I1[18] -pin decoded_imm_reg[31:0] Q[18] -pin reg_op2_i I2[18] -pin reg_op2_i I6[18]
load net decoded_imm[19] -attr @rip(#000000) 19 -pin RTL_ADD__3 I1[19] -pin RTL_ADD__8 I1[19] -pin RTL_ADD__9 I1[19] -pin decoded_imm_reg[31:0] Q[19] -pin reg_op2_i I2[19] -pin reg_op2_i I6[19]
load net decoded_imm[1] -attr @rip(#000000) 1 -pin RTL_ADD__3 I1[1] -pin RTL_ADD__8 I1[1] -pin RTL_ADD__9 I1[1] -pin decoded_imm_reg[31:0] Q[1] -pin reg_op2_i I2[1] -pin reg_op2_i I6[1]
load net decoded_imm[20] -attr @rip(#000000) 20 -pin RTL_ADD__3 I1[20] -pin RTL_ADD__8 I1[20] -pin RTL_ADD__9 I1[20] -pin decoded_imm_reg[31:0] Q[20] -pin reg_op2_i I2[20] -pin reg_op2_i I6[20]
load net decoded_imm[21] -attr @rip(#000000) 21 -pin RTL_ADD__3 I1[21] -pin RTL_ADD__8 I1[21] -pin RTL_ADD__9 I1[21] -pin decoded_imm_reg[31:0] Q[21] -pin reg_op2_i I2[21] -pin reg_op2_i I6[21]
load net decoded_imm[22] -attr @rip(#000000) 22 -pin RTL_ADD__3 I1[22] -pin RTL_ADD__8 I1[22] -pin RTL_ADD__9 I1[22] -pin decoded_imm_reg[31:0] Q[22] -pin reg_op2_i I2[22] -pin reg_op2_i I6[22]
load net decoded_imm[23] -attr @rip(#000000) 23 -pin RTL_ADD__3 I1[23] -pin RTL_ADD__8 I1[23] -pin RTL_ADD__9 I1[23] -pin decoded_imm_reg[31:0] Q[23] -pin reg_op2_i I2[23] -pin reg_op2_i I6[23]
load net decoded_imm[24] -attr @rip(#000000) 24 -pin RTL_ADD__3 I1[24] -pin RTL_ADD__8 I1[24] -pin RTL_ADD__9 I1[24] -pin decoded_imm_reg[31:0] Q[24] -pin reg_op2_i I2[24] -pin reg_op2_i I6[24]
load net decoded_imm[25] -attr @rip(#000000) 25 -pin RTL_ADD__3 I1[25] -pin RTL_ADD__8 I1[25] -pin RTL_ADD__9 I1[25] -pin decoded_imm_reg[31:0] Q[25] -pin reg_op2_i I2[25] -pin reg_op2_i I6[25]
load net decoded_imm[26] -attr @rip(#000000) 26 -pin RTL_ADD__3 I1[26] -pin RTL_ADD__8 I1[26] -pin RTL_ADD__9 I1[26] -pin decoded_imm_reg[31:0] Q[26] -pin reg_op2_i I2[26] -pin reg_op2_i I6[26]
load net decoded_imm[27] -attr @rip(#000000) 27 -pin RTL_ADD__3 I1[27] -pin RTL_ADD__8 I1[27] -pin RTL_ADD__9 I1[27] -pin decoded_imm_reg[31:0] Q[27] -pin reg_op2_i I2[27] -pin reg_op2_i I6[27]
load net decoded_imm[28] -attr @rip(#000000) 28 -pin RTL_ADD__3 I1[28] -pin RTL_ADD__8 I1[28] -pin RTL_ADD__9 I1[28] -pin decoded_imm_reg[31:0] Q[28] -pin reg_op2_i I2[28] -pin reg_op2_i I6[28]
load net decoded_imm[29] -attr @rip(#000000) 29 -pin RTL_ADD__3 I1[29] -pin RTL_ADD__8 I1[29] -pin RTL_ADD__9 I1[29] -pin decoded_imm_reg[31:0] Q[29] -pin reg_op2_i I2[29] -pin reg_op2_i I6[29]
load net decoded_imm[2] -attr @rip(#000000) 2 -pin RTL_ADD__3 I1[2] -pin RTL_ADD__8 I1[2] -pin RTL_ADD__9 I1[2] -pin decoded_imm_reg[31:0] Q[2] -pin reg_op2_i I2[2] -pin reg_op2_i I6[2]
load net decoded_imm[30] -attr @rip(#000000) 30 -pin RTL_ADD__3 I1[30] -pin RTL_ADD__8 I1[30] -pin RTL_ADD__9 I1[30] -pin decoded_imm_reg[31:0] Q[30] -pin reg_op2_i I2[30] -pin reg_op2_i I6[30]
load net decoded_imm[31] -attr @rip(#000000) 31 -pin RTL_ADD__3 I1[31] -pin RTL_ADD__8 I1[31] -pin RTL_ADD__9 I1[31] -pin decoded_imm_reg[31:0] Q[31] -pin reg_op2_i I2[31] -pin reg_op2_i I6[31]
load net decoded_imm[3] -attr @rip(#000000) 3 -pin RTL_ADD__3 I1[3] -pin RTL_ADD__8 I1[3] -pin RTL_ADD__9 I1[3] -pin decoded_imm_reg[31:0] Q[3] -pin reg_op2_i I2[3] -pin reg_op2_i I6[3]
load net decoded_imm[4] -attr @rip(#000000) 4 -pin RTL_ADD__3 I1[4] -pin RTL_ADD__8 I1[4] -pin RTL_ADD__9 I1[4] -pin decoded_imm_reg[31:0] Q[4] -pin reg_op2_i I2[4] -pin reg_op2_i I6[4]
load net decoded_imm[5] -attr @rip(#000000) 5 -pin RTL_ADD__3 I1[5] -pin RTL_ADD__8 I1[5] -pin RTL_ADD__9 I1[5] -pin decoded_imm_reg[31:0] Q[5] -pin reg_op2_i I2[5] -pin reg_op2_i I6[5]
load net decoded_imm[6] -attr @rip(#000000) 6 -pin RTL_ADD__3 I1[6] -pin RTL_ADD__8 I1[6] -pin RTL_ADD__9 I1[6] -pin decoded_imm_reg[31:0] Q[6] -pin reg_op2_i I2[6] -pin reg_op2_i I6[6]
load net decoded_imm[7] -attr @rip(#000000) 7 -pin RTL_ADD__3 I1[7] -pin RTL_ADD__8 I1[7] -pin RTL_ADD__9 I1[7] -pin decoded_imm_reg[31:0] Q[7] -pin reg_op2_i I2[7] -pin reg_op2_i I6[7]
load net decoded_imm[8] -attr @rip(#000000) 8 -pin RTL_ADD__3 I1[8] -pin RTL_ADD__8 I1[8] -pin RTL_ADD__9 I1[8] -pin decoded_imm_reg[31:0] Q[8] -pin reg_op2_i I2[8] -pin reg_op2_i I6[8]
load net decoded_imm[9] -attr @rip(#000000) 9 -pin RTL_ADD__3 I1[9] -pin RTL_ADD__8 I1[9] -pin RTL_ADD__9 I1[9] -pin decoded_imm_reg[31:0] Q[9] -pin reg_op2_i I2[9] -pin reg_op2_i I6[9]
load net decoded_imm__0[0] -attr @rip(#000000) O[0] -pin decoded_imm_i O[0] -pin decoded_imm_reg[31:0] D[0]
load net decoded_imm__0[10] -attr @rip(#000000) O[10] -pin decoded_imm_i O[10] -pin decoded_imm_reg[31:0] D[10]
load net decoded_imm__0[11] -attr @rip(#000000) O[11] -pin decoded_imm_i O[11] -pin decoded_imm_reg[31:0] D[11]
load net decoded_imm__0[12] -attr @rip(#000000) O[12] -pin decoded_imm_i O[12] -pin decoded_imm_reg[31:0] D[12]
load net decoded_imm__0[13] -attr @rip(#000000) O[13] -pin decoded_imm_i O[13] -pin decoded_imm_reg[31:0] D[13]
load net decoded_imm__0[14] -attr @rip(#000000) O[14] -pin decoded_imm_i O[14] -pin decoded_imm_reg[31:0] D[14]
load net decoded_imm__0[15] -attr @rip(#000000) O[15] -pin decoded_imm_i O[15] -pin decoded_imm_reg[31:0] D[15]
load net decoded_imm__0[16] -attr @rip(#000000) O[16] -pin decoded_imm_i O[16] -pin decoded_imm_reg[31:0] D[16]
load net decoded_imm__0[17] -attr @rip(#000000) O[17] -pin decoded_imm_i O[17] -pin decoded_imm_reg[31:0] D[17]
load net decoded_imm__0[18] -attr @rip(#000000) O[18] -pin decoded_imm_i O[18] -pin decoded_imm_reg[31:0] D[18]
load net decoded_imm__0[19] -attr @rip(#000000) O[19] -pin decoded_imm_i O[19] -pin decoded_imm_reg[31:0] D[19]
load net decoded_imm__0[1] -attr @rip(#000000) O[1] -pin decoded_imm_i O[1] -pin decoded_imm_reg[31:0] D[1]
load net decoded_imm__0[20] -attr @rip(#000000) O[20] -pin decoded_imm_i O[20] -pin decoded_imm_reg[31:0] D[20]
load net decoded_imm__0[21] -attr @rip(#000000) O[21] -pin decoded_imm_i O[21] -pin decoded_imm_reg[31:0] D[21]
load net decoded_imm__0[22] -attr @rip(#000000) O[22] -pin decoded_imm_i O[22] -pin decoded_imm_reg[31:0] D[22]
load net decoded_imm__0[23] -attr @rip(#000000) O[23] -pin decoded_imm_i O[23] -pin decoded_imm_reg[31:0] D[23]
load net decoded_imm__0[24] -attr @rip(#000000) O[24] -pin decoded_imm_i O[24] -pin decoded_imm_reg[31:0] D[24]
load net decoded_imm__0[25] -attr @rip(#000000) O[25] -pin decoded_imm_i O[25] -pin decoded_imm_reg[31:0] D[25]
load net decoded_imm__0[26] -attr @rip(#000000) O[26] -pin decoded_imm_i O[26] -pin decoded_imm_reg[31:0] D[26]
load net decoded_imm__0[27] -attr @rip(#000000) O[27] -pin decoded_imm_i O[27] -pin decoded_imm_reg[31:0] D[27]
load net decoded_imm__0[28] -attr @rip(#000000) O[28] -pin decoded_imm_i O[28] -pin decoded_imm_reg[31:0] D[28]
load net decoded_imm__0[29] -attr @rip(#000000) O[29] -pin decoded_imm_i O[29] -pin decoded_imm_reg[31:0] D[29]
load net decoded_imm__0[2] -attr @rip(#000000) O[2] -pin decoded_imm_i O[2] -pin decoded_imm_reg[31:0] D[2]
load net decoded_imm__0[30] -attr @rip(#000000) O[30] -pin decoded_imm_i O[30] -pin decoded_imm_reg[31:0] D[30]
load net decoded_imm__0[31] -attr @rip(#000000) O[31] -pin decoded_imm_i O[31] -pin decoded_imm_reg[31:0] D[31]
load net decoded_imm__0[3] -attr @rip(#000000) O[3] -pin decoded_imm_i O[3] -pin decoded_imm_reg[31:0] D[3]
load net decoded_imm__0[4] -attr @rip(#000000) O[4] -pin decoded_imm_i O[4] -pin decoded_imm_reg[31:0] D[4]
load net decoded_imm__0[5] -attr @rip(#000000) O[5] -pin decoded_imm_i O[5] -pin decoded_imm_reg[31:0] D[5]
load net decoded_imm__0[6] -attr @rip(#000000) O[6] -pin decoded_imm_i O[6] -pin decoded_imm_reg[31:0] D[6]
load net decoded_imm__0[7] -attr @rip(#000000) O[7] -pin decoded_imm_i O[7] -pin decoded_imm_reg[31:0] D[7]
load net decoded_imm__0[8] -attr @rip(#000000) O[8] -pin decoded_imm_i O[8] -pin decoded_imm_reg[31:0] D[8]
load net decoded_imm__0[9] -attr @rip(#000000) O[9] -pin decoded_imm_i O[9] -pin decoded_imm_reg[31:0] D[9]
load net decoded_imm_j[0] -attr @rip(#000000) 0 -pin RTL_ADD__4 I1[0] -pin decoded_imm_i I0[0] -pin decoded_imm_j_reg[31:0] Q[0]
load net decoded_imm_j[10] -attr @rip(#000000) 10 -pin RTL_ADD__4 I1[10] -pin decoded_imm_i I0[10] -pin decoded_imm_j_reg[31:0] Q[10]
load net decoded_imm_j[11] -attr @rip(#000000) 11 -pin RTL_ADD__4 I1[11] -pin decoded_imm_i I0[11] -pin decoded_imm_j_reg[31:0] Q[11]
load net decoded_imm_j[12] -attr @rip(#000000) 12 -pin RTL_ADD__4 I1[12] -pin decoded_imm_i I0[12] -pin decoded_imm_j_reg[31:0] Q[12]
load net decoded_imm_j[13] -attr @rip(#000000) 13 -pin RTL_ADD__4 I1[13] -pin decoded_imm_i I0[13] -pin decoded_imm_j_reg[31:0] Q[13]
load net decoded_imm_j[14] -attr @rip(#000000) 14 -pin RTL_ADD__4 I1[14] -pin decoded_imm_i I0[14] -pin decoded_imm_j_reg[31:0] Q[14]
load net decoded_imm_j[15] -attr @rip(#000000) 15 -pin RTL_ADD__4 I1[15] -pin decoded_imm_i I0[15] -pin decoded_imm_j_reg[31:0] Q[15]
load net decoded_imm_j[16] -attr @rip(#000000) 16 -pin RTL_ADD__4 I1[16] -pin decoded_imm_i I0[16] -pin decoded_imm_j_reg[31:0] Q[16]
load net decoded_imm_j[17] -attr @rip(#000000) 17 -pin RTL_ADD__4 I1[17] -pin decoded_imm_i I0[17] -pin decoded_imm_j_reg[31:0] Q[17]
load net decoded_imm_j[18] -attr @rip(#000000) 18 -pin RTL_ADD__4 I1[18] -pin decoded_imm_i I0[18] -pin decoded_imm_j_reg[31:0] Q[18]
load net decoded_imm_j[19] -attr @rip(#000000) 19 -pin RTL_ADD__4 I1[19] -pin decoded_imm_i I0[19] -pin decoded_imm_j_reg[31:0] Q[19]
load net decoded_imm_j[1] -attr @rip(#000000) 1 -pin RTL_ADD__4 I1[1] -pin decoded_imm_i I0[1] -pin decoded_imm_j_reg[31:0] Q[1]
load net decoded_imm_j[20] -attr @rip(#000000) 20 -pin RTL_ADD__4 I1[20] -pin decoded_imm_i I0[20] -pin decoded_imm_j_reg[31:0] Q[20]
load net decoded_imm_j[21] -attr @rip(#000000) 21 -pin RTL_ADD__4 I1[21] -pin decoded_imm_i I0[21] -pin decoded_imm_j_reg[31:0] Q[21]
load net decoded_imm_j[22] -attr @rip(#000000) 22 -pin RTL_ADD__4 I1[22] -pin decoded_imm_i I0[22] -pin decoded_imm_j_reg[31:0] Q[22]
load net decoded_imm_j[23] -attr @rip(#000000) 23 -pin RTL_ADD__4 I1[23] -pin decoded_imm_i I0[23] -pin decoded_imm_j_reg[31:0] Q[23]
load net decoded_imm_j[24] -attr @rip(#000000) 24 -pin RTL_ADD__4 I1[24] -pin decoded_imm_i I0[24] -pin decoded_imm_j_reg[31:0] Q[24]
load net decoded_imm_j[25] -attr @rip(#000000) 25 -pin RTL_ADD__4 I1[25] -pin decoded_imm_i I0[25] -pin decoded_imm_j_reg[31:0] Q[25]
load net decoded_imm_j[26] -attr @rip(#000000) 26 -pin RTL_ADD__4 I1[26] -pin decoded_imm_i I0[26] -pin decoded_imm_j_reg[31:0] Q[26]
load net decoded_imm_j[27] -attr @rip(#000000) 27 -pin RTL_ADD__4 I1[27] -pin decoded_imm_i I0[27] -pin decoded_imm_j_reg[31:0] Q[27]
load net decoded_imm_j[28] -attr @rip(#000000) 28 -pin RTL_ADD__4 I1[28] -pin decoded_imm_i I0[28] -pin decoded_imm_j_reg[31:0] Q[28]
load net decoded_imm_j[29] -attr @rip(#000000) 29 -pin RTL_ADD__4 I1[29] -pin decoded_imm_i I0[29] -pin decoded_imm_j_reg[31:0] Q[29]
load net decoded_imm_j[2] -attr @rip(#000000) 2 -pin RTL_ADD__4 I1[2] -pin decoded_imm_i I0[2] -pin decoded_imm_j_reg[31:0] Q[2]
load net decoded_imm_j[30] -attr @rip(#000000) 30 -pin RTL_ADD__4 I1[30] -pin decoded_imm_i I0[30] -pin decoded_imm_j_reg[31:0] Q[30]
load net decoded_imm_j[31] -attr @rip(#000000) 31 -pin RTL_ADD__4 I1[31] -pin decoded_imm_i I0[31] -pin decoded_imm_j_reg[31:0] Q[31]
load net decoded_imm_j[3] -attr @rip(#000000) 3 -pin RTL_ADD__4 I1[3] -pin decoded_imm_i I0[3] -pin decoded_imm_j_reg[31:0] Q[3]
load net decoded_imm_j[4] -attr @rip(#000000) 4 -pin RTL_ADD__4 I1[4] -pin decoded_imm_i I0[4] -pin decoded_imm_j_reg[31:0] Q[4]
load net decoded_imm_j[5] -attr @rip(#000000) 5 -pin RTL_ADD__4 I1[5] -pin decoded_imm_i I0[5] -pin decoded_imm_j_reg[31:0] Q[5]
load net decoded_imm_j[6] -attr @rip(#000000) 6 -pin RTL_ADD__4 I1[6] -pin decoded_imm_i I0[6] -pin decoded_imm_j_reg[31:0] Q[6]
load net decoded_imm_j[7] -attr @rip(#000000) 7 -pin RTL_ADD__4 I1[7] -pin decoded_imm_i I0[7] -pin decoded_imm_j_reg[31:0] Q[7]
load net decoded_imm_j[8] -attr @rip(#000000) 8 -pin RTL_ADD__4 I1[8] -pin decoded_imm_i I0[8] -pin decoded_imm_j_reg[31:0] Q[8]
load net decoded_imm_j[9] -attr @rip(#000000) 9 -pin RTL_ADD__4 I1[9] -pin decoded_imm_i I0[9] -pin decoded_imm_j_reg[31:0] Q[9]
load net decoded_imm_j__0[0] -attr @rip(#000000) O[0] -pin decoded_imm_j_i O[0] -pin decoded_imm_j_reg[31:0] CE[0]
load net decoded_imm_j__0[10] -attr @rip(#000000) O[10] -pin decoded_imm_j_i O[10] -pin decoded_imm_j_reg[31:0] CE[10]
load net decoded_imm_j__0[11] -attr @rip(#000000) O[11] -pin decoded_imm_j_i O[11] -pin decoded_imm_j_reg[31:0] CE[11]
load net decoded_imm_j__0[12] -attr @rip(#000000) O[12] -pin decoded_imm_j_i O[12] -pin decoded_imm_j_reg[31:0] CE[12]
load net decoded_imm_j__0[13] -attr @rip(#000000) O[13] -pin decoded_imm_j_i O[13] -pin decoded_imm_j_reg[31:0] CE[13]
load net decoded_imm_j__0[14] -attr @rip(#000000) O[14] -pin decoded_imm_j_i O[14] -pin decoded_imm_j_reg[31:0] CE[14]
load net decoded_imm_j__0[15] -attr @rip(#000000) O[15] -pin decoded_imm_j_i O[15] -pin decoded_imm_j_reg[31:0] CE[15]
load net decoded_imm_j__0[16] -attr @rip(#000000) O[16] -pin decoded_imm_j_i O[16] -pin decoded_imm_j_reg[31:0] CE[16]
load net decoded_imm_j__0[17] -attr @rip(#000000) O[17] -pin decoded_imm_j_i O[17] -pin decoded_imm_j_reg[31:0] CE[17]
load net decoded_imm_j__0[18] -attr @rip(#000000) O[18] -pin decoded_imm_j_i O[18] -pin decoded_imm_j_reg[31:0] CE[18]
load net decoded_imm_j__0[19] -attr @rip(#000000) O[19] -pin decoded_imm_j_i O[19] -pin decoded_imm_j_reg[31:0] CE[19]
load net decoded_imm_j__0[1] -attr @rip(#000000) O[1] -pin decoded_imm_j_i O[1] -pin decoded_imm_j_reg[31:0] CE[1]
load net decoded_imm_j__0[20] -attr @rip(#000000) O[20] -pin decoded_imm_j_i O[20] -pin decoded_imm_j_reg[31:0] CE[20]
load net decoded_imm_j__0[21] -attr @rip(#000000) O[21] -pin decoded_imm_j_i O[21] -pin decoded_imm_j_reg[31:0] CE[21]
load net decoded_imm_j__0[22] -attr @rip(#000000) O[22] -pin decoded_imm_j_i O[22] -pin decoded_imm_j_reg[31:0] CE[22]
load net decoded_imm_j__0[23] -attr @rip(#000000) O[23] -pin decoded_imm_j_i O[23] -pin decoded_imm_j_reg[31:0] CE[23]
load net decoded_imm_j__0[24] -attr @rip(#000000) O[24] -pin decoded_imm_j_i O[24] -pin decoded_imm_j_reg[31:0] CE[24]
load net decoded_imm_j__0[25] -attr @rip(#000000) O[25] -pin decoded_imm_j_i O[25] -pin decoded_imm_j_reg[31:0] CE[25]
load net decoded_imm_j__0[26] -attr @rip(#000000) O[26] -pin decoded_imm_j_i O[26] -pin decoded_imm_j_reg[31:0] CE[26]
load net decoded_imm_j__0[27] -attr @rip(#000000) O[27] -pin decoded_imm_j_i O[27] -pin decoded_imm_j_reg[31:0] CE[27]
load net decoded_imm_j__0[28] -attr @rip(#000000) O[28] -pin decoded_imm_j_i O[28] -pin decoded_imm_j_reg[31:0] CE[28]
load net decoded_imm_j__0[29] -attr @rip(#000000) O[29] -pin decoded_imm_j_i O[29] -pin decoded_imm_j_reg[31:0] CE[29]
load net decoded_imm_j__0[2] -attr @rip(#000000) O[2] -pin decoded_imm_j_i O[2] -pin decoded_imm_j_reg[31:0] CE[2]
load net decoded_imm_j__0[30] -attr @rip(#000000) O[30] -pin decoded_imm_j_i O[30] -pin decoded_imm_j_reg[31:0] CE[30]
load net decoded_imm_j__0[31] -attr @rip(#000000) O[31] -pin decoded_imm_j_i O[31] -pin decoded_imm_j_reg[31:0] CE[31]
load net decoded_imm_j__0[3] -attr @rip(#000000) O[3] -pin decoded_imm_j_i O[3] -pin decoded_imm_j_reg[31:0] CE[3]
load net decoded_imm_j__0[4] -attr @rip(#000000) O[4] -pin decoded_imm_j_i O[4] -pin decoded_imm_j_reg[31:0] CE[4]
load net decoded_imm_j__0[5] -attr @rip(#000000) O[5] -pin decoded_imm_j_i O[5] -pin decoded_imm_j_reg[31:0] CE[5]
load net decoded_imm_j__0[6] -attr @rip(#000000) O[6] -pin decoded_imm_j_i O[6] -pin decoded_imm_j_reg[31:0] CE[6]
load net decoded_imm_j__0[7] -attr @rip(#000000) O[7] -pin decoded_imm_j_i O[7] -pin decoded_imm_j_reg[31:0] CE[7]
load net decoded_imm_j__0[8] -attr @rip(#000000) O[8] -pin decoded_imm_j_i O[8] -pin decoded_imm_j_reg[31:0] CE[8]
load net decoded_imm_j__0[9] -attr @rip(#000000) O[9] -pin decoded_imm_j_i O[9] -pin decoded_imm_j_reg[31:0] CE[9]
load net decoded_rd[0] -attr @rip(#000000) 0 -pin decoded_rd_reg[4:0] Q[0] -pin latched_rd_i I0[0]
load net decoded_rd[1] -attr @rip(#000000) 1 -pin decoded_rd_reg[4:0] Q[1] -pin latched_rd_i I0[1]
load net decoded_rd[2] -attr @rip(#000000) 2 -pin decoded_rd_reg[4:0] Q[2] -pin latched_rd_i I0[2]
load net decoded_rd[3] -attr @rip(#000000) 3 -pin decoded_rd_reg[4:0] Q[3] -pin latched_rd_i I0[3]
load net decoded_rd[4] -attr @rip(#000000) 4 -pin decoded_rd_reg[4:0] Q[4] -pin latched_rd_i I0[4]
load net decoded_rs1[0] -attr @rip(#000000) 0 -pin RTL_REDUCTION_OR__8 I0[0] -pin cpuregs raddr1[0] -pin decoded_rs1_reg[4:0] Q[0]
load net decoded_rs1[1] -attr @rip(#000000) 1 -pin RTL_REDUCTION_OR__8 I0[1] -pin cpuregs raddr1[1] -pin decoded_rs1_reg[4:0] Q[1]
load net decoded_rs1[2] -attr @rip(#000000) 2 -pin RTL_REDUCTION_OR__8 I0[2] -pin cpuregs raddr1[2] -pin decoded_rs1_reg[4:0] Q[2]
load net decoded_rs1[3] -attr @rip(#000000) 3 -pin RTL_REDUCTION_OR__8 I0[3] -pin cpuregs raddr1[3] -pin decoded_rs1_reg[4:0] Q[3]
load net decoded_rs1[4] -attr @rip(#000000) 4 -pin RTL_REDUCTION_OR__8 I0[4] -pin cpuregs raddr1[4] -pin decoded_rs1_reg[4:0] Q[4]
load net decoded_rs2[0] -attr @rip(#000000) 0 -pin RTL_REDUCTION_OR__2 I0[0] -pin cpuregs raddr2[0] -pin decoded_rs2_reg[4:0] Q[0] -pin reg_sh_i I5[0]
load net decoded_rs2[1] -attr @rip(#000000) 1 -pin RTL_REDUCTION_OR__2 I0[1] -pin cpuregs raddr2[1] -pin decoded_rs2_reg[4:0] Q[1] -pin reg_sh_i I5[1]
load net decoded_rs2[2] -attr @rip(#000000) 2 -pin RTL_REDUCTION_OR__2 I0[2] -pin cpuregs raddr2[2] -pin decoded_rs2_reg[4:0] Q[2] -pin reg_sh_i I5[2]
load net decoded_rs2[3] -attr @rip(#000000) 3 -pin RTL_REDUCTION_OR__2 I0[3] -pin cpuregs raddr2[3] -pin decoded_rs2_reg[4:0] Q[3] -pin reg_sh_i I5[3]
load net decoded_rs2[4] -attr @rip(#000000) 4 -pin RTL_REDUCTION_OR__2 I0[4] -pin cpuregs raddr2[4] -pin decoded_rs2_reg[4:0] Q[4] -pin reg_sh_i I5[4]
load net decoder_pseudo_trigger -pin RTL_INV__10 I0 -pin decoder_pseudo_trigger_reg Q
netloc decoder_pseudo_trigger 1 53 1 24690 5750n
load net decoder_pseudo_trigger__0 -pin decoder_pseudo_trigger_i__1 O -pin decoder_pseudo_trigger_reg D
netloc decoder_pseudo_trigger__0 1 52 1 24200 6020n
load net decoder_pseudo_trigger_i__0_n_0 -pin decoder_pseudo_trigger_i__0 O -pin decoder_pseudo_trigger_i__1 I7
netloc decoder_pseudo_trigger_i__0_n_0 1 51 1 23810 6090n
load net decoder_pseudo_trigger_i_n_0 -pin decoder_pseudo_trigger_i O -pin decoder_pseudo_trigger_i__1 I6
netloc decoder_pseudo_trigger_i_n_0 1 51 1 23750 6070n
load net decoder_trigger -pin RTL_AND__6 I0 -pin RTL_INV__16 I0 -pin count_instr_i I1 -pin cpu_state_i__6 S -pin decoder_trigger_reg Q -pin latched_branch_i S -pin mem_do_prefetch_i__0 S -pin mem_do_rinst_i__0 S -pin reg_next_pc_i__0 S
netloc decoder_trigger 1 11 47 5360 4270 NJ 4270 6630J 4080 NJ 4080 8880 5840N 9320 5740 10070J 6460N 10510 5720 NJ 5720 NJ 5720 NJ 5720 NJ 5720 NJ 5720 NJ 5720 NJ 5720 NJ 5720 NJ 5720 15070J 5870 15620J 5670N NJ 5670 NJ 5670 NJ 5670 NJ 5670 NJ 5670 NJ 5670 NJ 5670 NJ 5670 NJ 5670 NJ 5670 NJ 5670 NJ 5670 20140 5070 NJ 5070 20790J 4650 21390J 4550N 22220 5400 NJ 5400 NJ 5400 NJ 5400 NJ 5400 NJ 5400 NJ 5400 NJ 5400 25040 6640 NJ 6640 NJ 6640 26060
load net decoder_trigger__0 -pin decoder_trigger_i__6 O -pin decoder_trigger_reg D
netloc decoder_trigger__0 1 53 1 24590 6420n
load net decoder_trigger_i__0_n_0 -pin decoder_trigger_i__0 O -pin decoder_trigger_i__5 I4
netloc decoder_trigger_i__0_n_0 1 51 1 23830 6110n
load net decoder_trigger_i__1_n_0 -pin decoder_trigger_i__1 O -pin decoder_trigger_i__2 I0
netloc decoder_trigger_i__1_n_0 1 50 1 23450 6310n
load net decoder_trigger_i__2_n_0 -pin decoder_trigger_i__2 O -pin decoder_trigger_i__5 I6
netloc decoder_trigger_i__2_n_0 1 51 1 23790 6380n
load net decoder_trigger_i__3_n_0 -pin decoder_trigger_i__3 O -pin decoder_trigger_i__4 I0
netloc decoder_trigger_i__3_n_0 1 50 1 23430 6570n
load net decoder_trigger_i__4_n_0 -pin decoder_trigger_i__4 O -pin decoder_trigger_i__5 I7
netloc decoder_trigger_i__4_n_0 1 51 1 23830 6400n
load net decoder_trigger_i__5_n_0 -pin decoder_trigger_i__5 O -pin decoder_trigger_i__6 I1
netloc decoder_trigger_i__5_n_0 1 52 1 24160 6330n
load net decoder_trigger_i_n_0 -pin decoder_trigger_i O -pin decoder_trigger_i__0 I0
netloc decoder_trigger_i_n_0 1 50 1 23490 6060n
load net eoi[0] -attr @rip(#000000) 0 -port eoi[0] -pin eoi_reg[31:0] Q[0]
load net eoi[10] -attr @rip(#000000) 10 -port eoi[10] -pin eoi_reg[31:0] Q[10]
load net eoi[11] -attr @rip(#000000) 11 -port eoi[11] -pin eoi_reg[31:0] Q[11]
load net eoi[12] -attr @rip(#000000) 12 -port eoi[12] -pin eoi_reg[31:0] Q[12]
load net eoi[13] -attr @rip(#000000) 13 -port eoi[13] -pin eoi_reg[31:0] Q[13]
load net eoi[14] -attr @rip(#000000) 14 -port eoi[14] -pin eoi_reg[31:0] Q[14]
load net eoi[15] -attr @rip(#000000) 15 -port eoi[15] -pin eoi_reg[31:0] Q[15]
load net eoi[16] -attr @rip(#000000) 16 -port eoi[16] -pin eoi_reg[31:0] Q[16]
load net eoi[17] -attr @rip(#000000) 17 -port eoi[17] -pin eoi_reg[31:0] Q[17]
load net eoi[18] -attr @rip(#000000) 18 -port eoi[18] -pin eoi_reg[31:0] Q[18]
load net eoi[19] -attr @rip(#000000) 19 -port eoi[19] -pin eoi_reg[31:0] Q[19]
load net eoi[1] -attr @rip(#000000) 1 -port eoi[1] -pin eoi_reg[31:0] Q[1]
load net eoi[20] -attr @rip(#000000) 20 -port eoi[20] -pin eoi_reg[31:0] Q[20]
load net eoi[21] -attr @rip(#000000) 21 -port eoi[21] -pin eoi_reg[31:0] Q[21]
load net eoi[22] -attr @rip(#000000) 22 -port eoi[22] -pin eoi_reg[31:0] Q[22]
load net eoi[23] -attr @rip(#000000) 23 -port eoi[23] -pin eoi_reg[31:0] Q[23]
load net eoi[24] -attr @rip(#000000) 24 -port eoi[24] -pin eoi_reg[31:0] Q[24]
load net eoi[25] -attr @rip(#000000) 25 -port eoi[25] -pin eoi_reg[31:0] Q[25]
load net eoi[26] -attr @rip(#000000) 26 -port eoi[26] -pin eoi_reg[31:0] Q[26]
load net eoi[27] -attr @rip(#000000) 27 -port eoi[27] -pin eoi_reg[31:0] Q[27]
load net eoi[28] -attr @rip(#000000) 28 -port eoi[28] -pin eoi_reg[31:0] Q[28]
load net eoi[29] -attr @rip(#000000) 29 -port eoi[29] -pin eoi_reg[31:0] Q[29]
load net eoi[2] -attr @rip(#000000) 2 -port eoi[2] -pin eoi_reg[31:0] Q[2]
load net eoi[30] -attr @rip(#000000) 30 -port eoi[30] -pin eoi_reg[31:0] Q[30]
load net eoi[31] -attr @rip(#000000) 31 -port eoi[31] -pin eoi_reg[31:0] Q[31]
load net eoi[3] -attr @rip(#000000) 3 -port eoi[3] -pin eoi_reg[31:0] Q[3]
load net eoi[4] -attr @rip(#000000) 4 -port eoi[4] -pin eoi_reg[31:0] Q[4]
load net eoi[5] -attr @rip(#000000) 5 -port eoi[5] -pin eoi_reg[31:0] Q[5]
load net eoi[6] -attr @rip(#000000) 6 -port eoi[6] -pin eoi_reg[31:0] Q[6]
load net eoi[7] -attr @rip(#000000) 7 -port eoi[7] -pin eoi_reg[31:0] Q[7]
load net eoi[8] -attr @rip(#000000) 8 -port eoi[8] -pin eoi_reg[31:0] Q[8]
load net eoi[9] -attr @rip(#000000) 9 -port eoi[9] -pin eoi_reg[31:0] Q[9]
load net eoi_i_n_0 -attr @rip(#000000) O[31] -pin eoi_i O[31] -pin eoi_reg[31:0] D[31]
load net eoi_i_n_1 -attr @rip(#000000) O[30] -pin eoi_i O[30] -pin eoi_reg[31:0] D[30]
load net eoi_i_n_10 -attr @rip(#000000) O[21] -pin eoi_i O[21] -pin eoi_reg[31:0] D[21]
load net eoi_i_n_11 -attr @rip(#000000) O[20] -pin eoi_i O[20] -pin eoi_reg[31:0] D[20]
load net eoi_i_n_12 -attr @rip(#000000) O[19] -pin eoi_i O[19] -pin eoi_reg[31:0] D[19]
load net eoi_i_n_13 -attr @rip(#000000) O[18] -pin eoi_i O[18] -pin eoi_reg[31:0] D[18]
load net eoi_i_n_14 -attr @rip(#000000) O[17] -pin eoi_i O[17] -pin eoi_reg[31:0] D[17]
load net eoi_i_n_15 -attr @rip(#000000) O[16] -pin eoi_i O[16] -pin eoi_reg[31:0] D[16]
load net eoi_i_n_16 -attr @rip(#000000) O[15] -pin eoi_i O[15] -pin eoi_reg[31:0] D[15]
load net eoi_i_n_17 -attr @rip(#000000) O[14] -pin eoi_i O[14] -pin eoi_reg[31:0] D[14]
load net eoi_i_n_18 -attr @rip(#000000) O[13] -pin eoi_i O[13] -pin eoi_reg[31:0] D[13]
load net eoi_i_n_19 -attr @rip(#000000) O[12] -pin eoi_i O[12] -pin eoi_reg[31:0] D[12]
load net eoi_i_n_2 -attr @rip(#000000) O[29] -pin eoi_i O[29] -pin eoi_reg[31:0] D[29]
load net eoi_i_n_20 -attr @rip(#000000) O[11] -pin eoi_i O[11] -pin eoi_reg[31:0] D[11]
load net eoi_i_n_21 -attr @rip(#000000) O[10] -pin eoi_i O[10] -pin eoi_reg[31:0] D[10]
load net eoi_i_n_22 -attr @rip(#000000) O[9] -pin eoi_i O[9] -pin eoi_reg[31:0] D[9]
load net eoi_i_n_23 -attr @rip(#000000) O[8] -pin eoi_i O[8] -pin eoi_reg[31:0] D[8]
load net eoi_i_n_24 -attr @rip(#000000) O[7] -pin eoi_i O[7] -pin eoi_reg[31:0] D[7]
load net eoi_i_n_25 -attr @rip(#000000) O[6] -pin eoi_i O[6] -pin eoi_reg[31:0] D[6]
load net eoi_i_n_26 -attr @rip(#000000) O[5] -pin eoi_i O[5] -pin eoi_reg[31:0] D[5]
load net eoi_i_n_27 -attr @rip(#000000) O[4] -pin eoi_i O[4] -pin eoi_reg[31:0] D[4]
load net eoi_i_n_28 -attr @rip(#000000) O[3] -pin eoi_i O[3] -pin eoi_reg[31:0] D[3]
load net eoi_i_n_29 -attr @rip(#000000) O[2] -pin eoi_i O[2] -pin eoi_reg[31:0] D[2]
load net eoi_i_n_3 -attr @rip(#000000) O[28] -pin eoi_i O[28] -pin eoi_reg[31:0] D[28]
load net eoi_i_n_30 -attr @rip(#000000) O[1] -pin eoi_i O[1] -pin eoi_reg[31:0] D[1]
load net eoi_i_n_31 -attr @rip(#000000) O[0] -pin eoi_i O[0] -pin eoi_reg[31:0] D[0]
load net eoi_i_n_4 -attr @rip(#000000) O[27] -pin eoi_i O[27] -pin eoi_reg[31:0] D[27]
load net eoi_i_n_5 -attr @rip(#000000) O[26] -pin eoi_i O[26] -pin eoi_reg[31:0] D[26]
load net eoi_i_n_6 -attr @rip(#000000) O[25] -pin eoi_i O[25] -pin eoi_reg[31:0] D[25]
load net eoi_i_n_7 -attr @rip(#000000) O[24] -pin eoi_i O[24] -pin eoi_reg[31:0] D[24]
load net eoi_i_n_8 -attr @rip(#000000) O[23] -pin eoi_i O[23] -pin eoi_reg[31:0] D[23]
load net eoi_i_n_9 -attr @rip(#000000) O[22] -pin eoi_i O[22] -pin eoi_reg[31:0] D[22]
load net instr_add -pin RTL_REDUCTION_OR__6 I0[1] -pin instr_add_reg Q -pin instr_trap_i I0[20]
load net instr_addi -pin RTL_REDUCTION_OR__6 I0[2] -pin instr_addi_reg Q -pin instr_trap_i I0[29]
load net instr_and -attr @rip(#000000) 11 -pin RTL_OR__13 I1 -pin instr_and_reg Q -pin instr_trap_i I0[11]
load net instr_andi -attr @rip(#000000) 24 -pin RTL_OR__13 I0 -pin instr_andi_reg Q -pin instr_trap_i I0[24]
load net instr_beq -attr @rip(#000000) 43 -pin alu_out_0_i S0 -pin instr_beq_reg Q -pin instr_trap_i I0[43]
load net instr_bge -attr @rip(#000000) 40 -pin alu_out_0_i S2 -pin instr_bge_reg Q -pin instr_trap_i I0[40]
load net instr_bgeu -attr @rip(#000000) 38 -pin alu_out_0_i S3 -pin instr_bgeu_reg Q -pin instr_trap_i I0[38]
load net instr_blt -pin RTL_REDUCTION_OR__11 I0[1] -pin instr_blt_reg Q -pin instr_trap_i I0[41]
load net instr_bltu -pin RTL_REDUCTION_OR__12 I0[1] -pin instr_bltu_reg Q -pin instr_trap_i I0[39]
load net instr_bne -attr @rip(#000000) 42 -pin alu_out_0_i S1 -pin instr_bne_reg Q -pin instr_trap_i I0[42]
load net instr_ecall_ebreak -pin RTL_OR__25 I1 -pin instr_ecall_ebreak_reg Q
netloc instr_ecall_ebreak 1 27 1 14590 5430n
load net instr_fence -attr @rip(#000000) 6 -pin instr_fence_reg Q -pin instr_trap_i I0[6]
load net instr_getq -attr @rip(#000000) 5 -pin instr_getq_reg Q -pin instr_trap_i I0[5]
load net instr_getq__0 -pin instr_getq_i O -pin instr_getq_reg D
netloc instr_getq__0 1 8 1 N 5120
load net instr_jalr -pin RTL_INV__18 I0 -pin RTL_OR__9 I0 -pin RTL_REDUCTION_OR__1 I0[2] -pin RTL_REDUCTION_OR__6 I0[3] -pin instr_jalr_reg Q -pin instr_trap_i I0[44] -pin latched_branch_i__0 I1
load net instr_lb -attr @rip(#000000) 37 -pin RTL_OR__14 I0 -pin instr_lb_reg Q -pin instr_trap_i I0[37] -pin latched_is_lb_i I1
load net instr_lbu -pin RTL_OR__14 I1 -pin RTL_REDUCTION_OR__9 I0[2] -pin instr_lbu_reg Q -pin instr_trap_i I0[34]
load net instr_lh -attr @rip(#000000) 36 -pin RTL_OR__15 I0 -pin instr_lh_reg Q -pin instr_trap_i I0[36] -pin latched_is_lh_i I1
load net instr_lhu -pin RTL_OR__15 I1 -pin RTL_REDUCTION_OR__9 I0[1] -pin instr_lhu_reg Q -pin instr_trap_i I0[33]
load net instr_lw -pin RTL_REDUCTION_OR__9 I0[0] -pin instr_lw_reg Q -pin instr_trap_i I0[35] -pin mem_wordsize_i__0 S2
load net instr_maskirq -attr @rip(#000000) 2 -pin instr_maskirq_reg Q -pin instr_trap_i I0[2]
load net instr_maskirq__0 -pin instr_maskirq_i O -pin instr_maskirq_reg D
netloc instr_maskirq__0 1 8 1 N 100
load net instr_or -attr @rip(#000000) 12 -pin RTL_OR__12 I1 -pin instr_or_reg Q -pin instr_trap_i I0[12]
load net instr_ori -attr @rip(#000000) 25 -pin RTL_OR__12 I0 -pin instr_ori_reg Q -pin instr_trap_i I0[25]
load net instr_rdcycle -pin instr_rdcycle_reg Q -pin instr_trap_i I0[10] -pin is_rdcycle_rdcycleh_rdinstr_rdinstrh_i I0[3] -pin reg_out_i S0
load net instr_rdcycleh -pin instr_rdcycleh_reg Q -pin instr_trap_i I0[9] -pin is_rdcycle_rdcycleh_rdinstr_rdinstrh_i I0[2] -pin reg_out_i S1
load net instr_rdinstr -pin instr_rdinstr_reg Q -pin instr_trap_i I0[8] -pin is_rdcycle_rdcycleh_rdinstr_rdinstrh_i I0[1] -pin reg_out_i S2
load net instr_rdinstrh -pin instr_rdinstrh_reg Q -pin instr_trap_i I0[7] -pin is_rdcycle_rdcycleh_rdinstr_rdinstrh_i I0[0] -pin reg_out_i S3
load net instr_retirq -attr @rip(#000000) 3 -pin RTL_INV__19 I0 -pin instr_retirq_reg Q -pin instr_trap_i I0[3]
load net instr_retirq__0 -pin instr_retirq_i O -pin instr_retirq_reg D
netloc instr_retirq__0 1 8 1 3240 5370n
load net instr_sb -attr @rip(#000000) 32 -pin instr_sb_reg Q -pin instr_trap_i I0[32] -pin mem_wordsize_i S0
load net instr_setq -attr @rip(#000000) 4 -pin instr_setq_reg Q -pin instr_trap_i I0[4]
load net instr_setq__0 -pin instr_setq_i O -pin instr_setq_reg D
netloc instr_setq__0 1 8 1 3220 380n
load net instr_sh -attr @rip(#000000) 31 -pin instr_sh_reg Q -pin instr_trap_i I0[31] -pin mem_wordsize_i S1
load net instr_sll -attr @rip(#000000) 18 -pin RTL_OR__16 I1 -pin RTL_OR__19 I1 -pin instr_sll_reg Q -pin instr_trap_i I0[18]
load net instr_slli -attr @rip(#000000) 23 -pin RTL_OR__16 I0 -pin RTL_OR__19 I0 -pin instr_slli_reg Q -pin instr_trap_i I0[23]
load net instr_slt -pin RTL_REDUCTION_OR__11 I0[0] -pin RTL_REDUCTION_OR__7 I0[2] -pin instr_slt_reg Q -pin instr_trap_i I0[17]
load net instr_slti -pin RTL_REDUCTION_OR__11 I0[2] -pin RTL_REDUCTION_OR__7 I0[3] -pin instr_slti_reg Q -pin instr_trap_i I0[28]
load net instr_sltiu -pin RTL_REDUCTION_OR__12 I0[2] -pin RTL_REDUCTION_OR__7 I0[1] -pin instr_sltiu_reg Q -pin instr_trap_i I0[27]
load net instr_sltu -pin RTL_REDUCTION_OR__12 I0[0] -pin RTL_REDUCTION_OR__7 I0[0] -pin instr_sltu_reg Q -pin instr_trap_i I0[16]
load net instr_sra -attr @rip(#000000) 13 -pin RTL_OR__18 I1 -pin RTL_OR__21 I1 -pin instr_sra_reg Q -pin instr_trap_i I0[13]
load net instr_srai -attr @rip(#000000) 21 -pin RTL_OR__18 I0 -pin RTL_OR__21 I0 -pin instr_srai_reg Q -pin instr_trap_i I0[21]
load net instr_srl -attr @rip(#000000) 14 -pin RTL_OR__17 I1 -pin RTL_OR__20 I1 -pin instr_srl_reg Q -pin instr_trap_i I0[14]
load net instr_srli -attr @rip(#000000) 22 -pin RTL_OR__17 I0 -pin RTL_OR__20 I0 -pin instr_srli_reg Q -pin instr_trap_i I0[22]
load net instr_sub -pin RTL_MUX__1 S -pin RTL_REDUCTION_OR__6 I0[0] -pin instr_sub_reg Q -pin instr_trap_i I0[19]
load net instr_sw -attr @rip(#000000) 30 -pin instr_sw_reg Q -pin instr_trap_i I0[30] -pin mem_wordsize_i S2
load net instr_timer -attr @rip(#000000) 0 -pin instr_timer_reg Q -pin instr_trap_i I0[0]
load net instr_timer__0 -pin instr_timer_i O -pin instr_timer_reg D
netloc instr_timer__0 1 8 1 N 4980
load net instr_trap -pin RTL_INV__11 I0 -pin cpu_state_i__0 S0 -pin instr_trap_i O -pin latched_store_i__1 S0 -pin mem_do_rinst_i__2 S0 -pin mem_do_rinst_i__6 S0 -pin reg_op1_i S0 -pin reg_op2_i S0 -pin reg_out_i__0 S0 -pin reg_sh_i S0
netloc instr_trap 1 12 56 6040 4720 6790J 4940 7510J 4810N NJ 4810 9480 4830N NJ 4830 NJ 4830 NJ 4830 NJ 4830 NJ 4830 NJ 4830 NJ 4830 NJ 4830 NJ 4830 14130 4930N N 4930 NJ 4930 NJ 4930N NJ 4930 NJ 4930 NJ 4930 NJ 4930 NJ 4930 NJ 4930 NJ 4930 NJ 4930 NJ 4930 NJ 4930 NJ 4930 NJ 4930 NJ 4930 NJ 4930 20970 4980N 21410 4840N 22060J 4780 NJ 4780 NJ 4780 NJ 4780 NJ 4780 NJ 4780 NJ 4780 NJ 4780 NJ 4780 NJ 4780 NJ 4780 NJ 4780 NJ 4780 NJ 4780 NJ 4780 NJ 4780 NJ 4780 NJ 4780 NJ 4780 28300J 4700 N 4700N N
load net instr_waitirq -attr @rip(#000000) 1 -pin instr_trap_i I0[1] -pin instr_waitirq_reg Q
load net instr_waitirq__0 -pin instr_waitirq_i O -pin instr_waitirq_reg D
netloc instr_waitirq__0 1 8 1 3220 5250n
load net instr_xor -attr @rip(#000000) 15 -pin RTL_OR__11 I1 -pin instr_trap_i I0[15] -pin instr_xor_reg Q
load net instr_xori -attr @rip(#000000) 26 -pin RTL_OR__11 I0 -pin instr_trap_i I0[26] -pin instr_xori_reg Q
load net is_alu_reg_imm -attr @rip(#000000) 0 -pin RTL_AND__34 I0 -pin RTL_AND__36 I0 -pin RTL_AND__38 I0 -pin RTL_AND__40 I0 -pin RTL_AND__41 I0 -pin RTL_AND__42 I0 -pin RTL_AND__43 I0 -pin RTL_AND__44 I0 -pin RTL_AND__45 I0 -pin RTL_AND__64 I0 -pin RTL_AND__65 I0 -pin RTL_REDUCTION_OR__1 I0[0] -pin is_alu_reg_imm_reg Q
load net is_alu_reg_reg -pin RTL_AND__14 I0 -pin RTL_AND__16 I0 -pin RTL_AND__18 I0 -pin RTL_AND__20 I0 -pin RTL_AND__22 I0 -pin RTL_AND__24 I0 -pin RTL_AND__26 I0 -pin RTL_AND__28 I0 -pin RTL_AND__30 I0 -pin RTL_AND__32 I0 -pin RTL_AND__71 I0 -pin is_alu_reg_reg_reg Q
netloc is_alu_reg_reg 1 6 48 1800 4460 NJ 4460 3580 4660 3960J 4540 4490J 4440 5280J 4580 NJ 4580 6670J 4410 7590 5940 8660J 5700 NJ 5700 NJ 5700 NJ 5700 NJ 5700 NJ 5700 NJ 5700 NJ 5700 NJ 5700 NJ 5700 NJ 5700 NJ 5700 NJ 5700 15090J 5730 15600J 5550 NJ 5550 NJ 5550 NJ 5550 NJ 5550 NJ 5550 NJ 5550 NJ 5550 NJ 5550 NJ 5550 NJ 5550 NJ 5550 NJ 5550 NJ 5550 NJ 5550 NJ 5550 21350J 5740 NJ 5740 NJ 5740 NJ 5740 NJ 5740 NJ 5740 NJ 5740 NJ 5740 24650
load net is_beq_bne_blt_bge_bltu_bgeu -attr @rip(#000000) 4 -pin RTL_AND__54 I0 -pin RTL_AND__55 I0 -pin RTL_AND__56 I0 -pin RTL_AND__57 I0 -pin RTL_AND__58 I0 -pin RTL_AND__59 I0 -pin RTL_REDUCTION_OR__7 I0[4] -pin cpu_state_i__9 S -pin decoded_imm_i S3 -pin decoder_trigger_i__0 S -pin is_beq_bne_blt_bge_bltu_bgeu_reg Q -pin latched_branch_i__0 S -pin latched_rd_i__0 I4 -pin latched_stalu_i__0 S -pin latched_store_i S -pin set_mem_do_rinst_i S
netloc is_beq_bne_blt_bge_bltu_bgeu 1 7 44 2710 4600 NJ 4600 3980 6390 NJ 6390 5100J 6550 6160 6420N 7110 6420 7510 6520N 8580 6190N 9340 7270N NJ 7270 NJ 7270 NJ 7270 11410 7500 NJ 7500 NJ 7500 NJ 7500 NJ 7500 NJ 7500 NJ 7500 NJ 7500 15170J 7460 15680J 6490N 16290J 6580 NJ 6580 NJ 6580 NJ 6580 17980J 6710 NJ 6710 NJ 6710 NJ 6710 NJ 6710 NJ 6710 NJ 6710 19750J 6640 20120J 6620 NJ 6620 20850 6440N 21670 6170 NJ 6170 NJ 6170 NJ 6170 NJ 6170 NJ
load net is_compare -pin alu_out_i S1 -pin is_compare_reg Q
netloc is_compare 1 15 1 8720 5540n
load net is_compare__0 -pin is_compare_i O -pin is_compare_reg RST
netloc is_compare__0 1 14 1 7890 6240n
load net is_jalr_addi_slti_sltiu_xori_ori_andi -pin cpu_state_i__0 S6 -pin is_jalr_addi_slti_sltiu_xori_ori_andi_reg Q -pin latched_store_i__1 S6 -pin mem_do_rinst_i__2 S6 -pin mem_do_rinst_i__6 S6 -pin reg_op1_i S6 -pin reg_op2_i S6 -pin reg_out_i__0 S6 -pin reg_sh_i S6
netloc is_jalr_addi_slti_sltiu_xori_ori_andi 1 14 54 7630 4910N NJ 4910 9320 4930N NJ 4930 NJ 4930 NJ 4930 NJ 4930 NJ 4930 NJ 4930 NJ 4930 NJ 4930 NJ 4930 14010 5030N N 5030 NJ 5030 NJ 5030N NJ 5030 NJ 5030 NJ 5030 NJ 5030 NJ 5030 NJ 5030 NJ 5030 NJ 5030 NJ 5030 NJ 5030 NJ 5030 NJ 5030 NJ 5030 NJ 5030 20810 5080N 21530 4940N 22180J 4860 NJ 4860 NJ 4860 NJ 4860 NJ 4860 NJ 4860 NJ 4860 NJ 4860 NJ 4860 NJ 4860 NJ 4860 NJ 4860 NJ 4860 NJ 4860 NJ 4860 NJ 4860 NJ 4860 NJ 4860 NJ 4860 28380J 4780 28740 4800N N
load net is_lb_lh_lw_lbu_lhu -attr @rip(#000000) 1 -pin RTL_AND__49 I0 -pin RTL_AND__50 I0 -pin RTL_AND__51 I0 -pin RTL_AND__52 I0 -pin RTL_AND__53 I0 -pin RTL_AND__60 I0 -pin RTL_REDUCTION_OR__1 I0[1] -pin is_lb_lh_lw_lbu_lhu_reg Q
load net is_lbu_lhu_lw -pin is_lbu_lhu_lw_reg Q -pin latched_is_lu_i I1
netloc is_lbu_lhu_lw 1 12 1 5900 4190n
load net is_lui_auipc_jal -pin cpu_state_i__0 S2 -pin is_lui_auipc_jal_reg Q -pin latched_store_i__1 S2 -pin mem_do_rinst_i__2 S2 -pin mem_do_rinst_i__6 S2 -pin reg_op1_i S2 -pin reg_op2_i S2 -pin reg_out_i__0 S2 -pin reg_sh_i S2
netloc is_lui_auipc_jal 1 14 54 7610 4850N NJ 4850 9420 4870N NJ 4870 NJ 4870 NJ 4870 NJ 4870 NJ 4870 NJ 4870 NJ 4870 NJ 4870 NJ 4870 14110 4970N N 4970 NJ 4970 NJ 4970N NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 20910 5020N 21470 4880N 22080J 4800 NJ 4800 NJ 4800 NJ 4800 NJ 4800 NJ 4800 NJ 4800 NJ 4800 NJ 4800 NJ 4800 NJ 4800 NJ 4800 NJ 4800 NJ 4800 NJ 4800 NJ 4800 NJ 4800 NJ 4800 NJ 4800 28320J 4720 28800 4740N N
load net is_lui_auipc_jal_jalr_addi_add_sub -pin alu_out_i S0 -pin is_lui_auipc_jal_jalr_addi_add_sub_reg Q
netloc is_lui_auipc_jal_jalr_addi_add_sub 1 15 1 8640 5520n
load net is_rdcycle_rdcycleh_rdinstr_rdinstrh -pin cpu_state_i__0 S1 -pin is_rdcycle_rdcycleh_rdinstr_rdinstrh_i O -pin latched_store_i__1 S1 -pin mem_do_rinst_i__2 S1 -pin mem_do_rinst_i__6 S1 -pin reg_op1_i S1 -pin reg_op2_i S1 -pin reg_out_i__0 S1 -pin reg_sh_i S1
netloc is_rdcycle_rdcycleh_rdinstr_rdinstrh 1 14 54 7830 4830N NJ 4830 9440 4850N NJ 4850 NJ 4850 NJ 4850 NJ 4850 NJ 4850 NJ 4850 NJ 4850 NJ 4850 NJ 4850 13990 4950N N 4950 NJ 4950 NJ 4950N NJ 4950 NJ 4950 NJ 4950 NJ 4950 NJ 4950 NJ 4950 NJ 4950 NJ 4950 NJ 4950 NJ 4950 NJ 4950 NJ 4950 NJ 4950 NJ 4950 20930 5000N 21430 4860N 22120J 4880 NJ 4880 NJ 4880 NJ 4880 NJ 4880 NJ 4880 NJ 4880 NJ 4880 NJ 4880 NJ 4880 NJ 4880 NJ 4880 NJ 4880 NJ 4880 NJ 4880 NJ 4880 NJ 4880 NJ 4880 NJ 4880 NJ 4880 28840 4720N N
load net is_sb_sh_sw -pin RTL_AND__46 I0 -pin RTL_AND__47 I0 -pin RTL_AND__48 I0 -pin cpu_state_i S0 -pin cpu_state_i__2 S1 -pin cpu_state_i__8 S1 -pin decoded_imm_i S4 -pin is_sb_sh_sw_reg Q -pin latched_store_i__2 S1 -pin mem_do_rinst_i__1 S0 -pin mem_do_rinst_i__3 S1 -pin mem_do_rinst_i__5 S0 -pin mem_do_rinst_i__7 S1 -pin pcpi_valid_i__1 S1
netloc is_sb_sh_sw 1 7 61 2870 4640 NJ 4640 3940J 4520 4450J 4420 5360J 4560 5940 6440N 7050 6120 NJ 6120 8520J 5890 9440J 5930N 9950J 5760 NJ 5760 NJ 5760 NJ 5760 NJ 5760 NJ 5760 NJ 5760 NJ 5760 NJ 5760 14010J 5780 NJ 5780 14990 5560N 15580 5440N NJ 5440 NJ 5440 NJ 5440 NJ 5440 NJ 5440 NJ 5440 NJ 5440 NJ 5440 NJ 5440 NJ 5440 NJ 5440 NJ 5440 NJ 5440 20390 5280N 20950 4600N 21610 5300N NJ 5300 NJ 5300 NJ 5300 NJ 5300 NJ 5300 NJ 5300 NJ 5300 NJ 5300 NJ 5300 NJ 5300 NJ 5300 NJ 5300 NJ 5300 NJ 5300 NJ 5300 NJ 5300 NJ 5300 NJ 5300 NJ 5300 NJ 5300 28780J 5230 29730
load net is_sll_srl_sra -pin cpu_state_i S1 -pin cpu_state_i__2 S2 -pin cpu_state_i__8 S2 -pin is_sll_srl_sra_reg Q -pin latched_store_i__2 S2 -pin mem_do_rinst_i__1 S1 -pin mem_do_rinst_i__3 S2 -pin mem_do_rinst_i__5 S1 -pin mem_do_rinst_i__7 S2 -pin pcpi_valid_i__1 S2
netloc is_sll_srl_sra 1 16 52 9320 5950N 9990J 5780 NJ 5780 NJ 5780 NJ 5780 NJ 5780 NJ 5780 NJ 5780 NJ 5780 NJ 5780 13990J 5800 NJ 5800 15010 5580N 15520 5460N 16210 5460 NJ 5460 NJ 5460 NJ 5460 NJ 5460 NJ 5460 NJ 5460 NJ 5460 NJ 5460 NJ 5460 NJ 5460 NJ 5460 NJ 5460 20370 5300N 20850 4620N 21570 5320N NJ 5320 NJ 5320 NJ 5320 NJ 5320 NJ 5320 NJ 5320 NJ 5320 NJ 5320 NJ 5320 NJ 5320 NJ 5320 NJ 5320 NJ 5320 NJ 5320 NJ 5320 NJ 5320 NJ 5320 NJ 5320 NJ 5320 NJ 5320 28880J 5250 29650
load net is_slli_srli_srai -pin cpu_state_i__0 S5 -pin is_slli_srli_srai_reg Q -pin latched_store_i__1 S5 -pin mem_do_rinst_i__2 S5 -pin mem_do_rinst_i__6 S5 -pin reg_op1_i S5 -pin reg_op2_i S5 -pin reg_out_i__0 S5 -pin reg_sh_i S5
netloc is_slli_srli_srai 1 14 54 7530 4890N NJ 4890 9340 4910N NJ 4910 NJ 4910 NJ 4910 NJ 4910 NJ 4910 NJ 4910 NJ 4910 NJ 4910 NJ 4910 14050 5010N N 5010 NJ 5010 NJ 5010N NJ 5010 NJ 5010 NJ 5010 NJ 5010 NJ 5010 NJ 5010 NJ 5010 NJ 5010 NJ 5010 NJ 5010 NJ 5010 NJ 5010 NJ 5010 NJ 5010 20830 5060N 21510 4920N 22160J 4840 NJ 4840 NJ 4840 NJ 4840 NJ 4840 NJ 4840 NJ 4840 NJ 4840 NJ 4840 NJ 4840 NJ 4840 NJ 4840 NJ 4840 NJ 4840 NJ 4840 NJ 4840 NJ 4840 NJ 4840 NJ 4840 28360J 4760 28760 4780N N
load net is_slti_blt_slt -pin alu_out_0_i S4 -pin is_slti_blt_slt_reg Q
netloc is_slti_blt_slt 1 14 1 7530 4290n
load net is_sltiu_bltu_sltu -pin alu_out_0_i S5 -pin is_sltiu_bltu_sltu_reg Q
netloc is_sltiu_bltu_sltu 1 14 1 7510 4310n
load net latched_branch -pin RTL_AND__84 I1 -pin RTL_INV__12 I0 -pin RTL_INV__21 I0 -pin cpuregs_wrdata_i S0 -pin cpuregs_write_i S0 -pin current_pc_i S0 -pin latched_branch_reg Q -pin mem_do_rinst_i S0
netloc latched_branch 1 18 49 10530 6310 NJ 6310 11410 6170N 12070 6210 NJ 6210 NJ 6210N 13220 5950 NJ 5950 NJ 5950 NJ 5950 NJ 5950 NJ 5950 16250J 5820 NJ 5820 NJ 5820 NJ 5820 NJ 5820 NJ 5820 NJ 5820 NJ 5820 NJ 5820 NJ 5820 NJ 5820 NJ 5820 NJ 5820 NJ 5820 NJ 5820N 21410 6210 NJ 6210 NJ 6210 NJ 6210 NJ 6210 NJ 6210 NJ 6210 NJ 6210 NJ 6210 NJ 6210 NJ 6210 NJ 6210 NJ 6210 NJ 6210 NJ 6210 NJ 6210 NJ 6210 NJ 6210 NJ 6210 NJ 6210 NJ 6210 NJ
load net latched_branch__0 -pin latched_branch_i__1 O -pin latched_branch_reg D
netloc latched_branch__0 1 17 1 9990 6130n
load net latched_branch_i__0_n_0 -pin latched_branch_i__0 O -pin latched_branch_i__1 I1
netloc latched_branch_i__0_n_0 1 16 1 9320 6130n
load net latched_branch_i__2_n_0 -pin latched_branch_i__2 O -pin latched_branch_reg CE
netloc latched_branch_i__2_n_0 1 17 1 9890 6650n
load net latched_branch_i_n_0 -pin latched_branch_i O -pin latched_branch_i__1 I0
netloc latched_branch_i_n_0 1 16 1 9480 5780n
load net latched_compr -attr @rip(#000000) 0 -pin RTL_MUX__9 S -pin RTL_OR__32 I1[0] -pin latched_compr_reg Q
netloc latched_compr 1 21 2 11930 6410N 12530
load net latched_compr__0 -pin latched_compr_i__0 O -pin latched_compr_reg CE
netloc latched_compr__0 1 20 1 N 6550
load net latched_compr_i_n_0 -pin latched_compr_i O -pin latched_compr_i__0 I1
netloc latched_compr_i_n_0 1 19 1 11030 6510n
load net latched_is_lb -pin latched_is_lb_reg Q -pin reg_out_i__1 S2
netloc latched_is_lb 1 14 1 7710 5110n
load net latched_is_lb__0 -pin latched_is_lb_i O -pin latched_is_lb_reg D
netloc latched_is_lb__0 1 13 1 N 5440
load net latched_is_lb_i__0_n_0 -pin latched_is_lb_i__0 O -pin latched_is_lb_i__1 I7
netloc latched_is_lb_i__0_n_0 1 12 1 5760 5800n
load net latched_is_lb_i__1_n_0 -pin latched_is_lb_i__1 O -pin latched_is_lb_reg CE
netloc latched_is_lb_i__1_n_0 1 13 1 6810 5420n
load net latched_is_lh -pin latched_is_lh_reg Q -pin reg_out_i__1 S1
netloc latched_is_lh 1 14 1 7670 5090n
load net latched_is_lh__0 -pin latched_is_lh_i O -pin latched_is_lh_reg D
netloc latched_is_lh__0 1 13 1 6730 4950n
load net latched_is_lh_i__0_n_0 -pin latched_is_lh_i__0 O -pin latched_is_lh_i__1 I7
netloc latched_is_lh_i__0_n_0 1 12 1 6180 5220n
load net latched_is_lh_i__1_n_0 -pin latched_is_lh_i__1 O -pin latched_is_lh_reg CE
netloc latched_is_lh_i__1_n_0 1 13 1 N 5150
load net latched_is_lu -pin latched_is_lu_reg Q -pin reg_out_i__1 S0
netloc latched_is_lu 1 14 1 7770 4340n
load net latched_is_lu__0 -pin latched_is_lu_i O -pin latched_is_lu_reg D
netloc latched_is_lu__0 1 13 1 6930 4180n
load net latched_is_lu_i__0_n_0 -pin latched_is_lu_i__0 O -pin latched_is_lu_i__1 I7
netloc latched_is_lu_i__0_n_0 1 12 1 6000 4500n
load net latched_is_lu_i__1_n_0 -pin latched_is_lu_i__1 O -pin latched_is_lu_reg CE
netloc latched_is_lu_i__1_n_0 1 13 1 6630 4340n
load net latched_rd[0] -attr @rip(#000000) 0 -pin RTL_AND__90 I1[0] -pin cpuregs waddr[0] -pin latched_rd_reg[4:0] Q[0]
load net latched_rd[1] -attr @rip(#000000) 1 -pin RTL_AND__90 I1[1] -pin cpuregs waddr[1] -pin latched_rd_reg[4:0] Q[1]
load net latched_rd[2] -attr @rip(#000000) 2 -pin RTL_AND__90 I1[2] -pin cpuregs waddr[2] -pin latched_rd_reg[4:0] Q[2]
load net latched_rd[3] -attr @rip(#000000) 3 -pin RTL_AND__90 I1[3] -pin cpuregs waddr[3] -pin latched_rd_reg[4:0] Q[3]
load net latched_rd[4] -attr @rip(#000000) 4 -pin RTL_AND__90 I1[4] -pin cpuregs waddr[4] -pin latched_rd_reg[4:0] Q[4]
load net latched_rd__0[0] -attr @rip(#000000) O[0] -pin latched_rd_i O[0] -pin latched_rd_reg[4:0] D[0]
load net latched_rd__0[1] -attr @rip(#000000) O[1] -pin latched_rd_i O[1] -pin latched_rd_reg[4:0] D[1]
load net latched_rd__0[2] -attr @rip(#000000) O[2] -pin latched_rd_i O[2] -pin latched_rd_reg[4:0] D[2]
load net latched_rd__0[3] -attr @rip(#000000) O[3] -pin latched_rd_i O[3] -pin latched_rd_reg[4:0] D[3]
load net latched_rd__0[4] -attr @rip(#000000) O[4] -pin latched_rd_i O[4] -pin latched_rd_reg[4:0] D[4]
load net latched_rd_i__0_n_0 -pin latched_rd_i__0 O -pin latched_rd_i__1 I1
netloc latched_rd_i__0_n_0 1 21 1 12010 6650n
load net latched_rd_i__1_n_0 -pin latched_rd_i__1 O -pin latched_rd_reg[4:0] CE
netloc latched_rd_i__1_n_0 1 22 1 12450 6640n
load net latched_stalu -pin RTL_MUX__10 S -pin RTL_MUX__4 S -pin latched_stalu_reg Q
netloc latched_stalu 1 17 6 9950 6840N 10490 6900 NJ 6900 NJ 6900 NJ 6900 NJ
load net latched_stalu__0 -pin latched_stalu_i O -pin latched_stalu_reg D
netloc latched_stalu__0 1 16 1 9460J 6510n
load net latched_stalu_i__0_n_0 -pin latched_stalu_i__0 O -pin latched_stalu_i__1 I4
netloc latched_stalu_i__0_n_0 1 15 1 8620 6340n
load net latched_stalu_i__1_n_0 -pin latched_stalu_i__1 O -pin latched_stalu_reg CE
netloc latched_stalu_i__1_n_0 1 16 1 9360 6330n
load net latched_store -pin RTL_AND__72 I0 -pin RTL_AND__84 I0 -pin RTL_AND__88 I0 -pin RTL_MUX__6 S -pin latched_store_reg Q
netloc latched_store 1 19 48 11090 6430N 11390 6220 11970J 6230 NJ 6230 NJ 6230 NJ 6230 NJ 6230 NJ 6230 NJ 6230 NJ 6230 NJ 6230 NJ 6230 NJ 6230 NJ 6230 17580J 6210 NJ 6210 NJ 6210 NJ 6210 NJ 6210 NJ 6210 NJ 6210 NJ 6210 NJ 6210 NJ 6210 NJ 6210 NJ 6210 21350J 6190 NJ 6190 NJ 6190 NJ 6190 NJ 6190 NJ 6190 NJ 6190 NJ 6190 NJ 6190 NJ 6190 NJ 6190 NJ 6190 NJ 6190 NJ 6190 NJ 6190 NJ 6190 NJ 6190 NJ 6190 NJ 6190 NJ 6190 NJ 6190 NJ
load net latched_store__0 -pin latched_store_i__0 O -pin latched_store_reg D
netloc latched_store__0 1 18 1 10630 5900n
load net latched_store_i__1_n_0 -pin latched_store_i__1 O -pin latched_store_i__3 I2
netloc latched_store_i__1_n_0 1 17 1 10130 4680n
load net latched_store_i__2_n_0 -pin latched_store_i__2 O -pin latched_store_i__3 I3
netloc latched_store_i__2_n_0 1 17 1 10110 5820n
load net latched_store_i__3_n_0 -pin latched_store_i__3 O -pin latched_store_reg CE
netloc latched_store_i__3_n_0 1 18 1 10610 6210n
load net latched_store_i_n_0 -pin latched_store_i O -pin latched_store_i__0 I3
netloc latched_store_i_n_0 1 17 1 10030 5910n
load net mem_addr[0] -attr @rip(#000000) 0 -port mem_addr[0] -pin mem_addr_reg[31:0] Q[0]
load net mem_addr[10] -attr @rip(#000000) 10 -port mem_addr[10] -pin mem_addr_reg[31:0] Q[10]
load net mem_addr[11] -attr @rip(#000000) 11 -port mem_addr[11] -pin mem_addr_reg[31:0] Q[11]
load net mem_addr[12] -attr @rip(#000000) 12 -port mem_addr[12] -pin mem_addr_reg[31:0] Q[12]
load net mem_addr[13] -attr @rip(#000000) 13 -port mem_addr[13] -pin mem_addr_reg[31:0] Q[13]
load net mem_addr[14] -attr @rip(#000000) 14 -port mem_addr[14] -pin mem_addr_reg[31:0] Q[14]
load net mem_addr[15] -attr @rip(#000000) 15 -port mem_addr[15] -pin mem_addr_reg[31:0] Q[15]
load net mem_addr[16] -attr @rip(#000000) 16 -port mem_addr[16] -pin mem_addr_reg[31:0] Q[16]
load net mem_addr[17] -attr @rip(#000000) 17 -port mem_addr[17] -pin mem_addr_reg[31:0] Q[17]
load net mem_addr[18] -attr @rip(#000000) 18 -port mem_addr[18] -pin mem_addr_reg[31:0] Q[18]
load net mem_addr[19] -attr @rip(#000000) 19 -port mem_addr[19] -pin mem_addr_reg[31:0] Q[19]
load net mem_addr[1] -attr @rip(#000000) 1 -port mem_addr[1] -pin mem_addr_reg[31:0] Q[1]
load net mem_addr[20] -attr @rip(#000000) 20 -port mem_addr[20] -pin mem_addr_reg[31:0] Q[20]
load net mem_addr[21] -attr @rip(#000000) 21 -port mem_addr[21] -pin mem_addr_reg[31:0] Q[21]
load net mem_addr[22] -attr @rip(#000000) 22 -port mem_addr[22] -pin mem_addr_reg[31:0] Q[22]
load net mem_addr[23] -attr @rip(#000000) 23 -port mem_addr[23] -pin mem_addr_reg[31:0] Q[23]
load net mem_addr[24] -attr @rip(#000000) 24 -port mem_addr[24] -pin mem_addr_reg[31:0] Q[24]
load net mem_addr[25] -attr @rip(#000000) 25 -port mem_addr[25] -pin mem_addr_reg[31:0] Q[25]
load net mem_addr[26] -attr @rip(#000000) 26 -port mem_addr[26] -pin mem_addr_reg[31:0] Q[26]
load net mem_addr[27] -attr @rip(#000000) 27 -port mem_addr[27] -pin mem_addr_reg[31:0] Q[27]
load net mem_addr[28] -attr @rip(#000000) 28 -port mem_addr[28] -pin mem_addr_reg[31:0] Q[28]
load net mem_addr[29] -attr @rip(#000000) 29 -port mem_addr[29] -pin mem_addr_reg[31:0] Q[29]
load net mem_addr[2] -attr @rip(#000000) 2 -port mem_addr[2] -pin mem_addr_reg[31:0] Q[2]
load net mem_addr[30] -attr @rip(#000000) 30 -port mem_addr[30] -pin mem_addr_reg[31:0] Q[30]
load net mem_addr[31] -attr @rip(#000000) 31 -port mem_addr[31] -pin mem_addr_reg[31:0] Q[31]
load net mem_addr[3] -attr @rip(#000000) 3 -port mem_addr[3] -pin mem_addr_reg[31:0] Q[3]
load net mem_addr[4] -attr @rip(#000000) 4 -port mem_addr[4] -pin mem_addr_reg[31:0] Q[4]
load net mem_addr[5] -attr @rip(#000000) 5 -port mem_addr[5] -pin mem_addr_reg[31:0] Q[5]
load net mem_addr[6] -attr @rip(#000000) 6 -port mem_addr[6] -pin mem_addr_reg[31:0] Q[6]
load net mem_addr[7] -attr @rip(#000000) 7 -port mem_addr[7] -pin mem_addr_reg[31:0] Q[7]
load net mem_addr[8] -attr @rip(#000000) 8 -port mem_addr[8] -pin mem_addr_reg[31:0] Q[8]
load net mem_addr[9] -attr @rip(#000000) 9 -port mem_addr[9] -pin mem_addr_reg[31:0] Q[9]
load net mem_addr_i_n_0 -pin mem_addr_i O -pin mem_addr_reg[31:0] CE
netloc mem_addr_i_n_0 1 69 1 30940 6560n
load net mem_do_prefetch -pin RTL_INV__0 I0 -pin RTL_INV__4 I0 -pin RTL_INV__8 I0 -pin RTL_INV__9 I0 -pin RTL_OR__22 I0 -pin RTL_OR__27 I0 -pin RTL_OR__28 I0 -pin RTL_OR__29 I1 -pin mem_do_prefetch_reg Q -pin mem_do_rinst_i__1 I2 -pin mem_do_rinst_i__2 I2 -pin mem_do_rinst_i__2 I6 -pin mem_do_rinst_i__3 I3 -pin mem_do_rinst_i__4 I3
netloc mem_do_prefetch 1 1 67 240 7460 NJ 7460 NJ 7460 NJ 7460 NJ 7460 NJ 7460 2470 7580 NJ 7580 NJ 7580 NJ 7580 NJ 7580 NJ 7580 NJ 7580 NJ 7580 NJ 7580 NJ 7580 NJ 7580 NJ 7580 NJ 7580 NJ 7580 NJ 7580 NJ 7580 NJ 7580 NJ 7580 NJ 7580 NJ 7580 14610 5060 NJ 5060 NJ 5060 NJ 5060 NJ 5060 NJ 5060 NJ 5060 NJ 5060 NJ 5060 NJ 5060 NJ 5060 NJ 5060 NJ 5060 NJ 5060 NJ 5060 20120J 5050 NJ 5050 20770 4690 21650 5410 22140 5720 NJ 5720 NJ 5720 NJ 5720 NJ 5720 NJ 5720 24180J 5620 24630J 5540 NJ 5540 NJ 5540 NJ 5540 NJ 5540 NJ 5540 NJ 5540 NJ 5540 27260 7430 NJ 7430 NJ 7430 NJ 7430 NJ 7430 28800 7180 29590
load net mem_do_prefetch__0 -pin mem_do_prefetch_i__2 O -pin mem_do_prefetch_reg CE
netloc mem_do_prefetch__0 1 60 1 26940 6040n
load net mem_do_prefetch_i__0_n_0 -pin mem_do_prefetch_i__0 O -pin mem_do_prefetch_i__1 I1
netloc mem_do_prefetch_i__0_n_0 1 58 1 26340 5930n
load net mem_do_prefetch_i__1_n_0 -pin mem_do_prefetch_i__1 O -pin mem_do_prefetch_i__2 I1
netloc mem_do_prefetch_i__1_n_0 1 59 1 26630 5980n
load net mem_do_prefetch_i_n_0 -pin mem_do_prefetch_i O -pin mem_do_prefetch_i__0 I0
netloc mem_do_prefetch_i_n_0 1 57 1 26040 6380n
load net mem_do_rdata -pin RTL_INV__3 I0 -pin RTL_OR__2 I1 -pin RTL_OR__23 I1 -pin RTL_OR__26 I0 -pin RTL_OR__30 I1 -pin RTL_OR__4 I1 -pin mem_do_rdata_reg Q
netloc mem_do_rdata 1 8 60 3220 7340 NJ 7340 NJ 7340 NJ 7340 NJ 7340 NJ 7340 7970J 7400 NJ 7400 NJ 7400 NJ 7400 NJ 7400 NJ 7400 11390J 7460 NJ 7460 NJ 7460 NJ 7460 NJ 7460 NJ 7460 NJ 7460 NJ 7460 15130 7280 NJ 7280 NJ 7280 NJ 7280 NJ 7280 NJ 7280 NJ 7280 NJ 7280 18600 7270 18960J 7250 NJ 7250 NJ 7250 NJ 7250 NJ 7250 NJ 7250 NJ 7250 NJ 7250 NJ 7250 NJ 7250 NJ 7250 NJ 7250 NJ 7250 NJ 7250 NJ 7250 NJ 7250 NJ 7250 NJ 7250 NJ 7250 NJ 7250 NJ 7250 NJ 7250 NJ 7250 NJ 7250 NJ 7250 27470 7190 27680 7450 NJ 7450 NJ 7450 NJ 7450 29550J
load net mem_do_rdata__0 -pin mem_do_rdata_i O -pin mem_do_rdata_reg D
netloc mem_do_rdata__0 1 7 1 N 6460
load net mem_do_rinst -pin RTL_AND__2 I1 -pin RTL_AND__3 I0 -pin RTL_AND__74 I0 -pin RTL_AND__81 I1 -pin RTL_OR__2 I0 -pin RTL_OR__22 I1 -pin RTL_OR__27 I1 -pin RTL_OR__28 I1 -pin RTL_OR__29 I0 -pin RTL_OR__4 I0 -pin mem_do_rinst_reg Q -pin mem_state_i__2 I3
netloc mem_do_rinst 1 29 39 15760 7220 NJ 7220 NJ 7220 NJ 7220 NJ 7220 NJ 7220 NJ 7220 18520 7150 18940J 7210 19230 7060 NJ 7060 NJ 7060 19850 6880 NJ 6880 NJ 6880 NJ 6880 NJ 6880 NJ 6880 NJ 6880 22800 6910 NJ 6910 NJ 6910 NJ 6910 NJ 6910 NJ 6910 NJ 6910 NJ 6910 NJ 6910 NJ 6910 NJ 6910 NJ 6910 NJ 6910 27240 7170 NJ 7170 27660 7170 27980 7410 NJ 7410 28820 7200 29550
load net mem_do_rinst1_out -pin mem_do_rinst_i__4 O -pin mem_do_rinst_reg D
netloc mem_do_rinst1_out 1 47 1 22590 5620n
load net mem_do_rinst__0 -pin mem_do_rinst_i__3 O -pin mem_do_rinst_i__4 I2
netloc mem_do_rinst__0 1 46 1 22160 5190n
load net mem_do_rinst_i__0_n_0 -pin mem_do_rinst_i__0 O -pin mem_do_rinst_i__4 I0
netloc mem_do_rinst_i__0_n_0 1 46 1 22240 4490n
load net mem_do_rinst_i__1_n_0 -pin mem_do_rinst_i__1 O -pin mem_do_rinst_i__2 I7
netloc mem_do_rinst_i__1_n_0 1 45 1 21630 4520n
load net mem_do_rinst_i__2_n_0 -pin mem_do_rinst_i__2 O -pin mem_do_rinst_i__4 I1
netloc mem_do_rinst_i__2_n_0 1 46 1 22200 4690n
load net mem_do_rinst_i__5_n_0 -pin mem_do_rinst_i__5 O -pin mem_do_rinst_i__6 I7
netloc mem_do_rinst_i__5_n_0 1 44 1 20890 4900n
load net mem_do_rinst_i__6_n_0 -pin mem_do_rinst_i__6 O -pin mem_do_rinst_i__8 I2
netloc mem_do_rinst_i__6_n_0 1 45 1 21390 4830n
load net mem_do_rinst_i__7_n_0 -pin mem_do_rinst_i__7 O -pin mem_do_rinst_i__8 I3
netloc mem_do_rinst_i__7_n_0 1 45 1 21510 5210n
load net mem_do_rinst_i__8_n_0 -pin mem_do_rinst_i__8 O -pin mem_do_rinst_i__9 I1
netloc mem_do_rinst_i__8_n_0 1 46 1 22080 5550n
load net mem_do_rinst_i__9_n_0 -pin mem_do_rinst_i__9 O -pin mem_do_rinst_reg CE
netloc mem_do_rinst_i__9_n_0 1 47 1 22570 6330n
load net mem_do_rinst_i_n_0 -pin mem_do_rinst_i O -pin mem_do_rinst_i__0 I1
netloc mem_do_rinst_i_n_0 1 45 1 21450 4500n
load net mem_do_wdata -pin RTL_INV I0 -pin RTL_OR__26 I1 -pin RTL_OR__5 I1 -pin mem_do_wdata_reg Q -pin mem_instr_i S -pin mem_instr_i__0 S -pin mem_la_write_i I1 -pin mem_state_i S -pin mem_state_i__1 S -pin mem_valid_i S -pin mem_valid_i__1 S
netloc mem_do_wdata 1 8 62 3600 7750 NJ 7750 NJ 7750 NJ 7750 NJ 7750 NJ 7750 NJ 7750 NJ 7750 NJ 7750 NJ 7750 NJ 7750 NJ 7750 11390J 7710 NJ 7710 NJ 7710 NJ 7710 NJ 7710 NJ 7710 NJ 7710 NJ 7710 15150 7180 15540J 7240 NJ 7240 NJ 7240 NJ 7240 NJ 7240 NJ 7240 NJ 7240 18580J 7290 18900 7040 NJ 7040 NJ 7040 NJ 7040 NJ 7040 20120J 7070 NJ 7070 NJ 7070 NJ 7070 NJ 7070 NJ 7070 NJ 7070 NJ 7070 NJ 7070 NJ 7070 NJ 7070 NJ 7070 NJ 7070 NJ 7070 NJ 7070 NJ 7070 NJ 7070 NJ 7070 NJ 7070 NJ 7070 NJ 7070 27720J 7050N 27980 7020N 28340 6700 29000 6760N 29630 6640N 30370 6900N 31020
load net mem_do_wdata__0 -pin mem_do_wdata_i O -pin mem_do_wdata_reg D
netloc mem_do_wdata__0 1 36 1 18520 6940n
load net mem_done -pin RTL_AND__3 I1 -pin RTL_AND__4 I1 -pin RTL_AND__5 I1 -pin RTL_AND__74 I1 -pin RTL_OR I1 -pin RTL_OR__0 I1 -pin RTL_OR__1 I1 -pin cpu_state_i__9 I0 -pin mem_done_i O
netloc mem_done 1 2 47 460 7440 NJ 7440 NJ 7440 NJ 7440 2020 7480 NJ 7480 3240 7500 4020J 7420 NJ 7420 NJ 7420 NJ 7420 NJ 7420 NJ 7420 8440J 7500 9280J 7540 NJ 7540 NJ 7540 NJ 7540 NJ 7540 NJ 7540 NJ 7540 NJ 7540 NJ 7540 NJ 7540 NJ 7540 NJ 7540 15090 6670 15700 6820 NJ 6820 NJ 6820 NJ 6820 NJ 6820 NJ 6820 NJ 6820 18540J 6800 NJ 6800 NJ 6800 NJ 6800 NJ 6800 19810 6680 NJ 6680 NJ 6680 NJ 6680 NJ 6680 22060J 6780 22490J 6790 N
load net mem_instr -port mem_instr -pin mem_instr_reg Q
netloc mem_instr 1 70 1 NJ 6820
load net mem_instr_i__0_n_0 -pin mem_instr_i__0 O -pin mem_instr_i__1 I0
netloc mem_instr_i__0_n_0 1 67 1 29690 6690n
load net mem_instr_i__1_n_0 -pin mem_instr_i__1 O -pin mem_instr_i__2 I1
netloc mem_instr_i__1_n_0 1 68 1 30390 6720n
load net mem_instr_i__2_n_0 -pin mem_instr_i__2 O -pin mem_instr_reg CE
netloc mem_instr_i__2_n_0 1 69 1 31020 6720n
load net mem_instr_i_n_0 -pin mem_instr_i O -pin mem_instr_reg D
netloc mem_instr_i_n_0 1 69 1 N 6840
load net mem_la_addr[0] -attr @rip(#000000) O[0] -pin mem_addr_reg[31:0] D[0] -port mem_la_addr[0] -pin mem_la_addr_i O[0]
load net mem_la_addr[10] -attr @rip(#000000) O[10] -pin mem_addr_reg[31:0] D[10] -port mem_la_addr[10] -pin mem_la_addr_i O[10]
load net mem_la_addr[11] -attr @rip(#000000) O[11] -pin mem_addr_reg[31:0] D[11] -port mem_la_addr[11] -pin mem_la_addr_i O[11]
load net mem_la_addr[12] -attr @rip(#000000) O[12] -pin mem_addr_reg[31:0] D[12] -port mem_la_addr[12] -pin mem_la_addr_i O[12]
load net mem_la_addr[13] -attr @rip(#000000) O[13] -pin mem_addr_reg[31:0] D[13] -port mem_la_addr[13] -pin mem_la_addr_i O[13]
load net mem_la_addr[14] -attr @rip(#000000) O[14] -pin mem_addr_reg[31:0] D[14] -port mem_la_addr[14] -pin mem_la_addr_i O[14]
load net mem_la_addr[15] -attr @rip(#000000) O[15] -pin mem_addr_reg[31:0] D[15] -port mem_la_addr[15] -pin mem_la_addr_i O[15]
load net mem_la_addr[16] -attr @rip(#000000) O[16] -pin mem_addr_reg[31:0] D[16] -port mem_la_addr[16] -pin mem_la_addr_i O[16]
load net mem_la_addr[17] -attr @rip(#000000) O[17] -pin mem_addr_reg[31:0] D[17] -port mem_la_addr[17] -pin mem_la_addr_i O[17]
load net mem_la_addr[18] -attr @rip(#000000) O[18] -pin mem_addr_reg[31:0] D[18] -port mem_la_addr[18] -pin mem_la_addr_i O[18]
load net mem_la_addr[19] -attr @rip(#000000) O[19] -pin mem_addr_reg[31:0] D[19] -port mem_la_addr[19] -pin mem_la_addr_i O[19]
load net mem_la_addr[1] -attr @rip(#000000) O[1] -pin mem_addr_reg[31:0] D[1] -port mem_la_addr[1] -pin mem_la_addr_i O[1]
load net mem_la_addr[20] -attr @rip(#000000) O[20] -pin mem_addr_reg[31:0] D[20] -port mem_la_addr[20] -pin mem_la_addr_i O[20]
load net mem_la_addr[21] -attr @rip(#000000) O[21] -pin mem_addr_reg[31:0] D[21] -port mem_la_addr[21] -pin mem_la_addr_i O[21]
load net mem_la_addr[22] -attr @rip(#000000) O[22] -pin mem_addr_reg[31:0] D[22] -port mem_la_addr[22] -pin mem_la_addr_i O[22]
load net mem_la_addr[23] -attr @rip(#000000) O[23] -pin mem_addr_reg[31:0] D[23] -port mem_la_addr[23] -pin mem_la_addr_i O[23]
load net mem_la_addr[24] -attr @rip(#000000) O[24] -pin mem_addr_reg[31:0] D[24] -port mem_la_addr[24] -pin mem_la_addr_i O[24]
load net mem_la_addr[25] -attr @rip(#000000) O[25] -pin mem_addr_reg[31:0] D[25] -port mem_la_addr[25] -pin mem_la_addr_i O[25]
load net mem_la_addr[26] -attr @rip(#000000) O[26] -pin mem_addr_reg[31:0] D[26] -port mem_la_addr[26] -pin mem_la_addr_i O[26]
load net mem_la_addr[27] -attr @rip(#000000) O[27] -pin mem_addr_reg[31:0] D[27] -port mem_la_addr[27] -pin mem_la_addr_i O[27]
load net mem_la_addr[28] -attr @rip(#000000) O[28] -pin mem_addr_reg[31:0] D[28] -port mem_la_addr[28] -pin mem_la_addr_i O[28]
load net mem_la_addr[29] -attr @rip(#000000) O[29] -pin mem_addr_reg[31:0] D[29] -port mem_la_addr[29] -pin mem_la_addr_i O[29]
load net mem_la_addr[2] -attr @rip(#000000) O[2] -pin mem_addr_reg[31:0] D[2] -port mem_la_addr[2] -pin mem_la_addr_i O[2]
load net mem_la_addr[30] -attr @rip(#000000) O[30] -pin mem_addr_reg[31:0] D[30] -port mem_la_addr[30] -pin mem_la_addr_i O[30]
load net mem_la_addr[31] -attr @rip(#000000) O[31] -pin mem_addr_reg[31:0] D[31] -port mem_la_addr[31] -pin mem_la_addr_i O[31]
load net mem_la_addr[3] -attr @rip(#000000) O[3] -pin mem_addr_reg[31:0] D[3] -port mem_la_addr[3] -pin mem_la_addr_i O[3]
load net mem_la_addr[4] -attr @rip(#000000) O[4] -pin mem_addr_reg[31:0] D[4] -port mem_la_addr[4] -pin mem_la_addr_i O[4]
load net mem_la_addr[5] -attr @rip(#000000) O[5] -pin mem_addr_reg[31:0] D[5] -port mem_la_addr[5] -pin mem_la_addr_i O[5]
load net mem_la_addr[6] -attr @rip(#000000) O[6] -pin mem_addr_reg[31:0] D[6] -port mem_la_addr[6] -pin mem_la_addr_i O[6]
load net mem_la_addr[7] -attr @rip(#000000) O[7] -pin mem_addr_reg[31:0] D[7] -port mem_la_addr[7] -pin mem_la_addr_i O[7]
load net mem_la_addr[8] -attr @rip(#000000) O[8] -pin mem_addr_reg[31:0] D[8] -port mem_la_addr[8] -pin mem_la_addr_i O[8]
load net mem_la_addr[9] -attr @rip(#000000) O[9] -pin mem_addr_reg[31:0] D[9] -port mem_la_addr[9] -pin mem_la_addr_i O[9]
load net mem_la_read -pin RTL_OR__31 I0 -port mem_la_read -pin mem_la_read_i O
netloc mem_la_read 1 65 6 28460 6600 28920J 6780 29470J 6830 30450J 6660 NJ 6660 31480
load net mem_la_wdata[0] -attr @rip(#000000) O[0] -port mem_la_wdata[0] -pin mem_la_wdata_i O[0] -pin mem_wdata_reg[31:0] D[0]
load net mem_la_wdata[10] -attr @rip(#000000) O[10] -port mem_la_wdata[10] -pin mem_la_wdata_i O[10] -pin mem_wdata_reg[31:0] D[10]
load net mem_la_wdata[11] -attr @rip(#000000) O[11] -port mem_la_wdata[11] -pin mem_la_wdata_i O[11] -pin mem_wdata_reg[31:0] D[11]
load net mem_la_wdata[12] -attr @rip(#000000) O[12] -port mem_la_wdata[12] -pin mem_la_wdata_i O[12] -pin mem_wdata_reg[31:0] D[12]
load net mem_la_wdata[13] -attr @rip(#000000) O[13] -port mem_la_wdata[13] -pin mem_la_wdata_i O[13] -pin mem_wdata_reg[31:0] D[13]
load net mem_la_wdata[14] -attr @rip(#000000) O[14] -port mem_la_wdata[14] -pin mem_la_wdata_i O[14] -pin mem_wdata_reg[31:0] D[14]
load net mem_la_wdata[15] -attr @rip(#000000) O[15] -port mem_la_wdata[15] -pin mem_la_wdata_i O[15] -pin mem_wdata_reg[31:0] D[15]
load net mem_la_wdata[16] -attr @rip(#000000) O[16] -port mem_la_wdata[16] -pin mem_la_wdata_i O[16] -pin mem_wdata_reg[31:0] D[16]
load net mem_la_wdata[17] -attr @rip(#000000) O[17] -port mem_la_wdata[17] -pin mem_la_wdata_i O[17] -pin mem_wdata_reg[31:0] D[17]
load net mem_la_wdata[18] -attr @rip(#000000) O[18] -port mem_la_wdata[18] -pin mem_la_wdata_i O[18] -pin mem_wdata_reg[31:0] D[18]
load net mem_la_wdata[19] -attr @rip(#000000) O[19] -port mem_la_wdata[19] -pin mem_la_wdata_i O[19] -pin mem_wdata_reg[31:0] D[19]
load net mem_la_wdata[1] -attr @rip(#000000) O[1] -port mem_la_wdata[1] -pin mem_la_wdata_i O[1] -pin mem_wdata_reg[31:0] D[1]
load net mem_la_wdata[20] -attr @rip(#000000) O[20] -port mem_la_wdata[20] -pin mem_la_wdata_i O[20] -pin mem_wdata_reg[31:0] D[20]
load net mem_la_wdata[21] -attr @rip(#000000) O[21] -port mem_la_wdata[21] -pin mem_la_wdata_i O[21] -pin mem_wdata_reg[31:0] D[21]
load net mem_la_wdata[22] -attr @rip(#000000) O[22] -port mem_la_wdata[22] -pin mem_la_wdata_i O[22] -pin mem_wdata_reg[31:0] D[22]
load net mem_la_wdata[23] -attr @rip(#000000) O[23] -port mem_la_wdata[23] -pin mem_la_wdata_i O[23] -pin mem_wdata_reg[31:0] D[23]
load net mem_la_wdata[24] -attr @rip(#000000) O[24] -port mem_la_wdata[24] -pin mem_la_wdata_i O[24] -pin mem_wdata_reg[31:0] D[24]
load net mem_la_wdata[25] -attr @rip(#000000) O[25] -port mem_la_wdata[25] -pin mem_la_wdata_i O[25] -pin mem_wdata_reg[31:0] D[25]
load net mem_la_wdata[26] -attr @rip(#000000) O[26] -port mem_la_wdata[26] -pin mem_la_wdata_i O[26] -pin mem_wdata_reg[31:0] D[26]
load net mem_la_wdata[27] -attr @rip(#000000) O[27] -port mem_la_wdata[27] -pin mem_la_wdata_i O[27] -pin mem_wdata_reg[31:0] D[27]
load net mem_la_wdata[28] -attr @rip(#000000) O[28] -port mem_la_wdata[28] -pin mem_la_wdata_i O[28] -pin mem_wdata_reg[31:0] D[28]
load net mem_la_wdata[29] -attr @rip(#000000) O[29] -port mem_la_wdata[29] -pin mem_la_wdata_i O[29] -pin mem_wdata_reg[31:0] D[29]
load net mem_la_wdata[2] -attr @rip(#000000) O[2] -port mem_la_wdata[2] -pin mem_la_wdata_i O[2] -pin mem_wdata_reg[31:0] D[2]
load net mem_la_wdata[30] -attr @rip(#000000) O[30] -port mem_la_wdata[30] -pin mem_la_wdata_i O[30] -pin mem_wdata_reg[31:0] D[30]
load net mem_la_wdata[31] -attr @rip(#000000) O[31] -port mem_la_wdata[31] -pin mem_la_wdata_i O[31] -pin mem_wdata_reg[31:0] D[31]
load net mem_la_wdata[3] -attr @rip(#000000) O[3] -port mem_la_wdata[3] -pin mem_la_wdata_i O[3] -pin mem_wdata_reg[31:0] D[3]
load net mem_la_wdata[4] -attr @rip(#000000) O[4] -port mem_la_wdata[4] -pin mem_la_wdata_i O[4] -pin mem_wdata_reg[31:0] D[4]
load net mem_la_wdata[5] -attr @rip(#000000) O[5] -port mem_la_wdata[5] -pin mem_la_wdata_i O[5] -pin mem_wdata_reg[31:0] D[5]
load net mem_la_wdata[6] -attr @rip(#000000) O[6] -port mem_la_wdata[6] -pin mem_la_wdata_i O[6] -pin mem_wdata_reg[31:0] D[6]
load net mem_la_wdata[7] -attr @rip(#000000) O[7] -port mem_la_wdata[7] -pin mem_la_wdata_i O[7] -pin mem_wdata_reg[31:0] D[7]
load net mem_la_wdata[8] -attr @rip(#000000) O[8] -port mem_la_wdata[8] -pin mem_la_wdata_i O[8] -pin mem_wdata_reg[31:0] D[8]
load net mem_la_wdata[9] -attr @rip(#000000) O[9] -port mem_la_wdata[9] -pin mem_la_wdata_i O[9] -pin mem_wdata_reg[31:0] D[9]
load net mem_la_write -pin RTL_AND__87 I1[3] -pin RTL_AND__87 I1[2] -pin RTL_AND__87 I1[1] -pin RTL_AND__87 I1[0] -pin RTL_OR__31 I1 -port mem_la_write -pin mem_la_write_i O -pin mem_wdata_i I1
netloc mem_la_write 1 65 6 28440 6500 28880 6320 NJ 6320 30430 6930 31200J 6920 31500
load net mem_la_wstrb[0] -attr @rip(#000000) O[0] -pin RTL_AND__87 I0[0] -port mem_la_wstrb[0] -pin mem_la_wstrb_i O[0]
load net mem_la_wstrb[1] -attr @rip(#000000) O[1] -pin RTL_AND__87 I0[1] -port mem_la_wstrb[1] -pin mem_la_wstrb_i O[1]
load net mem_la_wstrb[2] -attr @rip(#000000) O[2] -pin RTL_AND__87 I0[2] -port mem_la_wstrb[2] -pin mem_la_wstrb_i O[2]
load net mem_la_wstrb[3] -attr @rip(#000000) O[3] -pin RTL_AND__87 I0[3] -port mem_la_wstrb[3] -pin mem_la_wstrb_i O[3]
load net mem_rdata[0] -attr @rip(#000000) mem_rdata[0] -port mem_rdata[0] -pin mem_rdata_latched_noshuffle_i I0[0] -pin mem_rdata_q_reg[31:0] D[0] -pin mem_rdata_word_i I0[0] -pin mem_rdata_word_i__0 I0[0] -pin mem_rdata_word_i__1 I0[0]
load net mem_rdata[10] -attr @rip(#000000) mem_rdata[10] -port mem_rdata[10] -pin mem_rdata_latched_noshuffle_i I0[10] -pin mem_rdata_q_reg[31:0] D[10] -pin mem_rdata_word_i I0[10] -pin mem_rdata_word_i__0 I1[2] -pin mem_rdata_word_i__1 I0[10]
load net mem_rdata[11] -attr @rip(#000000) mem_rdata[11] -port mem_rdata[11] -pin mem_rdata_latched_noshuffle_i I0[11] -pin mem_rdata_q_reg[31:0] D[11] -pin mem_rdata_word_i I0[11] -pin mem_rdata_word_i__0 I1[3] -pin mem_rdata_word_i__1 I0[11]
load net mem_rdata[12] -attr @rip(#000000) mem_rdata[12] -port mem_rdata[12] -pin mem_rdata_latched_noshuffle_i I0[12] -pin mem_rdata_q_reg[31:0] D[12] -pin mem_rdata_word_i I0[12] -pin mem_rdata_word_i__0 I1[4] -pin mem_rdata_word_i__1 I0[12]
load net mem_rdata[13] -attr @rip(#000000) mem_rdata[13] -port mem_rdata[13] -pin mem_rdata_latched_noshuffle_i I0[13] -pin mem_rdata_q_reg[31:0] D[13] -pin mem_rdata_word_i I0[13] -pin mem_rdata_word_i__0 I1[5] -pin mem_rdata_word_i__1 I0[13]
load net mem_rdata[14] -attr @rip(#000000) mem_rdata[14] -port mem_rdata[14] -pin mem_rdata_latched_noshuffle_i I0[14] -pin mem_rdata_q_reg[31:0] D[14] -pin mem_rdata_word_i I0[14] -pin mem_rdata_word_i__0 I1[6] -pin mem_rdata_word_i__1 I0[14]
load net mem_rdata[15] -attr @rip(#000000) mem_rdata[15] -port mem_rdata[15] -pin mem_rdata_latched_noshuffle_i I0[15] -pin mem_rdata_q_reg[31:0] D[15] -pin mem_rdata_word_i I0[15] -pin mem_rdata_word_i__0 I1[7] -pin mem_rdata_word_i__1 I0[15]
load net mem_rdata[16] -attr @rip(#000000) mem_rdata[16] -port mem_rdata[16] -pin mem_rdata_latched_noshuffle_i I0[16] -pin mem_rdata_q_reg[31:0] D[16] -pin mem_rdata_word_i I1[0] -pin mem_rdata_word_i__0 I2[0] -pin mem_rdata_word_i__1 I0[16]
load net mem_rdata[17] -attr @rip(#000000) mem_rdata[17] -port mem_rdata[17] -pin mem_rdata_latched_noshuffle_i I0[17] -pin mem_rdata_q_reg[31:0] D[17] -pin mem_rdata_word_i I1[1] -pin mem_rdata_word_i__0 I2[1] -pin mem_rdata_word_i__1 I0[17]
load net mem_rdata[18] -attr @rip(#000000) mem_rdata[18] -port mem_rdata[18] -pin mem_rdata_latched_noshuffle_i I0[18] -pin mem_rdata_q_reg[31:0] D[18] -pin mem_rdata_word_i I1[2] -pin mem_rdata_word_i__0 I2[2] -pin mem_rdata_word_i__1 I0[18]
load net mem_rdata[19] -attr @rip(#000000) mem_rdata[19] -port mem_rdata[19] -pin mem_rdata_latched_noshuffle_i I0[19] -pin mem_rdata_q_reg[31:0] D[19] -pin mem_rdata_word_i I1[3] -pin mem_rdata_word_i__0 I2[3] -pin mem_rdata_word_i__1 I0[19]
load net mem_rdata[1] -attr @rip(#000000) mem_rdata[1] -port mem_rdata[1] -pin mem_rdata_latched_noshuffle_i I0[1] -pin mem_rdata_q_reg[31:0] D[1] -pin mem_rdata_word_i I0[1] -pin mem_rdata_word_i__0 I0[1] -pin mem_rdata_word_i__1 I0[1]
load net mem_rdata[20] -attr @rip(#000000) mem_rdata[20] -port mem_rdata[20] -pin mem_rdata_latched_noshuffle_i I0[20] -pin mem_rdata_q_reg[31:0] D[20] -pin mem_rdata_word_i I1[4] -pin mem_rdata_word_i__0 I2[4] -pin mem_rdata_word_i__1 I0[20]
load net mem_rdata[21] -attr @rip(#000000) mem_rdata[21] -port mem_rdata[21] -pin mem_rdata_latched_noshuffle_i I0[21] -pin mem_rdata_q_reg[31:0] D[21] -pin mem_rdata_word_i I1[5] -pin mem_rdata_word_i__0 I2[5] -pin mem_rdata_word_i__1 I0[21]
load net mem_rdata[22] -attr @rip(#000000) mem_rdata[22] -port mem_rdata[22] -pin mem_rdata_latched_noshuffle_i I0[22] -pin mem_rdata_q_reg[31:0] D[22] -pin mem_rdata_word_i I1[6] -pin mem_rdata_word_i__0 I2[6] -pin mem_rdata_word_i__1 I0[22]
load net mem_rdata[23] -attr @rip(#000000) mem_rdata[23] -port mem_rdata[23] -pin mem_rdata_latched_noshuffle_i I0[23] -pin mem_rdata_q_reg[31:0] D[23] -pin mem_rdata_word_i I1[7] -pin mem_rdata_word_i__0 I2[7] -pin mem_rdata_word_i__1 I0[23]
load net mem_rdata[24] -attr @rip(#000000) mem_rdata[24] -port mem_rdata[24] -pin mem_rdata_latched_noshuffle_i I0[24] -pin mem_rdata_q_reg[31:0] D[24] -pin mem_rdata_word_i I1[8] -pin mem_rdata_word_i__0 I3[0] -pin mem_rdata_word_i__1 I0[24]
load net mem_rdata[25] -attr @rip(#000000) mem_rdata[25] -port mem_rdata[25] -pin mem_rdata_latched_noshuffle_i I0[25] -pin mem_rdata_q_reg[31:0] D[25] -pin mem_rdata_word_i I1[9] -pin mem_rdata_word_i__0 I3[1] -pin mem_rdata_word_i__1 I0[25]
load net mem_rdata[26] -attr @rip(#000000) mem_rdata[26] -port mem_rdata[26] -pin mem_rdata_latched_noshuffle_i I0[26] -pin mem_rdata_q_reg[31:0] D[26] -pin mem_rdata_word_i I1[10] -pin mem_rdata_word_i__0 I3[2] -pin mem_rdata_word_i__1 I0[26]
load net mem_rdata[27] -attr @rip(#000000) mem_rdata[27] -port mem_rdata[27] -pin mem_rdata_latched_noshuffle_i I0[27] -pin mem_rdata_q_reg[31:0] D[27] -pin mem_rdata_word_i I1[11] -pin mem_rdata_word_i__0 I3[3] -pin mem_rdata_word_i__1 I0[27]
load net mem_rdata[28] -attr @rip(#000000) mem_rdata[28] -port mem_rdata[28] -pin mem_rdata_latched_noshuffle_i I0[28] -pin mem_rdata_q_reg[31:0] D[28] -pin mem_rdata_word_i I1[12] -pin mem_rdata_word_i__0 I3[4] -pin mem_rdata_word_i__1 I0[28]
load net mem_rdata[29] -attr @rip(#000000) mem_rdata[29] -port mem_rdata[29] -pin mem_rdata_latched_noshuffle_i I0[29] -pin mem_rdata_q_reg[31:0] D[29] -pin mem_rdata_word_i I1[13] -pin mem_rdata_word_i__0 I3[5] -pin mem_rdata_word_i__1 I0[29]
load net mem_rdata[2] -attr @rip(#000000) mem_rdata[2] -port mem_rdata[2] -pin mem_rdata_latched_noshuffle_i I0[2] -pin mem_rdata_q_reg[31:0] D[2] -pin mem_rdata_word_i I0[2] -pin mem_rdata_word_i__0 I0[2] -pin mem_rdata_word_i__1 I0[2]
load net mem_rdata[30] -attr @rip(#000000) mem_rdata[30] -port mem_rdata[30] -pin mem_rdata_latched_noshuffle_i I0[30] -pin mem_rdata_q_reg[31:0] D[30] -pin mem_rdata_word_i I1[14] -pin mem_rdata_word_i__0 I3[6] -pin mem_rdata_word_i__1 I0[30]
load net mem_rdata[31] -attr @rip(#000000) mem_rdata[31] -port mem_rdata[31] -pin mem_rdata_latched_noshuffle_i I0[31] -pin mem_rdata_q_reg[31:0] D[31] -pin mem_rdata_word_i I1[15] -pin mem_rdata_word_i__0 I3[7] -pin mem_rdata_word_i__1 I0[31]
load net mem_rdata[3] -attr @rip(#000000) mem_rdata[3] -port mem_rdata[3] -pin mem_rdata_latched_noshuffle_i I0[3] -pin mem_rdata_q_reg[31:0] D[3] -pin mem_rdata_word_i I0[3] -pin mem_rdata_word_i__0 I0[3] -pin mem_rdata_word_i__1 I0[3]
load net mem_rdata[4] -attr @rip(#000000) mem_rdata[4] -port mem_rdata[4] -pin mem_rdata_latched_noshuffle_i I0[4] -pin mem_rdata_q_reg[31:0] D[4] -pin mem_rdata_word_i I0[4] -pin mem_rdata_word_i__0 I0[4] -pin mem_rdata_word_i__1 I0[4]
load net mem_rdata[5] -attr @rip(#000000) mem_rdata[5] -port mem_rdata[5] -pin mem_rdata_latched_noshuffle_i I0[5] -pin mem_rdata_q_reg[31:0] D[5] -pin mem_rdata_word_i I0[5] -pin mem_rdata_word_i__0 I0[5] -pin mem_rdata_word_i__1 I0[5]
load net mem_rdata[6] -attr @rip(#000000) mem_rdata[6] -port mem_rdata[6] -pin mem_rdata_latched_noshuffle_i I0[6] -pin mem_rdata_q_reg[31:0] D[6] -pin mem_rdata_word_i I0[6] -pin mem_rdata_word_i__0 I0[6] -pin mem_rdata_word_i__1 I0[6]
load net mem_rdata[7] -attr @rip(#000000) mem_rdata[7] -port mem_rdata[7] -pin mem_rdata_latched_noshuffle_i I0[7] -pin mem_rdata_q_reg[31:0] D[7] -pin mem_rdata_word_i I0[7] -pin mem_rdata_word_i__0 I0[7] -pin mem_rdata_word_i__1 I0[7]
load net mem_rdata[8] -attr @rip(#000000) mem_rdata[8] -port mem_rdata[8] -pin mem_rdata_latched_noshuffle_i I0[8] -pin mem_rdata_q_reg[31:0] D[8] -pin mem_rdata_word_i I0[8] -pin mem_rdata_word_i__0 I1[0] -pin mem_rdata_word_i__1 I0[8]
load net mem_rdata[9] -attr @rip(#000000) mem_rdata[9] -port mem_rdata[9] -pin mem_rdata_latched_noshuffle_i I0[9] -pin mem_rdata_q_reg[31:0] D[9] -pin mem_rdata_word_i I0[9] -pin mem_rdata_word_i__0 I1[1] -pin mem_rdata_word_i__1 I0[9]
load net mem_rdata_latched_noshuffle_i_n_0 -attr @rip(#000000) O[31] -pin decoded_imm_j_reg[31:0] D[31] -pin decoded_imm_j_reg[31:0] D[30] -pin decoded_imm_j_reg[31:0] D[29] -pin decoded_imm_j_reg[31:0] D[28] -pin decoded_imm_j_reg[31:0] D[27] -pin decoded_imm_j_reg[31:0] D[26] -pin decoded_imm_j_reg[31:0] D[25] -pin decoded_imm_j_reg[31:0] D[24] -pin decoded_imm_j_reg[31:0] D[23] -pin decoded_imm_j_reg[31:0] D[22] -pin decoded_imm_j_reg[31:0] D[21] -pin decoded_imm_j_reg[31:0] D[20] -pin mem_rdata_latched_noshuffle_i O[31]
load net mem_rdata_latched_noshuffle_i_n_1 -attr @rip(#000000) O[30] -pin decoded_imm_j_reg[31:0] D[10] -pin mem_rdata_latched_noshuffle_i O[30]
load net mem_rdata_latched_noshuffle_i_n_10 -attr @rip(#000000) O[21] -pin decoded_imm_j_reg[31:0] D[1] -pin decoded_rs2_reg[4:0] D[1] -pin mem_rdata_latched_noshuffle_i O[21]
load net mem_rdata_latched_noshuffle_i_n_11 -attr @rip(#000000) O[20] -pin decoded_imm_j_reg[31:0] D[11] -pin decoded_rs2_reg[4:0] D[0] -pin mem_rdata_latched_noshuffle_i O[20]
load net mem_rdata_latched_noshuffle_i_n_12 -attr @rip(#000000) O[19] -pin decoded_imm_j_reg[31:0] D[19] -pin decoded_rs1_reg[4:0] D[4] -pin mem_rdata_latched_noshuffle_i O[19]
load net mem_rdata_latched_noshuffle_i_n_13 -attr @rip(#000000) O[18] -pin decoded_imm_j_reg[31:0] D[18] -pin decoded_rs1_reg[4:0] D[3] -pin mem_rdata_latched_noshuffle_i O[18]
load net mem_rdata_latched_noshuffle_i_n_14 -attr @rip(#000000) O[17] -pin decoded_imm_j_reg[31:0] D[17] -pin decoded_rs1_reg[4:0] D[2] -pin mem_rdata_latched_noshuffle_i O[17]
load net mem_rdata_latched_noshuffle_i_n_15 -attr @rip(#000000) O[16] -pin decoded_imm_j_reg[31:0] D[16] -pin decoded_rs1_reg[4:0] D[1] -pin mem_rdata_latched_noshuffle_i O[16]
load net mem_rdata_latched_noshuffle_i_n_16 -attr @rip(#000000) O[15] -pin decoded_imm_j_reg[31:0] D[15] -pin decoded_rs1_reg[4:0] D[0] -pin mem_rdata_latched_noshuffle_i O[15]
load net mem_rdata_latched_noshuffle_i_n_17 -attr @rip(#000000) O[14] -pin RTL_EQ__0 I0[2] -pin decoded_imm_j_reg[31:0] D[14] -pin mem_rdata_latched_noshuffle_i O[14]
load net mem_rdata_latched_noshuffle_i_n_18 -attr @rip(#000000) O[13] -pin RTL_EQ__0 I0[1] -pin decoded_imm_j_reg[31:0] D[13] -pin mem_rdata_latched_noshuffle_i O[13]
load net mem_rdata_latched_noshuffle_i_n_19 -attr @rip(#000000) O[12] -pin RTL_EQ__0 I0[0] -pin decoded_imm_j_reg[31:0] D[12] -pin mem_rdata_latched_noshuffle_i O[12]
load net mem_rdata_latched_noshuffle_i_n_2 -attr @rip(#000000) O[29] -pin decoded_imm_j_reg[31:0] D[9] -pin mem_rdata_latched_noshuffle_i O[29]
load net mem_rdata_latched_noshuffle_i_n_20 -attr @rip(#000000) O[11] -pin decoded_rd_reg[4:0] D[4] -pin mem_rdata_latched_noshuffle_i O[11]
load net mem_rdata_latched_noshuffle_i_n_21 -attr @rip(#000000) O[10] -pin decoded_rd_reg[4:0] D[3] -pin mem_rdata_latched_noshuffle_i O[10]
load net mem_rdata_latched_noshuffle_i_n_22 -attr @rip(#000000) O[9] -pin decoded_rd_reg[4:0] D[2] -pin mem_rdata_latched_noshuffle_i O[9]
load net mem_rdata_latched_noshuffle_i_n_23 -attr @rip(#000000) O[8] -pin decoded_rd_reg[4:0] D[1] -pin mem_rdata_latched_noshuffle_i O[8]
load net mem_rdata_latched_noshuffle_i_n_24 -attr @rip(#000000) O[7] -pin decoded_rd_reg[4:0] D[0] -pin mem_rdata_latched_noshuffle_i O[7]
load net mem_rdata_latched_noshuffle_i_n_25 -attr @rip(#000000) O[6] -pin RTL_EQ I0[6] -pin RTL_EQ__1 I0[6] -pin RTL_EQ__2 I0[6] -pin RTL_EQ__21 I0[6] -pin RTL_EQ__3 I0[6] -pin RTL_EQ__4 I0[6] -pin RTL_EQ__5 I0[6] -pin RTL_EQ__6 I0[6] -pin RTL_EQ__88 I0[6] -pin mem_rdata_latched_noshuffle_i O[6]
load net mem_rdata_latched_noshuffle_i_n_26 -attr @rip(#000000) O[5] -pin RTL_EQ I0[5] -pin RTL_EQ__1 I0[5] -pin RTL_EQ__2 I0[5] -pin RTL_EQ__21 I0[5] -pin RTL_EQ__3 I0[5] -pin RTL_EQ__4 I0[5] -pin RTL_EQ__5 I0[5] -pin RTL_EQ__6 I0[5] -pin RTL_EQ__88 I0[5] -pin mem_rdata_latched_noshuffle_i O[5]
load net mem_rdata_latched_noshuffle_i_n_27 -attr @rip(#000000) O[4] -pin RTL_EQ I0[4] -pin RTL_EQ__1 I0[4] -pin RTL_EQ__2 I0[4] -pin RTL_EQ__21 I0[4] -pin RTL_EQ__3 I0[4] -pin RTL_EQ__4 I0[4] -pin RTL_EQ__5 I0[4] -pin RTL_EQ__6 I0[4] -pin RTL_EQ__88 I0[4] -pin mem_rdata_latched_noshuffle_i O[4]
load net mem_rdata_latched_noshuffle_i_n_28 -attr @rip(#000000) O[3] -pin RTL_EQ I0[3] -pin RTL_EQ__1 I0[3] -pin RTL_EQ__2 I0[3] -pin RTL_EQ__21 I0[3] -pin RTL_EQ__3 I0[3] -pin RTL_EQ__4 I0[3] -pin RTL_EQ__5 I0[3] -pin RTL_EQ__6 I0[3] -pin RTL_EQ__88 I0[3] -pin mem_rdata_latched_noshuffle_i O[3]
load net mem_rdata_latched_noshuffle_i_n_29 -attr @rip(#000000) O[2] -pin RTL_EQ I0[2] -pin RTL_EQ__1 I0[2] -pin RTL_EQ__2 I0[2] -pin RTL_EQ__21 I0[2] -pin RTL_EQ__3 I0[2] -pin RTL_EQ__4 I0[2] -pin RTL_EQ__5 I0[2] -pin RTL_EQ__6 I0[2] -pin RTL_EQ__88 I0[2] -pin mem_rdata_latched_noshuffle_i O[2]
load net mem_rdata_latched_noshuffle_i_n_3 -attr @rip(#000000) O[28] -pin decoded_imm_j_reg[31:0] D[8] -pin mem_rdata_latched_noshuffle_i O[28]
load net mem_rdata_latched_noshuffle_i_n_30 -attr @rip(#000000) O[1] -pin RTL_EQ I0[1] -pin RTL_EQ__1 I0[1] -pin RTL_EQ__2 I0[1] -pin RTL_EQ__21 I0[1] -pin RTL_EQ__3 I0[1] -pin RTL_EQ__4 I0[1] -pin RTL_EQ__5 I0[1] -pin RTL_EQ__6 I0[1] -pin RTL_EQ__88 I0[1] -pin mem_rdata_latched_noshuffle_i O[1]
load net mem_rdata_latched_noshuffle_i_n_31 -attr @rip(#000000) O[0] -pin RTL_EQ I0[0] -pin RTL_EQ__1 I0[0] -pin RTL_EQ__2 I0[0] -pin RTL_EQ__21 I0[0] -pin RTL_EQ__3 I0[0] -pin RTL_EQ__4 I0[0] -pin RTL_EQ__5 I0[0] -pin RTL_EQ__6 I0[0] -pin RTL_EQ__88 I0[0] -pin mem_rdata_latched_noshuffle_i O[0]
load net mem_rdata_latched_noshuffle_i_n_4 -attr @rip(#000000) O[27] -pin decoded_imm_j_reg[31:0] D[7] -pin mem_rdata_latched_noshuffle_i O[27]
load net mem_rdata_latched_noshuffle_i_n_5 -attr @rip(#000000) O[26] -pin decoded_imm_j_reg[31:0] D[6] -pin mem_rdata_latched_noshuffle_i O[26]
load net mem_rdata_latched_noshuffle_i_n_6 -attr @rip(#000000) O[25] -pin decoded_imm_j_reg[31:0] D[5] -pin mem_rdata_latched_noshuffle_i O[25]
load net mem_rdata_latched_noshuffle_i_n_7 -attr @rip(#000000) O[24] -pin decoded_imm_j_reg[31:0] D[4] -pin decoded_rs2_reg[4:0] D[4] -pin mem_rdata_latched_noshuffle_i O[24]
load net mem_rdata_latched_noshuffle_i_n_8 -attr @rip(#000000) O[23] -pin decoded_imm_j_reg[31:0] D[3] -pin decoded_rs2_reg[4:0] D[3] -pin mem_rdata_latched_noshuffle_i O[23]
load net mem_rdata_latched_noshuffle_i_n_9 -attr @rip(#000000) O[22] -pin decoded_imm_j_reg[31:0] D[2] -pin decoded_rs2_reg[4:0] D[2] -pin mem_rdata_latched_noshuffle_i O[22]
load net mem_rdata_q[0] -attr @rip(#000000) 0 -pin RTL_EQ__11 I0[0] -pin RTL_EQ__13 I0[0] -pin RTL_EQ__15 I0[0] -pin RTL_EQ__17 I0[0] -pin RTL_EQ__19 I0[0] -pin RTL_EQ__7 I0[0] -pin RTL_EQ__89 I0[0] -pin RTL_EQ__9 I0[0] -pin mem_rdata_latched_noshuffle_i I1[0] -pin mem_rdata_q_reg[31:0] Q[0]
load net mem_rdata_q[10] -pin RTL_EQ__91 I0[3] -pin decoded_imm_i I3[3] -pin decoded_imm_i I4[3] -pin mem_rdata_latched_noshuffle_i I1[10] -pin mem_rdata_q_reg[31:0] Q[10]
load net mem_rdata_q[11] -pin RTL_EQ__91 I0[4] -pin decoded_imm_i I3[4] -pin decoded_imm_i I4[4] -pin mem_rdata_latched_noshuffle_i I1[11] -pin mem_rdata_q_reg[31:0] Q[11]
load net mem_rdata_q[12] -pin RTL_EQ__10 I0[0] -pin RTL_EQ__12 I0[0] -pin RTL_EQ__14 I0[0] -pin RTL_EQ__16 I0[0] -pin RTL_EQ__18 I0[0] -pin RTL_EQ__20 I0[0] -pin RTL_EQ__22 I0[0] -pin RTL_EQ__24 I0[0] -pin RTL_EQ__26 I0[0] -pin RTL_EQ__28 I0[0] -pin RTL_EQ__30 I0[0] -pin RTL_EQ__32 I0[0] -pin RTL_EQ__34 I0[0] -pin RTL_EQ__36 I0[0] -pin RTL_EQ__38 I0[0] -pin RTL_EQ__40 I0[0] -pin RTL_EQ__42 I0[0] -pin RTL_EQ__44 I0[0] -pin RTL_EQ__46 I0[0] -pin RTL_EQ__48 I0[0] -pin RTL_EQ__49 I0[0] -pin RTL_EQ__50 I0[0] -pin RTL_EQ__51 I0[0] -pin RTL_EQ__52 I0[0] -pin RTL_EQ__53 I0[0] -pin RTL_EQ__54 I0[0] -pin RTL_EQ__55 I0[0] -pin RTL_EQ__56 I0[0] -pin RTL_EQ__57 I0[0] -pin RTL_EQ__58 I0[0] -pin RTL_EQ__59 I0[0] -pin RTL_EQ__60 I0[0] -pin RTL_EQ__61 I0[0] -pin RTL_EQ__62 I0[0] -pin RTL_EQ__63 I0[0] -pin RTL_EQ__64 I0[0] -pin RTL_EQ__65 I0[0] -pin RTL_EQ__66 I0[0] -pin RTL_EQ__67 I0[0] -pin RTL_EQ__68 I0[0] -pin RTL_EQ__70 I0[0] -pin RTL_EQ__72 I0[0] -pin RTL_EQ__74 I0[0] -pin RTL_EQ__75 I0[0] -pin RTL_EQ__76 I0[0] -pin RTL_EQ__77 I0[0] -pin RTL_EQ__78 I0[0] -pin RTL_EQ__79 I0[0] -pin RTL_EQ__8 I0[0] -pin RTL_EQ__80 I0[0] -pin RTL_EQ__82 I0[0] -pin RTL_EQ__84 I0[0] -pin RTL_EQ__91 I0[5] -pin RTL_LSHIFT I0[0] -pin mem_rdata_latched_noshuffle_i I1[12] -pin mem_rdata_q_reg[31:0] Q[12]
load net mem_rdata_q[13] -pin RTL_EQ__10 I0[1] -pin RTL_EQ__12 I0[1] -pin RTL_EQ__14 I0[1] -pin RTL_EQ__16 I0[1] -pin RTL_EQ__18 I0[1] -pin RTL_EQ__20 I0[1] -pin RTL_EQ__22 I0[1] -pin RTL_EQ__24 I0[1] -pin RTL_EQ__26 I0[1] -pin RTL_EQ__28 I0[1] -pin RTL_EQ__30 I0[1] -pin RTL_EQ__32 I0[1] -pin RTL_EQ__34 I0[1] -pin RTL_EQ__36 I0[1] -pin RTL_EQ__38 I0[1] -pin RTL_EQ__40 I0[1] -pin RTL_EQ__42 I0[1] -pin RTL_EQ__44 I0[1] -pin RTL_EQ__46 I0[1] -pin RTL_EQ__48 I0[1] -pin RTL_EQ__49 I0[1] -pin RTL_EQ__50 I0[1] -pin RTL_EQ__51 I0[1] -pin RTL_EQ__52 I0[1] -pin RTL_EQ__53 I0[1] -pin RTL_EQ__54 I0[1] -pin RTL_EQ__55 I0[1] -pin RTL_EQ__56 I0[1] -pin RTL_EQ__57 I0[1] -pin RTL_EQ__58 I0[1] -pin RTL_EQ__59 I0[1] -pin RTL_EQ__60 I0[1] -pin RTL_EQ__61 I0[1] -pin RTL_EQ__62 I0[1] -pin RTL_EQ__63 I0[1] -pin RTL_EQ__64 I0[1] -pin RTL_EQ__65 I0[1] -pin RTL_EQ__66 I0[1] -pin RTL_EQ__67 I0[1] -pin RTL_EQ__68 I0[1] -pin RTL_EQ__70 I0[1] -pin RTL_EQ__72 I0[1] -pin RTL_EQ__74 I0[1] -pin RTL_EQ__75 I0[1] -pin RTL_EQ__76 I0[1] -pin RTL_EQ__77 I0[1] -pin RTL_EQ__78 I0[1] -pin RTL_EQ__79 I0[1] -pin RTL_EQ__8 I0[1] -pin RTL_EQ__80 I0[1] -pin RTL_EQ__82 I0[1] -pin RTL_EQ__84 I0[1] -pin RTL_EQ__91 I0[6] -pin RTL_LSHIFT I0[1] -pin mem_rdata_latched_noshuffle_i I1[13] -pin mem_rdata_q_reg[31:0] Q[13]
load net mem_rdata_q[14] -pin RTL_EQ__10 I0[2] -pin RTL_EQ__12 I0[2] -pin RTL_EQ__14 I0[2] -pin RTL_EQ__16 I0[2] -pin RTL_EQ__18 I0[2] -pin RTL_EQ__20 I0[2] -pin RTL_EQ__22 I0[2] -pin RTL_EQ__24 I0[2] -pin RTL_EQ__26 I0[2] -pin RTL_EQ__28 I0[2] -pin RTL_EQ__30 I0[2] -pin RTL_EQ__32 I0[2] -pin RTL_EQ__34 I0[2] -pin RTL_EQ__36 I0[2] -pin RTL_EQ__38 I0[2] -pin RTL_EQ__40 I0[2] -pin RTL_EQ__42 I0[2] -pin RTL_EQ__44 I0[2] -pin RTL_EQ__46 I0[2] -pin RTL_EQ__48 I0[2] -pin RTL_EQ__49 I0[2] -pin RTL_EQ__50 I0[2] -pin RTL_EQ__51 I0[2] -pin RTL_EQ__52 I0[2] -pin RTL_EQ__53 I0[2] -pin RTL_EQ__54 I0[2] -pin RTL_EQ__55 I0[2] -pin RTL_EQ__56 I0[2] -pin RTL_EQ__57 I0[2] -pin RTL_EQ__58 I0[2] -pin RTL_EQ__59 I0[2] -pin RTL_EQ__60 I0[2] -pin RTL_EQ__61 I0[2] -pin RTL_EQ__62 I0[2] -pin RTL_EQ__63 I0[2] -pin RTL_EQ__64 I0[2] -pin RTL_EQ__65 I0[2] -pin RTL_EQ__66 I0[2] -pin RTL_EQ__67 I0[2] -pin RTL_EQ__68 I0[2] -pin RTL_EQ__70 I0[2] -pin RTL_EQ__72 I0[2] -pin RTL_EQ__74 I0[2] -pin RTL_EQ__75 I0[2] -pin RTL_EQ__76 I0[2] -pin RTL_EQ__77 I0[2] -pin RTL_EQ__78 I0[2] -pin RTL_EQ__79 I0[2] -pin RTL_EQ__8 I0[2] -pin RTL_EQ__80 I0[2] -pin RTL_EQ__82 I0[2] -pin RTL_EQ__84 I0[2] -pin RTL_EQ__91 I0[7] -pin RTL_LSHIFT I0[2] -pin mem_rdata_latched_noshuffle_i I1[14] -pin mem_rdata_q_reg[31:0] Q[14]
load net mem_rdata_q[15] -pin RTL_EQ__10 I0[3] -pin RTL_EQ__12 I0[3] -pin RTL_EQ__14 I0[3] -pin RTL_EQ__16 I0[3] -pin RTL_EQ__18 I0[3] -pin RTL_EQ__20 I0[3] -pin RTL_EQ__91 I0[8] -pin RTL_LSHIFT I0[3] -pin mem_rdata_latched_noshuffle_i I1[15] -pin mem_rdata_q_reg[31:0] Q[15]
load net mem_rdata_q[16] -pin RTL_EQ__10 I0[4] -pin RTL_EQ__12 I0[4] -pin RTL_EQ__14 I0[4] -pin RTL_EQ__16 I0[4] -pin RTL_EQ__18 I0[4] -pin RTL_EQ__20 I0[4] -pin RTL_EQ__91 I0[9] -pin RTL_LSHIFT I0[4] -pin mem_rdata_latched_noshuffle_i I1[16] -pin mem_rdata_q_reg[31:0] Q[16]
load net mem_rdata_q[17] -pin RTL_EQ__10 I0[5] -pin RTL_EQ__12 I0[5] -pin RTL_EQ__14 I0[5] -pin RTL_EQ__16 I0[5] -pin RTL_EQ__18 I0[5] -pin RTL_EQ__20 I0[5] -pin RTL_EQ__91 I0[10] -pin RTL_LSHIFT I0[5] -pin mem_rdata_latched_noshuffle_i I1[17] -pin mem_rdata_q_reg[31:0] Q[17]
load net mem_rdata_q[18] -pin RTL_EQ__10 I0[6] -pin RTL_EQ__12 I0[6] -pin RTL_EQ__14 I0[6] -pin RTL_EQ__16 I0[6] -pin RTL_EQ__18 I0[6] -pin RTL_EQ__20 I0[6] -pin RTL_EQ__91 I0[11] -pin RTL_LSHIFT I0[6] -pin mem_rdata_latched_noshuffle_i I1[18] -pin mem_rdata_q_reg[31:0] Q[18]
load net mem_rdata_q[19] -pin RTL_EQ__10 I0[7] -pin RTL_EQ__12 I0[7] -pin RTL_EQ__14 I0[7] -pin RTL_EQ__16 I0[7] -pin RTL_EQ__18 I0[7] -pin RTL_EQ__20 I0[7] -pin RTL_EQ__91 I0[12] -pin RTL_LSHIFT I0[7] -pin mem_rdata_latched_noshuffle_i I1[19] -pin mem_rdata_q_reg[31:0] Q[19]
load net mem_rdata_q[1] -attr @rip(#000000) 1 -pin RTL_EQ__11 I0[1] -pin RTL_EQ__13 I0[1] -pin RTL_EQ__15 I0[1] -pin RTL_EQ__17 I0[1] -pin RTL_EQ__19 I0[1] -pin RTL_EQ__7 I0[1] -pin RTL_EQ__89 I0[1] -pin RTL_EQ__9 I0[1] -pin mem_rdata_latched_noshuffle_i I1[1] -pin mem_rdata_q_reg[31:0] Q[1]
load net mem_rdata_q[20] -pin RTL_EQ__10 I0[8] -pin RTL_EQ__12 I0[8] -pin RTL_EQ__14 I0[8] -pin RTL_EQ__16 I0[8] -pin RTL_EQ__18 I0[8] -pin RTL_EQ__20 I0[8] -pin RTL_LSHIFT I0[8] -pin decoded_imm_i I2[0] -pin mem_rdata_latched_noshuffle_i I1[20] -pin mem_rdata_q_reg[31:0] Q[20]
load net mem_rdata_q[21] -pin RTL_EQ__10 I0[9] -pin RTL_EQ__12 I0[9] -pin RTL_EQ__14 I0[9] -pin RTL_EQ__16 I0[9] -pin RTL_EQ__18 I0[9] -pin RTL_EQ__20 I0[9] -pin RTL_EQ__90 I0[0] -pin RTL_LSHIFT I0[9] -pin decoded_imm_i I2[1] -pin mem_rdata_latched_noshuffle_i I1[21] -pin mem_rdata_q_reg[31:0] Q[21]
load net mem_rdata_q[22] -pin RTL_EQ__10 I0[10] -pin RTL_EQ__12 I0[10] -pin RTL_EQ__14 I0[10] -pin RTL_EQ__16 I0[10] -pin RTL_EQ__18 I0[10] -pin RTL_EQ__20 I0[10] -pin RTL_EQ__90 I0[1] -pin RTL_LSHIFT I0[10] -pin decoded_imm_i I2[2] -pin mem_rdata_latched_noshuffle_i I1[22] -pin mem_rdata_q_reg[31:0] Q[22]
load net mem_rdata_q[23] -pin RTL_EQ__10 I0[11] -pin RTL_EQ__12 I0[11] -pin RTL_EQ__14 I0[11] -pin RTL_EQ__16 I0[11] -pin RTL_EQ__18 I0[11] -pin RTL_EQ__20 I0[11] -pin RTL_EQ__90 I0[2] -pin RTL_LSHIFT I0[11] -pin decoded_imm_i I2[3] -pin mem_rdata_latched_noshuffle_i I1[23] -pin mem_rdata_q_reg[31:0] Q[23]
load net mem_rdata_q[24] -pin RTL_EQ__10 I0[12] -pin RTL_EQ__12 I0[12] -pin RTL_EQ__14 I0[12] -pin RTL_EQ__16 I0[12] -pin RTL_EQ__18 I0[12] -pin RTL_EQ__20 I0[12] -pin RTL_EQ__90 I0[3] -pin RTL_LSHIFT I0[12] -pin decoded_imm_i I2[4] -pin mem_rdata_latched_noshuffle_i I1[24] -pin mem_rdata_q_reg[31:0] Q[24]
load net mem_rdata_q[25] -pin RTL_EQ__10 I0[13] -pin RTL_EQ__12 I0[13] -pin RTL_EQ__14 I0[13] -pin RTL_EQ__16 I0[13] -pin RTL_EQ__18 I0[13] -pin RTL_EQ__20 I0[13] -pin RTL_EQ__23 I0[0] -pin RTL_EQ__25 I0[0] -pin RTL_EQ__27 I0[0] -pin RTL_EQ__29 I0[0] -pin RTL_EQ__31 I0[0] -pin RTL_EQ__33 I0[0] -pin RTL_EQ__35 I0[0] -pin RTL_EQ__37 I0[0] -pin RTL_EQ__39 I0[0] -pin RTL_EQ__41 I0[0] -pin RTL_EQ__43 I0[0] -pin RTL_EQ__45 I0[0] -pin RTL_EQ__47 I0[0] -pin RTL_EQ__69 I0[0] -pin RTL_EQ__71 I0[0] -pin RTL_EQ__73 I0[0] -pin RTL_EQ__81 I0[0] -pin RTL_EQ__83 I0[0] -pin RTL_EQ__85 I0[0] -pin RTL_EQ__90 I0[4] -pin RTL_LSHIFT I0[13] -pin decoded_imm_i I2[5] -pin decoded_imm_i I3[5] -pin decoded_imm_i I4[5] -pin mem_rdata_latched_noshuffle_i I1[25] -pin mem_rdata_q_reg[31:0] Q[25]
load net mem_rdata_q[26] -pin RTL_EQ__10 I0[14] -pin RTL_EQ__12 I0[14] -pin RTL_EQ__14 I0[14] -pin RTL_EQ__16 I0[14] -pin RTL_EQ__18 I0[14] -pin RTL_EQ__20 I0[14] -pin RTL_EQ__23 I0[1] -pin RTL_EQ__25 I0[1] -pin RTL_EQ__27 I0[1] -pin RTL_EQ__29 I0[1] -pin RTL_EQ__31 I0[1] -pin RTL_EQ__33 I0[1] -pin RTL_EQ__35 I0[1] -pin RTL_EQ__37 I0[1] -pin RTL_EQ__39 I0[1] -pin RTL_EQ__41 I0[1] -pin RTL_EQ__43 I0[1] -pin RTL_EQ__45 I0[1] -pin RTL_EQ__47 I0[1] -pin RTL_EQ__69 I0[1] -pin RTL_EQ__71 I0[1] -pin RTL_EQ__73 I0[1] -pin RTL_EQ__81 I0[1] -pin RTL_EQ__83 I0[1] -pin RTL_EQ__85 I0[1] -pin RTL_EQ__90 I0[5] -pin RTL_LSHIFT I0[14] -pin decoded_imm_i I2[6] -pin decoded_imm_i I3[6] -pin decoded_imm_i I4[6] -pin mem_rdata_latched_noshuffle_i I1[26] -pin mem_rdata_q_reg[31:0] Q[26]
load net mem_rdata_q[27] -pin RTL_EQ__10 I0[15] -pin RTL_EQ__12 I0[15] -pin RTL_EQ__14 I0[15] -pin RTL_EQ__16 I0[15] -pin RTL_EQ__18 I0[15] -pin RTL_EQ__20 I0[15] -pin RTL_EQ__23 I0[2] -pin RTL_EQ__25 I0[2] -pin RTL_EQ__27 I0[2] -pin RTL_EQ__29 I0[2] -pin RTL_EQ__31 I0[2] -pin RTL_EQ__33 I0[2] -pin RTL_EQ__35 I0[2] -pin RTL_EQ__37 I0[2] -pin RTL_EQ__39 I0[2] -pin RTL_EQ__41 I0[2] -pin RTL_EQ__43 I0[2] -pin RTL_EQ__45 I0[2] -pin RTL_EQ__47 I0[2] -pin RTL_EQ__69 I0[2] -pin RTL_EQ__71 I0[2] -pin RTL_EQ__73 I0[2] -pin RTL_EQ__81 I0[2] -pin RTL_EQ__83 I0[2] -pin RTL_EQ__85 I0[2] -pin RTL_EQ__90 I0[6] -pin RTL_LSHIFT I0[15] -pin decoded_imm_i I2[7] -pin decoded_imm_i I3[7] -pin decoded_imm_i I4[7] -pin mem_rdata_latched_noshuffle_i I1[27] -pin mem_rdata_q_reg[31:0] Q[27]
load net mem_rdata_q[28] -pin RTL_EQ__10 I0[16] -pin RTL_EQ__12 I0[16] -pin RTL_EQ__14 I0[16] -pin RTL_EQ__16 I0[16] -pin RTL_EQ__18 I0[16] -pin RTL_EQ__20 I0[16] -pin RTL_EQ__23 I0[3] -pin RTL_EQ__25 I0[3] -pin RTL_EQ__27 I0[3] -pin RTL_EQ__29 I0[3] -pin RTL_EQ__31 I0[3] -pin RTL_EQ__33 I0[3] -pin RTL_EQ__35 I0[3] -pin RTL_EQ__37 I0[3] -pin RTL_EQ__39 I0[3] -pin RTL_EQ__41 I0[3] -pin RTL_EQ__43 I0[3] -pin RTL_EQ__45 I0[3] -pin RTL_EQ__47 I0[3] -pin RTL_EQ__69 I0[3] -pin RTL_EQ__71 I0[3] -pin RTL_EQ__73 I0[3] -pin RTL_EQ__81 I0[3] -pin RTL_EQ__83 I0[3] -pin RTL_EQ__85 I0[3] -pin RTL_EQ__90 I0[7] -pin RTL_LSHIFT I0[16] -pin decoded_imm_i I2[8] -pin decoded_imm_i I3[8] -pin decoded_imm_i I4[8] -pin mem_rdata_latched_noshuffle_i I1[28] -pin mem_rdata_q_reg[31:0] Q[28]
load net mem_rdata_q[29] -pin RTL_EQ__10 I0[17] -pin RTL_EQ__12 I0[17] -pin RTL_EQ__14 I0[17] -pin RTL_EQ__16 I0[17] -pin RTL_EQ__18 I0[17] -pin RTL_EQ__20 I0[17] -pin RTL_EQ__23 I0[4] -pin RTL_EQ__25 I0[4] -pin RTL_EQ__27 I0[4] -pin RTL_EQ__29 I0[4] -pin RTL_EQ__31 I0[4] -pin RTL_EQ__33 I0[4] -pin RTL_EQ__35 I0[4] -pin RTL_EQ__37 I0[4] -pin RTL_EQ__39 I0[4] -pin RTL_EQ__41 I0[4] -pin RTL_EQ__43 I0[4] -pin RTL_EQ__45 I0[4] -pin RTL_EQ__47 I0[4] -pin RTL_EQ__69 I0[4] -pin RTL_EQ__71 I0[4] -pin RTL_EQ__73 I0[4] -pin RTL_EQ__81 I0[4] -pin RTL_EQ__83 I0[4] -pin RTL_EQ__85 I0[4] -pin RTL_EQ__90 I0[8] -pin RTL_LSHIFT I0[17] -pin decoded_imm_i I2[9] -pin decoded_imm_i I3[9] -pin decoded_imm_i I4[9] -pin mem_rdata_latched_noshuffle_i I1[29] -pin mem_rdata_q_reg[31:0] Q[29]
load net mem_rdata_q[2] -attr @rip(#000000) 2 -pin RTL_EQ__11 I0[2] -pin RTL_EQ__13 I0[2] -pin RTL_EQ__15 I0[2] -pin RTL_EQ__17 I0[2] -pin RTL_EQ__19 I0[2] -pin RTL_EQ__7 I0[2] -pin RTL_EQ__89 I0[2] -pin RTL_EQ__9 I0[2] -pin mem_rdata_latched_noshuffle_i I1[2] -pin mem_rdata_q_reg[31:0] Q[2]
load net mem_rdata_q[30] -pin RTL_EQ__10 I0[18] -pin RTL_EQ__12 I0[18] -pin RTL_EQ__14 I0[18] -pin RTL_EQ__16 I0[18] -pin RTL_EQ__18 I0[18] -pin RTL_EQ__20 I0[18] -pin RTL_EQ__23 I0[5] -pin RTL_EQ__25 I0[5] -pin RTL_EQ__27 I0[5] -pin RTL_EQ__29 I0[5] -pin RTL_EQ__31 I0[5] -pin RTL_EQ__33 I0[5] -pin RTL_EQ__35 I0[5] -pin RTL_EQ__37 I0[5] -pin RTL_EQ__39 I0[5] -pin RTL_EQ__41 I0[5] -pin RTL_EQ__43 I0[5] -pin RTL_EQ__45 I0[5] -pin RTL_EQ__47 I0[5] -pin RTL_EQ__69 I0[5] -pin RTL_EQ__71 I0[5] -pin RTL_EQ__73 I0[5] -pin RTL_EQ__81 I0[5] -pin RTL_EQ__83 I0[5] -pin RTL_EQ__85 I0[5] -pin RTL_EQ__90 I0[9] -pin RTL_LSHIFT I0[18] -pin decoded_imm_i I2[10] -pin decoded_imm_i I3[10] -pin decoded_imm_i I4[10] -pin mem_rdata_latched_noshuffle_i I1[30] -pin mem_rdata_q_reg[31:0] Q[30]
load net mem_rdata_q[31] -pin RTL_EQ__10 I0[19] -pin RTL_EQ__12 I0[19] -pin RTL_EQ__14 I0[19] -pin RTL_EQ__16 I0[19] -pin RTL_EQ__18 I0[19] -pin RTL_EQ__20 I0[19] -pin RTL_EQ__23 I0[6] -pin RTL_EQ__25 I0[6] -pin RTL_EQ__27 I0[6] -pin RTL_EQ__29 I0[6] -pin RTL_EQ__31 I0[6] -pin RTL_EQ__33 I0[6] -pin RTL_EQ__35 I0[6] -pin RTL_EQ__37 I0[6] -pin RTL_EQ__39 I0[6] -pin RTL_EQ__41 I0[6] -pin RTL_EQ__43 I0[6] -pin RTL_EQ__45 I0[6] -pin RTL_EQ__47 I0[6] -pin RTL_EQ__69 I0[6] -pin RTL_EQ__71 I0[6] -pin RTL_EQ__73 I0[6] -pin RTL_EQ__81 I0[6] -pin RTL_EQ__83 I0[6] -pin RTL_EQ__85 I0[6] -pin RTL_EQ__90 I0[10] -pin RTL_LSHIFT I0[19] -pin decoded_imm_i I2[31] -pin decoded_imm_i I2[30] -pin decoded_imm_i I2[29] -pin decoded_imm_i I2[28] -pin decoded_imm_i I2[27] -pin decoded_imm_i I2[26] -pin decoded_imm_i I2[25] -pin decoded_imm_i I2[24] -pin decoded_imm_i I2[23] -pin decoded_imm_i I2[22] -pin decoded_imm_i I2[21] -pin decoded_imm_i I2[20] -pin decoded_imm_i I2[19] -pin decoded_imm_i I2[18] -pin decoded_imm_i I2[17] -pin decoded_imm_i I2[16] -pin decoded_imm_i I2[15] -pin decoded_imm_i I2[14] -pin decoded_imm_i I2[13] -pin decoded_imm_i I2[12] -pin decoded_imm_i I2[11] -pin decoded_imm_i I3[31] -pin decoded_imm_i I3[30] -pin decoded_imm_i I3[29] -pin decoded_imm_i I3[28] -pin decoded_imm_i I3[27] -pin decoded_imm_i I3[26] -pin decoded_imm_i I3[25] -pin decoded_imm_i I3[24] -pin decoded_imm_i I3[23] -pin decoded_imm_i I3[22] -pin decoded_imm_i I3[21] -pin decoded_imm_i I3[20] -pin decoded_imm_i I3[19] -pin decoded_imm_i I3[18] -pin decoded_imm_i I3[17] -pin decoded_imm_i I3[16] -pin decoded_imm_i I3[15] -pin decoded_imm_i I3[14] -pin decoded_imm_i I3[13] -pin decoded_imm_i I3[12] -pin decoded_imm_i I4[31] -pin decoded_imm_i I4[30] -pin decoded_imm_i I4[29] -pin decoded_imm_i I4[28] -pin decoded_imm_i I4[27] -pin decoded_imm_i I4[26] -pin decoded_imm_i I4[25] -pin decoded_imm_i I4[24] -pin decoded_imm_i I4[23] -pin decoded_imm_i I4[22] -pin decoded_imm_i I4[21] -pin decoded_imm_i I4[20] -pin decoded_imm_i I4[19] -pin decoded_imm_i I4[18] -pin decoded_imm_i I4[17] -pin decoded_imm_i I4[16] -pin decoded_imm_i I4[15] -pin decoded_imm_i I4[14] -pin decoded_imm_i I4[13] -pin decoded_imm_i I4[12] -pin decoded_imm_i I4[11] -pin mem_rdata_latched_noshuffle_i I1[31] -pin mem_rdata_q_reg[31:0] Q[31]
load net mem_rdata_q[3] -attr @rip(#000000) 3 -pin RTL_EQ__11 I0[3] -pin RTL_EQ__13 I0[3] -pin RTL_EQ__15 I0[3] -pin RTL_EQ__17 I0[3] -pin RTL_EQ__19 I0[3] -pin RTL_EQ__7 I0[3] -pin RTL_EQ__89 I0[3] -pin RTL_EQ__9 I0[3] -pin mem_rdata_latched_noshuffle_i I1[3] -pin mem_rdata_q_reg[31:0] Q[3]
load net mem_rdata_q[4] -attr @rip(#000000) 4 -pin RTL_EQ__11 I0[4] -pin RTL_EQ__13 I0[4] -pin RTL_EQ__15 I0[4] -pin RTL_EQ__17 I0[4] -pin RTL_EQ__19 I0[4] -pin RTL_EQ__7 I0[4] -pin RTL_EQ__89 I0[4] -pin RTL_EQ__9 I0[4] -pin mem_rdata_latched_noshuffle_i I1[4] -pin mem_rdata_q_reg[31:0] Q[4]
load net mem_rdata_q[5] -attr @rip(#000000) 5 -pin RTL_EQ__11 I0[5] -pin RTL_EQ__13 I0[5] -pin RTL_EQ__15 I0[5] -pin RTL_EQ__17 I0[5] -pin RTL_EQ__19 I0[5] -pin RTL_EQ__7 I0[5] -pin RTL_EQ__89 I0[5] -pin RTL_EQ__9 I0[5] -pin mem_rdata_latched_noshuffle_i I1[5] -pin mem_rdata_q_reg[31:0] Q[5]
load net mem_rdata_q[6] -attr @rip(#000000) 6 -pin RTL_EQ__11 I0[6] -pin RTL_EQ__13 I0[6] -pin RTL_EQ__15 I0[6] -pin RTL_EQ__17 I0[6] -pin RTL_EQ__19 I0[6] -pin RTL_EQ__7 I0[6] -pin RTL_EQ__89 I0[6] -pin RTL_EQ__9 I0[6] -pin mem_rdata_latched_noshuffle_i I1[6] -pin mem_rdata_q_reg[31:0] Q[6]
load net mem_rdata_q[7] -pin RTL_EQ__91 I0[0] -pin decoded_imm_i I3[11] -pin decoded_imm_i I4[0] -pin mem_rdata_latched_noshuffle_i I1[7] -pin mem_rdata_q_reg[31:0] Q[7]
load net mem_rdata_q[8] -pin RTL_EQ__91 I0[1] -pin decoded_imm_i I3[1] -pin decoded_imm_i I4[1] -pin mem_rdata_latched_noshuffle_i I1[8] -pin mem_rdata_q_reg[31:0] Q[8]
load net mem_rdata_q[9] -pin RTL_EQ__91 I0[2] -pin decoded_imm_i I3[2] -pin decoded_imm_i I4[2] -pin mem_rdata_latched_noshuffle_i I1[9] -pin mem_rdata_q_reg[31:0] Q[9]
load net mem_rdata_word[0] -attr @rip(#000000) O[0] -pin mem_rdata_word_i__1 O[0] -pin reg_out_i__1 I0[0] -pin reg_out_i__1 I1[0] -pin reg_out_i__1 I2[0]
load net mem_rdata_word[10] -attr @rip(#000000) O[10] -pin mem_rdata_word_i__1 O[10] -pin reg_out_i__1 I0[10] -pin reg_out_i__1 I1[10]
load net mem_rdata_word[11] -attr @rip(#000000) O[11] -pin mem_rdata_word_i__1 O[11] -pin reg_out_i__1 I0[11] -pin reg_out_i__1 I1[11]
load net mem_rdata_word[12] -attr @rip(#000000) O[12] -pin mem_rdata_word_i__1 O[12] -pin reg_out_i__1 I0[12] -pin reg_out_i__1 I1[12]
load net mem_rdata_word[13] -attr @rip(#000000) O[13] -pin mem_rdata_word_i__1 O[13] -pin reg_out_i__1 I0[13] -pin reg_out_i__1 I1[13]
load net mem_rdata_word[14] -attr @rip(#000000) O[14] -pin mem_rdata_word_i__1 O[14] -pin reg_out_i__1 I0[14] -pin reg_out_i__1 I1[14]
load net mem_rdata_word[15] -attr @rip(#000000) O[15] -pin mem_rdata_word_i__1 O[15] -pin reg_out_i__1 I0[15] -pin reg_out_i__1 I1[31] -pin reg_out_i__1 I1[30] -pin reg_out_i__1 I1[29] -pin reg_out_i__1 I1[28] -pin reg_out_i__1 I1[27] -pin reg_out_i__1 I1[26] -pin reg_out_i__1 I1[25] -pin reg_out_i__1 I1[24] -pin reg_out_i__1 I1[23] -pin reg_out_i__1 I1[22] -pin reg_out_i__1 I1[21] -pin reg_out_i__1 I1[20] -pin reg_out_i__1 I1[19] -pin reg_out_i__1 I1[18] -pin reg_out_i__1 I1[17] -pin reg_out_i__1 I1[16] -pin reg_out_i__1 I1[15]
load net mem_rdata_word[16] -attr @rip(#000000) O[16] -pin mem_rdata_word_i__1 O[16] -pin reg_out_i__1 I0[16]
load net mem_rdata_word[17] -attr @rip(#000000) O[17] -pin mem_rdata_word_i__1 O[17] -pin reg_out_i__1 I0[17]
load net mem_rdata_word[18] -attr @rip(#000000) O[18] -pin mem_rdata_word_i__1 O[18] -pin reg_out_i__1 I0[18]
load net mem_rdata_word[19] -attr @rip(#000000) O[19] -pin mem_rdata_word_i__1 O[19] -pin reg_out_i__1 I0[19]
load net mem_rdata_word[1] -attr @rip(#000000) O[1] -pin mem_rdata_word_i__1 O[1] -pin reg_out_i__1 I0[1] -pin reg_out_i__1 I1[1] -pin reg_out_i__1 I2[1]
load net mem_rdata_word[20] -attr @rip(#000000) O[20] -pin mem_rdata_word_i__1 O[20] -pin reg_out_i__1 I0[20]
load net mem_rdata_word[21] -attr @rip(#000000) O[21] -pin mem_rdata_word_i__1 O[21] -pin reg_out_i__1 I0[21]
load net mem_rdata_word[22] -attr @rip(#000000) O[22] -pin mem_rdata_word_i__1 O[22] -pin reg_out_i__1 I0[22]
load net mem_rdata_word[23] -attr @rip(#000000) O[23] -pin mem_rdata_word_i__1 O[23] -pin reg_out_i__1 I0[23]
load net mem_rdata_word[24] -attr @rip(#000000) O[24] -pin mem_rdata_word_i__1 O[24] -pin reg_out_i__1 I0[24]
load net mem_rdata_word[25] -attr @rip(#000000) O[25] -pin mem_rdata_word_i__1 O[25] -pin reg_out_i__1 I0[25]
load net mem_rdata_word[26] -attr @rip(#000000) O[26] -pin mem_rdata_word_i__1 O[26] -pin reg_out_i__1 I0[26]
load net mem_rdata_word[27] -attr @rip(#000000) O[27] -pin mem_rdata_word_i__1 O[27] -pin reg_out_i__1 I0[27]
load net mem_rdata_word[28] -attr @rip(#000000) O[28] -pin mem_rdata_word_i__1 O[28] -pin reg_out_i__1 I0[28]
load net mem_rdata_word[29] -attr @rip(#000000) O[29] -pin mem_rdata_word_i__1 O[29] -pin reg_out_i__1 I0[29]
load net mem_rdata_word[2] -attr @rip(#000000) O[2] -pin mem_rdata_word_i__1 O[2] -pin reg_out_i__1 I0[2] -pin reg_out_i__1 I1[2] -pin reg_out_i__1 I2[2]
load net mem_rdata_word[30] -attr @rip(#000000) O[30] -pin mem_rdata_word_i__1 O[30] -pin reg_out_i__1 I0[30]
load net mem_rdata_word[31] -attr @rip(#000000) O[31] -pin mem_rdata_word_i__1 O[31] -pin reg_out_i__1 I0[31]
load net mem_rdata_word[3] -attr @rip(#000000) O[3] -pin mem_rdata_word_i__1 O[3] -pin reg_out_i__1 I0[3] -pin reg_out_i__1 I1[3] -pin reg_out_i__1 I2[3]
load net mem_rdata_word[4] -attr @rip(#000000) O[4] -pin mem_rdata_word_i__1 O[4] -pin reg_out_i__1 I0[4] -pin reg_out_i__1 I1[4] -pin reg_out_i__1 I2[4]
load net mem_rdata_word[5] -attr @rip(#000000) O[5] -pin mem_rdata_word_i__1 O[5] -pin reg_out_i__1 I0[5] -pin reg_out_i__1 I1[5] -pin reg_out_i__1 I2[5]
load net mem_rdata_word[6] -attr @rip(#000000) O[6] -pin mem_rdata_word_i__1 O[6] -pin reg_out_i__1 I0[6] -pin reg_out_i__1 I1[6] -pin reg_out_i__1 I2[6]
load net mem_rdata_word[7] -attr @rip(#000000) O[7] -pin mem_rdata_word_i__1 O[7] -pin reg_out_i__1 I0[7] -pin reg_out_i__1 I1[7] -pin reg_out_i__1 I2[31] -pin reg_out_i__1 I2[30] -pin reg_out_i__1 I2[29] -pin reg_out_i__1 I2[28] -pin reg_out_i__1 I2[27] -pin reg_out_i__1 I2[26] -pin reg_out_i__1 I2[25] -pin reg_out_i__1 I2[24] -pin reg_out_i__1 I2[23] -pin reg_out_i__1 I2[22] -pin reg_out_i__1 I2[21] -pin reg_out_i__1 I2[20] -pin reg_out_i__1 I2[19] -pin reg_out_i__1 I2[18] -pin reg_out_i__1 I2[17] -pin reg_out_i__1 I2[16] -pin reg_out_i__1 I2[15] -pin reg_out_i__1 I2[14] -pin reg_out_i__1 I2[13] -pin reg_out_i__1 I2[12] -pin reg_out_i__1 I2[11] -pin reg_out_i__1 I2[10] -pin reg_out_i__1 I2[9] -pin reg_out_i__1 I2[8] -pin reg_out_i__1 I2[7]
load net mem_rdata_word[8] -attr @rip(#000000) O[8] -pin mem_rdata_word_i__1 O[8] -pin reg_out_i__1 I0[8] -pin reg_out_i__1 I1[8]
load net mem_rdata_word[9] -attr @rip(#000000) O[9] -pin mem_rdata_word_i__1 O[9] -pin reg_out_i__1 I0[9] -pin reg_out_i__1 I1[9]
load net mem_rdata_word_i__0_n_0 -attr @rip(#000000) O[31] -pin mem_rdata_word_i__0 O[31] -pin mem_rdata_word_i__1 I2[31]
load net mem_rdata_word_i__0_n_1 -attr @rip(#000000) O[30] -pin mem_rdata_word_i__0 O[30] -pin mem_rdata_word_i__1 I2[30]
load net mem_rdata_word_i__0_n_10 -attr @rip(#000000) O[21] -pin mem_rdata_word_i__0 O[21] -pin mem_rdata_word_i__1 I2[21]
load net mem_rdata_word_i__0_n_11 -attr @rip(#000000) O[20] -pin mem_rdata_word_i__0 O[20] -pin mem_rdata_word_i__1 I2[20]
load net mem_rdata_word_i__0_n_12 -attr @rip(#000000) O[19] -pin mem_rdata_word_i__0 O[19] -pin mem_rdata_word_i__1 I2[19]
load net mem_rdata_word_i__0_n_13 -attr @rip(#000000) O[18] -pin mem_rdata_word_i__0 O[18] -pin mem_rdata_word_i__1 I2[18]
load net mem_rdata_word_i__0_n_14 -attr @rip(#000000) O[17] -pin mem_rdata_word_i__0 O[17] -pin mem_rdata_word_i__1 I2[17]
load net mem_rdata_word_i__0_n_15 -attr @rip(#000000) O[16] -pin mem_rdata_word_i__0 O[16] -pin mem_rdata_word_i__1 I2[16]
load net mem_rdata_word_i__0_n_16 -attr @rip(#000000) O[15] -pin mem_rdata_word_i__0 O[15] -pin mem_rdata_word_i__1 I2[15]
load net mem_rdata_word_i__0_n_17 -attr @rip(#000000) O[14] -pin mem_rdata_word_i__0 O[14] -pin mem_rdata_word_i__1 I2[14]
load net mem_rdata_word_i__0_n_18 -attr @rip(#000000) O[13] -pin mem_rdata_word_i__0 O[13] -pin mem_rdata_word_i__1 I2[13]
load net mem_rdata_word_i__0_n_19 -attr @rip(#000000) O[12] -pin mem_rdata_word_i__0 O[12] -pin mem_rdata_word_i__1 I2[12]
load net mem_rdata_word_i__0_n_2 -attr @rip(#000000) O[29] -pin mem_rdata_word_i__0 O[29] -pin mem_rdata_word_i__1 I2[29]
load net mem_rdata_word_i__0_n_20 -attr @rip(#000000) O[11] -pin mem_rdata_word_i__0 O[11] -pin mem_rdata_word_i__1 I2[11]
load net mem_rdata_word_i__0_n_21 -attr @rip(#000000) O[10] -pin mem_rdata_word_i__0 O[10] -pin mem_rdata_word_i__1 I2[10]
load net mem_rdata_word_i__0_n_22 -attr @rip(#000000) O[9] -pin mem_rdata_word_i__0 O[9] -pin mem_rdata_word_i__1 I2[9]
load net mem_rdata_word_i__0_n_23 -attr @rip(#000000) O[8] -pin mem_rdata_word_i__0 O[8] -pin mem_rdata_word_i__1 I2[8]
load net mem_rdata_word_i__0_n_24 -attr @rip(#000000) O[7] -pin mem_rdata_word_i__0 O[7] -pin mem_rdata_word_i__1 I2[7]
load net mem_rdata_word_i__0_n_25 -attr @rip(#000000) O[6] -pin mem_rdata_word_i__0 O[6] -pin mem_rdata_word_i__1 I2[6]
load net mem_rdata_word_i__0_n_26 -attr @rip(#000000) O[5] -pin mem_rdata_word_i__0 O[5] -pin mem_rdata_word_i__1 I2[5]
load net mem_rdata_word_i__0_n_27 -attr @rip(#000000) O[4] -pin mem_rdata_word_i__0 O[4] -pin mem_rdata_word_i__1 I2[4]
load net mem_rdata_word_i__0_n_28 -attr @rip(#000000) O[3] -pin mem_rdata_word_i__0 O[3] -pin mem_rdata_word_i__1 I2[3]
load net mem_rdata_word_i__0_n_29 -attr @rip(#000000) O[2] -pin mem_rdata_word_i__0 O[2] -pin mem_rdata_word_i__1 I2[2]
load net mem_rdata_word_i__0_n_3 -attr @rip(#000000) O[28] -pin mem_rdata_word_i__0 O[28] -pin mem_rdata_word_i__1 I2[28]
load net mem_rdata_word_i__0_n_30 -attr @rip(#000000) O[1] -pin mem_rdata_word_i__0 O[1] -pin mem_rdata_word_i__1 I2[1]
load net mem_rdata_word_i__0_n_31 -attr @rip(#000000) O[0] -pin mem_rdata_word_i__0 O[0] -pin mem_rdata_word_i__1 I2[0]
load net mem_rdata_word_i__0_n_4 -attr @rip(#000000) O[27] -pin mem_rdata_word_i__0 O[27] -pin mem_rdata_word_i__1 I2[27]
load net mem_rdata_word_i__0_n_5 -attr @rip(#000000) O[26] -pin mem_rdata_word_i__0 O[26] -pin mem_rdata_word_i__1 I2[26]
load net mem_rdata_word_i__0_n_6 -attr @rip(#000000) O[25] -pin mem_rdata_word_i__0 O[25] -pin mem_rdata_word_i__1 I2[25]
load net mem_rdata_word_i__0_n_7 -attr @rip(#000000) O[24] -pin mem_rdata_word_i__0 O[24] -pin mem_rdata_word_i__1 I2[24]
load net mem_rdata_word_i__0_n_8 -attr @rip(#000000) O[23] -pin mem_rdata_word_i__0 O[23] -pin mem_rdata_word_i__1 I2[23]
load net mem_rdata_word_i__0_n_9 -attr @rip(#000000) O[22] -pin mem_rdata_word_i__0 O[22] -pin mem_rdata_word_i__1 I2[22]
load net mem_rdata_word_i_n_0 -attr @rip(#000000) O[31] -pin mem_rdata_word_i O[31] -pin mem_rdata_word_i__1 I1[31]
load net mem_rdata_word_i_n_1 -attr @rip(#000000) O[30] -pin mem_rdata_word_i O[30] -pin mem_rdata_word_i__1 I1[30]
load net mem_rdata_word_i_n_10 -attr @rip(#000000) O[21] -pin mem_rdata_word_i O[21] -pin mem_rdata_word_i__1 I1[21]
load net mem_rdata_word_i_n_11 -attr @rip(#000000) O[20] -pin mem_rdata_word_i O[20] -pin mem_rdata_word_i__1 I1[20]
load net mem_rdata_word_i_n_12 -attr @rip(#000000) O[19] -pin mem_rdata_word_i O[19] -pin mem_rdata_word_i__1 I1[19]
load net mem_rdata_word_i_n_13 -attr @rip(#000000) O[18] -pin mem_rdata_word_i O[18] -pin mem_rdata_word_i__1 I1[18]
load net mem_rdata_word_i_n_14 -attr @rip(#000000) O[17] -pin mem_rdata_word_i O[17] -pin mem_rdata_word_i__1 I1[17]
load net mem_rdata_word_i_n_15 -attr @rip(#000000) O[16] -pin mem_rdata_word_i O[16] -pin mem_rdata_word_i__1 I1[16]
load net mem_rdata_word_i_n_16 -attr @rip(#000000) O[15] -pin mem_rdata_word_i O[15] -pin mem_rdata_word_i__1 I1[15]
load net mem_rdata_word_i_n_17 -attr @rip(#000000) O[14] -pin mem_rdata_word_i O[14] -pin mem_rdata_word_i__1 I1[14]
load net mem_rdata_word_i_n_18 -attr @rip(#000000) O[13] -pin mem_rdata_word_i O[13] -pin mem_rdata_word_i__1 I1[13]
load net mem_rdata_word_i_n_19 -attr @rip(#000000) O[12] -pin mem_rdata_word_i O[12] -pin mem_rdata_word_i__1 I1[12]
load net mem_rdata_word_i_n_2 -attr @rip(#000000) O[29] -pin mem_rdata_word_i O[29] -pin mem_rdata_word_i__1 I1[29]
load net mem_rdata_word_i_n_20 -attr @rip(#000000) O[11] -pin mem_rdata_word_i O[11] -pin mem_rdata_word_i__1 I1[11]
load net mem_rdata_word_i_n_21 -attr @rip(#000000) O[10] -pin mem_rdata_word_i O[10] -pin mem_rdata_word_i__1 I1[10]
load net mem_rdata_word_i_n_22 -attr @rip(#000000) O[9] -pin mem_rdata_word_i O[9] -pin mem_rdata_word_i__1 I1[9]
load net mem_rdata_word_i_n_23 -attr @rip(#000000) O[8] -pin mem_rdata_word_i O[8] -pin mem_rdata_word_i__1 I1[8]
load net mem_rdata_word_i_n_24 -attr @rip(#000000) O[7] -pin mem_rdata_word_i O[7] -pin mem_rdata_word_i__1 I1[7]
load net mem_rdata_word_i_n_25 -attr @rip(#000000) O[6] -pin mem_rdata_word_i O[6] -pin mem_rdata_word_i__1 I1[6]
load net mem_rdata_word_i_n_26 -attr @rip(#000000) O[5] -pin mem_rdata_word_i O[5] -pin mem_rdata_word_i__1 I1[5]
load net mem_rdata_word_i_n_27 -attr @rip(#000000) O[4] -pin mem_rdata_word_i O[4] -pin mem_rdata_word_i__1 I1[4]
load net mem_rdata_word_i_n_28 -attr @rip(#000000) O[3] -pin mem_rdata_word_i O[3] -pin mem_rdata_word_i__1 I1[3]
load net mem_rdata_word_i_n_29 -attr @rip(#000000) O[2] -pin mem_rdata_word_i O[2] -pin mem_rdata_word_i__1 I1[2]
load net mem_rdata_word_i_n_3 -attr @rip(#000000) O[28] -pin mem_rdata_word_i O[28] -pin mem_rdata_word_i__1 I1[28]
load net mem_rdata_word_i_n_30 -attr @rip(#000000) O[1] -pin mem_rdata_word_i O[1] -pin mem_rdata_word_i__1 I1[1]
load net mem_rdata_word_i_n_31 -attr @rip(#000000) O[0] -pin mem_rdata_word_i O[0] -pin mem_rdata_word_i__1 I1[0]
load net mem_rdata_word_i_n_4 -attr @rip(#000000) O[27] -pin mem_rdata_word_i O[27] -pin mem_rdata_word_i__1 I1[27]
load net mem_rdata_word_i_n_5 -attr @rip(#000000) O[26] -pin mem_rdata_word_i O[26] -pin mem_rdata_word_i__1 I1[26]
load net mem_rdata_word_i_n_6 -attr @rip(#000000) O[25] -pin mem_rdata_word_i O[25] -pin mem_rdata_word_i__1 I1[25]
load net mem_rdata_word_i_n_7 -attr @rip(#000000) O[24] -pin mem_rdata_word_i O[24] -pin mem_rdata_word_i__1 I1[24]
load net mem_rdata_word_i_n_8 -attr @rip(#000000) O[23] -pin mem_rdata_word_i O[23] -pin mem_rdata_word_i__1 I1[23]
load net mem_rdata_word_i_n_9 -attr @rip(#000000) O[22] -pin mem_rdata_word_i O[22] -pin mem_rdata_word_i__1 I1[22]
load net mem_ready -pin RTL_OR__24 I1 -port mem_ready -pin mem_xfer_i I1
netloc mem_ready 1 0 68 20 4770 NJ 4770 NJ 4770 NJ 4770 1020J 4750 NJ 4750 NJ 4750 NJ 4750 NJ 4750 4040J 4680 4410J 4660 NJ 4660 5860J 4620 6690J 4530 7550J 4520 NJ 4520 NJ 4520 NJ 4520 NJ 4520 NJ 4520 NJ 4520 NJ 4520 NJ 4520 NJ 4520 NJ 4520 NJ 4520 NJ 4520 NJ 4520 NJ 4520 NJ 4520 NJ 4520 NJ 4520 NJ 4520 NJ 4520 NJ 4520 NJ 4520 NJ 4520 NJ 4520 NJ 4520 NJ 4520 NJ 4520 NJ 4520 NJ 4520 NJ 4520 20730J 4410 NJ 4410 NJ 4410 NJ 4410 NJ 4410 NJ 4410 NJ 4410 NJ 4410 NJ 4410 NJ 4410 NJ 4410 NJ 4410 NJ 4410 NJ 4410 NJ 4410 NJ 4410 NJ 4410 NJ 4410 NJ 4410 NJ 4410 NJ 4410 NJ 4410 NJ 4410 29650J
load net mem_state1_out[0] -attr @rip(#000000) O[0] -pin mem_state_i__0 O[0] -pin mem_state_reg[1:0] D[0]
load net mem_state1_out[1] -attr @rip(#000000) O[1] -pin mem_state_i__0 O[1] -pin mem_state_reg[1:0] D[1]
load net mem_state[0] -attr @rip(#000000) 0 -pin RTL_EQ__94 I0[0] -pin RTL_EQ__95 I0[0] -pin RTL_REDUCTION_AND I0[0] -pin RTL_REDUCTION_OR I0[0] -pin mem_instr_i__1 S[0] -pin mem_state_i__0 S[0] -pin mem_state_i__2 S[0] -pin mem_state_reg[1:0] Q[0] -pin mem_valid_i__0 S[0] -pin mem_valid_i__2 S[0] -pin mem_wstrb_i__0 S[0] -pin mem_wstrb_i__2 S[0]
load net mem_state[1] -attr @rip(#000000) 1 -pin RTL_EQ__94 I0[1] -pin RTL_EQ__95 I0[1] -pin RTL_REDUCTION_AND I0[1] -pin RTL_REDUCTION_OR I0[1] -pin mem_instr_i__1 S[1] -pin mem_state_i__0 S[1] -pin mem_state_i__2 S[1] -pin mem_state_reg[1:0] Q[1] -pin mem_valid_i__0 S[1] -pin mem_valid_i__2 S[1] -pin mem_wstrb_i__0 S[1] -pin mem_wstrb_i__2 S[1]
load net mem_state__0[0] -attr @rip(#000000) O[0] -pin mem_state_i O[0] -pin mem_state_i__0 I0[0]
load net mem_state__0[1] -attr @rip(#000000) O[1] -pin mem_state_i O[1] -pin mem_state_i__0 I0[1]
load net mem_state_i__1_n_0 -pin mem_state_i__1 O -pin mem_state_i__2 I0
netloc mem_state_i__1_n_0 1 64 1 28000 6990n
load net mem_state_i__2_n_0 -pin mem_state_i__2 O -pin mem_state_i__3 I1
netloc mem_state_i__2_n_0 1 65 1 28420 7060n
load net mem_state_i__3_n_0 -pin mem_state_i__3 O -pin mem_state_reg[1:0] CE
netloc mem_state_i__3_n_0 1 66 1 29040 6890n
load net mem_state_i__4_n_0 -attr @rip(#000000) O[1] -pin mem_state_i__4 O[1] -pin mem_state_reg[1:0] RST[1]
load net mem_state_i__4_n_1 -attr @rip(#000000) O[0] -pin mem_state_i__4 O[0] -pin mem_state_reg[1:0] RST[0]
load net mem_valid -port mem_valid -pin mem_valid_reg Q -pin mem_xfer_i I0
netloc mem_valid 1 0 71 40 4870 NJ 4870 NJ 4870 NJ 4870 NJ 4870 NJ 4870 NJ 4870 NJ 4870 NJ 4870 NJ 4870 4530J 4680 NJ 4680 6020J 4640 6750J 4550 7570J 4540 NJ 4540 NJ 4540 NJ 4540 NJ 4540 NJ 4540 NJ 4540 NJ 4540 NJ 4540 NJ 4540 NJ 4540 NJ 4540 NJ 4540 NJ 4540 NJ 4540 NJ 4540 NJ 4540 NJ 4540 NJ 4540 NJ 4540 NJ 4540 NJ 4540 NJ 4540 NJ 4540 NJ 4540 NJ 4540 NJ 4540 NJ 4540 NJ 4540 NJ 4540 20750J 4430 NJ 4430 NJ 4430 NJ 4430 NJ 4430 NJ 4430 NJ 4430 NJ 4430 NJ 4430 NJ 4430 NJ 4430 NJ 4430 NJ 4430 NJ 4430 NJ 4430 NJ 4430 NJ 4430 NJ 4430 NJ 4430 NJ 4430 NJ 4430 NJ 4430 NJ 4430 29630J 4910 30490J 5020 NJ 5020 31480
load net mem_valid_i__0_n_0 -pin mem_valid_i__0 O -pin mem_valid_reg D
netloc mem_valid_i__0_n_0 1 69 1 31180 4540n
load net mem_valid_i__1_n_0 -pin mem_valid_i__1 O -pin mem_valid_i__2 I0
netloc mem_valid_i__1_n_0 1 67 1 29450 5850n
load net mem_valid_i__2_n_0 -pin mem_valid_i__2 O -pin mem_valid_i__3 I1
netloc mem_valid_i__2_n_0 1 68 1 30190 4680n
load net mem_valid_i__3_n_0 -pin mem_valid_i__3 O -pin mem_valid_reg CE
netloc mem_valid_i__3_n_0 1 69 1 31160 4670n
load net mem_valid_i__4_n_0 -pin mem_valid_i__4 O -pin mem_valid_reg RST
netloc mem_valid_i__4_n_0 1 69 1 N 4790
load net mem_valid_i_n_0 -pin mem_valid_i O -pin mem_valid_i__0 I0
netloc mem_valid_i_n_0 1 68 1 30170 4520n
load net mem_wdata[0] -attr @rip(#000000) 0 -port mem_wdata[0] -pin mem_wdata_reg[31:0] Q[0]
load net mem_wdata[10] -attr @rip(#000000) 10 -port mem_wdata[10] -pin mem_wdata_reg[31:0] Q[10]
load net mem_wdata[11] -attr @rip(#000000) 11 -port mem_wdata[11] -pin mem_wdata_reg[31:0] Q[11]
load net mem_wdata[12] -attr @rip(#000000) 12 -port mem_wdata[12] -pin mem_wdata_reg[31:0] Q[12]
load net mem_wdata[13] -attr @rip(#000000) 13 -port mem_wdata[13] -pin mem_wdata_reg[31:0] Q[13]
load net mem_wdata[14] -attr @rip(#000000) 14 -port mem_wdata[14] -pin mem_wdata_reg[31:0] Q[14]
load net mem_wdata[15] -attr @rip(#000000) 15 -port mem_wdata[15] -pin mem_wdata_reg[31:0] Q[15]
load net mem_wdata[16] -attr @rip(#000000) 16 -port mem_wdata[16] -pin mem_wdata_reg[31:0] Q[16]
load net mem_wdata[17] -attr @rip(#000000) 17 -port mem_wdata[17] -pin mem_wdata_reg[31:0] Q[17]
load net mem_wdata[18] -attr @rip(#000000) 18 -port mem_wdata[18] -pin mem_wdata_reg[31:0] Q[18]
load net mem_wdata[19] -attr @rip(#000000) 19 -port mem_wdata[19] -pin mem_wdata_reg[31:0] Q[19]
load net mem_wdata[1] -attr @rip(#000000) 1 -port mem_wdata[1] -pin mem_wdata_reg[31:0] Q[1]
load net mem_wdata[20] -attr @rip(#000000) 20 -port mem_wdata[20] -pin mem_wdata_reg[31:0] Q[20]
load net mem_wdata[21] -attr @rip(#000000) 21 -port mem_wdata[21] -pin mem_wdata_reg[31:0] Q[21]
load net mem_wdata[22] -attr @rip(#000000) 22 -port mem_wdata[22] -pin mem_wdata_reg[31:0] Q[22]
load net mem_wdata[23] -attr @rip(#000000) 23 -port mem_wdata[23] -pin mem_wdata_reg[31:0] Q[23]
load net mem_wdata[24] -attr @rip(#000000) 24 -port mem_wdata[24] -pin mem_wdata_reg[31:0] Q[24]
load net mem_wdata[25] -attr @rip(#000000) 25 -port mem_wdata[25] -pin mem_wdata_reg[31:0] Q[25]
load net mem_wdata[26] -attr @rip(#000000) 26 -port mem_wdata[26] -pin mem_wdata_reg[31:0] Q[26]
load net mem_wdata[27] -attr @rip(#000000) 27 -port mem_wdata[27] -pin mem_wdata_reg[31:0] Q[27]
load net mem_wdata[28] -attr @rip(#000000) 28 -port mem_wdata[28] -pin mem_wdata_reg[31:0] Q[28]
load net mem_wdata[29] -attr @rip(#000000) 29 -port mem_wdata[29] -pin mem_wdata_reg[31:0] Q[29]
load net mem_wdata[2] -attr @rip(#000000) 2 -port mem_wdata[2] -pin mem_wdata_reg[31:0] Q[2]
load net mem_wdata[30] -attr @rip(#000000) 30 -port mem_wdata[30] -pin mem_wdata_reg[31:0] Q[30]
load net mem_wdata[31] -attr @rip(#000000) 31 -port mem_wdata[31] -pin mem_wdata_reg[31:0] Q[31]
load net mem_wdata[3] -attr @rip(#000000) 3 -port mem_wdata[3] -pin mem_wdata_reg[31:0] Q[3]
load net mem_wdata[4] -attr @rip(#000000) 4 -port mem_wdata[4] -pin mem_wdata_reg[31:0] Q[4]
load net mem_wdata[5] -attr @rip(#000000) 5 -port mem_wdata[5] -pin mem_wdata_reg[31:0] Q[5]
load net mem_wdata[6] -attr @rip(#000000) 6 -port mem_wdata[6] -pin mem_wdata_reg[31:0] Q[6]
load net mem_wdata[7] -attr @rip(#000000) 7 -port mem_wdata[7] -pin mem_wdata_reg[31:0] Q[7]
load net mem_wdata[8] -attr @rip(#000000) 8 -port mem_wdata[8] -pin mem_wdata_reg[31:0] Q[8]
load net mem_wdata[9] -attr @rip(#000000) 9 -port mem_wdata[9] -pin mem_wdata_reg[31:0] Q[9]
load net mem_wdata_i_n_0 -pin mem_wdata_i O -pin mem_wdata_reg[31:0] CE
netloc mem_wdata_i_n_0 1 69 1 30960 5940n
load net mem_wordsize[0] -attr @rip(#000000) 0 -pin RTL_EQ__92 I0[0] -pin RTL_EQ__93 I0[0] -pin mem_la_wdata_i S[0] -pin mem_la_wstrb_i S[0] -pin mem_rdata_word_i__1 S[0] -pin mem_wordsize_reg[1:0] Q[0]
load net mem_wordsize[1] -attr @rip(#000000) 1 -pin RTL_EQ__92 I0[1] -pin RTL_EQ__93 I0[1] -pin mem_la_wdata_i S[1] -pin mem_la_wstrb_i S[1] -pin mem_rdata_word_i__1 S[1] -pin mem_wordsize_reg[1:0] Q[1]
load net mem_wordsize__0[0] -attr @rip(#000000) O[0] -pin mem_wordsize_i__1 O[0] -pin mem_wordsize_reg[1:0] D[0]
load net mem_wordsize__0[1] -attr @rip(#000000) O[1] -pin mem_wordsize_i__1 O[1] -pin mem_wordsize_reg[1:0] D[1]
load net mem_wordsize_i__0_n_0 -attr @rip(#000000) O[1] -pin mem_wordsize_i__0 O[1] -pin mem_wordsize_i__1 I2[1]
load net mem_wordsize_i__0_n_1 -attr @rip(#000000) O[0] -pin mem_wordsize_i__0 O[0] -pin mem_wordsize_i__1 I2[0]
load net mem_wordsize_i__2_n_0 -pin mem_wordsize_i__2 O -pin mem_wordsize_i__4 I6
netloc mem_wordsize_i__2_n_0 1 10 1 4610 6250n
load net mem_wordsize_i__3_n_0 -pin mem_wordsize_i__3 O -pin mem_wordsize_i__4 I7
netloc mem_wordsize_i__3_n_0 1 10 1 4630 6270n
load net mem_wordsize_i__4_n_0 -pin mem_wordsize_i__4 O -pin mem_wordsize_i__5 I1
netloc mem_wordsize_i__4_n_0 1 11 1 5200 4090n
load net mem_wordsize_i__5_n_0 -pin mem_wordsize_i__5 O -pin mem_wordsize_reg[1:0] CE
netloc mem_wordsize_i__5_n_0 1 12 1 5760 3730n
load net mem_wordsize_i_n_0 -attr @rip(#000000) O[1] -pin mem_wordsize_i O[1] -pin mem_wordsize_i__1 I1[1]
load net mem_wordsize_i_n_1 -attr @rip(#000000) O[0] -pin mem_wordsize_i O[0] -pin mem_wordsize_i__1 I1[0]
load net mem_wstrb[0] -attr @rip(#000000) 0 -port mem_wstrb[0] -pin mem_wstrb_reg[3:0] Q[0]
load net mem_wstrb[1] -attr @rip(#000000) 1 -port mem_wstrb[1] -pin mem_wstrb_reg[3:0] Q[1]
load net mem_wstrb[2] -attr @rip(#000000) 2 -port mem_wstrb[2] -pin mem_wstrb_reg[3:0] Q[2]
load net mem_wstrb[3] -attr @rip(#000000) 3 -port mem_wstrb[3] -pin mem_wstrb_reg[3:0] Q[3]
load net mem_wstrb_i__0_n_0 -attr @rip(#000000) O[3] -pin mem_wstrb_i__0 O[3] -pin mem_wstrb_reg[3:0] D[3]
load net mem_wstrb_i__0_n_1 -attr @rip(#000000) O[2] -pin mem_wstrb_i__0 O[2] -pin mem_wstrb_reg[3:0] D[2]
load net mem_wstrb_i__0_n_2 -attr @rip(#000000) O[1] -pin mem_wstrb_i__0 O[1] -pin mem_wstrb_reg[3:0] D[1]
load net mem_wstrb_i__0_n_3 -attr @rip(#000000) O[0] -pin mem_wstrb_i__0 O[0] -pin mem_wstrb_reg[3:0] D[0]
load net mem_wstrb_i__1_n_0 -pin mem_wstrb_i__1 O -pin mem_wstrb_i__2 I0
netloc mem_wstrb_i__1_n_0 1 67 1 29510 6370n
load net mem_wstrb_i__2_n_0 -pin mem_wstrb_i__2 O -pin mem_wstrb_i__3 I1
netloc mem_wstrb_i__2_n_0 1 68 1 30450 6400n
load net mem_wstrb_i__3_n_0 -pin mem_wstrb_i__3 O -pin mem_wstrb_reg[3:0] CE
netloc mem_wstrb_i__3_n_0 1 69 1 31040 6420n
load net mem_wstrb_i_n_0 -attr @rip(#000000) O[3] -pin mem_wstrb_i O[3] -pin mem_wstrb_i__0 I0[3]
load net mem_wstrb_i_n_1 -attr @rip(#000000) O[2] -pin mem_wstrb_i O[2] -pin mem_wstrb_i__0 I0[2]
load net mem_wstrb_i_n_2 -attr @rip(#000000) O[1] -pin mem_wstrb_i O[1] -pin mem_wstrb_i__0 I0[1]
load net mem_wstrb_i_n_3 -attr @rip(#000000) O[0] -pin mem_wstrb_i O[0] -pin mem_wstrb_i__0 I0[0]
load net mem_xfer -pin RTL_AND__0 I0 -pin mem_rdata_latched_noshuffle_i S -pin mem_rdata_q_reg[31:0] CE -pin mem_state_i__2 I1 -pin mem_state_i__2 I2 -pin mem_valid_i__2 I1 -pin mem_valid_i__2 I2 -pin mem_xfer_i O
netloc mem_xfer 1 1 67 220 4750 NJ 4750N 740J 6000 1020J 6040 NJ 6040 NJ 6040 NJ 6040 NJ 6040 NJ 6040 NJ 6040 5260J 5820 6140J 5880 6830J 5510 7970J 5300 8540J 5290 NJ 5290 NJ 5290 NJ 5290 NJ 5290 NJ 5290 NJ 5290 NJ 5290 NJ 5290 NJ 5290 NJ 5290 NJ 5290 NJ 5290 14990J 5180 15580J 5210 NJ 5210 NJ 5210 NJ 5210 NJ 5210 NJ 5210 NJ 5210 NJ 5210 18940 7020 NJ 7020 NJ 7020 NJ 7020 NJ 7020 20180J 6990 20370J 7050 NJ 7050 NJ 7050 NJ 7050 NJ 7050 NJ 7050 NJ 7050 NJ 7050 NJ 7050 NJ 7050 NJ 7050 NJ 7050 NJ 7050 NJ 7050 NJ 7050 NJ 7050 NJ 7050 NJ 7050 NJ 7050 NJ 7050 27660J 7070 27960 5890 NJ 5890 NJ 5890 29750
load net next_pc[10] -attr @rip(#000000) O[10] -pin mem_la_addr_i I0[10] -pin next_pc_i O[10]
load net next_pc[11] -attr @rip(#000000) O[11] -pin mem_la_addr_i I0[11] -pin next_pc_i O[11]
load net next_pc[12] -attr @rip(#000000) O[12] -pin mem_la_addr_i I0[12] -pin next_pc_i O[12]
load net next_pc[13] -attr @rip(#000000) O[13] -pin mem_la_addr_i I0[13] -pin next_pc_i O[13]
load net next_pc[14] -attr @rip(#000000) O[14] -pin mem_la_addr_i I0[14] -pin next_pc_i O[14]
load net next_pc[15] -attr @rip(#000000) O[15] -pin mem_la_addr_i I0[15] -pin next_pc_i O[15]
load net next_pc[16] -attr @rip(#000000) O[16] -pin mem_la_addr_i I0[16] -pin next_pc_i O[16]
load net next_pc[17] -attr @rip(#000000) O[17] -pin mem_la_addr_i I0[17] -pin next_pc_i O[17]
load net next_pc[18] -attr @rip(#000000) O[18] -pin mem_la_addr_i I0[18] -pin next_pc_i O[18]
load net next_pc[19] -attr @rip(#000000) O[19] -pin mem_la_addr_i I0[19] -pin next_pc_i O[19]
load net next_pc[20] -attr @rip(#000000) O[20] -pin mem_la_addr_i I0[20] -pin next_pc_i O[20]
load net next_pc[21] -attr @rip(#000000) O[21] -pin mem_la_addr_i I0[21] -pin next_pc_i O[21]
load net next_pc[22] -attr @rip(#000000) O[22] -pin mem_la_addr_i I0[22] -pin next_pc_i O[22]
load net next_pc[23] -attr @rip(#000000) O[23] -pin mem_la_addr_i I0[23] -pin next_pc_i O[23]
load net next_pc[24] -attr @rip(#000000) O[24] -pin mem_la_addr_i I0[24] -pin next_pc_i O[24]
load net next_pc[25] -attr @rip(#000000) O[25] -pin mem_la_addr_i I0[25] -pin next_pc_i O[25]
load net next_pc[26] -attr @rip(#000000) O[26] -pin mem_la_addr_i I0[26] -pin next_pc_i O[26]
load net next_pc[27] -attr @rip(#000000) O[27] -pin mem_la_addr_i I0[27] -pin next_pc_i O[27]
load net next_pc[28] -attr @rip(#000000) O[28] -pin mem_la_addr_i I0[28] -pin next_pc_i O[28]
load net next_pc[29] -attr @rip(#000000) O[29] -pin mem_la_addr_i I0[29] -pin next_pc_i O[29]
load net next_pc[2] -attr @rip(#000000) O[2] -pin mem_la_addr_i I0[2] -pin next_pc_i O[2]
load net next_pc[30] -attr @rip(#000000) O[30] -pin mem_la_addr_i I0[30] -pin next_pc_i O[30]
load net next_pc[31] -attr @rip(#000000) O[31] -pin mem_la_addr_i I0[31] -pin next_pc_i O[31]
load net next_pc[3] -attr @rip(#000000) O[3] -pin mem_la_addr_i I0[3] -pin next_pc_i O[3]
load net next_pc[4] -attr @rip(#000000) O[4] -pin mem_la_addr_i I0[4] -pin next_pc_i O[4]
load net next_pc[5] -attr @rip(#000000) O[5] -pin mem_la_addr_i I0[5] -pin next_pc_i O[5]
load net next_pc[6] -attr @rip(#000000) O[6] -pin mem_la_addr_i I0[6] -pin next_pc_i O[6]
load net next_pc[7] -attr @rip(#000000) O[7] -pin mem_la_addr_i I0[7] -pin next_pc_i O[7]
load net next_pc[8] -attr @rip(#000000) O[8] -pin mem_la_addr_i I0[8] -pin next_pc_i O[8]
load net next_pc[9] -attr @rip(#000000) O[9] -pin mem_la_addr_i I0[9] -pin next_pc_i O[9]
load net p_0_in[0] -pin RTL_REDUCTION_OR__3 I0[0] -pin RTL_REDUCTION_OR__6 I0[4] -pin cpu_state_i__5 S -pin decoded_imm_i S0 -pin instr_jal_reg Q -pin instr_trap_i I0[45] -pin latched_branch_i I0 -pin mem_do_prefetch_i S -pin mem_do_rinst_i__0 I0 -pin reg_next_pc_i S
load net p_0_in[1] -pin RTL_REDUCTION_OR__0 I0[0] -pin RTL_REDUCTION_OR__3 I0[1] -pin RTL_REDUCTION_OR__6 I0[5] -pin instr_auipc_reg Q -pin instr_trap_i I0[46]
load net p_0_in[2] -pin RTL_MUX__7 S -pin RTL_REDUCTION_OR__0 I0[1] -pin RTL_REDUCTION_OR__3 I0[2] -pin RTL_REDUCTION_OR__6 I0[6] -pin instr_lui_reg Q -pin instr_trap_i I0[47]
load net p_0_out[0] -attr @rip(#000000) 0 -pin RTL_AND__61 O -pin RTL_REDUCTION_OR__4 I0[0]
load net p_0_out[1] -attr @rip(#000000) 1 -pin RTL_AND__62 O -pin RTL_REDUCTION_OR__4 I0[1]
load net p_0_out[2] -attr @rip(#000000) 2 -pin RTL_AND__63 O -pin RTL_REDUCTION_OR__4 I0[2]
load net p_1_out[0] -attr @rip(#000000) O[0] -pin RTL_AND__87 O[0] -pin mem_wstrb_i I1[0] -pin mem_wstrb_i__0 I1[0] -pin mem_wstrb_i__0 I2[0] -pin mem_wstrb_i__0 I3[0]
load net p_1_out[1] -attr @rip(#000000) O[1] -pin RTL_AND__87 O[1] -pin mem_wstrb_i I1[1] -pin mem_wstrb_i__0 I1[1] -pin mem_wstrb_i__0 I2[1] -pin mem_wstrb_i__0 I3[1]
load net p_1_out[2] -attr @rip(#000000) O[2] -pin RTL_AND__87 O[2] -pin mem_wstrb_i I1[2] -pin mem_wstrb_i__0 I1[2] -pin mem_wstrb_i__0 I2[2] -pin mem_wstrb_i__0 I3[2]
load net p_1_out[3] -attr @rip(#000000) O[3] -pin RTL_AND__87 O[3] -pin mem_wstrb_i I1[3] -pin mem_wstrb_i__0 I1[3] -pin mem_wstrb_i__0 I2[3] -pin mem_wstrb_i__0 I3[3]
load net p_2_out -pin RTL_AND__7 O -pin instr_fence_reg D
netloc p_2_out 1 8 1 3240 210n
load net p_3_out -pin RTL_AND__77 O -pin instr_ecall_ebreak_reg D
netloc p_3_out 1 26 1 14090 4440n
load net pcpi_insn[0] -attr @rip(#000000) 0 -port pcpi_insn[0] -pin pcpi_insn_reg[31:0] Q[0]
load net pcpi_insn[10] -attr @rip(#000000) 10 -port pcpi_insn[10] -pin pcpi_insn_reg[31:0] Q[10]
load net pcpi_insn[11] -attr @rip(#000000) 11 -port pcpi_insn[11] -pin pcpi_insn_reg[31:0] Q[11]
load net pcpi_insn[12] -attr @rip(#000000) 12 -port pcpi_insn[12] -pin pcpi_insn_reg[31:0] Q[12]
load net pcpi_insn[13] -attr @rip(#000000) 13 -port pcpi_insn[13] -pin pcpi_insn_reg[31:0] Q[13]
load net pcpi_insn[14] -attr @rip(#000000) 14 -port pcpi_insn[14] -pin pcpi_insn_reg[31:0] Q[14]
load net pcpi_insn[15] -attr @rip(#000000) 15 -port pcpi_insn[15] -pin pcpi_insn_reg[31:0] Q[15]
load net pcpi_insn[16] -attr @rip(#000000) 16 -port pcpi_insn[16] -pin pcpi_insn_reg[31:0] Q[16]
load net pcpi_insn[17] -attr @rip(#000000) 17 -port pcpi_insn[17] -pin pcpi_insn_reg[31:0] Q[17]
load net pcpi_insn[18] -attr @rip(#000000) 18 -port pcpi_insn[18] -pin pcpi_insn_reg[31:0] Q[18]
load net pcpi_insn[19] -attr @rip(#000000) 19 -port pcpi_insn[19] -pin pcpi_insn_reg[31:0] Q[19]
load net pcpi_insn[1] -attr @rip(#000000) 1 -port pcpi_insn[1] -pin pcpi_insn_reg[31:0] Q[1]
load net pcpi_insn[20] -attr @rip(#000000) 20 -port pcpi_insn[20] -pin pcpi_insn_reg[31:0] Q[20]
load net pcpi_insn[21] -attr @rip(#000000) 21 -port pcpi_insn[21] -pin pcpi_insn_reg[31:0] Q[21]
load net pcpi_insn[22] -attr @rip(#000000) 22 -port pcpi_insn[22] -pin pcpi_insn_reg[31:0] Q[22]
load net pcpi_insn[23] -attr @rip(#000000) 23 -port pcpi_insn[23] -pin pcpi_insn_reg[31:0] Q[23]
load net pcpi_insn[24] -attr @rip(#000000) 24 -port pcpi_insn[24] -pin pcpi_insn_reg[31:0] Q[24]
load net pcpi_insn[25] -attr @rip(#000000) 25 -port pcpi_insn[25] -pin pcpi_insn_reg[31:0] Q[25]
load net pcpi_insn[26] -attr @rip(#000000) 26 -port pcpi_insn[26] -pin pcpi_insn_reg[31:0] Q[26]
load net pcpi_insn[27] -attr @rip(#000000) 27 -port pcpi_insn[27] -pin pcpi_insn_reg[31:0] Q[27]
load net pcpi_insn[28] -attr @rip(#000000) 28 -port pcpi_insn[28] -pin pcpi_insn_reg[31:0] Q[28]
load net pcpi_insn[29] -attr @rip(#000000) 29 -port pcpi_insn[29] -pin pcpi_insn_reg[31:0] Q[29]
load net pcpi_insn[2] -attr @rip(#000000) 2 -port pcpi_insn[2] -pin pcpi_insn_reg[31:0] Q[2]
load net pcpi_insn[30] -attr @rip(#000000) 30 -port pcpi_insn[30] -pin pcpi_insn_reg[31:0] Q[30]
load net pcpi_insn[31] -attr @rip(#000000) 31 -port pcpi_insn[31] -pin pcpi_insn_reg[31:0] Q[31]
load net pcpi_insn[3] -attr @rip(#000000) 3 -port pcpi_insn[3] -pin pcpi_insn_reg[31:0] Q[3]
load net pcpi_insn[4] -attr @rip(#000000) 4 -port pcpi_insn[4] -pin pcpi_insn_reg[31:0] Q[4]
load net pcpi_insn[5] -attr @rip(#000000) 5 -port pcpi_insn[5] -pin pcpi_insn_reg[31:0] Q[5]
load net pcpi_insn[6] -attr @rip(#000000) 6 -port pcpi_insn[6] -pin pcpi_insn_reg[31:0] Q[6]
load net pcpi_insn[7] -attr @rip(#000000) 7 -port pcpi_insn[7] -pin pcpi_insn_reg[31:0] Q[7]
load net pcpi_insn[8] -attr @rip(#000000) 8 -port pcpi_insn[8] -pin pcpi_insn_reg[31:0] Q[8]
load net pcpi_insn[9] -attr @rip(#000000) 9 -port pcpi_insn[9] -pin pcpi_insn_reg[31:0] Q[9]
load net pcpi_insn_i_n_0 -attr @rip(#000000) O[31] -pin pcpi_insn_i O[31] -pin pcpi_insn_reg[31:0] D[31]
load net pcpi_insn_i_n_1 -attr @rip(#000000) O[30] -pin pcpi_insn_i O[30] -pin pcpi_insn_reg[31:0] D[30]
load net pcpi_insn_i_n_10 -attr @rip(#000000) O[21] -pin pcpi_insn_i O[21] -pin pcpi_insn_reg[31:0] D[21]
load net pcpi_insn_i_n_11 -attr @rip(#000000) O[20] -pin pcpi_insn_i O[20] -pin pcpi_insn_reg[31:0] D[20]
load net pcpi_insn_i_n_12 -attr @rip(#000000) O[19] -pin pcpi_insn_i O[19] -pin pcpi_insn_reg[31:0] D[19]
load net pcpi_insn_i_n_13 -attr @rip(#000000) O[18] -pin pcpi_insn_i O[18] -pin pcpi_insn_reg[31:0] D[18]
load net pcpi_insn_i_n_14 -attr @rip(#000000) O[17] -pin pcpi_insn_i O[17] -pin pcpi_insn_reg[31:0] D[17]
load net pcpi_insn_i_n_15 -attr @rip(#000000) O[16] -pin pcpi_insn_i O[16] -pin pcpi_insn_reg[31:0] D[16]
load net pcpi_insn_i_n_16 -attr @rip(#000000) O[15] -pin pcpi_insn_i O[15] -pin pcpi_insn_reg[31:0] D[15]
load net pcpi_insn_i_n_17 -attr @rip(#000000) O[14] -pin pcpi_insn_i O[14] -pin pcpi_insn_reg[31:0] D[14]
load net pcpi_insn_i_n_18 -attr @rip(#000000) O[13] -pin pcpi_insn_i O[13] -pin pcpi_insn_reg[31:0] D[13]
load net pcpi_insn_i_n_19 -attr @rip(#000000) O[12] -pin pcpi_insn_i O[12] -pin pcpi_insn_reg[31:0] D[12]
load net pcpi_insn_i_n_2 -attr @rip(#000000) O[29] -pin pcpi_insn_i O[29] -pin pcpi_insn_reg[31:0] D[29]
load net pcpi_insn_i_n_20 -attr @rip(#000000) O[11] -pin pcpi_insn_i O[11] -pin pcpi_insn_reg[31:0] D[11]
load net pcpi_insn_i_n_21 -attr @rip(#000000) O[10] -pin pcpi_insn_i O[10] -pin pcpi_insn_reg[31:0] D[10]
load net pcpi_insn_i_n_22 -attr @rip(#000000) O[9] -pin pcpi_insn_i O[9] -pin pcpi_insn_reg[31:0] D[9]
load net pcpi_insn_i_n_23 -attr @rip(#000000) O[8] -pin pcpi_insn_i O[8] -pin pcpi_insn_reg[31:0] D[8]
load net pcpi_insn_i_n_24 -attr @rip(#000000) O[7] -pin pcpi_insn_i O[7] -pin pcpi_insn_reg[31:0] D[7]
load net pcpi_insn_i_n_25 -attr @rip(#000000) O[6] -pin pcpi_insn_i O[6] -pin pcpi_insn_reg[31:0] D[6]
load net pcpi_insn_i_n_26 -attr @rip(#000000) O[5] -pin pcpi_insn_i O[5] -pin pcpi_insn_reg[31:0] D[5]
load net pcpi_insn_i_n_27 -attr @rip(#000000) O[4] -pin pcpi_insn_i O[4] -pin pcpi_insn_reg[31:0] D[4]
load net pcpi_insn_i_n_28 -attr @rip(#000000) O[3] -pin pcpi_insn_i O[3] -pin pcpi_insn_reg[31:0] D[3]
load net pcpi_insn_i_n_29 -attr @rip(#000000) O[2] -pin pcpi_insn_i O[2] -pin pcpi_insn_reg[31:0] D[2]
load net pcpi_insn_i_n_3 -attr @rip(#000000) O[28] -pin pcpi_insn_i O[28] -pin pcpi_insn_reg[31:0] D[28]
load net pcpi_insn_i_n_30 -attr @rip(#000000) O[1] -pin pcpi_insn_i O[1] -pin pcpi_insn_reg[31:0] D[1]
load net pcpi_insn_i_n_31 -attr @rip(#000000) O[0] -pin pcpi_insn_i O[0] -pin pcpi_insn_reg[31:0] D[0]
load net pcpi_insn_i_n_4 -attr @rip(#000000) O[27] -pin pcpi_insn_i O[27] -pin pcpi_insn_reg[31:0] D[27]
load net pcpi_insn_i_n_5 -attr @rip(#000000) O[26] -pin pcpi_insn_i O[26] -pin pcpi_insn_reg[31:0] D[26]
load net pcpi_insn_i_n_6 -attr @rip(#000000) O[25] -pin pcpi_insn_i O[25] -pin pcpi_insn_reg[31:0] D[25]
load net pcpi_insn_i_n_7 -attr @rip(#000000) O[24] -pin pcpi_insn_i O[24] -pin pcpi_insn_reg[31:0] D[24]
load net pcpi_insn_i_n_8 -attr @rip(#000000) O[23] -pin pcpi_insn_i O[23] -pin pcpi_insn_reg[31:0] D[23]
load net pcpi_insn_i_n_9 -attr @rip(#000000) O[22] -pin pcpi_insn_i O[22] -pin pcpi_insn_reg[31:0] D[22]
load net pcpi_int_rd[0] -attr @rip(#000000) Q[0] -pin pcpi_int_rd_reg Q[0] -pin reg_out_i__2 I1[0]
load net pcpi_int_rd[10] -attr @rip(#000000) Q[10] -pin pcpi_int_rd_reg Q[10] -pin reg_out_i__2 I1[10]
load net pcpi_int_rd[11] -attr @rip(#000000) Q[11] -pin pcpi_int_rd_reg Q[11] -pin reg_out_i__2 I1[11]
load net pcpi_int_rd[12] -attr @rip(#000000) Q[12] -pin pcpi_int_rd_reg Q[12] -pin reg_out_i__2 I1[12]
load net pcpi_int_rd[13] -attr @rip(#000000) Q[13] -pin pcpi_int_rd_reg Q[13] -pin reg_out_i__2 I1[13]
load net pcpi_int_rd[14] -attr @rip(#000000) Q[14] -pin pcpi_int_rd_reg Q[14] -pin reg_out_i__2 I1[14]
load net pcpi_int_rd[15] -attr @rip(#000000) Q[15] -pin pcpi_int_rd_reg Q[15] -pin reg_out_i__2 I1[15]
load net pcpi_int_rd[16] -attr @rip(#000000) Q[16] -pin pcpi_int_rd_reg Q[16] -pin reg_out_i__2 I1[16]
load net pcpi_int_rd[17] -attr @rip(#000000) Q[17] -pin pcpi_int_rd_reg Q[17] -pin reg_out_i__2 I1[17]
load net pcpi_int_rd[18] -attr @rip(#000000) Q[18] -pin pcpi_int_rd_reg Q[18] -pin reg_out_i__2 I1[18]
load net pcpi_int_rd[19] -attr @rip(#000000) Q[19] -pin pcpi_int_rd_reg Q[19] -pin reg_out_i__2 I1[19]
load net pcpi_int_rd[1] -attr @rip(#000000) Q[1] -pin pcpi_int_rd_reg Q[1] -pin reg_out_i__2 I1[1]
load net pcpi_int_rd[20] -attr @rip(#000000) Q[20] -pin pcpi_int_rd_reg Q[20] -pin reg_out_i__2 I1[20]
load net pcpi_int_rd[21] -attr @rip(#000000) Q[21] -pin pcpi_int_rd_reg Q[21] -pin reg_out_i__2 I1[21]
load net pcpi_int_rd[22] -attr @rip(#000000) Q[22] -pin pcpi_int_rd_reg Q[22] -pin reg_out_i__2 I1[22]
load net pcpi_int_rd[23] -attr @rip(#000000) Q[23] -pin pcpi_int_rd_reg Q[23] -pin reg_out_i__2 I1[23]
load net pcpi_int_rd[24] -attr @rip(#000000) Q[24] -pin pcpi_int_rd_reg Q[24] -pin reg_out_i__2 I1[24]
load net pcpi_int_rd[25] -attr @rip(#000000) Q[25] -pin pcpi_int_rd_reg Q[25] -pin reg_out_i__2 I1[25]
load net pcpi_int_rd[26] -attr @rip(#000000) Q[26] -pin pcpi_int_rd_reg Q[26] -pin reg_out_i__2 I1[26]
load net pcpi_int_rd[27] -attr @rip(#000000) Q[27] -pin pcpi_int_rd_reg Q[27] -pin reg_out_i__2 I1[27]
load net pcpi_int_rd[28] -attr @rip(#000000) Q[28] -pin pcpi_int_rd_reg Q[28] -pin reg_out_i__2 I1[28]
load net pcpi_int_rd[29] -attr @rip(#000000) Q[29] -pin pcpi_int_rd_reg Q[29] -pin reg_out_i__2 I1[29]
load net pcpi_int_rd[2] -attr @rip(#000000) Q[2] -pin pcpi_int_rd_reg Q[2] -pin reg_out_i__2 I1[2]
load net pcpi_int_rd[30] -attr @rip(#000000) Q[30] -pin pcpi_int_rd_reg Q[30] -pin reg_out_i__2 I1[30]
load net pcpi_int_rd[31] -attr @rip(#000000) Q[31] -pin pcpi_int_rd_reg Q[31] -pin reg_out_i__2 I1[31]
load net pcpi_int_rd[3] -attr @rip(#000000) Q[3] -pin pcpi_int_rd_reg Q[3] -pin reg_out_i__2 I1[3]
load net pcpi_int_rd[4] -attr @rip(#000000) Q[4] -pin pcpi_int_rd_reg Q[4] -pin reg_out_i__2 I1[4]
load net pcpi_int_rd[5] -attr @rip(#000000) Q[5] -pin pcpi_int_rd_reg Q[5] -pin reg_out_i__2 I1[5]
load net pcpi_int_rd[6] -attr @rip(#000000) Q[6] -pin pcpi_int_rd_reg Q[6] -pin reg_out_i__2 I1[6]
load net pcpi_int_rd[7] -attr @rip(#000000) Q[7] -pin pcpi_int_rd_reg Q[7] -pin reg_out_i__2 I1[7]
load net pcpi_int_rd[8] -attr @rip(#000000) Q[8] -pin pcpi_int_rd_reg Q[8] -pin reg_out_i__2 I1[8]
load net pcpi_int_rd[9] -attr @rip(#000000) Q[9] -pin pcpi_int_rd_reg Q[9] -pin reg_out_i__2 I1[9]
load net pcpi_rs1[0] -attr @rip(#000000) 0 -pin RTL_ADD I0[0] -pin RTL_ADD__0 I0[0] -pin RTL_ADD__8 I0[0] -pin RTL_ADD__9 I0[0] -pin RTL_AND__66 I0[0] -pin RTL_ARSHIFT I0[0] -pin RTL_ARSHIFT__0 I0[0] -pin RTL_EQ__87 I0[0] -pin RTL_LSHIFT__0 I0[0] -pin RTL_LSHIFT__1 I0[0] -pin RTL_LSHIFT__2 I0[0] -pin RTL_LSHIFT__3 I1[0] -pin RTL_LT I0[0] -pin RTL_LT__0 I0[0] -pin RTL_NEQ I0[0] -pin RTL_NEQ__0 I0 -pin RTL_OR__10 I0[0] -pin RTL_RSHIFT I0[0] -pin RTL_RSHIFT__0 I0[0] -pin RTL_XOR I0[0] -pin mem_rdata_word_i__0 S[0] -port pcpi_rs1[0] -pin reg_op1_reg[31:0] Q[0] -pin reg_out_i__2 I3[0]
load net pcpi_rs1[10] -attr @rip(#000000) 10 -pin RTL_ADD I0[10] -pin RTL_ADD__0 I0[10] -pin RTL_ADD__8 I0[10] -pin RTL_ADD__9 I0[10] -pin RTL_AND__66 I0[10] -pin RTL_ARSHIFT I0[10] -pin RTL_ARSHIFT__0 I0[10] -pin RTL_EQ__87 I0[10] -pin RTL_LSHIFT__0 I0[10] -pin RTL_LSHIFT__1 I0[10] -pin RTL_LSHIFT__2 I0[10] -pin RTL_LT I0[10] -pin RTL_LT__0 I0[10] -pin RTL_OR__10 I0[10] -pin RTL_RSHIFT I0[10] -pin RTL_RSHIFT__0 I0[10] -pin RTL_XOR I0[10] -pin mem_la_addr_i I1[10] -port pcpi_rs1[10] -pin reg_op1_reg[31:0] Q[10] -pin reg_out_i__2 I3[10]
load net pcpi_rs1[11] -attr @rip(#000000) 11 -pin RTL_ADD I0[11] -pin RTL_ADD__0 I0[11] -pin RTL_ADD__8 I0[11] -pin RTL_ADD__9 I0[11] -pin RTL_AND__66 I0[11] -pin RTL_ARSHIFT I0[11] -pin RTL_ARSHIFT__0 I0[11] -pin RTL_EQ__87 I0[11] -pin RTL_LSHIFT__0 I0[11] -pin RTL_LSHIFT__1 I0[11] -pin RTL_LSHIFT__2 I0[11] -pin RTL_LT I0[11] -pin RTL_LT__0 I0[11] -pin RTL_OR__10 I0[11] -pin RTL_RSHIFT I0[11] -pin RTL_RSHIFT__0 I0[11] -pin RTL_XOR I0[11] -pin mem_la_addr_i I1[11] -port pcpi_rs1[11] -pin reg_op1_reg[31:0] Q[11] -pin reg_out_i__2 I3[11]
load net pcpi_rs1[12] -attr @rip(#000000) 12 -pin RTL_ADD I0[12] -pin RTL_ADD__0 I0[12] -pin RTL_ADD__8 I0[12] -pin RTL_ADD__9 I0[12] -pin RTL_AND__66 I0[12] -pin RTL_ARSHIFT I0[12] -pin RTL_ARSHIFT__0 I0[12] -pin RTL_EQ__87 I0[12] -pin RTL_LSHIFT__0 I0[12] -pin RTL_LSHIFT__1 I0[12] -pin RTL_LSHIFT__2 I0[12] -pin RTL_LT I0[12] -pin RTL_LT__0 I0[12] -pin RTL_OR__10 I0[12] -pin RTL_RSHIFT I0[12] -pin RTL_RSHIFT__0 I0[12] -pin RTL_XOR I0[12] -pin mem_la_addr_i I1[12] -port pcpi_rs1[12] -pin reg_op1_reg[31:0] Q[12] -pin reg_out_i__2 I3[12]
load net pcpi_rs1[13] -attr @rip(#000000) 13 -pin RTL_ADD I0[13] -pin RTL_ADD__0 I0[13] -pin RTL_ADD__8 I0[13] -pin RTL_ADD__9 I0[13] -pin RTL_AND__66 I0[13] -pin RTL_ARSHIFT I0[13] -pin RTL_ARSHIFT__0 I0[13] -pin RTL_EQ__87 I0[13] -pin RTL_LSHIFT__0 I0[13] -pin RTL_LSHIFT__1 I0[13] -pin RTL_LSHIFT__2 I0[13] -pin RTL_LT I0[13] -pin RTL_LT__0 I0[13] -pin RTL_OR__10 I0[13] -pin RTL_RSHIFT I0[13] -pin RTL_RSHIFT__0 I0[13] -pin RTL_XOR I0[13] -pin mem_la_addr_i I1[13] -port pcpi_rs1[13] -pin reg_op1_reg[31:0] Q[13] -pin reg_out_i__2 I3[13]
load net pcpi_rs1[14] -attr @rip(#000000) 14 -pin RTL_ADD I0[14] -pin RTL_ADD__0 I0[14] -pin RTL_ADD__8 I0[14] -pin RTL_ADD__9 I0[14] -pin RTL_AND__66 I0[14] -pin RTL_ARSHIFT I0[14] -pin RTL_ARSHIFT__0 I0[14] -pin RTL_EQ__87 I0[14] -pin RTL_LSHIFT__0 I0[14] -pin RTL_LSHIFT__1 I0[14] -pin RTL_LSHIFT__2 I0[14] -pin RTL_LT I0[14] -pin RTL_LT__0 I0[14] -pin RTL_OR__10 I0[14] -pin RTL_RSHIFT I0[14] -pin RTL_RSHIFT__0 I0[14] -pin RTL_XOR I0[14] -pin mem_la_addr_i I1[14] -port pcpi_rs1[14] -pin reg_op1_reg[31:0] Q[14] -pin reg_out_i__2 I3[14]
load net pcpi_rs1[15] -attr @rip(#000000) 15 -pin RTL_ADD I0[15] -pin RTL_ADD__0 I0[15] -pin RTL_ADD__8 I0[15] -pin RTL_ADD__9 I0[15] -pin RTL_AND__66 I0[15] -pin RTL_ARSHIFT I0[15] -pin RTL_ARSHIFT__0 I0[15] -pin RTL_EQ__87 I0[15] -pin RTL_LSHIFT__0 I0[15] -pin RTL_LSHIFT__1 I0[15] -pin RTL_LSHIFT__2 I0[15] -pin RTL_LT I0[15] -pin RTL_LT__0 I0[15] -pin RTL_OR__10 I0[15] -pin RTL_RSHIFT I0[15] -pin RTL_RSHIFT__0 I0[15] -pin RTL_XOR I0[15] -pin mem_la_addr_i I1[15] -port pcpi_rs1[15] -pin reg_op1_reg[31:0] Q[15] -pin reg_out_i__2 I3[15]
load net pcpi_rs1[16] -attr @rip(#000000) 16 -pin RTL_ADD I0[16] -pin RTL_ADD__0 I0[16] -pin RTL_ADD__8 I0[16] -pin RTL_ADD__9 I0[16] -pin RTL_AND__66 I0[16] -pin RTL_ARSHIFT I0[16] -pin RTL_ARSHIFT__0 I0[16] -pin RTL_EQ__87 I0[16] -pin RTL_LSHIFT__0 I0[16] -pin RTL_LSHIFT__1 I0[16] -pin RTL_LSHIFT__2 I0[16] -pin RTL_LT I0[16] -pin RTL_LT__0 I0[16] -pin RTL_OR__10 I0[16] -pin RTL_RSHIFT I0[16] -pin RTL_RSHIFT__0 I0[16] -pin RTL_XOR I0[16] -pin mem_la_addr_i I1[16] -port pcpi_rs1[16] -pin reg_op1_reg[31:0] Q[16] -pin reg_out_i__2 I3[16]
load net pcpi_rs1[17] -attr @rip(#000000) 17 -pin RTL_ADD I0[17] -pin RTL_ADD__0 I0[17] -pin RTL_ADD__8 I0[17] -pin RTL_ADD__9 I0[17] -pin RTL_AND__66 I0[17] -pin RTL_ARSHIFT I0[17] -pin RTL_ARSHIFT__0 I0[17] -pin RTL_EQ__87 I0[17] -pin RTL_LSHIFT__0 I0[17] -pin RTL_LSHIFT__1 I0[17] -pin RTL_LSHIFT__2 I0[17] -pin RTL_LT I0[17] -pin RTL_LT__0 I0[17] -pin RTL_OR__10 I0[17] -pin RTL_RSHIFT I0[17] -pin RTL_RSHIFT__0 I0[17] -pin RTL_XOR I0[17] -pin mem_la_addr_i I1[17] -port pcpi_rs1[17] -pin reg_op1_reg[31:0] Q[17] -pin reg_out_i__2 I3[17]
load net pcpi_rs1[18] -attr @rip(#000000) 18 -pin RTL_ADD I0[18] -pin RTL_ADD__0 I0[18] -pin RTL_ADD__8 I0[18] -pin RTL_ADD__9 I0[18] -pin RTL_AND__66 I0[18] -pin RTL_ARSHIFT I0[18] -pin RTL_ARSHIFT__0 I0[18] -pin RTL_EQ__87 I0[18] -pin RTL_LSHIFT__0 I0[18] -pin RTL_LSHIFT__1 I0[18] -pin RTL_LSHIFT__2 I0[18] -pin RTL_LT I0[18] -pin RTL_LT__0 I0[18] -pin RTL_OR__10 I0[18] -pin RTL_RSHIFT I0[18] -pin RTL_RSHIFT__0 I0[18] -pin RTL_XOR I0[18] -pin mem_la_addr_i I1[18] -port pcpi_rs1[18] -pin reg_op1_reg[31:0] Q[18] -pin reg_out_i__2 I3[18]
load net pcpi_rs1[19] -attr @rip(#000000) 19 -pin RTL_ADD I0[19] -pin RTL_ADD__0 I0[19] -pin RTL_ADD__8 I0[19] -pin RTL_ADD__9 I0[19] -pin RTL_AND__66 I0[19] -pin RTL_ARSHIFT I0[19] -pin RTL_ARSHIFT__0 I0[19] -pin RTL_EQ__87 I0[19] -pin RTL_LSHIFT__0 I0[19] -pin RTL_LSHIFT__1 I0[19] -pin RTL_LSHIFT__2 I0[19] -pin RTL_LT I0[19] -pin RTL_LT__0 I0[19] -pin RTL_OR__10 I0[19] -pin RTL_RSHIFT I0[19] -pin RTL_RSHIFT__0 I0[19] -pin RTL_XOR I0[19] -pin mem_la_addr_i I1[19] -port pcpi_rs1[19] -pin reg_op1_reg[31:0] Q[19] -pin reg_out_i__2 I3[19]
load net pcpi_rs1[1] -attr @rip(#000000) 1 -pin RTL_ADD I0[1] -pin RTL_ADD__0 I0[1] -pin RTL_ADD__8 I0[1] -pin RTL_ADD__9 I0[1] -pin RTL_AND__66 I0[1] -pin RTL_ARSHIFT I0[1] -pin RTL_ARSHIFT__0 I0[1] -pin RTL_EQ__87 I0[1] -pin RTL_LSHIFT__0 I0[1] -pin RTL_LSHIFT__1 I0[1] -pin RTL_LSHIFT__2 I0[1] -pin RTL_LSHIFT__3 I1[1] -pin RTL_LT I0[1] -pin RTL_LT__0 I0[1] -pin RTL_MUX__8 S -pin RTL_NEQ I0[1] -pin RTL_OR__10 I0[1] -pin RTL_RSHIFT I0[1] -pin RTL_RSHIFT__0 I0[1] -pin RTL_XOR I0[1] -pin mem_rdata_word_i S -pin mem_rdata_word_i__0 S[1] -port pcpi_rs1[1] -pin reg_op1_reg[31:0] Q[1] -pin reg_out_i__2 I3[1]
load net pcpi_rs1[20] -attr @rip(#000000) 20 -pin RTL_ADD I0[20] -pin RTL_ADD__0 I0[20] -pin RTL_ADD__8 I0[20] -pin RTL_ADD__9 I0[20] -pin RTL_AND__66 I0[20] -pin RTL_ARSHIFT I0[20] -pin RTL_ARSHIFT__0 I0[20] -pin RTL_EQ__87 I0[20] -pin RTL_LSHIFT__0 I0[20] -pin RTL_LSHIFT__1 I0[20] -pin RTL_LSHIFT__2 I0[20] -pin RTL_LT I0[20] -pin RTL_LT__0 I0[20] -pin RTL_OR__10 I0[20] -pin RTL_RSHIFT I0[20] -pin RTL_RSHIFT__0 I0[20] -pin RTL_XOR I0[20] -pin mem_la_addr_i I1[20] -port pcpi_rs1[20] -pin reg_op1_reg[31:0] Q[20] -pin reg_out_i__2 I3[20]
load net pcpi_rs1[21] -attr @rip(#000000) 21 -pin RTL_ADD I0[21] -pin RTL_ADD__0 I0[21] -pin RTL_ADD__8 I0[21] -pin RTL_ADD__9 I0[21] -pin RTL_AND__66 I0[21] -pin RTL_ARSHIFT I0[21] -pin RTL_ARSHIFT__0 I0[21] -pin RTL_EQ__87 I0[21] -pin RTL_LSHIFT__0 I0[21] -pin RTL_LSHIFT__1 I0[21] -pin RTL_LSHIFT__2 I0[21] -pin RTL_LT I0[21] -pin RTL_LT__0 I0[21] -pin RTL_OR__10 I0[21] -pin RTL_RSHIFT I0[21] -pin RTL_RSHIFT__0 I0[21] -pin RTL_XOR I0[21] -pin mem_la_addr_i I1[21] -port pcpi_rs1[21] -pin reg_op1_reg[31:0] Q[21] -pin reg_out_i__2 I3[21]
load net pcpi_rs1[22] -attr @rip(#000000) 22 -pin RTL_ADD I0[22] -pin RTL_ADD__0 I0[22] -pin RTL_ADD__8 I0[22] -pin RTL_ADD__9 I0[22] -pin RTL_AND__66 I0[22] -pin RTL_ARSHIFT I0[22] -pin RTL_ARSHIFT__0 I0[22] -pin RTL_EQ__87 I0[22] -pin RTL_LSHIFT__0 I0[22] -pin RTL_LSHIFT__1 I0[22] -pin RTL_LSHIFT__2 I0[22] -pin RTL_LT I0[22] -pin RTL_LT__0 I0[22] -pin RTL_OR__10 I0[22] -pin RTL_RSHIFT I0[22] -pin RTL_RSHIFT__0 I0[22] -pin RTL_XOR I0[22] -pin mem_la_addr_i I1[22] -port pcpi_rs1[22] -pin reg_op1_reg[31:0] Q[22] -pin reg_out_i__2 I3[22]
load net pcpi_rs1[23] -attr @rip(#000000) 23 -pin RTL_ADD I0[23] -pin RTL_ADD__0 I0[23] -pin RTL_ADD__8 I0[23] -pin RTL_ADD__9 I0[23] -pin RTL_AND__66 I0[23] -pin RTL_ARSHIFT I0[23] -pin RTL_ARSHIFT__0 I0[23] -pin RTL_EQ__87 I0[23] -pin RTL_LSHIFT__0 I0[23] -pin RTL_LSHIFT__1 I0[23] -pin RTL_LSHIFT__2 I0[23] -pin RTL_LT I0[23] -pin RTL_LT__0 I0[23] -pin RTL_OR__10 I0[23] -pin RTL_RSHIFT I0[23] -pin RTL_RSHIFT__0 I0[23] -pin RTL_XOR I0[23] -pin mem_la_addr_i I1[23] -port pcpi_rs1[23] -pin reg_op1_reg[31:0] Q[23] -pin reg_out_i__2 I3[23]
load net pcpi_rs1[24] -attr @rip(#000000) 24 -pin RTL_ADD I0[24] -pin RTL_ADD__0 I0[24] -pin RTL_ADD__8 I0[24] -pin RTL_ADD__9 I0[24] -pin RTL_AND__66 I0[24] -pin RTL_ARSHIFT I0[24] -pin RTL_ARSHIFT__0 I0[24] -pin RTL_EQ__87 I0[24] -pin RTL_LSHIFT__0 I0[24] -pin RTL_LSHIFT__1 I0[24] -pin RTL_LSHIFT__2 I0[24] -pin RTL_LT I0[24] -pin RTL_LT__0 I0[24] -pin RTL_OR__10 I0[24] -pin RTL_RSHIFT I0[24] -pin RTL_RSHIFT__0 I0[24] -pin RTL_XOR I0[24] -pin mem_la_addr_i I1[24] -port pcpi_rs1[24] -pin reg_op1_reg[31:0] Q[24] -pin reg_out_i__2 I3[24]
load net pcpi_rs1[25] -attr @rip(#000000) 25 -pin RTL_ADD I0[25] -pin RTL_ADD__0 I0[25] -pin RTL_ADD__8 I0[25] -pin RTL_ADD__9 I0[25] -pin RTL_AND__66 I0[25] -pin RTL_ARSHIFT I0[25] -pin RTL_ARSHIFT__0 I0[25] -pin RTL_EQ__87 I0[25] -pin RTL_LSHIFT__0 I0[25] -pin RTL_LSHIFT__1 I0[25] -pin RTL_LSHIFT__2 I0[25] -pin RTL_LT I0[25] -pin RTL_LT__0 I0[25] -pin RTL_OR__10 I0[25] -pin RTL_RSHIFT I0[25] -pin RTL_RSHIFT__0 I0[25] -pin RTL_XOR I0[25] -pin mem_la_addr_i I1[25] -port pcpi_rs1[25] -pin reg_op1_reg[31:0] Q[25] -pin reg_out_i__2 I3[25]
load net pcpi_rs1[26] -attr @rip(#000000) 26 -pin RTL_ADD I0[26] -pin RTL_ADD__0 I0[26] -pin RTL_ADD__8 I0[26] -pin RTL_ADD__9 I0[26] -pin RTL_AND__66 I0[26] -pin RTL_ARSHIFT I0[26] -pin RTL_ARSHIFT__0 I0[26] -pin RTL_EQ__87 I0[26] -pin RTL_LSHIFT__0 I0[26] -pin RTL_LSHIFT__1 I0[26] -pin RTL_LSHIFT__2 I0[26] -pin RTL_LT I0[26] -pin RTL_LT__0 I0[26] -pin RTL_OR__10 I0[26] -pin RTL_RSHIFT I0[26] -pin RTL_RSHIFT__0 I0[26] -pin RTL_XOR I0[26] -pin mem_la_addr_i I1[26] -port pcpi_rs1[26] -pin reg_op1_reg[31:0] Q[26] -pin reg_out_i__2 I3[26]
load net pcpi_rs1[27] -attr @rip(#000000) 27 -pin RTL_ADD I0[27] -pin RTL_ADD__0 I0[27] -pin RTL_ADD__8 I0[27] -pin RTL_ADD__9 I0[27] -pin RTL_AND__66 I0[27] -pin RTL_ARSHIFT I0[27] -pin RTL_ARSHIFT__0 I0[27] -pin RTL_EQ__87 I0[27] -pin RTL_LSHIFT__0 I0[27] -pin RTL_LSHIFT__1 I0[27] -pin RTL_LSHIFT__2 I0[27] -pin RTL_LT I0[27] -pin RTL_LT__0 I0[27] -pin RTL_OR__10 I0[27] -pin RTL_RSHIFT I0[27] -pin RTL_RSHIFT__0 I0[27] -pin RTL_XOR I0[27] -pin mem_la_addr_i I1[27] -port pcpi_rs1[27] -pin reg_op1_reg[31:0] Q[27] -pin reg_out_i__2 I3[27]
load net pcpi_rs1[28] -attr @rip(#000000) 28 -pin RTL_ADD I0[28] -pin RTL_ADD__0 I0[28] -pin RTL_ADD__8 I0[28] -pin RTL_ADD__9 I0[28] -pin RTL_AND__66 I0[28] -pin RTL_ARSHIFT I0[28] -pin RTL_ARSHIFT__0 I0[28] -pin RTL_EQ__87 I0[28] -pin RTL_LSHIFT__0 I0[28] -pin RTL_LSHIFT__1 I0[28] -pin RTL_LSHIFT__2 I0[28] -pin RTL_LT I0[28] -pin RTL_LT__0 I0[28] -pin RTL_OR__10 I0[28] -pin RTL_RSHIFT I0[28] -pin RTL_RSHIFT__0 I0[28] -pin RTL_XOR I0[28] -pin mem_la_addr_i I1[28] -port pcpi_rs1[28] -pin reg_op1_reg[31:0] Q[28] -pin reg_out_i__2 I3[28]
load net pcpi_rs1[29] -attr @rip(#000000) 29 -pin RTL_ADD I0[29] -pin RTL_ADD__0 I0[29] -pin RTL_ADD__8 I0[29] -pin RTL_ADD__9 I0[29] -pin RTL_AND__66 I0[29] -pin RTL_ARSHIFT I0[29] -pin RTL_ARSHIFT__0 I0[29] -pin RTL_EQ__87 I0[29] -pin RTL_LSHIFT__0 I0[29] -pin RTL_LSHIFT__1 I0[29] -pin RTL_LSHIFT__2 I0[29] -pin RTL_LT I0[29] -pin RTL_LT__0 I0[29] -pin RTL_OR__10 I0[29] -pin RTL_RSHIFT I0[29] -pin RTL_RSHIFT__0 I0[29] -pin RTL_XOR I0[29] -pin mem_la_addr_i I1[29] -port pcpi_rs1[29] -pin reg_op1_reg[31:0] Q[29] -pin reg_out_i__2 I3[29]
load net pcpi_rs1[2] -attr @rip(#000000) 2 -pin RTL_ADD I0[2] -pin RTL_ADD__0 I0[2] -pin RTL_ADD__8 I0[2] -pin RTL_ADD__9 I0[2] -pin RTL_AND__66 I0[2] -pin RTL_ARSHIFT I0[2] -pin RTL_ARSHIFT__0 I0[2] -pin RTL_EQ__87 I0[2] -pin RTL_LSHIFT__0 I0[2] -pin RTL_LSHIFT__1 I0[2] -pin RTL_LSHIFT__2 I0[2] -pin RTL_LT I0[2] -pin RTL_LT__0 I0[2] -pin RTL_OR__10 I0[2] -pin RTL_RSHIFT I0[2] -pin RTL_RSHIFT__0 I0[2] -pin RTL_XOR I0[2] -pin mem_la_addr_i I1[2] -port pcpi_rs1[2] -pin reg_op1_reg[31:0] Q[2] -pin reg_out_i__2 I3[2]
load net pcpi_rs1[30] -attr @rip(#000000) 30 -pin RTL_ADD I0[30] -pin RTL_ADD__0 I0[30] -pin RTL_ADD__8 I0[30] -pin RTL_ADD__9 I0[30] -pin RTL_AND__66 I0[30] -pin RTL_ARSHIFT I0[30] -pin RTL_ARSHIFT__0 I0[30] -pin RTL_EQ__87 I0[30] -pin RTL_LSHIFT__0 I0[30] -pin RTL_LSHIFT__1 I0[30] -pin RTL_LSHIFT__2 I0[30] -pin RTL_LT I0[30] -pin RTL_LT__0 I0[30] -pin RTL_OR__10 I0[30] -pin RTL_RSHIFT I0[30] -pin RTL_RSHIFT__0 I0[30] -pin RTL_XOR I0[30] -pin mem_la_addr_i I1[30] -port pcpi_rs1[30] -pin reg_op1_reg[31:0] Q[30] -pin reg_out_i__2 I3[30]
load net pcpi_rs1[31] -attr @rip(#000000) 31 -pin RTL_ADD I0[31] -pin RTL_ADD__0 I0[31] -pin RTL_ADD__8 I0[31] -pin RTL_ADD__9 I0[31] -pin RTL_AND__66 I0[31] -pin RTL_ARSHIFT I0[31] -pin RTL_ARSHIFT__0 I0[31] -pin RTL_EQ__87 I0[31] -pin RTL_LSHIFT__0 I0[31] -pin RTL_LSHIFT__1 I0[31] -pin RTL_LSHIFT__2 I0[31] -pin RTL_LT I0[31] -pin RTL_LT__0 I0[31] -pin RTL_OR__10 I0[31] -pin RTL_RSHIFT I0[31] -pin RTL_RSHIFT__0 I0[31] -pin RTL_XOR I0[31] -pin mem_la_addr_i I1[31] -port pcpi_rs1[31] -pin reg_op1_reg[31:0] Q[31] -pin reg_out_i__2 I3[31]
load net pcpi_rs1[3] -attr @rip(#000000) 3 -pin RTL_ADD I0[3] -pin RTL_ADD__0 I0[3] -pin RTL_ADD__8 I0[3] -pin RTL_ADD__9 I0[3] -pin RTL_AND__66 I0[3] -pin RTL_ARSHIFT I0[3] -pin RTL_ARSHIFT__0 I0[3] -pin RTL_EQ__87 I0[3] -pin RTL_LSHIFT__0 I0[3] -pin RTL_LSHIFT__1 I0[3] -pin RTL_LSHIFT__2 I0[3] -pin RTL_LT I0[3] -pin RTL_LT__0 I0[3] -pin RTL_OR__10 I0[3] -pin RTL_RSHIFT I0[3] -pin RTL_RSHIFT__0 I0[3] -pin RTL_XOR I0[3] -pin mem_la_addr_i I1[3] -port pcpi_rs1[3] -pin reg_op1_reg[31:0] Q[3] -pin reg_out_i__2 I3[3]
load net pcpi_rs1[4] -attr @rip(#000000) 4 -pin RTL_ADD I0[4] -pin RTL_ADD__0 I0[4] -pin RTL_ADD__8 I0[4] -pin RTL_ADD__9 I0[4] -pin RTL_AND__66 I0[4] -pin RTL_ARSHIFT I0[4] -pin RTL_ARSHIFT__0 I0[4] -pin RTL_EQ__87 I0[4] -pin RTL_LSHIFT__0 I0[4] -pin RTL_LSHIFT__1 I0[4] -pin RTL_LSHIFT__2 I0[4] -pin RTL_LT I0[4] -pin RTL_LT__0 I0[4] -pin RTL_OR__10 I0[4] -pin RTL_RSHIFT I0[4] -pin RTL_RSHIFT__0 I0[4] -pin RTL_XOR I0[4] -pin mem_la_addr_i I1[4] -port pcpi_rs1[4] -pin reg_op1_reg[31:0] Q[4] -pin reg_out_i__2 I3[4]
load net pcpi_rs1[5] -attr @rip(#000000) 5 -pin RTL_ADD I0[5] -pin RTL_ADD__0 I0[5] -pin RTL_ADD__8 I0[5] -pin RTL_ADD__9 I0[5] -pin RTL_AND__66 I0[5] -pin RTL_ARSHIFT I0[5] -pin RTL_ARSHIFT__0 I0[5] -pin RTL_EQ__87 I0[5] -pin RTL_LSHIFT__0 I0[5] -pin RTL_LSHIFT__1 I0[5] -pin RTL_LSHIFT__2 I0[5] -pin RTL_LT I0[5] -pin RTL_LT__0 I0[5] -pin RTL_OR__10 I0[5] -pin RTL_RSHIFT I0[5] -pin RTL_RSHIFT__0 I0[5] -pin RTL_XOR I0[5] -pin mem_la_addr_i I1[5] -port pcpi_rs1[5] -pin reg_op1_reg[31:0] Q[5] -pin reg_out_i__2 I3[5]
load net pcpi_rs1[6] -attr @rip(#000000) 6 -pin RTL_ADD I0[6] -pin RTL_ADD__0 I0[6] -pin RTL_ADD__8 I0[6] -pin RTL_ADD__9 I0[6] -pin RTL_AND__66 I0[6] -pin RTL_ARSHIFT I0[6] -pin RTL_ARSHIFT__0 I0[6] -pin RTL_EQ__87 I0[6] -pin RTL_LSHIFT__0 I0[6] -pin RTL_LSHIFT__1 I0[6] -pin RTL_LSHIFT__2 I0[6] -pin RTL_LT I0[6] -pin RTL_LT__0 I0[6] -pin RTL_OR__10 I0[6] -pin RTL_RSHIFT I0[6] -pin RTL_RSHIFT__0 I0[6] -pin RTL_XOR I0[6] -pin mem_la_addr_i I1[6] -port pcpi_rs1[6] -pin reg_op1_reg[31:0] Q[6] -pin reg_out_i__2 I3[6]
load net pcpi_rs1[7] -attr @rip(#000000) 7 -pin RTL_ADD I0[7] -pin RTL_ADD__0 I0[7] -pin RTL_ADD__8 I0[7] -pin RTL_ADD__9 I0[7] -pin RTL_AND__66 I0[7] -pin RTL_ARSHIFT I0[7] -pin RTL_ARSHIFT__0 I0[7] -pin RTL_EQ__87 I0[7] -pin RTL_LSHIFT__0 I0[7] -pin RTL_LSHIFT__1 I0[7] -pin RTL_LSHIFT__2 I0[7] -pin RTL_LT I0[7] -pin RTL_LT__0 I0[7] -pin RTL_OR__10 I0[7] -pin RTL_RSHIFT I0[7] -pin RTL_RSHIFT__0 I0[7] -pin RTL_XOR I0[7] -pin mem_la_addr_i I1[7] -port pcpi_rs1[7] -pin reg_op1_reg[31:0] Q[7] -pin reg_out_i__2 I3[7]
load net pcpi_rs1[8] -attr @rip(#000000) 8 -pin RTL_ADD I0[8] -pin RTL_ADD__0 I0[8] -pin RTL_ADD__8 I0[8] -pin RTL_ADD__9 I0[8] -pin RTL_AND__66 I0[8] -pin RTL_ARSHIFT I0[8] -pin RTL_ARSHIFT__0 I0[8] -pin RTL_EQ__87 I0[8] -pin RTL_LSHIFT__0 I0[8] -pin RTL_LSHIFT__1 I0[8] -pin RTL_LSHIFT__2 I0[8] -pin RTL_LT I0[8] -pin RTL_LT__0 I0[8] -pin RTL_OR__10 I0[8] -pin RTL_RSHIFT I0[8] -pin RTL_RSHIFT__0 I0[8] -pin RTL_XOR I0[8] -pin mem_la_addr_i I1[8] -port pcpi_rs1[8] -pin reg_op1_reg[31:0] Q[8] -pin reg_out_i__2 I3[8]
load net pcpi_rs1[9] -attr @rip(#000000) 9 -pin RTL_ADD I0[9] -pin RTL_ADD__0 I0[9] -pin RTL_ADD__8 I0[9] -pin RTL_ADD__9 I0[9] -pin RTL_AND__66 I0[9] -pin RTL_ARSHIFT I0[9] -pin RTL_ARSHIFT__0 I0[9] -pin RTL_EQ__87 I0[9] -pin RTL_LSHIFT__0 I0[9] -pin RTL_LSHIFT__1 I0[9] -pin RTL_LSHIFT__2 I0[9] -pin RTL_LT I0[9] -pin RTL_LT__0 I0[9] -pin RTL_OR__10 I0[9] -pin RTL_RSHIFT I0[9] -pin RTL_RSHIFT__0 I0[9] -pin RTL_XOR I0[9] -pin mem_la_addr_i I1[9] -port pcpi_rs1[9] -pin reg_op1_reg[31:0] Q[9] -pin reg_out_i__2 I3[9]
load net pcpi_rs2[0] -pin RTL_ADD__0 I1[0] -pin RTL_AND__66 I1[0] -pin RTL_EQ__87 I1[0] -pin RTL_LSHIFT__0 I1[0] -pin RTL_LT I1[0] -pin RTL_LT__0 I1[0] -pin RTL_MINUS I0[0] -pin RTL_OR__10 I1[0] -pin RTL_XOR I1[0] -pin mem_la_wdata_i I0[0] -pin mem_la_wdata_i I1[16] -pin mem_la_wdata_i I1[0] -pin mem_la_wdata_i I2[24] -pin mem_la_wdata_i I2[16] -pin mem_la_wdata_i I2[8] -pin mem_la_wdata_i I2[0] -port pcpi_rs2[0] -pin reg_op2_reg[31:0] Q[0]
load net pcpi_rs2[10] -pin RTL_ADD__0 I1[10] -pin RTL_AND__66 I1[10] -pin RTL_EQ__87 I1[10] -pin RTL_LT I1[10] -pin RTL_LT__0 I1[10] -pin RTL_MINUS I0[10] -pin RTL_OR__10 I1[10] -pin RTL_XOR I1[10] -pin mem_la_wdata_i I0[10] -pin mem_la_wdata_i I1[26] -pin mem_la_wdata_i I1[10] -port pcpi_rs2[10] -pin reg_op2_reg[31:0] Q[10]
load net pcpi_rs2[11] -pin RTL_ADD__0 I1[11] -pin RTL_AND__66 I1[11] -pin RTL_EQ__87 I1[11] -pin RTL_LT I1[11] -pin RTL_LT__0 I1[11] -pin RTL_MINUS I0[11] -pin RTL_OR__10 I1[11] -pin RTL_XOR I1[11] -pin mem_la_wdata_i I0[11] -pin mem_la_wdata_i I1[27] -pin mem_la_wdata_i I1[11] -port pcpi_rs2[11] -pin reg_op2_reg[31:0] Q[11]
load net pcpi_rs2[12] -pin RTL_ADD__0 I1[12] -pin RTL_AND__66 I1[12] -pin RTL_EQ__87 I1[12] -pin RTL_LT I1[12] -pin RTL_LT__0 I1[12] -pin RTL_MINUS I0[12] -pin RTL_OR__10 I1[12] -pin RTL_XOR I1[12] -pin mem_la_wdata_i I0[12] -pin mem_la_wdata_i I1[28] -pin mem_la_wdata_i I1[12] -port pcpi_rs2[12] -pin reg_op2_reg[31:0] Q[12]
load net pcpi_rs2[13] -pin RTL_ADD__0 I1[13] -pin RTL_AND__66 I1[13] -pin RTL_EQ__87 I1[13] -pin RTL_LT I1[13] -pin RTL_LT__0 I1[13] -pin RTL_MINUS I0[13] -pin RTL_OR__10 I1[13] -pin RTL_XOR I1[13] -pin mem_la_wdata_i I0[13] -pin mem_la_wdata_i I1[29] -pin mem_la_wdata_i I1[13] -port pcpi_rs2[13] -pin reg_op2_reg[31:0] Q[13]
load net pcpi_rs2[14] -pin RTL_ADD__0 I1[14] -pin RTL_AND__66 I1[14] -pin RTL_EQ__87 I1[14] -pin RTL_LT I1[14] -pin RTL_LT__0 I1[14] -pin RTL_MINUS I0[14] -pin RTL_OR__10 I1[14] -pin RTL_XOR I1[14] -pin mem_la_wdata_i I0[14] -pin mem_la_wdata_i I1[30] -pin mem_la_wdata_i I1[14] -port pcpi_rs2[14] -pin reg_op2_reg[31:0] Q[14]
load net pcpi_rs2[15] -pin RTL_ADD__0 I1[15] -pin RTL_AND__66 I1[15] -pin RTL_EQ__87 I1[15] -pin RTL_LT I1[15] -pin RTL_LT__0 I1[15] -pin RTL_MINUS I0[15] -pin RTL_OR__10 I1[15] -pin RTL_XOR I1[15] -pin mem_la_wdata_i I0[15] -pin mem_la_wdata_i I1[31] -pin mem_la_wdata_i I1[15] -port pcpi_rs2[15] -pin reg_op2_reg[31:0] Q[15]
load net pcpi_rs2[16] -attr @rip(#000000) 16 -pin RTL_ADD__0 I1[16] -pin RTL_AND__66 I1[16] -pin RTL_EQ__87 I1[16] -pin RTL_LT I1[16] -pin RTL_LT__0 I1[16] -pin RTL_MINUS I0[16] -pin RTL_OR__10 I1[16] -pin RTL_XOR I1[16] -pin mem_la_wdata_i I0[16] -port pcpi_rs2[16] -pin reg_op2_reg[31:0] Q[16]
load net pcpi_rs2[17] -attr @rip(#000000) 17 -pin RTL_ADD__0 I1[17] -pin RTL_AND__66 I1[17] -pin RTL_EQ__87 I1[17] -pin RTL_LT I1[17] -pin RTL_LT__0 I1[17] -pin RTL_MINUS I0[17] -pin RTL_OR__10 I1[17] -pin RTL_XOR I1[17] -pin mem_la_wdata_i I0[17] -port pcpi_rs2[17] -pin reg_op2_reg[31:0] Q[17]
load net pcpi_rs2[18] -attr @rip(#000000) 18 -pin RTL_ADD__0 I1[18] -pin RTL_AND__66 I1[18] -pin RTL_EQ__87 I1[18] -pin RTL_LT I1[18] -pin RTL_LT__0 I1[18] -pin RTL_MINUS I0[18] -pin RTL_OR__10 I1[18] -pin RTL_XOR I1[18] -pin mem_la_wdata_i I0[18] -port pcpi_rs2[18] -pin reg_op2_reg[31:0] Q[18]
load net pcpi_rs2[19] -attr @rip(#000000) 19 -pin RTL_ADD__0 I1[19] -pin RTL_AND__66 I1[19] -pin RTL_EQ__87 I1[19] -pin RTL_LT I1[19] -pin RTL_LT__0 I1[19] -pin RTL_MINUS I0[19] -pin RTL_OR__10 I1[19] -pin RTL_XOR I1[19] -pin mem_la_wdata_i I0[19] -port pcpi_rs2[19] -pin reg_op2_reg[31:0] Q[19]
load net pcpi_rs2[1] -pin RTL_ADD__0 I1[1] -pin RTL_AND__66 I1[1] -pin RTL_EQ__87 I1[1] -pin RTL_LSHIFT__0 I1[1] -pin RTL_LT I1[1] -pin RTL_LT__0 I1[1] -pin RTL_MINUS I0[1] -pin RTL_OR__10 I1[1] -pin RTL_XOR I1[1] -pin mem_la_wdata_i I0[1] -pin mem_la_wdata_i I1[17] -pin mem_la_wdata_i I1[1] -pin mem_la_wdata_i I2[25] -pin mem_la_wdata_i I2[17] -pin mem_la_wdata_i I2[9] -pin mem_la_wdata_i I2[1] -port pcpi_rs2[1] -pin reg_op2_reg[31:0] Q[1]
load net pcpi_rs2[20] -attr @rip(#000000) 20 -pin RTL_ADD__0 I1[20] -pin RTL_AND__66 I1[20] -pin RTL_EQ__87 I1[20] -pin RTL_LT I1[20] -pin RTL_LT__0 I1[20] -pin RTL_MINUS I0[20] -pin RTL_OR__10 I1[20] -pin RTL_XOR I1[20] -pin mem_la_wdata_i I0[20] -port pcpi_rs2[20] -pin reg_op2_reg[31:0] Q[20]
load net pcpi_rs2[21] -attr @rip(#000000) 21 -pin RTL_ADD__0 I1[21] -pin RTL_AND__66 I1[21] -pin RTL_EQ__87 I1[21] -pin RTL_LT I1[21] -pin RTL_LT__0 I1[21] -pin RTL_MINUS I0[21] -pin RTL_OR__10 I1[21] -pin RTL_XOR I1[21] -pin mem_la_wdata_i I0[21] -port pcpi_rs2[21] -pin reg_op2_reg[31:0] Q[21]
load net pcpi_rs2[22] -attr @rip(#000000) 22 -pin RTL_ADD__0 I1[22] -pin RTL_AND__66 I1[22] -pin RTL_EQ__87 I1[22] -pin RTL_LT I1[22] -pin RTL_LT__0 I1[22] -pin RTL_MINUS I0[22] -pin RTL_OR__10 I1[22] -pin RTL_XOR I1[22] -pin mem_la_wdata_i I0[22] -port pcpi_rs2[22] -pin reg_op2_reg[31:0] Q[22]
load net pcpi_rs2[23] -attr @rip(#000000) 23 -pin RTL_ADD__0 I1[23] -pin RTL_AND__66 I1[23] -pin RTL_EQ__87 I1[23] -pin RTL_LT I1[23] -pin RTL_LT__0 I1[23] -pin RTL_MINUS I0[23] -pin RTL_OR__10 I1[23] -pin RTL_XOR I1[23] -pin mem_la_wdata_i I0[23] -port pcpi_rs2[23] -pin reg_op2_reg[31:0] Q[23]
load net pcpi_rs2[24] -attr @rip(#000000) 24 -pin RTL_ADD__0 I1[24] -pin RTL_AND__66 I1[24] -pin RTL_EQ__87 I1[24] -pin RTL_LT I1[24] -pin RTL_LT__0 I1[24] -pin RTL_MINUS I0[24] -pin RTL_OR__10 I1[24] -pin RTL_XOR I1[24] -pin mem_la_wdata_i I0[24] -port pcpi_rs2[24] -pin reg_op2_reg[31:0] Q[24]
load net pcpi_rs2[25] -attr @rip(#000000) 25 -pin RTL_ADD__0 I1[25] -pin RTL_AND__66 I1[25] -pin RTL_EQ__87 I1[25] -pin RTL_LT I1[25] -pin RTL_LT__0 I1[25] -pin RTL_MINUS I0[25] -pin RTL_OR__10 I1[25] -pin RTL_XOR I1[25] -pin mem_la_wdata_i I0[25] -port pcpi_rs2[25] -pin reg_op2_reg[31:0] Q[25]
load net pcpi_rs2[26] -attr @rip(#000000) 26 -pin RTL_ADD__0 I1[26] -pin RTL_AND__66 I1[26] -pin RTL_EQ__87 I1[26] -pin RTL_LT I1[26] -pin RTL_LT__0 I1[26] -pin RTL_MINUS I0[26] -pin RTL_OR__10 I1[26] -pin RTL_XOR I1[26] -pin mem_la_wdata_i I0[26] -port pcpi_rs2[26] -pin reg_op2_reg[31:0] Q[26]
load net pcpi_rs2[27] -attr @rip(#000000) 27 -pin RTL_ADD__0 I1[27] -pin RTL_AND__66 I1[27] -pin RTL_EQ__87 I1[27] -pin RTL_LT I1[27] -pin RTL_LT__0 I1[27] -pin RTL_MINUS I0[27] -pin RTL_OR__10 I1[27] -pin RTL_XOR I1[27] -pin mem_la_wdata_i I0[27] -port pcpi_rs2[27] -pin reg_op2_reg[31:0] Q[27]
load net pcpi_rs2[28] -attr @rip(#000000) 28 -pin RTL_ADD__0 I1[28] -pin RTL_AND__66 I1[28] -pin RTL_EQ__87 I1[28] -pin RTL_LT I1[28] -pin RTL_LT__0 I1[28] -pin RTL_MINUS I0[28] -pin RTL_OR__10 I1[28] -pin RTL_XOR I1[28] -pin mem_la_wdata_i I0[28] -port pcpi_rs2[28] -pin reg_op2_reg[31:0] Q[28]
load net pcpi_rs2[29] -attr @rip(#000000) 29 -pin RTL_ADD__0 I1[29] -pin RTL_AND__66 I1[29] -pin RTL_EQ__87 I1[29] -pin RTL_LT I1[29] -pin RTL_LT__0 I1[29] -pin RTL_MINUS I0[29] -pin RTL_OR__10 I1[29] -pin RTL_XOR I1[29] -pin mem_la_wdata_i I0[29] -port pcpi_rs2[29] -pin reg_op2_reg[31:0] Q[29]
load net pcpi_rs2[2] -pin RTL_ADD__0 I1[2] -pin RTL_AND__66 I1[2] -pin RTL_EQ__87 I1[2] -pin RTL_LSHIFT__0 I1[2] -pin RTL_LT I1[2] -pin RTL_LT__0 I1[2] -pin RTL_MINUS I0[2] -pin RTL_OR__10 I1[2] -pin RTL_XOR I1[2] -pin mem_la_wdata_i I0[2] -pin mem_la_wdata_i I1[18] -pin mem_la_wdata_i I1[2] -pin mem_la_wdata_i I2[26] -pin mem_la_wdata_i I2[18] -pin mem_la_wdata_i I2[10] -pin mem_la_wdata_i I2[2] -port pcpi_rs2[2] -pin reg_op2_reg[31:0] Q[2]
load net pcpi_rs2[30] -attr @rip(#000000) 30 -pin RTL_ADD__0 I1[30] -pin RTL_AND__66 I1[30] -pin RTL_EQ__87 I1[30] -pin RTL_LT I1[30] -pin RTL_LT__0 I1[30] -pin RTL_MINUS I0[30] -pin RTL_OR__10 I1[30] -pin RTL_XOR I1[30] -pin mem_la_wdata_i I0[30] -port pcpi_rs2[30] -pin reg_op2_reg[31:0] Q[30]
load net pcpi_rs2[31] -attr @rip(#000000) 31 -pin RTL_ADD__0 I1[31] -pin RTL_AND__66 I1[31] -pin RTL_EQ__87 I1[31] -pin RTL_LT I1[31] -pin RTL_LT__0 I1[31] -pin RTL_MINUS I0[31] -pin RTL_OR__10 I1[31] -pin RTL_XOR I1[31] -pin mem_la_wdata_i I0[31] -port pcpi_rs2[31] -pin reg_op2_reg[31:0] Q[31]
load net pcpi_rs2[3] -pin RTL_ADD__0 I1[3] -pin RTL_AND__66 I1[3] -pin RTL_EQ__87 I1[3] -pin RTL_LSHIFT__0 I1[3] -pin RTL_LT I1[3] -pin RTL_LT__0 I1[3] -pin RTL_MINUS I0[3] -pin RTL_OR__10 I1[3] -pin RTL_XOR I1[3] -pin mem_la_wdata_i I0[3] -pin mem_la_wdata_i I1[19] -pin mem_la_wdata_i I1[3] -pin mem_la_wdata_i I2[27] -pin mem_la_wdata_i I2[19] -pin mem_la_wdata_i I2[11] -pin mem_la_wdata_i I2[3] -port pcpi_rs2[3] -pin reg_op2_reg[31:0] Q[3]
load net pcpi_rs2[4] -pin RTL_ADD__0 I1[4] -pin RTL_AND__66 I1[4] -pin RTL_EQ__87 I1[4] -pin RTL_LSHIFT__0 I1[4] -pin RTL_LT I1[4] -pin RTL_LT__0 I1[4] -pin RTL_MINUS I0[4] -pin RTL_OR__10 I1[4] -pin RTL_XOR I1[4] -pin mem_la_wdata_i I0[4] -pin mem_la_wdata_i I1[20] -pin mem_la_wdata_i I1[4] -pin mem_la_wdata_i I2[28] -pin mem_la_wdata_i I2[20] -pin mem_la_wdata_i I2[12] -pin mem_la_wdata_i I2[4] -port pcpi_rs2[4] -pin reg_op2_reg[31:0] Q[4]
load net pcpi_rs2[5] -pin RTL_ADD__0 I1[5] -pin RTL_AND__66 I1[5] -pin RTL_EQ__87 I1[5] -pin RTL_LT I1[5] -pin RTL_LT__0 I1[5] -pin RTL_MINUS I0[5] -pin RTL_OR__10 I1[5] -pin RTL_XOR I1[5] -pin mem_la_wdata_i I0[5] -pin mem_la_wdata_i I1[21] -pin mem_la_wdata_i I1[5] -pin mem_la_wdata_i I2[29] -pin mem_la_wdata_i I2[21] -pin mem_la_wdata_i I2[13] -pin mem_la_wdata_i I2[5] -port pcpi_rs2[5] -pin reg_op2_reg[31:0] Q[5]
load net pcpi_rs2[6] -pin RTL_ADD__0 I1[6] -pin RTL_AND__66 I1[6] -pin RTL_EQ__87 I1[6] -pin RTL_LT I1[6] -pin RTL_LT__0 I1[6] -pin RTL_MINUS I0[6] -pin RTL_OR__10 I1[6] -pin RTL_XOR I1[6] -pin mem_la_wdata_i I0[6] -pin mem_la_wdata_i I1[22] -pin mem_la_wdata_i I1[6] -pin mem_la_wdata_i I2[30] -pin mem_la_wdata_i I2[22] -pin mem_la_wdata_i I2[14] -pin mem_la_wdata_i I2[6] -port pcpi_rs2[6] -pin reg_op2_reg[31:0] Q[6]
load net pcpi_rs2[7] -pin RTL_ADD__0 I1[7] -pin RTL_AND__66 I1[7] -pin RTL_EQ__87 I1[7] -pin RTL_LT I1[7] -pin RTL_LT__0 I1[7] -pin RTL_MINUS I0[7] -pin RTL_OR__10 I1[7] -pin RTL_XOR I1[7] -pin mem_la_wdata_i I0[7] -pin mem_la_wdata_i I1[23] -pin mem_la_wdata_i I1[7] -pin mem_la_wdata_i I2[31] -pin mem_la_wdata_i I2[23] -pin mem_la_wdata_i I2[15] -pin mem_la_wdata_i I2[7] -port pcpi_rs2[7] -pin reg_op2_reg[31:0] Q[7]
load net pcpi_rs2[8] -pin RTL_ADD__0 I1[8] -pin RTL_AND__66 I1[8] -pin RTL_EQ__87 I1[8] -pin RTL_LT I1[8] -pin RTL_LT__0 I1[8] -pin RTL_MINUS I0[8] -pin RTL_OR__10 I1[8] -pin RTL_XOR I1[8] -pin mem_la_wdata_i I0[8] -pin mem_la_wdata_i I1[24] -pin mem_la_wdata_i I1[8] -port pcpi_rs2[8] -pin reg_op2_reg[31:0] Q[8]
load net pcpi_rs2[9] -pin RTL_ADD__0 I1[9] -pin RTL_AND__66 I1[9] -pin RTL_EQ__87 I1[9] -pin RTL_LT I1[9] -pin RTL_LT__0 I1[9] -pin RTL_MINUS I0[9] -pin RTL_OR__10 I1[9] -pin RTL_XOR I1[9] -pin mem_la_wdata_i I0[9] -pin mem_la_wdata_i I1[25] -pin mem_la_wdata_i I1[9] -port pcpi_rs2[9] -pin reg_op2_reg[31:0] Q[9]
load net pcpi_timeout -pin RTL_OR__25 I0 -pin pcpi_timeout_reg Q
netloc pcpi_timeout 1 27 1 14530 5410n
load net pcpi_timeout__0 -pin pcpi_timeout_i O -pin pcpi_timeout_reg D
netloc pcpi_timeout__0 1 26 1 N 5490
load net pcpi_valid -port pcpi_valid -pin pcpi_valid_reg Q
netloc pcpi_valid 1 70 1 NJ 5300
load net pcpi_valid_i__0_n_0 -pin pcpi_valid_i__0 O -pin pcpi_valid_reg D
netloc pcpi_valid_i__0_n_0 1 69 1 31180 4930n
load net pcpi_valid_i__1_n_0 -pin pcpi_valid_i__1 O -pin pcpi_valid_i__2 I3
netloc pcpi_valid_i__1_n_0 1 68 1 30270 5290n
load net pcpi_valid_i__2_n_0 -pin pcpi_valid_i__2 O -pin pcpi_valid_reg CE
netloc pcpi_valid_i__2_n_0 1 69 1 N 5300
load net pcpi_valid_i_n_0 -pin pcpi_valid_i O -pin pcpi_valid_i__0 I1
netloc pcpi_valid_i_n_0 1 68 1 30550J 4390n
load net reg_next_pc[0] -attr @rip(#000000) 0 -pin RTL_MUX__6 I1[0] -pin RTL_OR__32 I0[0] -pin current_pc_i I1[0] -pin current_pc_i I3[0] -pin next_pc_i I1[0] -pin reg_next_pc_reg[31:0] Q[0]
load net reg_next_pc[10] -attr @rip(#000000) 10 -pin RTL_MUX__6 I1[10] -pin RTL_OR__32 I0[10] -pin current_pc_i I1[10] -pin current_pc_i I3[10] -pin next_pc_i I1[10] -pin reg_next_pc_reg[31:0] Q[10]
load net reg_next_pc[11] -attr @rip(#000000) 11 -pin RTL_MUX__6 I1[11] -pin RTL_OR__32 I0[11] -pin current_pc_i I1[11] -pin current_pc_i I3[11] -pin next_pc_i I1[11] -pin reg_next_pc_reg[31:0] Q[11]
load net reg_next_pc[12] -attr @rip(#000000) 12 -pin RTL_MUX__6 I1[12] -pin RTL_OR__32 I0[12] -pin current_pc_i I1[12] -pin current_pc_i I3[12] -pin next_pc_i I1[12] -pin reg_next_pc_reg[31:0] Q[12]
load net reg_next_pc[13] -attr @rip(#000000) 13 -pin RTL_MUX__6 I1[13] -pin RTL_OR__32 I0[13] -pin current_pc_i I1[13] -pin current_pc_i I3[13] -pin next_pc_i I1[13] -pin reg_next_pc_reg[31:0] Q[13]
load net reg_next_pc[14] -attr @rip(#000000) 14 -pin RTL_MUX__6 I1[14] -pin RTL_OR__32 I0[14] -pin current_pc_i I1[14] -pin current_pc_i I3[14] -pin next_pc_i I1[14] -pin reg_next_pc_reg[31:0] Q[14]
load net reg_next_pc[15] -attr @rip(#000000) 15 -pin RTL_MUX__6 I1[15] -pin RTL_OR__32 I0[15] -pin current_pc_i I1[15] -pin current_pc_i I3[15] -pin next_pc_i I1[15] -pin reg_next_pc_reg[31:0] Q[15]
load net reg_next_pc[16] -attr @rip(#000000) 16 -pin RTL_MUX__6 I1[16] -pin RTL_OR__32 I0[16] -pin current_pc_i I1[16] -pin current_pc_i I3[16] -pin next_pc_i I1[16] -pin reg_next_pc_reg[31:0] Q[16]
load net reg_next_pc[17] -attr @rip(#000000) 17 -pin RTL_MUX__6 I1[17] -pin RTL_OR__32 I0[17] -pin current_pc_i I1[17] -pin current_pc_i I3[17] -pin next_pc_i I1[17] -pin reg_next_pc_reg[31:0] Q[17]
load net reg_next_pc[18] -attr @rip(#000000) 18 -pin RTL_MUX__6 I1[18] -pin RTL_OR__32 I0[18] -pin current_pc_i I1[18] -pin current_pc_i I3[18] -pin next_pc_i I1[18] -pin reg_next_pc_reg[31:0] Q[18]
load net reg_next_pc[19] -attr @rip(#000000) 19 -pin RTL_MUX__6 I1[19] -pin RTL_OR__32 I0[19] -pin current_pc_i I1[19] -pin current_pc_i I3[19] -pin next_pc_i I1[19] -pin reg_next_pc_reg[31:0] Q[19]
load net reg_next_pc[1] -attr @rip(#000000) 1 -pin RTL_MUX__6 I1[1] -pin RTL_OR__32 I0[1] -pin current_pc_i I1[1] -pin current_pc_i I3[1] -pin next_pc_i I1[1] -pin reg_next_pc_reg[31:0] Q[1]
load net reg_next_pc[20] -attr @rip(#000000) 20 -pin RTL_MUX__6 I1[20] -pin RTL_OR__32 I0[20] -pin current_pc_i I1[20] -pin current_pc_i I3[20] -pin next_pc_i I1[20] -pin reg_next_pc_reg[31:0] Q[20]
load net reg_next_pc[21] -attr @rip(#000000) 21 -pin RTL_MUX__6 I1[21] -pin RTL_OR__32 I0[21] -pin current_pc_i I1[21] -pin current_pc_i I3[21] -pin next_pc_i I1[21] -pin reg_next_pc_reg[31:0] Q[21]
load net reg_next_pc[22] -attr @rip(#000000) 22 -pin RTL_MUX__6 I1[22] -pin RTL_OR__32 I0[22] -pin current_pc_i I1[22] -pin current_pc_i I3[22] -pin next_pc_i I1[22] -pin reg_next_pc_reg[31:0] Q[22]
load net reg_next_pc[23] -attr @rip(#000000) 23 -pin RTL_MUX__6 I1[23] -pin RTL_OR__32 I0[23] -pin current_pc_i I1[23] -pin current_pc_i I3[23] -pin next_pc_i I1[23] -pin reg_next_pc_reg[31:0] Q[23]
load net reg_next_pc[24] -attr @rip(#000000) 24 -pin RTL_MUX__6 I1[24] -pin RTL_OR__32 I0[24] -pin current_pc_i I1[24] -pin current_pc_i I3[24] -pin next_pc_i I1[24] -pin reg_next_pc_reg[31:0] Q[24]
load net reg_next_pc[25] -attr @rip(#000000) 25 -pin RTL_MUX__6 I1[25] -pin RTL_OR__32 I0[25] -pin current_pc_i I1[25] -pin current_pc_i I3[25] -pin next_pc_i I1[25] -pin reg_next_pc_reg[31:0] Q[25]
load net reg_next_pc[26] -attr @rip(#000000) 26 -pin RTL_MUX__6 I1[26] -pin RTL_OR__32 I0[26] -pin current_pc_i I1[26] -pin current_pc_i I3[26] -pin next_pc_i I1[26] -pin reg_next_pc_reg[31:0] Q[26]
load net reg_next_pc[27] -attr @rip(#000000) 27 -pin RTL_MUX__6 I1[27] -pin RTL_OR__32 I0[27] -pin current_pc_i I1[27] -pin current_pc_i I3[27] -pin next_pc_i I1[27] -pin reg_next_pc_reg[31:0] Q[27]
load net reg_next_pc[28] -attr @rip(#000000) 28 -pin RTL_MUX__6 I1[28] -pin RTL_OR__32 I0[28] -pin current_pc_i I1[28] -pin current_pc_i I3[28] -pin next_pc_i I1[28] -pin reg_next_pc_reg[31:0] Q[28]
load net reg_next_pc[29] -attr @rip(#000000) 29 -pin RTL_MUX__6 I1[29] -pin RTL_OR__32 I0[29] -pin current_pc_i I1[29] -pin current_pc_i I3[29] -pin next_pc_i I1[29] -pin reg_next_pc_reg[31:0] Q[29]
load net reg_next_pc[2] -attr @rip(#000000) 2 -pin RTL_MUX__6 I1[2] -pin RTL_OR__32 I0[2] -pin current_pc_i I1[2] -pin current_pc_i I3[2] -pin next_pc_i I1[2] -pin reg_next_pc_reg[31:0] Q[2]
load net reg_next_pc[30] -attr @rip(#000000) 30 -pin RTL_MUX__6 I1[30] -pin RTL_OR__32 I0[30] -pin current_pc_i I1[30] -pin current_pc_i I3[30] -pin next_pc_i I1[30] -pin reg_next_pc_reg[31:0] Q[30]
load net reg_next_pc[31] -attr @rip(#000000) 31 -pin RTL_MUX__6 I1[31] -pin RTL_OR__32 I0[31] -pin current_pc_i I1[31] -pin current_pc_i I3[31] -pin next_pc_i I1[31] -pin reg_next_pc_reg[31:0] Q[31]
load net reg_next_pc[3] -attr @rip(#000000) 3 -pin RTL_MUX__6 I1[3] -pin RTL_OR__32 I0[3] -pin current_pc_i I1[3] -pin current_pc_i I3[3] -pin next_pc_i I1[3] -pin reg_next_pc_reg[31:0] Q[3]
load net reg_next_pc[4] -attr @rip(#000000) 4 -pin RTL_MUX__6 I1[4] -pin RTL_OR__32 I0[4] -pin current_pc_i I1[4] -pin current_pc_i I3[4] -pin next_pc_i I1[4] -pin reg_next_pc_reg[31:0] Q[4]
load net reg_next_pc[5] -attr @rip(#000000) 5 -pin RTL_MUX__6 I1[5] -pin RTL_OR__32 I0[5] -pin current_pc_i I1[5] -pin current_pc_i I3[5] -pin next_pc_i I1[5] -pin reg_next_pc_reg[31:0] Q[5]
load net reg_next_pc[6] -attr @rip(#000000) 6 -pin RTL_MUX__6 I1[6] -pin RTL_OR__32 I0[6] -pin current_pc_i I1[6] -pin current_pc_i I3[6] -pin next_pc_i I1[6] -pin reg_next_pc_reg[31:0] Q[6]
load net reg_next_pc[7] -attr @rip(#000000) 7 -pin RTL_MUX__6 I1[7] -pin RTL_OR__32 I0[7] -pin current_pc_i I1[7] -pin current_pc_i I3[7] -pin next_pc_i I1[7] -pin reg_next_pc_reg[31:0] Q[7]
load net reg_next_pc[8] -attr @rip(#000000) 8 -pin RTL_MUX__6 I1[8] -pin RTL_OR__32 I0[8] -pin current_pc_i I1[8] -pin current_pc_i I3[8] -pin next_pc_i I1[8] -pin reg_next_pc_reg[31:0] Q[8]
load net reg_next_pc[9] -attr @rip(#000000) 9 -pin RTL_MUX__6 I1[9] -pin RTL_OR__32 I0[9] -pin current_pc_i I1[9] -pin current_pc_i I3[9] -pin next_pc_i I1[9] -pin reg_next_pc_reg[31:0] Q[9]
load net reg_next_pc__0[0] -attr @rip(#000000) O[0] -pin reg_next_pc_i__0 O[0] -pin reg_next_pc_reg[31:0] D[0]
load net reg_next_pc__0[10] -attr @rip(#000000) O[10] -pin reg_next_pc_i__0 O[10] -pin reg_next_pc_reg[31:0] D[10]
load net reg_next_pc__0[11] -attr @rip(#000000) O[11] -pin reg_next_pc_i__0 O[11] -pin reg_next_pc_reg[31:0] D[11]
load net reg_next_pc__0[12] -attr @rip(#000000) O[12] -pin reg_next_pc_i__0 O[12] -pin reg_next_pc_reg[31:0] D[12]
load net reg_next_pc__0[13] -attr @rip(#000000) O[13] -pin reg_next_pc_i__0 O[13] -pin reg_next_pc_reg[31:0] D[13]
load net reg_next_pc__0[14] -attr @rip(#000000) O[14] -pin reg_next_pc_i__0 O[14] -pin reg_next_pc_reg[31:0] D[14]
load net reg_next_pc__0[15] -attr @rip(#000000) O[15] -pin reg_next_pc_i__0 O[15] -pin reg_next_pc_reg[31:0] D[15]
load net reg_next_pc__0[16] -attr @rip(#000000) O[16] -pin reg_next_pc_i__0 O[16] -pin reg_next_pc_reg[31:0] D[16]
load net reg_next_pc__0[17] -attr @rip(#000000) O[17] -pin reg_next_pc_i__0 O[17] -pin reg_next_pc_reg[31:0] D[17]
load net reg_next_pc__0[18] -attr @rip(#000000) O[18] -pin reg_next_pc_i__0 O[18] -pin reg_next_pc_reg[31:0] D[18]
load net reg_next_pc__0[19] -attr @rip(#000000) O[19] -pin reg_next_pc_i__0 O[19] -pin reg_next_pc_reg[31:0] D[19]
load net reg_next_pc__0[1] -attr @rip(#000000) O[1] -pin reg_next_pc_i__0 O[1] -pin reg_next_pc_reg[31:0] D[1]
load net reg_next_pc__0[20] -attr @rip(#000000) O[20] -pin reg_next_pc_i__0 O[20] -pin reg_next_pc_reg[31:0] D[20]
load net reg_next_pc__0[21] -attr @rip(#000000) O[21] -pin reg_next_pc_i__0 O[21] -pin reg_next_pc_reg[31:0] D[21]
load net reg_next_pc__0[22] -attr @rip(#000000) O[22] -pin reg_next_pc_i__0 O[22] -pin reg_next_pc_reg[31:0] D[22]
load net reg_next_pc__0[23] -attr @rip(#000000) O[23] -pin reg_next_pc_i__0 O[23] -pin reg_next_pc_reg[31:0] D[23]
load net reg_next_pc__0[24] -attr @rip(#000000) O[24] -pin reg_next_pc_i__0 O[24] -pin reg_next_pc_reg[31:0] D[24]
load net reg_next_pc__0[25] -attr @rip(#000000) O[25] -pin reg_next_pc_i__0 O[25] -pin reg_next_pc_reg[31:0] D[25]
load net reg_next_pc__0[26] -attr @rip(#000000) O[26] -pin reg_next_pc_i__0 O[26] -pin reg_next_pc_reg[31:0] D[26]
load net reg_next_pc__0[27] -attr @rip(#000000) O[27] -pin reg_next_pc_i__0 O[27] -pin reg_next_pc_reg[31:0] D[27]
load net reg_next_pc__0[28] -attr @rip(#000000) O[28] -pin reg_next_pc_i__0 O[28] -pin reg_next_pc_reg[31:0] D[28]
load net reg_next_pc__0[29] -attr @rip(#000000) O[29] -pin reg_next_pc_i__0 O[29] -pin reg_next_pc_reg[31:0] D[29]
load net reg_next_pc__0[2] -attr @rip(#000000) O[2] -pin reg_next_pc_i__0 O[2] -pin reg_next_pc_reg[31:0] D[2]
load net reg_next_pc__0[30] -attr @rip(#000000) O[30] -pin reg_next_pc_i__0 O[30] -pin reg_next_pc_reg[31:0] D[30]
load net reg_next_pc__0[31] -attr @rip(#000000) O[31] -pin reg_next_pc_i__0 O[31] -pin reg_next_pc_reg[31:0] D[31]
load net reg_next_pc__0[3] -attr @rip(#000000) O[3] -pin reg_next_pc_i__0 O[3] -pin reg_next_pc_reg[31:0] D[3]
load net reg_next_pc__0[4] -attr @rip(#000000) O[4] -pin reg_next_pc_i__0 O[4] -pin reg_next_pc_reg[31:0] D[4]
load net reg_next_pc__0[5] -attr @rip(#000000) O[5] -pin reg_next_pc_i__0 O[5] -pin reg_next_pc_reg[31:0] D[5]
load net reg_next_pc__0[6] -attr @rip(#000000) O[6] -pin reg_next_pc_i__0 O[6] -pin reg_next_pc_reg[31:0] D[6]
load net reg_next_pc__0[7] -attr @rip(#000000) O[7] -pin reg_next_pc_i__0 O[7] -pin reg_next_pc_reg[31:0] D[7]
load net reg_next_pc__0[8] -attr @rip(#000000) O[8] -pin reg_next_pc_i__0 O[8] -pin reg_next_pc_reg[31:0] D[8]
load net reg_next_pc__0[9] -attr @rip(#000000) O[9] -pin reg_next_pc_i__0 O[9] -pin reg_next_pc_reg[31:0] D[9]
load net reg_next_pc_i__1_n_0 -pin reg_next_pc_i__1 O -pin reg_next_pc_reg[31:0] CE
netloc reg_next_pc_i__1_n_0 1 18 1 10490 6230n
load net reg_next_pc_i_n_0 -attr @rip(#000000) O[31] -pin reg_next_pc_i O[31] -pin reg_next_pc_i__0 I0[31]
load net reg_next_pc_i_n_1 -attr @rip(#000000) O[30] -pin reg_next_pc_i O[30] -pin reg_next_pc_i__0 I0[30]
load net reg_next_pc_i_n_10 -attr @rip(#000000) O[21] -pin reg_next_pc_i O[21] -pin reg_next_pc_i__0 I0[21]
load net reg_next_pc_i_n_11 -attr @rip(#000000) O[20] -pin reg_next_pc_i O[20] -pin reg_next_pc_i__0 I0[20]
load net reg_next_pc_i_n_12 -attr @rip(#000000) O[19] -pin reg_next_pc_i O[19] -pin reg_next_pc_i__0 I0[19]
load net reg_next_pc_i_n_13 -attr @rip(#000000) O[18] -pin reg_next_pc_i O[18] -pin reg_next_pc_i__0 I0[18]
load net reg_next_pc_i_n_14 -attr @rip(#000000) O[17] -pin reg_next_pc_i O[17] -pin reg_next_pc_i__0 I0[17]
load net reg_next_pc_i_n_15 -attr @rip(#000000) O[16] -pin reg_next_pc_i O[16] -pin reg_next_pc_i__0 I0[16]
load net reg_next_pc_i_n_16 -attr @rip(#000000) O[15] -pin reg_next_pc_i O[15] -pin reg_next_pc_i__0 I0[15]
load net reg_next_pc_i_n_17 -attr @rip(#000000) O[14] -pin reg_next_pc_i O[14] -pin reg_next_pc_i__0 I0[14]
load net reg_next_pc_i_n_18 -attr @rip(#000000) O[13] -pin reg_next_pc_i O[13] -pin reg_next_pc_i__0 I0[13]
load net reg_next_pc_i_n_19 -attr @rip(#000000) O[12] -pin reg_next_pc_i O[12] -pin reg_next_pc_i__0 I0[12]
load net reg_next_pc_i_n_2 -attr @rip(#000000) O[29] -pin reg_next_pc_i O[29] -pin reg_next_pc_i__0 I0[29]
load net reg_next_pc_i_n_20 -attr @rip(#000000) O[11] -pin reg_next_pc_i O[11] -pin reg_next_pc_i__0 I0[11]
load net reg_next_pc_i_n_21 -attr @rip(#000000) O[10] -pin reg_next_pc_i O[10] -pin reg_next_pc_i__0 I0[10]
load net reg_next_pc_i_n_22 -attr @rip(#000000) O[9] -pin reg_next_pc_i O[9] -pin reg_next_pc_i__0 I0[9]
load net reg_next_pc_i_n_23 -attr @rip(#000000) O[8] -pin reg_next_pc_i O[8] -pin reg_next_pc_i__0 I0[8]
load net reg_next_pc_i_n_24 -attr @rip(#000000) O[7] -pin reg_next_pc_i O[7] -pin reg_next_pc_i__0 I0[7]
load net reg_next_pc_i_n_25 -attr @rip(#000000) O[6] -pin reg_next_pc_i O[6] -pin reg_next_pc_i__0 I0[6]
load net reg_next_pc_i_n_26 -attr @rip(#000000) O[5] -pin reg_next_pc_i O[5] -pin reg_next_pc_i__0 I0[5]
load net reg_next_pc_i_n_27 -attr @rip(#000000) O[4] -pin reg_next_pc_i O[4] -pin reg_next_pc_i__0 I0[4]
load net reg_next_pc_i_n_28 -attr @rip(#000000) O[3] -pin reg_next_pc_i O[3] -pin reg_next_pc_i__0 I0[3]
load net reg_next_pc_i_n_29 -attr @rip(#000000) O[2] -pin reg_next_pc_i O[2] -pin reg_next_pc_i__0 I0[2]
load net reg_next_pc_i_n_3 -attr @rip(#000000) O[28] -pin reg_next_pc_i O[28] -pin reg_next_pc_i__0 I0[28]
load net reg_next_pc_i_n_30 -attr @rip(#000000) O[1] -pin reg_next_pc_i O[1] -pin reg_next_pc_i__0 I0[1]
load net reg_next_pc_i_n_31 -attr @rip(#000000) O[0] -pin reg_next_pc_i O[0] -pin reg_next_pc_i__0 I0[0]
load net reg_next_pc_i_n_4 -attr @rip(#000000) O[27] -pin reg_next_pc_i O[27] -pin reg_next_pc_i__0 I0[27]
load net reg_next_pc_i_n_5 -attr @rip(#000000) O[26] -pin reg_next_pc_i O[26] -pin reg_next_pc_i__0 I0[26]
load net reg_next_pc_i_n_6 -attr @rip(#000000) O[25] -pin reg_next_pc_i O[25] -pin reg_next_pc_i__0 I0[25]
load net reg_next_pc_i_n_7 -attr @rip(#000000) O[24] -pin reg_next_pc_i O[24] -pin reg_next_pc_i__0 I0[24]
load net reg_next_pc_i_n_8 -attr @rip(#000000) O[23] -pin reg_next_pc_i O[23] -pin reg_next_pc_i__0 I0[23]
load net reg_next_pc_i_n_9 -attr @rip(#000000) O[22] -pin reg_next_pc_i O[22] -pin reg_next_pc_i__0 I0[22]
load net reg_op11_out[0] -attr @rip(#000000) O[0] -pin reg_op1_i__2 O[0] -pin reg_op1_i__3 I1[0]
load net reg_op11_out[10] -attr @rip(#000000) O[10] -pin reg_op1_i__2 O[10] -pin reg_op1_i__3 I1[10]
load net reg_op11_out[11] -attr @rip(#000000) O[11] -pin reg_op1_i__2 O[11] -pin reg_op1_i__3 I1[11]
load net reg_op11_out[12] -attr @rip(#000000) O[12] -pin reg_op1_i__2 O[12] -pin reg_op1_i__3 I1[12]
load net reg_op11_out[13] -attr @rip(#000000) O[13] -pin reg_op1_i__2 O[13] -pin reg_op1_i__3 I1[13]
load net reg_op11_out[14] -attr @rip(#000000) O[14] -pin reg_op1_i__2 O[14] -pin reg_op1_i__3 I1[14]
load net reg_op11_out[15] -attr @rip(#000000) O[15] -pin reg_op1_i__2 O[15] -pin reg_op1_i__3 I1[15]
load net reg_op11_out[16] -attr @rip(#000000) O[16] -pin reg_op1_i__2 O[16] -pin reg_op1_i__3 I1[16]
load net reg_op11_out[17] -attr @rip(#000000) O[17] -pin reg_op1_i__2 O[17] -pin reg_op1_i__3 I1[17]
load net reg_op11_out[18] -attr @rip(#000000) O[18] -pin reg_op1_i__2 O[18] -pin reg_op1_i__3 I1[18]
load net reg_op11_out[19] -attr @rip(#000000) O[19] -pin reg_op1_i__2 O[19] -pin reg_op1_i__3 I1[19]
load net reg_op11_out[1] -attr @rip(#000000) O[1] -pin reg_op1_i__2 O[1] -pin reg_op1_i__3 I1[1]
load net reg_op11_out[20] -attr @rip(#000000) O[20] -pin reg_op1_i__2 O[20] -pin reg_op1_i__3 I1[20]
load net reg_op11_out[21] -attr @rip(#000000) O[21] -pin reg_op1_i__2 O[21] -pin reg_op1_i__3 I1[21]
load net reg_op11_out[22] -attr @rip(#000000) O[22] -pin reg_op1_i__2 O[22] -pin reg_op1_i__3 I1[22]
load net reg_op11_out[23] -attr @rip(#000000) O[23] -pin reg_op1_i__2 O[23] -pin reg_op1_i__3 I1[23]
load net reg_op11_out[24] -attr @rip(#000000) O[24] -pin reg_op1_i__2 O[24] -pin reg_op1_i__3 I1[24]
load net reg_op11_out[25] -attr @rip(#000000) O[25] -pin reg_op1_i__2 O[25] -pin reg_op1_i__3 I1[25]
load net reg_op11_out[26] -attr @rip(#000000) O[26] -pin reg_op1_i__2 O[26] -pin reg_op1_i__3 I1[26]
load net reg_op11_out[27] -attr @rip(#000000) O[27] -pin reg_op1_i__2 O[27] -pin reg_op1_i__3 I1[27]
load net reg_op11_out[28] -attr @rip(#000000) O[28] -pin reg_op1_i__2 O[28] -pin reg_op1_i__3 I1[28]
load net reg_op11_out[29] -attr @rip(#000000) O[29] -pin reg_op1_i__2 O[29] -pin reg_op1_i__3 I1[29]
load net reg_op11_out[2] -attr @rip(#000000) O[2] -pin reg_op1_i__2 O[2] -pin reg_op1_i__3 I1[2]
load net reg_op11_out[30] -attr @rip(#000000) O[30] -pin reg_op1_i__2 O[30] -pin reg_op1_i__3 I1[30]
load net reg_op11_out[31] -attr @rip(#000000) O[31] -pin reg_op1_i__2 O[31] -pin reg_op1_i__3 I1[31]
load net reg_op11_out[3] -attr @rip(#000000) O[3] -pin reg_op1_i__2 O[3] -pin reg_op1_i__3 I1[3]
load net reg_op11_out[4] -attr @rip(#000000) O[4] -pin reg_op1_i__2 O[4] -pin reg_op1_i__3 I1[4]
load net reg_op11_out[5] -attr @rip(#000000) O[5] -pin reg_op1_i__2 O[5] -pin reg_op1_i__3 I1[5]
load net reg_op11_out[6] -attr @rip(#000000) O[6] -pin reg_op1_i__2 O[6] -pin reg_op1_i__3 I1[6]
load net reg_op11_out[7] -attr @rip(#000000) O[7] -pin reg_op1_i__2 O[7] -pin reg_op1_i__3 I1[7]
load net reg_op11_out[8] -attr @rip(#000000) O[8] -pin reg_op1_i__2 O[8] -pin reg_op1_i__3 I1[8]
load net reg_op11_out[9] -attr @rip(#000000) O[9] -pin reg_op1_i__2 O[9] -pin reg_op1_i__3 I1[9]
load net reg_op12_out -pin reg_op1_i__7 O -pin reg_op1_i__8 I1
netloc reg_op12_out 1 68 1 30590 7470n
load net reg_op13_out[0] -attr @rip(#000000) O[0] -pin reg_op1_i__3 O[0] -pin reg_op1_reg[31:0] D[0]
load net reg_op13_out[10] -attr @rip(#000000) O[10] -pin reg_op1_i__3 O[10] -pin reg_op1_reg[31:0] D[10]
load net reg_op13_out[11] -attr @rip(#000000) O[11] -pin reg_op1_i__3 O[11] -pin reg_op1_reg[31:0] D[11]
load net reg_op13_out[12] -attr @rip(#000000) O[12] -pin reg_op1_i__3 O[12] -pin reg_op1_reg[31:0] D[12]
load net reg_op13_out[13] -attr @rip(#000000) O[13] -pin reg_op1_i__3 O[13] -pin reg_op1_reg[31:0] D[13]
load net reg_op13_out[14] -attr @rip(#000000) O[14] -pin reg_op1_i__3 O[14] -pin reg_op1_reg[31:0] D[14]
load net reg_op13_out[15] -attr @rip(#000000) O[15] -pin reg_op1_i__3 O[15] -pin reg_op1_reg[31:0] D[15]
load net reg_op13_out[16] -attr @rip(#000000) O[16] -pin reg_op1_i__3 O[16] -pin reg_op1_reg[31:0] D[16]
load net reg_op13_out[17] -attr @rip(#000000) O[17] -pin reg_op1_i__3 O[17] -pin reg_op1_reg[31:0] D[17]
load net reg_op13_out[18] -attr @rip(#000000) O[18] -pin reg_op1_i__3 O[18] -pin reg_op1_reg[31:0] D[18]
load net reg_op13_out[19] -attr @rip(#000000) O[19] -pin reg_op1_i__3 O[19] -pin reg_op1_reg[31:0] D[19]
load net reg_op13_out[1] -attr @rip(#000000) O[1] -pin reg_op1_i__3 O[1] -pin reg_op1_reg[31:0] D[1]
load net reg_op13_out[20] -attr @rip(#000000) O[20] -pin reg_op1_i__3 O[20] -pin reg_op1_reg[31:0] D[20]
load net reg_op13_out[21] -attr @rip(#000000) O[21] -pin reg_op1_i__3 O[21] -pin reg_op1_reg[31:0] D[21]
load net reg_op13_out[22] -attr @rip(#000000) O[22] -pin reg_op1_i__3 O[22] -pin reg_op1_reg[31:0] D[22]
load net reg_op13_out[23] -attr @rip(#000000) O[23] -pin reg_op1_i__3 O[23] -pin reg_op1_reg[31:0] D[23]
load net reg_op13_out[24] -attr @rip(#000000) O[24] -pin reg_op1_i__3 O[24] -pin reg_op1_reg[31:0] D[24]
load net reg_op13_out[25] -attr @rip(#000000) O[25] -pin reg_op1_i__3 O[25] -pin reg_op1_reg[31:0] D[25]
load net reg_op13_out[26] -attr @rip(#000000) O[26] -pin reg_op1_i__3 O[26] -pin reg_op1_reg[31:0] D[26]
load net reg_op13_out[27] -attr @rip(#000000) O[27] -pin reg_op1_i__3 O[27] -pin reg_op1_reg[31:0] D[27]
load net reg_op13_out[28] -attr @rip(#000000) O[28] -pin reg_op1_i__3 O[28] -pin reg_op1_reg[31:0] D[28]
load net reg_op13_out[29] -attr @rip(#000000) O[29] -pin reg_op1_i__3 O[29] -pin reg_op1_reg[31:0] D[29]
load net reg_op13_out[2] -attr @rip(#000000) O[2] -pin reg_op1_i__3 O[2] -pin reg_op1_reg[31:0] D[2]
load net reg_op13_out[30] -attr @rip(#000000) O[30] -pin reg_op1_i__3 O[30] -pin reg_op1_reg[31:0] D[30]
load net reg_op13_out[31] -attr @rip(#000000) O[31] -pin reg_op1_i__3 O[31] -pin reg_op1_reg[31:0] D[31]
load net reg_op13_out[3] -attr @rip(#000000) O[3] -pin reg_op1_i__3 O[3] -pin reg_op1_reg[31:0] D[3]
load net reg_op13_out[4] -attr @rip(#000000) O[4] -pin reg_op1_i__3 O[4] -pin reg_op1_reg[31:0] D[4]
load net reg_op13_out[5] -attr @rip(#000000) O[5] -pin reg_op1_i__3 O[5] -pin reg_op1_reg[31:0] D[5]
load net reg_op13_out[6] -attr @rip(#000000) O[6] -pin reg_op1_i__3 O[6] -pin reg_op1_reg[31:0] D[6]
load net reg_op13_out[7] -attr @rip(#000000) O[7] -pin reg_op1_i__3 O[7] -pin reg_op1_reg[31:0] D[7]
load net reg_op13_out[8] -attr @rip(#000000) O[8] -pin reg_op1_i__3 O[8] -pin reg_op1_reg[31:0] D[8]
load net reg_op13_out[9] -attr @rip(#000000) O[9] -pin reg_op1_i__3 O[9] -pin reg_op1_reg[31:0] D[9]
load net reg_op1[0] -attr @rip(#000000) O[0] -pin reg_op1_i O[0] -pin reg_op1_i__3 I0[0]
load net reg_op1[10] -attr @rip(#000000) O[10] -pin reg_op1_i O[10] -pin reg_op1_i__3 I0[10]
load net reg_op1[11] -attr @rip(#000000) O[11] -pin reg_op1_i O[11] -pin reg_op1_i__3 I0[11]
load net reg_op1[12] -attr @rip(#000000) O[12] -pin reg_op1_i O[12] -pin reg_op1_i__3 I0[12]
load net reg_op1[13] -attr @rip(#000000) O[13] -pin reg_op1_i O[13] -pin reg_op1_i__3 I0[13]
load net reg_op1[14] -attr @rip(#000000) O[14] -pin reg_op1_i O[14] -pin reg_op1_i__3 I0[14]
load net reg_op1[15] -attr @rip(#000000) O[15] -pin reg_op1_i O[15] -pin reg_op1_i__3 I0[15]
load net reg_op1[16] -attr @rip(#000000) O[16] -pin reg_op1_i O[16] -pin reg_op1_i__3 I0[16]
load net reg_op1[17] -attr @rip(#000000) O[17] -pin reg_op1_i O[17] -pin reg_op1_i__3 I0[17]
load net reg_op1[18] -attr @rip(#000000) O[18] -pin reg_op1_i O[18] -pin reg_op1_i__3 I0[18]
load net reg_op1[19] -attr @rip(#000000) O[19] -pin reg_op1_i O[19] -pin reg_op1_i__3 I0[19]
load net reg_op1[1] -attr @rip(#000000) O[1] -pin reg_op1_i O[1] -pin reg_op1_i__3 I0[1]
load net reg_op1[20] -attr @rip(#000000) O[20] -pin reg_op1_i O[20] -pin reg_op1_i__3 I0[20]
load net reg_op1[21] -attr @rip(#000000) O[21] -pin reg_op1_i O[21] -pin reg_op1_i__3 I0[21]
load net reg_op1[22] -attr @rip(#000000) O[22] -pin reg_op1_i O[22] -pin reg_op1_i__3 I0[22]
load net reg_op1[23] -attr @rip(#000000) O[23] -pin reg_op1_i O[23] -pin reg_op1_i__3 I0[23]
load net reg_op1[24] -attr @rip(#000000) O[24] -pin reg_op1_i O[24] -pin reg_op1_i__3 I0[24]
load net reg_op1[25] -attr @rip(#000000) O[25] -pin reg_op1_i O[25] -pin reg_op1_i__3 I0[25]
load net reg_op1[26] -attr @rip(#000000) O[26] -pin reg_op1_i O[26] -pin reg_op1_i__3 I0[26]
load net reg_op1[27] -attr @rip(#000000) O[27] -pin reg_op1_i O[27] -pin reg_op1_i__3 I0[27]
load net reg_op1[28] -attr @rip(#000000) O[28] -pin reg_op1_i O[28] -pin reg_op1_i__3 I0[28]
load net reg_op1[29] -attr @rip(#000000) O[29] -pin reg_op1_i O[29] -pin reg_op1_i__3 I0[29]
load net reg_op1[2] -attr @rip(#000000) O[2] -pin reg_op1_i O[2] -pin reg_op1_i__3 I0[2]
load net reg_op1[30] -attr @rip(#000000) O[30] -pin reg_op1_i O[30] -pin reg_op1_i__3 I0[30]
load net reg_op1[31] -attr @rip(#000000) O[31] -pin reg_op1_i O[31] -pin reg_op1_i__3 I0[31]
load net reg_op1[3] -attr @rip(#000000) O[3] -pin reg_op1_i O[3] -pin reg_op1_i__3 I0[3]
load net reg_op1[4] -attr @rip(#000000) O[4] -pin reg_op1_i O[4] -pin reg_op1_i__3 I0[4]
load net reg_op1[5] -attr @rip(#000000) O[5] -pin reg_op1_i O[5] -pin reg_op1_i__3 I0[5]
load net reg_op1[6] -attr @rip(#000000) O[6] -pin reg_op1_i O[6] -pin reg_op1_i__3 I0[6]
load net reg_op1[7] -attr @rip(#000000) O[7] -pin reg_op1_i O[7] -pin reg_op1_i__3 I0[7]
load net reg_op1[8] -attr @rip(#000000) O[8] -pin reg_op1_i O[8] -pin reg_op1_i__3 I0[8]
load net reg_op1[9] -attr @rip(#000000) O[9] -pin reg_op1_i O[9] -pin reg_op1_i__3 I0[9]
load net reg_op1_i__0_n_0 -attr @rip(#000000) O[31] -pin reg_op1_i__0 O[31] -pin reg_op1_i__2 I0[31]
load net reg_op1_i__0_n_1 -attr @rip(#000000) O[30] -pin reg_op1_i__0 O[30] -pin reg_op1_i__2 I0[30]
load net reg_op1_i__0_n_10 -attr @rip(#000000) O[21] -pin reg_op1_i__0 O[21] -pin reg_op1_i__2 I0[21]
load net reg_op1_i__0_n_11 -attr @rip(#000000) O[20] -pin reg_op1_i__0 O[20] -pin reg_op1_i__2 I0[20]
load net reg_op1_i__0_n_12 -attr @rip(#000000) O[19] -pin reg_op1_i__0 O[19] -pin reg_op1_i__2 I0[19]
load net reg_op1_i__0_n_13 -attr @rip(#000000) O[18] -pin reg_op1_i__0 O[18] -pin reg_op1_i__2 I0[18]
load net reg_op1_i__0_n_14 -attr @rip(#000000) O[17] -pin reg_op1_i__0 O[17] -pin reg_op1_i__2 I0[17]
load net reg_op1_i__0_n_15 -attr @rip(#000000) O[16] -pin reg_op1_i__0 O[16] -pin reg_op1_i__2 I0[16]
load net reg_op1_i__0_n_16 -attr @rip(#000000) O[15] -pin reg_op1_i__0 O[15] -pin reg_op1_i__2 I0[15]
load net reg_op1_i__0_n_17 -attr @rip(#000000) O[14] -pin reg_op1_i__0 O[14] -pin reg_op1_i__2 I0[14]
load net reg_op1_i__0_n_18 -attr @rip(#000000) O[13] -pin reg_op1_i__0 O[13] -pin reg_op1_i__2 I0[13]
load net reg_op1_i__0_n_19 -attr @rip(#000000) O[12] -pin reg_op1_i__0 O[12] -pin reg_op1_i__2 I0[12]
load net reg_op1_i__0_n_2 -attr @rip(#000000) O[29] -pin reg_op1_i__0 O[29] -pin reg_op1_i__2 I0[29]
load net reg_op1_i__0_n_20 -attr @rip(#000000) O[11] -pin reg_op1_i__0 O[11] -pin reg_op1_i__2 I0[11]
load net reg_op1_i__0_n_21 -attr @rip(#000000) O[10] -pin reg_op1_i__0 O[10] -pin reg_op1_i__2 I0[10]
load net reg_op1_i__0_n_22 -attr @rip(#000000) O[9] -pin reg_op1_i__0 O[9] -pin reg_op1_i__2 I0[9]
load net reg_op1_i__0_n_23 -attr @rip(#000000) O[8] -pin reg_op1_i__0 O[8] -pin reg_op1_i__2 I0[8]
load net reg_op1_i__0_n_24 -attr @rip(#000000) O[7] -pin reg_op1_i__0 O[7] -pin reg_op1_i__2 I0[7]
load net reg_op1_i__0_n_25 -attr @rip(#000000) O[6] -pin reg_op1_i__0 O[6] -pin reg_op1_i__2 I0[6]
load net reg_op1_i__0_n_26 -attr @rip(#000000) O[5] -pin reg_op1_i__0 O[5] -pin reg_op1_i__2 I0[5]
load net reg_op1_i__0_n_27 -attr @rip(#000000) O[4] -pin reg_op1_i__0 O[4] -pin reg_op1_i__2 I0[4]
load net reg_op1_i__0_n_28 -attr @rip(#000000) O[3] -pin reg_op1_i__0 O[3] -pin reg_op1_i__2 I0[3]
load net reg_op1_i__0_n_29 -attr @rip(#000000) O[2] -pin reg_op1_i__0 O[2] -pin reg_op1_i__2 I0[2]
load net reg_op1_i__0_n_3 -attr @rip(#000000) O[28] -pin reg_op1_i__0 O[28] -pin reg_op1_i__2 I0[28]
load net reg_op1_i__0_n_30 -attr @rip(#000000) O[1] -pin reg_op1_i__0 O[1] -pin reg_op1_i__2 I0[1]
load net reg_op1_i__0_n_31 -attr @rip(#000000) O[0] -pin reg_op1_i__0 O[0] -pin reg_op1_i__2 I0[0]
load net reg_op1_i__0_n_4 -attr @rip(#000000) O[27] -pin reg_op1_i__0 O[27] -pin reg_op1_i__2 I0[27]
load net reg_op1_i__0_n_5 -attr @rip(#000000) O[26] -pin reg_op1_i__0 O[26] -pin reg_op1_i__2 I0[26]
load net reg_op1_i__0_n_6 -attr @rip(#000000) O[25] -pin reg_op1_i__0 O[25] -pin reg_op1_i__2 I0[25]
load net reg_op1_i__0_n_7 -attr @rip(#000000) O[24] -pin reg_op1_i__0 O[24] -pin reg_op1_i__2 I0[24]
load net reg_op1_i__0_n_8 -attr @rip(#000000) O[23] -pin reg_op1_i__0 O[23] -pin reg_op1_i__2 I0[23]
load net reg_op1_i__0_n_9 -attr @rip(#000000) O[22] -pin reg_op1_i__0 O[22] -pin reg_op1_i__2 I0[22]
load net reg_op1_i__1_n_0 -attr @rip(#000000) O[31] -pin reg_op1_i__1 O[31] -pin reg_op1_i__2 I1[31]
load net reg_op1_i__1_n_1 -attr @rip(#000000) O[30] -pin reg_op1_i__1 O[30] -pin reg_op1_i__2 I1[30]
load net reg_op1_i__1_n_10 -attr @rip(#000000) O[21] -pin reg_op1_i__1 O[21] -pin reg_op1_i__2 I1[21]
load net reg_op1_i__1_n_11 -attr @rip(#000000) O[20] -pin reg_op1_i__1 O[20] -pin reg_op1_i__2 I1[20]
load net reg_op1_i__1_n_12 -attr @rip(#000000) O[19] -pin reg_op1_i__1 O[19] -pin reg_op1_i__2 I1[19]
load net reg_op1_i__1_n_13 -attr @rip(#000000) O[18] -pin reg_op1_i__1 O[18] -pin reg_op1_i__2 I1[18]
load net reg_op1_i__1_n_14 -attr @rip(#000000) O[17] -pin reg_op1_i__1 O[17] -pin reg_op1_i__2 I1[17]
load net reg_op1_i__1_n_15 -attr @rip(#000000) O[16] -pin reg_op1_i__1 O[16] -pin reg_op1_i__2 I1[16]
load net reg_op1_i__1_n_16 -attr @rip(#000000) O[15] -pin reg_op1_i__1 O[15] -pin reg_op1_i__2 I1[15]
load net reg_op1_i__1_n_17 -attr @rip(#000000) O[14] -pin reg_op1_i__1 O[14] -pin reg_op1_i__2 I1[14]
load net reg_op1_i__1_n_18 -attr @rip(#000000) O[13] -pin reg_op1_i__1 O[13] -pin reg_op1_i__2 I1[13]
load net reg_op1_i__1_n_19 -attr @rip(#000000) O[12] -pin reg_op1_i__1 O[12] -pin reg_op1_i__2 I1[12]
load net reg_op1_i__1_n_2 -attr @rip(#000000) O[29] -pin reg_op1_i__1 O[29] -pin reg_op1_i__2 I1[29]
load net reg_op1_i__1_n_20 -attr @rip(#000000) O[11] -pin reg_op1_i__1 O[11] -pin reg_op1_i__2 I1[11]
load net reg_op1_i__1_n_21 -attr @rip(#000000) O[10] -pin reg_op1_i__1 O[10] -pin reg_op1_i__2 I1[10]
load net reg_op1_i__1_n_22 -attr @rip(#000000) O[9] -pin reg_op1_i__1 O[9] -pin reg_op1_i__2 I1[9]
load net reg_op1_i__1_n_23 -attr @rip(#000000) O[8] -pin reg_op1_i__1 O[8] -pin reg_op1_i__2 I1[8]
load net reg_op1_i__1_n_24 -attr @rip(#000000) O[7] -pin reg_op1_i__1 O[7] -pin reg_op1_i__2 I1[7]
load net reg_op1_i__1_n_25 -attr @rip(#000000) O[6] -pin reg_op1_i__1 O[6] -pin reg_op1_i__2 I1[6]
load net reg_op1_i__1_n_26 -attr @rip(#000000) O[5] -pin reg_op1_i__1 O[5] -pin reg_op1_i__2 I1[5]
load net reg_op1_i__1_n_27 -attr @rip(#000000) O[4] -pin reg_op1_i__1 O[4] -pin reg_op1_i__2 I1[4]
load net reg_op1_i__1_n_28 -attr @rip(#000000) O[3] -pin reg_op1_i__1 O[3] -pin reg_op1_i__2 I1[3]
load net reg_op1_i__1_n_29 -attr @rip(#000000) O[2] -pin reg_op1_i__1 O[2] -pin reg_op1_i__2 I1[2]
load net reg_op1_i__1_n_3 -attr @rip(#000000) O[28] -pin reg_op1_i__1 O[28] -pin reg_op1_i__2 I1[28]
load net reg_op1_i__1_n_30 -attr @rip(#000000) O[1] -pin reg_op1_i__1 O[1] -pin reg_op1_i__2 I1[1]
load net reg_op1_i__1_n_31 -attr @rip(#000000) O[0] -pin reg_op1_i__1 O[0] -pin reg_op1_i__2 I1[0]
load net reg_op1_i__1_n_4 -attr @rip(#000000) O[27] -pin reg_op1_i__1 O[27] -pin reg_op1_i__2 I1[27]
load net reg_op1_i__1_n_5 -attr @rip(#000000) O[26] -pin reg_op1_i__1 O[26] -pin reg_op1_i__2 I1[26]
load net reg_op1_i__1_n_6 -attr @rip(#000000) O[25] -pin reg_op1_i__1 O[25] -pin reg_op1_i__2 I1[25]
load net reg_op1_i__1_n_7 -attr @rip(#000000) O[24] -pin reg_op1_i__1 O[24] -pin reg_op1_i__2 I1[24]
load net reg_op1_i__1_n_8 -attr @rip(#000000) O[23] -pin reg_op1_i__1 O[23] -pin reg_op1_i__2 I1[23]
load net reg_op1_i__1_n_9 -attr @rip(#000000) O[22] -pin reg_op1_i__1 O[22] -pin reg_op1_i__2 I1[22]
load net reg_op1_i__4_n_0 -pin reg_op1_i__4 O -pin reg_op1_i__7 I5
netloc reg_op1_i__4_n_0 1 67 1 29470 7360n
load net reg_op1_i__5_n_0 -pin reg_op1_i__5 O -pin reg_op1_i__7 I6
netloc reg_op1_i__5_n_0 1 67 1 29450 7660n
load net reg_op1_i__6_n_0 -pin reg_op1_i__6 O -pin reg_op1_i__7 I7
netloc reg_op1_i__6_n_0 1 67 1 N 7780
load net reg_op1_i__8_n_0 -pin reg_op1_i__8 O -pin reg_op1_reg[31:0] CE
netloc reg_op1_i__8_n_0 1 69 1 31100 5610n
load net reg_op2[0] -attr @rip(#000000) O[0] -pin reg_op2_i__0 O[0] -pin reg_op2_reg[31:0] D[0]
load net reg_op2[10] -attr @rip(#000000) O[10] -pin reg_op2_i__0 O[10] -pin reg_op2_reg[31:0] D[10]
load net reg_op2[11] -attr @rip(#000000) O[11] -pin reg_op2_i__0 O[11] -pin reg_op2_reg[31:0] D[11]
load net reg_op2[12] -attr @rip(#000000) O[12] -pin reg_op2_i__0 O[12] -pin reg_op2_reg[31:0] D[12]
load net reg_op2[13] -attr @rip(#000000) O[13] -pin reg_op2_i__0 O[13] -pin reg_op2_reg[31:0] D[13]
load net reg_op2[14] -attr @rip(#000000) O[14] -pin reg_op2_i__0 O[14] -pin reg_op2_reg[31:0] D[14]
load net reg_op2[15] -attr @rip(#000000) O[15] -pin reg_op2_i__0 O[15] -pin reg_op2_reg[31:0] D[15]
load net reg_op2[16] -attr @rip(#000000) O[16] -pin reg_op2_i__0 O[16] -pin reg_op2_reg[31:0] D[16]
load net reg_op2[17] -attr @rip(#000000) O[17] -pin reg_op2_i__0 O[17] -pin reg_op2_reg[31:0] D[17]
load net reg_op2[18] -attr @rip(#000000) O[18] -pin reg_op2_i__0 O[18] -pin reg_op2_reg[31:0] D[18]
load net reg_op2[19] -attr @rip(#000000) O[19] -pin reg_op2_i__0 O[19] -pin reg_op2_reg[31:0] D[19]
load net reg_op2[1] -attr @rip(#000000) O[1] -pin reg_op2_i__0 O[1] -pin reg_op2_reg[31:0] D[1]
load net reg_op2[20] -attr @rip(#000000) O[20] -pin reg_op2_i__0 O[20] -pin reg_op2_reg[31:0] D[20]
load net reg_op2[21] -attr @rip(#000000) O[21] -pin reg_op2_i__0 O[21] -pin reg_op2_reg[31:0] D[21]
load net reg_op2[22] -attr @rip(#000000) O[22] -pin reg_op2_i__0 O[22] -pin reg_op2_reg[31:0] D[22]
load net reg_op2[23] -attr @rip(#000000) O[23] -pin reg_op2_i__0 O[23] -pin reg_op2_reg[31:0] D[23]
load net reg_op2[24] -attr @rip(#000000) O[24] -pin reg_op2_i__0 O[24] -pin reg_op2_reg[31:0] D[24]
load net reg_op2[25] -attr @rip(#000000) O[25] -pin reg_op2_i__0 O[25] -pin reg_op2_reg[31:0] D[25]
load net reg_op2[26] -attr @rip(#000000) O[26] -pin reg_op2_i__0 O[26] -pin reg_op2_reg[31:0] D[26]
load net reg_op2[27] -attr @rip(#000000) O[27] -pin reg_op2_i__0 O[27] -pin reg_op2_reg[31:0] D[27]
load net reg_op2[28] -attr @rip(#000000) O[28] -pin reg_op2_i__0 O[28] -pin reg_op2_reg[31:0] D[28]
load net reg_op2[29] -attr @rip(#000000) O[29] -pin reg_op2_i__0 O[29] -pin reg_op2_reg[31:0] D[29]
load net reg_op2[2] -attr @rip(#000000) O[2] -pin reg_op2_i__0 O[2] -pin reg_op2_reg[31:0] D[2]
load net reg_op2[30] -attr @rip(#000000) O[30] -pin reg_op2_i__0 O[30] -pin reg_op2_reg[31:0] D[30]
load net reg_op2[31] -attr @rip(#000000) O[31] -pin reg_op2_i__0 O[31] -pin reg_op2_reg[31:0] D[31]
load net reg_op2[3] -attr @rip(#000000) O[3] -pin reg_op2_i__0 O[3] -pin reg_op2_reg[31:0] D[3]
load net reg_op2[4] -attr @rip(#000000) O[4] -pin reg_op2_i__0 O[4] -pin reg_op2_reg[31:0] D[4]
load net reg_op2[5] -attr @rip(#000000) O[5] -pin reg_op2_i__0 O[5] -pin reg_op2_reg[31:0] D[5]
load net reg_op2[6] -attr @rip(#000000) O[6] -pin reg_op2_i__0 O[6] -pin reg_op2_reg[31:0] D[6]
load net reg_op2[7] -attr @rip(#000000) O[7] -pin reg_op2_i__0 O[7] -pin reg_op2_reg[31:0] D[7]
load net reg_op2[8] -attr @rip(#000000) O[8] -pin reg_op2_i__0 O[8] -pin reg_op2_reg[31:0] D[8]
load net reg_op2[9] -attr @rip(#000000) O[9] -pin reg_op2_i__0 O[9] -pin reg_op2_reg[31:0] D[9]
load net reg_op2_i__1_n_0 -pin reg_op2_i__1 O -pin reg_op2_i__2 I1
netloc reg_op2_i__1_n_0 1 67 1 NJ 7520
load net reg_op2_i__2_n_0 -pin reg_op2_i__2 O -pin reg_op2_reg[31:0] CE
netloc reg_op2_i__2_n_0 1 68 1 30550 7180n
load net reg_op2_i_n_0 -attr @rip(#000000) O[31] -pin reg_op2_i O[31] -pin reg_op2_i__0 I0[31]
load net reg_op2_i_n_1 -attr @rip(#000000) O[30] -pin reg_op2_i O[30] -pin reg_op2_i__0 I0[30]
load net reg_op2_i_n_10 -attr @rip(#000000) O[21] -pin reg_op2_i O[21] -pin reg_op2_i__0 I0[21]
load net reg_op2_i_n_11 -attr @rip(#000000) O[20] -pin reg_op2_i O[20] -pin reg_op2_i__0 I0[20]
load net reg_op2_i_n_12 -attr @rip(#000000) O[19] -pin reg_op2_i O[19] -pin reg_op2_i__0 I0[19]
load net reg_op2_i_n_13 -attr @rip(#000000) O[18] -pin reg_op2_i O[18] -pin reg_op2_i__0 I0[18]
load net reg_op2_i_n_14 -attr @rip(#000000) O[17] -pin reg_op2_i O[17] -pin reg_op2_i__0 I0[17]
load net reg_op2_i_n_15 -attr @rip(#000000) O[16] -pin reg_op2_i O[16] -pin reg_op2_i__0 I0[16]
load net reg_op2_i_n_16 -attr @rip(#000000) O[15] -pin reg_op2_i O[15] -pin reg_op2_i__0 I0[15]
load net reg_op2_i_n_17 -attr @rip(#000000) O[14] -pin reg_op2_i O[14] -pin reg_op2_i__0 I0[14]
load net reg_op2_i_n_18 -attr @rip(#000000) O[13] -pin reg_op2_i O[13] -pin reg_op2_i__0 I0[13]
load net reg_op2_i_n_19 -attr @rip(#000000) O[12] -pin reg_op2_i O[12] -pin reg_op2_i__0 I0[12]
load net reg_op2_i_n_2 -attr @rip(#000000) O[29] -pin reg_op2_i O[29] -pin reg_op2_i__0 I0[29]
load net reg_op2_i_n_20 -attr @rip(#000000) O[11] -pin reg_op2_i O[11] -pin reg_op2_i__0 I0[11]
load net reg_op2_i_n_21 -attr @rip(#000000) O[10] -pin reg_op2_i O[10] -pin reg_op2_i__0 I0[10]
load net reg_op2_i_n_22 -attr @rip(#000000) O[9] -pin reg_op2_i O[9] -pin reg_op2_i__0 I0[9]
load net reg_op2_i_n_23 -attr @rip(#000000) O[8] -pin reg_op2_i O[8] -pin reg_op2_i__0 I0[8]
load net reg_op2_i_n_24 -attr @rip(#000000) O[7] -pin reg_op2_i O[7] -pin reg_op2_i__0 I0[7]
load net reg_op2_i_n_25 -attr @rip(#000000) O[6] -pin reg_op2_i O[6] -pin reg_op2_i__0 I0[6]
load net reg_op2_i_n_26 -attr @rip(#000000) O[5] -pin reg_op2_i O[5] -pin reg_op2_i__0 I0[5]
load net reg_op2_i_n_27 -attr @rip(#000000) O[4] -pin reg_op2_i O[4] -pin reg_op2_i__0 I0[4]
load net reg_op2_i_n_28 -attr @rip(#000000) O[3] -pin reg_op2_i O[3] -pin reg_op2_i__0 I0[3]
load net reg_op2_i_n_29 -attr @rip(#000000) O[2] -pin reg_op2_i O[2] -pin reg_op2_i__0 I0[2]
load net reg_op2_i_n_3 -attr @rip(#000000) O[28] -pin reg_op2_i O[28] -pin reg_op2_i__0 I0[28]
load net reg_op2_i_n_30 -attr @rip(#000000) O[1] -pin reg_op2_i O[1] -pin reg_op2_i__0 I0[1]
load net reg_op2_i_n_31 -attr @rip(#000000) O[0] -pin reg_op2_i O[0] -pin reg_op2_i__0 I0[0]
load net reg_op2_i_n_4 -attr @rip(#000000) O[27] -pin reg_op2_i O[27] -pin reg_op2_i__0 I0[27]
load net reg_op2_i_n_5 -attr @rip(#000000) O[26] -pin reg_op2_i O[26] -pin reg_op2_i__0 I0[26]
load net reg_op2_i_n_6 -attr @rip(#000000) O[25] -pin reg_op2_i O[25] -pin reg_op2_i__0 I0[25]
load net reg_op2_i_n_7 -attr @rip(#000000) O[24] -pin reg_op2_i O[24] -pin reg_op2_i__0 I0[24]
load net reg_op2_i_n_8 -attr @rip(#000000) O[23] -pin reg_op2_i O[23] -pin reg_op2_i__0 I0[23]
load net reg_op2_i_n_9 -attr @rip(#000000) O[22] -pin reg_op2_i O[22] -pin reg_op2_i__0 I0[22]
load net reg_out1_out[0] -attr @rip(#000000) O[0] -pin reg_out_i__2 O[0] -pin reg_out_reg[31:0] D[0]
load net reg_out1_out[10] -attr @rip(#000000) O[10] -pin reg_out_i__2 O[10] -pin reg_out_reg[31:0] D[10]
load net reg_out1_out[11] -attr @rip(#000000) O[11] -pin reg_out_i__2 O[11] -pin reg_out_reg[31:0] D[11]
load net reg_out1_out[12] -attr @rip(#000000) O[12] -pin reg_out_i__2 O[12] -pin reg_out_reg[31:0] D[12]
load net reg_out1_out[13] -attr @rip(#000000) O[13] -pin reg_out_i__2 O[13] -pin reg_out_reg[31:0] D[13]
load net reg_out1_out[14] -attr @rip(#000000) O[14] -pin reg_out_i__2 O[14] -pin reg_out_reg[31:0] D[14]
load net reg_out1_out[15] -attr @rip(#000000) O[15] -pin reg_out_i__2 O[15] -pin reg_out_reg[31:0] D[15]
load net reg_out1_out[16] -attr @rip(#000000) O[16] -pin reg_out_i__2 O[16] -pin reg_out_reg[31:0] D[16]
load net reg_out1_out[17] -attr @rip(#000000) O[17] -pin reg_out_i__2 O[17] -pin reg_out_reg[31:0] D[17]
load net reg_out1_out[18] -attr @rip(#000000) O[18] -pin reg_out_i__2 O[18] -pin reg_out_reg[31:0] D[18]
load net reg_out1_out[19] -attr @rip(#000000) O[19] -pin reg_out_i__2 O[19] -pin reg_out_reg[31:0] D[19]
load net reg_out1_out[1] -attr @rip(#000000) O[1] -pin reg_out_i__2 O[1] -pin reg_out_reg[31:0] D[1]
load net reg_out1_out[20] -attr @rip(#000000) O[20] -pin reg_out_i__2 O[20] -pin reg_out_reg[31:0] D[20]
load net reg_out1_out[21] -attr @rip(#000000) O[21] -pin reg_out_i__2 O[21] -pin reg_out_reg[31:0] D[21]
load net reg_out1_out[22] -attr @rip(#000000) O[22] -pin reg_out_i__2 O[22] -pin reg_out_reg[31:0] D[22]
load net reg_out1_out[23] -attr @rip(#000000) O[23] -pin reg_out_i__2 O[23] -pin reg_out_reg[31:0] D[23]
load net reg_out1_out[24] -attr @rip(#000000) O[24] -pin reg_out_i__2 O[24] -pin reg_out_reg[31:0] D[24]
load net reg_out1_out[25] -attr @rip(#000000) O[25] -pin reg_out_i__2 O[25] -pin reg_out_reg[31:0] D[25]
load net reg_out1_out[26] -attr @rip(#000000) O[26] -pin reg_out_i__2 O[26] -pin reg_out_reg[31:0] D[26]
load net reg_out1_out[27] -attr @rip(#000000) O[27] -pin reg_out_i__2 O[27] -pin reg_out_reg[31:0] D[27]
load net reg_out1_out[28] -attr @rip(#000000) O[28] -pin reg_out_i__2 O[28] -pin reg_out_reg[31:0] D[28]
load net reg_out1_out[29] -attr @rip(#000000) O[29] -pin reg_out_i__2 O[29] -pin reg_out_reg[31:0] D[29]
load net reg_out1_out[2] -attr @rip(#000000) O[2] -pin reg_out_i__2 O[2] -pin reg_out_reg[31:0] D[2]
load net reg_out1_out[30] -attr @rip(#000000) O[30] -pin reg_out_i__2 O[30] -pin reg_out_reg[31:0] D[30]
load net reg_out1_out[31] -attr @rip(#000000) O[31] -pin reg_out_i__2 O[31] -pin reg_out_reg[31:0] D[31]
load net reg_out1_out[3] -attr @rip(#000000) O[3] -pin reg_out_i__2 O[3] -pin reg_out_reg[31:0] D[3]
load net reg_out1_out[4] -attr @rip(#000000) O[4] -pin reg_out_i__2 O[4] -pin reg_out_reg[31:0] D[4]
load net reg_out1_out[5] -attr @rip(#000000) O[5] -pin reg_out_i__2 O[5] -pin reg_out_reg[31:0] D[5]
load net reg_out1_out[6] -attr @rip(#000000) O[6] -pin reg_out_i__2 O[6] -pin reg_out_reg[31:0] D[6]
load net reg_out1_out[7] -attr @rip(#000000) O[7] -pin reg_out_i__2 O[7] -pin reg_out_reg[31:0] D[7]
load net reg_out1_out[8] -attr @rip(#000000) O[8] -pin reg_out_i__2 O[8] -pin reg_out_reg[31:0] D[8]
load net reg_out1_out[9] -attr @rip(#000000) O[9] -pin reg_out_i__2 O[9] -pin reg_out_reg[31:0] D[9]
load net reg_out[0] -attr @rip(#000000) 0 -pin RTL_AND__83 I0[0] -pin RTL_MUX__10 I1[0] -pin RTL_MUX__4 I1[0] -pin reg_out_reg[31:0] Q[0]
load net reg_out[10] -attr @rip(#000000) 10 -pin RTL_AND__83 I0[10] -pin RTL_MUX__10 I1[10] -pin RTL_MUX__4 I1[10] -pin reg_out_reg[31:0] Q[10]
load net reg_out[11] -attr @rip(#000000) 11 -pin RTL_AND__83 I0[11] -pin RTL_MUX__10 I1[11] -pin RTL_MUX__4 I1[11] -pin reg_out_reg[31:0] Q[11]
load net reg_out[12] -attr @rip(#000000) 12 -pin RTL_AND__83 I0[12] -pin RTL_MUX__10 I1[12] -pin RTL_MUX__4 I1[12] -pin reg_out_reg[31:0] Q[12]
load net reg_out[13] -attr @rip(#000000) 13 -pin RTL_AND__83 I0[13] -pin RTL_MUX__10 I1[13] -pin RTL_MUX__4 I1[13] -pin reg_out_reg[31:0] Q[13]
load net reg_out[14] -attr @rip(#000000) 14 -pin RTL_AND__83 I0[14] -pin RTL_MUX__10 I1[14] -pin RTL_MUX__4 I1[14] -pin reg_out_reg[31:0] Q[14]
load net reg_out[15] -attr @rip(#000000) 15 -pin RTL_AND__83 I0[15] -pin RTL_MUX__10 I1[15] -pin RTL_MUX__4 I1[15] -pin reg_out_reg[31:0] Q[15]
load net reg_out[16] -attr @rip(#000000) 16 -pin RTL_AND__83 I0[16] -pin RTL_MUX__10 I1[16] -pin RTL_MUX__4 I1[16] -pin reg_out_reg[31:0] Q[16]
load net reg_out[17] -attr @rip(#000000) 17 -pin RTL_AND__83 I0[17] -pin RTL_MUX__10 I1[17] -pin RTL_MUX__4 I1[17] -pin reg_out_reg[31:0] Q[17]
load net reg_out[18] -attr @rip(#000000) 18 -pin RTL_AND__83 I0[18] -pin RTL_MUX__10 I1[18] -pin RTL_MUX__4 I1[18] -pin reg_out_reg[31:0] Q[18]
load net reg_out[19] -attr @rip(#000000) 19 -pin RTL_AND__83 I0[19] -pin RTL_MUX__10 I1[19] -pin RTL_MUX__4 I1[19] -pin reg_out_reg[31:0] Q[19]
load net reg_out[1] -attr @rip(#000000) 1 -pin RTL_AND__83 I0[1] -pin RTL_MUX__10 I1[1] -pin RTL_MUX__4 I1[1] -pin reg_out_reg[31:0] Q[1]
load net reg_out[20] -attr @rip(#000000) 20 -pin RTL_AND__83 I0[20] -pin RTL_MUX__10 I1[20] -pin RTL_MUX__4 I1[20] -pin reg_out_reg[31:0] Q[20]
load net reg_out[21] -attr @rip(#000000) 21 -pin RTL_AND__83 I0[21] -pin RTL_MUX__10 I1[21] -pin RTL_MUX__4 I1[21] -pin reg_out_reg[31:0] Q[21]
load net reg_out[22] -attr @rip(#000000) 22 -pin RTL_AND__83 I0[22] -pin RTL_MUX__10 I1[22] -pin RTL_MUX__4 I1[22] -pin reg_out_reg[31:0] Q[22]
load net reg_out[23] -attr @rip(#000000) 23 -pin RTL_AND__83 I0[23] -pin RTL_MUX__10 I1[23] -pin RTL_MUX__4 I1[23] -pin reg_out_reg[31:0] Q[23]
load net reg_out[24] -attr @rip(#000000) 24 -pin RTL_AND__83 I0[24] -pin RTL_MUX__10 I1[24] -pin RTL_MUX__4 I1[24] -pin reg_out_reg[31:0] Q[24]
load net reg_out[25] -attr @rip(#000000) 25 -pin RTL_AND__83 I0[25] -pin RTL_MUX__10 I1[25] -pin RTL_MUX__4 I1[25] -pin reg_out_reg[31:0] Q[25]
load net reg_out[26] -attr @rip(#000000) 26 -pin RTL_AND__83 I0[26] -pin RTL_MUX__10 I1[26] -pin RTL_MUX__4 I1[26] -pin reg_out_reg[31:0] Q[26]
load net reg_out[27] -attr @rip(#000000) 27 -pin RTL_AND__83 I0[27] -pin RTL_MUX__10 I1[27] -pin RTL_MUX__4 I1[27] -pin reg_out_reg[31:0] Q[27]
load net reg_out[28] -attr @rip(#000000) 28 -pin RTL_AND__83 I0[28] -pin RTL_MUX__10 I1[28] -pin RTL_MUX__4 I1[28] -pin reg_out_reg[31:0] Q[28]
load net reg_out[29] -attr @rip(#000000) 29 -pin RTL_AND__83 I0[29] -pin RTL_MUX__10 I1[29] -pin RTL_MUX__4 I1[29] -pin reg_out_reg[31:0] Q[29]
load net reg_out[2] -attr @rip(#000000) 2 -pin RTL_AND__83 I0[2] -pin RTL_MUX__10 I1[2] -pin RTL_MUX__4 I1[2] -pin reg_out_reg[31:0] Q[2]
load net reg_out[30] -attr @rip(#000000) 30 -pin RTL_AND__83 I0[30] -pin RTL_MUX__10 I1[30] -pin RTL_MUX__4 I1[30] -pin reg_out_reg[31:0] Q[30]
load net reg_out[31] -attr @rip(#000000) 31 -pin RTL_AND__83 I0[31] -pin RTL_MUX__10 I1[31] -pin RTL_MUX__4 I1[31] -pin reg_out_reg[31:0] Q[31]
load net reg_out[3] -attr @rip(#000000) 3 -pin RTL_AND__83 I0[3] -pin RTL_MUX__10 I1[3] -pin RTL_MUX__4 I1[3] -pin reg_out_reg[31:0] Q[3]
load net reg_out[4] -attr @rip(#000000) 4 -pin RTL_AND__83 I0[4] -pin RTL_MUX__10 I1[4] -pin RTL_MUX__4 I1[4] -pin reg_out_reg[31:0] Q[4]
load net reg_out[5] -attr @rip(#000000) 5 -pin RTL_AND__83 I0[5] -pin RTL_MUX__10 I1[5] -pin RTL_MUX__4 I1[5] -pin reg_out_reg[31:0] Q[5]
load net reg_out[6] -attr @rip(#000000) 6 -pin RTL_AND__83 I0[6] -pin RTL_MUX__10 I1[6] -pin RTL_MUX__4 I1[6] -pin reg_out_reg[31:0] Q[6]
load net reg_out[7] -attr @rip(#000000) 7 -pin RTL_AND__83 I0[7] -pin RTL_MUX__10 I1[7] -pin RTL_MUX__4 I1[7] -pin reg_out_reg[31:0] Q[7]
load net reg_out[8] -attr @rip(#000000) 8 -pin RTL_AND__83 I0[8] -pin RTL_MUX__10 I1[8] -pin RTL_MUX__4 I1[8] -pin reg_out_reg[31:0] Q[8]
load net reg_out[9] -attr @rip(#000000) 9 -pin RTL_AND__83 I0[9] -pin RTL_MUX__10 I1[9] -pin RTL_MUX__4 I1[9] -pin reg_out_reg[31:0] Q[9]
load net reg_out__0[0] -attr @rip(#000000) O[0] -pin reg_out_i__1 O[0] -pin reg_out_i__2 I4[0]
load net reg_out__0[10] -attr @rip(#000000) O[10] -pin reg_out_i__1 O[10] -pin reg_out_i__2 I4[10]
load net reg_out__0[11] -attr @rip(#000000) O[11] -pin reg_out_i__1 O[11] -pin reg_out_i__2 I4[11]
load net reg_out__0[12] -attr @rip(#000000) O[12] -pin reg_out_i__1 O[12] -pin reg_out_i__2 I4[12]
load net reg_out__0[13] -attr @rip(#000000) O[13] -pin reg_out_i__1 O[13] -pin reg_out_i__2 I4[13]
load net reg_out__0[14] -attr @rip(#000000) O[14] -pin reg_out_i__1 O[14] -pin reg_out_i__2 I4[14]
load net reg_out__0[15] -attr @rip(#000000) O[15] -pin reg_out_i__1 O[15] -pin reg_out_i__2 I4[15]
load net reg_out__0[16] -attr @rip(#000000) O[16] -pin reg_out_i__1 O[16] -pin reg_out_i__2 I4[16]
load net reg_out__0[17] -attr @rip(#000000) O[17] -pin reg_out_i__1 O[17] -pin reg_out_i__2 I4[17]
load net reg_out__0[18] -attr @rip(#000000) O[18] -pin reg_out_i__1 O[18] -pin reg_out_i__2 I4[18]
load net reg_out__0[19] -attr @rip(#000000) O[19] -pin reg_out_i__1 O[19] -pin reg_out_i__2 I4[19]
load net reg_out__0[1] -attr @rip(#000000) O[1] -pin reg_out_i__1 O[1] -pin reg_out_i__2 I4[1]
load net reg_out__0[20] -attr @rip(#000000) O[20] -pin reg_out_i__1 O[20] -pin reg_out_i__2 I4[20]
load net reg_out__0[21] -attr @rip(#000000) O[21] -pin reg_out_i__1 O[21] -pin reg_out_i__2 I4[21]
load net reg_out__0[22] -attr @rip(#000000) O[22] -pin reg_out_i__1 O[22] -pin reg_out_i__2 I4[22]
load net reg_out__0[23] -attr @rip(#000000) O[23] -pin reg_out_i__1 O[23] -pin reg_out_i__2 I4[23]
load net reg_out__0[24] -attr @rip(#000000) O[24] -pin reg_out_i__1 O[24] -pin reg_out_i__2 I4[24]
load net reg_out__0[25] -attr @rip(#000000) O[25] -pin reg_out_i__1 O[25] -pin reg_out_i__2 I4[25]
load net reg_out__0[26] -attr @rip(#000000) O[26] -pin reg_out_i__1 O[26] -pin reg_out_i__2 I4[26]
load net reg_out__0[27] -attr @rip(#000000) O[27] -pin reg_out_i__1 O[27] -pin reg_out_i__2 I4[27]
load net reg_out__0[28] -attr @rip(#000000) O[28] -pin reg_out_i__1 O[28] -pin reg_out_i__2 I4[28]
load net reg_out__0[29] -attr @rip(#000000) O[29] -pin reg_out_i__1 O[29] -pin reg_out_i__2 I4[29]
load net reg_out__0[2] -attr @rip(#000000) O[2] -pin reg_out_i__1 O[2] -pin reg_out_i__2 I4[2]
load net reg_out__0[30] -attr @rip(#000000) O[30] -pin reg_out_i__1 O[30] -pin reg_out_i__2 I4[30]
load net reg_out__0[31] -attr @rip(#000000) O[31] -pin reg_out_i__1 O[31] -pin reg_out_i__2 I4[31]
load net reg_out__0[3] -attr @rip(#000000) O[3] -pin reg_out_i__1 O[3] -pin reg_out_i__2 I4[3]
load net reg_out__0[4] -attr @rip(#000000) O[4] -pin reg_out_i__1 O[4] -pin reg_out_i__2 I4[4]
load net reg_out__0[5] -attr @rip(#000000) O[5] -pin reg_out_i__1 O[5] -pin reg_out_i__2 I4[5]
load net reg_out__0[6] -attr @rip(#000000) O[6] -pin reg_out_i__1 O[6] -pin reg_out_i__2 I4[6]
load net reg_out__0[7] -attr @rip(#000000) O[7] -pin reg_out_i__1 O[7] -pin reg_out_i__2 I4[7]
load net reg_out__0[8] -attr @rip(#000000) O[8] -pin reg_out_i__1 O[8] -pin reg_out_i__2 I4[8]
load net reg_out__0[9] -attr @rip(#000000) O[9] -pin reg_out_i__1 O[9] -pin reg_out_i__2 I4[9]
load net reg_out_i__0_n_0 -attr @rip(#000000) O[31] -pin reg_out_i__0 O[31] -pin reg_out_i__2 I0[31]
load net reg_out_i__0_n_1 -attr @rip(#000000) O[30] -pin reg_out_i__0 O[30] -pin reg_out_i__2 I0[30]
load net reg_out_i__0_n_10 -attr @rip(#000000) O[21] -pin reg_out_i__0 O[21] -pin reg_out_i__2 I0[21]
load net reg_out_i__0_n_11 -attr @rip(#000000) O[20] -pin reg_out_i__0 O[20] -pin reg_out_i__2 I0[20]
load net reg_out_i__0_n_12 -attr @rip(#000000) O[19] -pin reg_out_i__0 O[19] -pin reg_out_i__2 I0[19]
load net reg_out_i__0_n_13 -attr @rip(#000000) O[18] -pin reg_out_i__0 O[18] -pin reg_out_i__2 I0[18]
load net reg_out_i__0_n_14 -attr @rip(#000000) O[17] -pin reg_out_i__0 O[17] -pin reg_out_i__2 I0[17]
load net reg_out_i__0_n_15 -attr @rip(#000000) O[16] -pin reg_out_i__0 O[16] -pin reg_out_i__2 I0[16]
load net reg_out_i__0_n_16 -attr @rip(#000000) O[15] -pin reg_out_i__0 O[15] -pin reg_out_i__2 I0[15]
load net reg_out_i__0_n_17 -attr @rip(#000000) O[14] -pin reg_out_i__0 O[14] -pin reg_out_i__2 I0[14]
load net reg_out_i__0_n_18 -attr @rip(#000000) O[13] -pin reg_out_i__0 O[13] -pin reg_out_i__2 I0[13]
load net reg_out_i__0_n_19 -attr @rip(#000000) O[12] -pin reg_out_i__0 O[12] -pin reg_out_i__2 I0[12]
load net reg_out_i__0_n_2 -attr @rip(#000000) O[29] -pin reg_out_i__0 O[29] -pin reg_out_i__2 I0[29]
load net reg_out_i__0_n_20 -attr @rip(#000000) O[11] -pin reg_out_i__0 O[11] -pin reg_out_i__2 I0[11]
load net reg_out_i__0_n_21 -attr @rip(#000000) O[10] -pin reg_out_i__0 O[10] -pin reg_out_i__2 I0[10]
load net reg_out_i__0_n_22 -attr @rip(#000000) O[9] -pin reg_out_i__0 O[9] -pin reg_out_i__2 I0[9]
load net reg_out_i__0_n_23 -attr @rip(#000000) O[8] -pin reg_out_i__0 O[8] -pin reg_out_i__2 I0[8]
load net reg_out_i__0_n_24 -attr @rip(#000000) O[7] -pin reg_out_i__0 O[7] -pin reg_out_i__2 I0[7]
load net reg_out_i__0_n_25 -attr @rip(#000000) O[6] -pin reg_out_i__0 O[6] -pin reg_out_i__2 I0[6]
load net reg_out_i__0_n_26 -attr @rip(#000000) O[5] -pin reg_out_i__0 O[5] -pin reg_out_i__2 I0[5]
load net reg_out_i__0_n_27 -attr @rip(#000000) O[4] -pin reg_out_i__0 O[4] -pin reg_out_i__2 I0[4]
load net reg_out_i__0_n_28 -attr @rip(#000000) O[3] -pin reg_out_i__0 O[3] -pin reg_out_i__2 I0[3]
load net reg_out_i__0_n_29 -attr @rip(#000000) O[2] -pin reg_out_i__0 O[2] -pin reg_out_i__2 I0[2]
load net reg_out_i__0_n_3 -attr @rip(#000000) O[28] -pin reg_out_i__0 O[28] -pin reg_out_i__2 I0[28]
load net reg_out_i__0_n_30 -attr @rip(#000000) O[1] -pin reg_out_i__0 O[1] -pin reg_out_i__2 I0[1]
load net reg_out_i__0_n_31 -attr @rip(#000000) O[0] -pin reg_out_i__0 O[0] -pin reg_out_i__2 I0[0]
load net reg_out_i__0_n_4 -attr @rip(#000000) O[27] -pin reg_out_i__0 O[27] -pin reg_out_i__2 I0[27]
load net reg_out_i__0_n_5 -attr @rip(#000000) O[26] -pin reg_out_i__0 O[26] -pin reg_out_i__2 I0[26]
load net reg_out_i__0_n_6 -attr @rip(#000000) O[25] -pin reg_out_i__0 O[25] -pin reg_out_i__2 I0[25]
load net reg_out_i__0_n_7 -attr @rip(#000000) O[24] -pin reg_out_i__0 O[24] -pin reg_out_i__2 I0[24]
load net reg_out_i__0_n_8 -attr @rip(#000000) O[23] -pin reg_out_i__0 O[23] -pin reg_out_i__2 I0[23]
load net reg_out_i__0_n_9 -attr @rip(#000000) O[22] -pin reg_out_i__0 O[22] -pin reg_out_i__2 I0[22]
load net reg_out_i_n_0 -attr @rip(#000000) O[31] -pin reg_out_i O[31] -pin reg_out_i__0 I1[31]
load net reg_out_i_n_1 -attr @rip(#000000) O[30] -pin reg_out_i O[30] -pin reg_out_i__0 I1[30]
load net reg_out_i_n_10 -attr @rip(#000000) O[21] -pin reg_out_i O[21] -pin reg_out_i__0 I1[21]
load net reg_out_i_n_11 -attr @rip(#000000) O[20] -pin reg_out_i O[20] -pin reg_out_i__0 I1[20]
load net reg_out_i_n_12 -attr @rip(#000000) O[19] -pin reg_out_i O[19] -pin reg_out_i__0 I1[19]
load net reg_out_i_n_13 -attr @rip(#000000) O[18] -pin reg_out_i O[18] -pin reg_out_i__0 I1[18]
load net reg_out_i_n_14 -attr @rip(#000000) O[17] -pin reg_out_i O[17] -pin reg_out_i__0 I1[17]
load net reg_out_i_n_15 -attr @rip(#000000) O[16] -pin reg_out_i O[16] -pin reg_out_i__0 I1[16]
load net reg_out_i_n_16 -attr @rip(#000000) O[15] -pin reg_out_i O[15] -pin reg_out_i__0 I1[15]
load net reg_out_i_n_17 -attr @rip(#000000) O[14] -pin reg_out_i O[14] -pin reg_out_i__0 I1[14]
load net reg_out_i_n_18 -attr @rip(#000000) O[13] -pin reg_out_i O[13] -pin reg_out_i__0 I1[13]
load net reg_out_i_n_19 -attr @rip(#000000) O[12] -pin reg_out_i O[12] -pin reg_out_i__0 I1[12]
load net reg_out_i_n_2 -attr @rip(#000000) O[29] -pin reg_out_i O[29] -pin reg_out_i__0 I1[29]
load net reg_out_i_n_20 -attr @rip(#000000) O[11] -pin reg_out_i O[11] -pin reg_out_i__0 I1[11]
load net reg_out_i_n_21 -attr @rip(#000000) O[10] -pin reg_out_i O[10] -pin reg_out_i__0 I1[10]
load net reg_out_i_n_22 -attr @rip(#000000) O[9] -pin reg_out_i O[9] -pin reg_out_i__0 I1[9]
load net reg_out_i_n_23 -attr @rip(#000000) O[8] -pin reg_out_i O[8] -pin reg_out_i__0 I1[8]
load net reg_out_i_n_24 -attr @rip(#000000) O[7] -pin reg_out_i O[7] -pin reg_out_i__0 I1[7]
load net reg_out_i_n_25 -attr @rip(#000000) O[6] -pin reg_out_i O[6] -pin reg_out_i__0 I1[6]
load net reg_out_i_n_26 -attr @rip(#000000) O[5] -pin reg_out_i O[5] -pin reg_out_i__0 I1[5]
load net reg_out_i_n_27 -attr @rip(#000000) O[4] -pin reg_out_i O[4] -pin reg_out_i__0 I1[4]
load net reg_out_i_n_28 -attr @rip(#000000) O[3] -pin reg_out_i O[3] -pin reg_out_i__0 I1[3]
load net reg_out_i_n_29 -attr @rip(#000000) O[2] -pin reg_out_i O[2] -pin reg_out_i__0 I1[2]
load net reg_out_i_n_3 -attr @rip(#000000) O[28] -pin reg_out_i O[28] -pin reg_out_i__0 I1[28]
load net reg_out_i_n_30 -attr @rip(#000000) O[1] -pin reg_out_i O[1] -pin reg_out_i__0 I1[1]
load net reg_out_i_n_31 -attr @rip(#000000) O[0] -pin reg_out_i O[0] -pin reg_out_i__0 I1[0]
load net reg_out_i_n_4 -attr @rip(#000000) O[27] -pin reg_out_i O[27] -pin reg_out_i__0 I1[27]
load net reg_out_i_n_5 -attr @rip(#000000) O[26] -pin reg_out_i O[26] -pin reg_out_i__0 I1[26]
load net reg_out_i_n_6 -attr @rip(#000000) O[25] -pin reg_out_i O[25] -pin reg_out_i__0 I1[25]
load net reg_out_i_n_7 -attr @rip(#000000) O[24] -pin reg_out_i O[24] -pin reg_out_i__0 I1[24]
load net reg_out_i_n_8 -attr @rip(#000000) O[23] -pin reg_out_i O[23] -pin reg_out_i__0 I1[23]
load net reg_out_i_n_9 -attr @rip(#000000) O[22] -pin reg_out_i O[22] -pin reg_out_i__0 I1[22]
load net reg_pc[0] -attr @rip(#000000) 0 -pin RTL_ADD__10 I0[0] -pin RTL_ADD__3 I0[0] -pin RTL_MUX__7 I1[0] -pin RTL_REDUCTION_OR__13 I0[0] -pin reg_pc_reg[31:0] Q[0]
load net reg_pc[10] -attr @rip(#000000) 10 -pin RTL_ADD__10 I0[10] -pin RTL_ADD__3 I0[10] -pin RTL_MUX__7 I1[10] -pin reg_pc_reg[31:0] Q[10]
load net reg_pc[11] -attr @rip(#000000) 11 -pin RTL_ADD__10 I0[11] -pin RTL_ADD__3 I0[11] -pin RTL_MUX__7 I1[11] -pin reg_pc_reg[31:0] Q[11]
load net reg_pc[12] -attr @rip(#000000) 12 -pin RTL_ADD__10 I0[12] -pin RTL_ADD__3 I0[12] -pin RTL_MUX__7 I1[12] -pin reg_pc_reg[31:0] Q[12]
load net reg_pc[13] -attr @rip(#000000) 13 -pin RTL_ADD__10 I0[13] -pin RTL_ADD__3 I0[13] -pin RTL_MUX__7 I1[13] -pin reg_pc_reg[31:0] Q[13]
load net reg_pc[14] -attr @rip(#000000) 14 -pin RTL_ADD__10 I0[14] -pin RTL_ADD__3 I0[14] -pin RTL_MUX__7 I1[14] -pin reg_pc_reg[31:0] Q[14]
load net reg_pc[15] -attr @rip(#000000) 15 -pin RTL_ADD__10 I0[15] -pin RTL_ADD__3 I0[15] -pin RTL_MUX__7 I1[15] -pin reg_pc_reg[31:0] Q[15]
load net reg_pc[16] -attr @rip(#000000) 16 -pin RTL_ADD__10 I0[16] -pin RTL_ADD__3 I0[16] -pin RTL_MUX__7 I1[16] -pin reg_pc_reg[31:0] Q[16]
load net reg_pc[17] -attr @rip(#000000) 17 -pin RTL_ADD__10 I0[17] -pin RTL_ADD__3 I0[17] -pin RTL_MUX__7 I1[17] -pin reg_pc_reg[31:0] Q[17]
load net reg_pc[18] -attr @rip(#000000) 18 -pin RTL_ADD__10 I0[18] -pin RTL_ADD__3 I0[18] -pin RTL_MUX__7 I1[18] -pin reg_pc_reg[31:0] Q[18]
load net reg_pc[19] -attr @rip(#000000) 19 -pin RTL_ADD__10 I0[19] -pin RTL_ADD__3 I0[19] -pin RTL_MUX__7 I1[19] -pin reg_pc_reg[31:0] Q[19]
load net reg_pc[1] -attr @rip(#000000) 1 -pin RTL_ADD__10 I0[1] -pin RTL_ADD__3 I0[1] -pin RTL_MUX__7 I1[1] -pin RTL_REDUCTION_OR__13 I0[1] -pin reg_pc_reg[31:0] Q[1]
load net reg_pc[20] -attr @rip(#000000) 20 -pin RTL_ADD__10 I0[20] -pin RTL_ADD__3 I0[20] -pin RTL_MUX__7 I1[20] -pin reg_pc_reg[31:0] Q[20]
load net reg_pc[21] -attr @rip(#000000) 21 -pin RTL_ADD__10 I0[21] -pin RTL_ADD__3 I0[21] -pin RTL_MUX__7 I1[21] -pin reg_pc_reg[31:0] Q[21]
load net reg_pc[22] -attr @rip(#000000) 22 -pin RTL_ADD__10 I0[22] -pin RTL_ADD__3 I0[22] -pin RTL_MUX__7 I1[22] -pin reg_pc_reg[31:0] Q[22]
load net reg_pc[23] -attr @rip(#000000) 23 -pin RTL_ADD__10 I0[23] -pin RTL_ADD__3 I0[23] -pin RTL_MUX__7 I1[23] -pin reg_pc_reg[31:0] Q[23]
load net reg_pc[24] -attr @rip(#000000) 24 -pin RTL_ADD__10 I0[24] -pin RTL_ADD__3 I0[24] -pin RTL_MUX__7 I1[24] -pin reg_pc_reg[31:0] Q[24]
load net reg_pc[25] -attr @rip(#000000) 25 -pin RTL_ADD__10 I0[25] -pin RTL_ADD__3 I0[25] -pin RTL_MUX__7 I1[25] -pin reg_pc_reg[31:0] Q[25]
load net reg_pc[26] -attr @rip(#000000) 26 -pin RTL_ADD__10 I0[26] -pin RTL_ADD__3 I0[26] -pin RTL_MUX__7 I1[26] -pin reg_pc_reg[31:0] Q[26]
load net reg_pc[27] -attr @rip(#000000) 27 -pin RTL_ADD__10 I0[27] -pin RTL_ADD__3 I0[27] -pin RTL_MUX__7 I1[27] -pin reg_pc_reg[31:0] Q[27]
load net reg_pc[28] -attr @rip(#000000) 28 -pin RTL_ADD__10 I0[28] -pin RTL_ADD__3 I0[28] -pin RTL_MUX__7 I1[28] -pin reg_pc_reg[31:0] Q[28]
load net reg_pc[29] -attr @rip(#000000) 29 -pin RTL_ADD__10 I0[29] -pin RTL_ADD__3 I0[29] -pin RTL_MUX__7 I1[29] -pin reg_pc_reg[31:0] Q[29]
load net reg_pc[2] -attr @rip(#000000) 2 -pin RTL_ADD__10 I0[2] -pin RTL_ADD__3 I0[2] -pin RTL_MUX__7 I1[2] -pin reg_pc_reg[31:0] Q[2]
load net reg_pc[30] -attr @rip(#000000) 30 -pin RTL_ADD__10 I0[30] -pin RTL_ADD__3 I0[30] -pin RTL_MUX__7 I1[30] -pin reg_pc_reg[31:0] Q[30]
load net reg_pc[31] -attr @rip(#000000) 31 -pin RTL_ADD__10 I0[31] -pin RTL_ADD__3 I0[31] -pin RTL_MUX__7 I1[31] -pin reg_pc_reg[31:0] Q[31]
load net reg_pc[3] -attr @rip(#000000) 3 -pin RTL_ADD__10 I0[3] -pin RTL_ADD__3 I0[3] -pin RTL_MUX__7 I1[3] -pin reg_pc_reg[31:0] Q[3]
load net reg_pc[4] -attr @rip(#000000) 4 -pin RTL_ADD__10 I0[4] -pin RTL_ADD__3 I0[4] -pin RTL_MUX__7 I1[4] -pin reg_pc_reg[31:0] Q[4]
load net reg_pc[5] -attr @rip(#000000) 5 -pin RTL_ADD__10 I0[5] -pin RTL_ADD__3 I0[5] -pin RTL_MUX__7 I1[5] -pin reg_pc_reg[31:0] Q[5]
load net reg_pc[6] -attr @rip(#000000) 6 -pin RTL_ADD__10 I0[6] -pin RTL_ADD__3 I0[6] -pin RTL_MUX__7 I1[6] -pin reg_pc_reg[31:0] Q[6]
load net reg_pc[7] -attr @rip(#000000) 7 -pin RTL_ADD__10 I0[7] -pin RTL_ADD__3 I0[7] -pin RTL_MUX__7 I1[7] -pin reg_pc_reg[31:0] Q[7]
load net reg_pc[8] -attr @rip(#000000) 8 -pin RTL_ADD__10 I0[8] -pin RTL_ADD__3 I0[8] -pin RTL_MUX__7 I1[8] -pin reg_pc_reg[31:0] Q[8]
load net reg_pc[9] -attr @rip(#000000) 9 -pin RTL_ADD__10 I0[9] -pin RTL_ADD__3 I0[9] -pin RTL_MUX__7 I1[9] -pin reg_pc_reg[31:0] Q[9]
load net reg_pc__0 -pin reg_pc_i O -pin reg_pc_reg[31:0] CE
netloc reg_pc__0 1 21 1 12070J 6780n
load net reg_sh1_out[0] -attr @rip(#000000) O[0] -pin reg_sh_i__1 O[0] -pin reg_sh_reg[4:0] D[0]
load net reg_sh1_out[1] -attr @rip(#000000) O[1] -pin reg_sh_i__1 O[1] -pin reg_sh_reg[4:0] D[1]
load net reg_sh1_out[2] -attr @rip(#000000) O[2] -pin reg_sh_i__1 O[2] -pin reg_sh_reg[4:0] D[2]
load net reg_sh1_out[3] -attr @rip(#000000) O[3] -pin reg_sh_i__1 O[3] -pin reg_sh_reg[4:0] D[3]
load net reg_sh1_out[4] -attr @rip(#000000) O[4] -pin reg_sh_i__1 O[4] -pin reg_sh_reg[4:0] D[4]
load net reg_sh[0] -attr @rip(#000000) 0 -pin RTL_ADD__6 I0[0] -pin RTL_ADD__7 I0[0] -pin RTL_EQ__86 I0[0] -pin RTL_GEQ I0[0] -pin reg_sh_reg[4:0] Q[0]
load net reg_sh[1] -attr @rip(#000000) 1 -pin RTL_ADD__6 I0[1] -pin RTL_ADD__7 I0[1] -pin RTL_EQ__86 I0[1] -pin RTL_GEQ I0[1] -pin reg_sh_reg[4:0] Q[1]
load net reg_sh[2] -attr @rip(#000000) 2 -pin RTL_ADD__6 I0[2] -pin RTL_ADD__7 I0[2] -pin RTL_EQ__86 I0[2] -pin RTL_GEQ I0[2] -pin reg_sh_reg[4:0] Q[2]
load net reg_sh[3] -attr @rip(#000000) 3 -pin RTL_ADD__6 I0[3] -pin RTL_ADD__7 I0[3] -pin RTL_EQ__86 I0[3] -pin RTL_GEQ I0[3] -pin reg_sh_reg[4:0] Q[3]
load net reg_sh[4] -attr @rip(#000000) 4 -pin RTL_ADD__6 I0[4] -pin RTL_ADD__7 I0[4] -pin RTL_EQ__86 I0[4] -pin RTL_GEQ I0[4] -pin reg_sh_reg[4:0] Q[4]
load net reg_sh__0[0] -attr @rip(#000000) O[0] -pin reg_sh_i O[0] -pin reg_sh_i__1 I0[0]
load net reg_sh__0[1] -attr @rip(#000000) O[1] -pin reg_sh_i O[1] -pin reg_sh_i__1 I0[1]
load net reg_sh__0[2] -attr @rip(#000000) O[2] -pin reg_sh_i O[2] -pin reg_sh_i__1 I0[2]
load net reg_sh__0[3] -attr @rip(#000000) O[3] -pin reg_sh_i O[3] -pin reg_sh_i__1 I0[3]
load net reg_sh__0[4] -attr @rip(#000000) O[4] -pin reg_sh_i O[4] -pin reg_sh_i__1 I0[4]
load net reg_sh_i__0_n_0 -attr @rip(#000000) O[4] -pin reg_sh_i__0 O[4] -pin reg_sh_i__1 I2[4]
load net reg_sh_i__0_n_1 -attr @rip(#000000) O[3] -pin reg_sh_i__0 O[3] -pin reg_sh_i__1 I2[3]
load net reg_sh_i__0_n_2 -attr @rip(#000000) O[2] -pin reg_sh_i__0 O[2] -pin reg_sh_i__1 I2[2]
load net reg_sh_i__0_n_3 -attr @rip(#000000) O[1] -pin reg_sh_i__0 O[1] -pin reg_sh_i__1 I2[1]
load net reg_sh_i__0_n_4 -attr @rip(#000000) O[0] -pin reg_sh_i__0 O[0] -pin reg_sh_i__1 I2[0]
load net resetn -pin RTL_AND__80 I0 -pin RTL_AND__81 I0 -pin RTL_AND__86 I0 -pin RTL_AND__89 I0 -pin RTL_INV__1 I0 -pin RTL_INV__2 I0 -pin RTL_INV__20 I0 -pin RTL_INV__5 I0 -pin RTL_INV__6 I0 -pin RTL_INV__7 I0 -pin RTL_MUX__2 S -pin mem_done_i I0 -pin mem_la_read_i I0 -port resetn
netloc resetn 1 0 70 NJ 6020 NJ 6020 NJ 6020 NJ 6020 1080 6020 1450 6020 NJ 6020 NJ 6020 NJ 6020 NJ 6020 NJ 6020 5220 6230N 5740 7130 NJ 7130 NJ 7130 NJ 7130 NJ 7130 NJ 7130 NJ 7130 NJ 7130 NJ 7130 NJ 7130 12550 7380 NJ 7380 NJ 7380 NJ 7380 NJ 7380 NJ 7380 NJ 7380 15520 7260 NJ 7260 NJ 7260 NJ 7260 NJ 7260 NJ 7260 NJ 7260 18560J 7310 18860J 7350 NJ 7350 NJ 7350 19580 7210 NJ 7210 NJ 7210 NJ 7210 NJ 7210 NJ 7210 NJ 7210 NJ 7210 NJ 7210 NJ 7210 NJ 7210 NJ 7210 NJ 7210 NJ 7210 NJ 7210 NJ 7210 NJ 7210 NJ 7210 NJ 7210 NJ 7210 NJ 7210 NJ 7210 NJ 7210 27720 7230 27940 7270 NJ 7270 28740 7070 NJ 7070 30610 7030 N
load net set_mem_do_rdata -pin mem_do_rdata_i S -pin mem_do_rdata_reg SET -pin set_mem_do_rdata_i__1 O
netloc set_mem_do_rdata 1 6 2 1720 6520N 2450
load net set_mem_do_rdata_i__0_n_0 -pin set_mem_do_rdata_i__0 O -pin set_mem_do_rdata_i__1 I1
netloc set_mem_do_rdata_i__0_n_0 1 5 1 1350 6110n
load net set_mem_do_rdata_i_n_0 -pin set_mem_do_rdata_i O -pin set_mem_do_rdata_i__0 I7
netloc set_mem_do_rdata_i_n_0 1 4 1 1020 6380n
load net set_mem_do_rinst -pin mem_do_rinst_reg SET -pin set_mem_do_rinst_i__1 O
netloc set_mem_do_rinst 1 47 1 22530 6670n
load net set_mem_do_rinst_i__0_n_0 -pin set_mem_do_rinst_i__0 O -pin set_mem_do_rinst_i__1 I1
netloc set_mem_do_rinst_i__0_n_0 1 46 1 22140 6370n
load net set_mem_do_rinst_i_n_0 -pin set_mem_do_rinst_i O -pin set_mem_do_rinst_i__0 I4
netloc set_mem_do_rinst_i_n_0 1 45 1 N 6380
load net set_mem_do_wdata -pin mem_do_wdata_i S -pin mem_do_wdata_reg SET -pin set_mem_do_wdata_i__1 O
netloc set_mem_do_wdata 1 35 2 18310 7000N N
load net set_mem_do_wdata_i__0_n_0 -pin set_mem_do_wdata_i__0 O -pin set_mem_do_wdata_i__1 I1
netloc set_mem_do_wdata_i__0_n_0 1 34 1 18020 6350n
load net set_mem_do_wdata_i_n_0 -pin set_mem_do_wdata_i O -pin set_mem_do_wdata_i__0 I6
netloc set_mem_do_wdata_i_n_0 1 33 1 17640 6400n
load net trace_data[0] -attr @rip(#000000) 0 -port trace_data[0] -pin trace_data_reg[35:0] Q[0]
load net trace_data[10] -attr @rip(#000000) 10 -port trace_data[10] -pin trace_data_reg[35:0] Q[10]
load net trace_data[11] -attr @rip(#000000) 11 -port trace_data[11] -pin trace_data_reg[35:0] Q[11]
load net trace_data[12] -attr @rip(#000000) 12 -port trace_data[12] -pin trace_data_reg[35:0] Q[12]
load net trace_data[13] -attr @rip(#000000) 13 -port trace_data[13] -pin trace_data_reg[35:0] Q[13]
load net trace_data[14] -attr @rip(#000000) 14 -port trace_data[14] -pin trace_data_reg[35:0] Q[14]
load net trace_data[15] -attr @rip(#000000) 15 -port trace_data[15] -pin trace_data_reg[35:0] Q[15]
load net trace_data[16] -attr @rip(#000000) 16 -port trace_data[16] -pin trace_data_reg[35:0] Q[16]
load net trace_data[17] -attr @rip(#000000) 17 -port trace_data[17] -pin trace_data_reg[35:0] Q[17]
load net trace_data[18] -attr @rip(#000000) 18 -port trace_data[18] -pin trace_data_reg[35:0] Q[18]
load net trace_data[19] -attr @rip(#000000) 19 -port trace_data[19] -pin trace_data_reg[35:0] Q[19]
load net trace_data[1] -attr @rip(#000000) 1 -port trace_data[1] -pin trace_data_reg[35:0] Q[1]
load net trace_data[20] -attr @rip(#000000) 20 -port trace_data[20] -pin trace_data_reg[35:0] Q[20]
load net trace_data[21] -attr @rip(#000000) 21 -port trace_data[21] -pin trace_data_reg[35:0] Q[21]
load net trace_data[22] -attr @rip(#000000) 22 -port trace_data[22] -pin trace_data_reg[35:0] Q[22]
load net trace_data[23] -attr @rip(#000000) 23 -port trace_data[23] -pin trace_data_reg[35:0] Q[23]
load net trace_data[24] -attr @rip(#000000) 24 -port trace_data[24] -pin trace_data_reg[35:0] Q[24]
load net trace_data[25] -attr @rip(#000000) 25 -port trace_data[25] -pin trace_data_reg[35:0] Q[25]
load net trace_data[26] -attr @rip(#000000) 26 -port trace_data[26] -pin trace_data_reg[35:0] Q[26]
load net trace_data[27] -attr @rip(#000000) 27 -port trace_data[27] -pin trace_data_reg[35:0] Q[27]
load net trace_data[28] -attr @rip(#000000) 28 -port trace_data[28] -pin trace_data_reg[35:0] Q[28]
load net trace_data[29] -attr @rip(#000000) 29 -port trace_data[29] -pin trace_data_reg[35:0] Q[29]
load net trace_data[2] -attr @rip(#000000) 2 -port trace_data[2] -pin trace_data_reg[35:0] Q[2]
load net trace_data[30] -attr @rip(#000000) 30 -port trace_data[30] -pin trace_data_reg[35:0] Q[30]
load net trace_data[31] -attr @rip(#000000) 31 -port trace_data[31] -pin trace_data_reg[35:0] Q[31]
load net trace_data[32] -attr @rip(#000000) 32 -port trace_data[32] -pin trace_data_reg[35:0] Q[32]
load net trace_data[33] -attr @rip(#000000) 33 -port trace_data[33] -pin trace_data_reg[35:0] Q[33]
load net trace_data[34] -attr @rip(#000000) 34 -port trace_data[34] -pin trace_data_reg[35:0] Q[34]
load net trace_data[35] -attr @rip(#000000) 35 -port trace_data[35] -pin trace_data_reg[35:0] Q[35]
load net trace_data[3] -attr @rip(#000000) 3 -port trace_data[3] -pin trace_data_reg[35:0] Q[3]
load net trace_data[4] -attr @rip(#000000) 4 -port trace_data[4] -pin trace_data_reg[35:0] Q[4]
load net trace_data[5] -attr @rip(#000000) 5 -port trace_data[5] -pin trace_data_reg[35:0] Q[5]
load net trace_data[6] -attr @rip(#000000) 6 -port trace_data[6] -pin trace_data_reg[35:0] Q[6]
load net trace_data[7] -attr @rip(#000000) 7 -port trace_data[7] -pin trace_data_reg[35:0] Q[7]
load net trace_data[8] -attr @rip(#000000) 8 -port trace_data[8] -pin trace_data_reg[35:0] Q[8]
load net trace_data[9] -attr @rip(#000000) 9 -port trace_data[9] -pin trace_data_reg[35:0] Q[9]
load net trace_valid -pin RTL_INV__17 I0 -pin do_waitirq_reg Q -port trace_valid
netloc trace_valid 1 42 29 20200 7370 NJ 7370 NJ 7370 NJ 7370 NJ 7370 NJ 7370 NJ 7370 NJ 7370 NJ 7370 NJ 7370 NJ 7370 NJ 7370 NJ 7370 NJ 7370 NJ 7370 NJ 7370 NJ 7370 NJ 7370 NJ 7370 NJ 7370 NJ 7370 NJ 7370 NJ 7370 NJ 7370 28960J 7160 29630J 7210 30310J 7260 31080J 7140 31480
load net trap -pin RTL_OR__3 I1 -port trap -pin trap_reg Q
netloc trap 1 64 7 28020 7470 NJ 7470 NJ 7470 29610J 7450 30150J 7550 NJ 7550 31500
load net trap_i_n_0 -pin trap_i O -pin trap_reg D
netloc trap_i_n_0 1 69 1 30940 7500n
load netBundle @mem_rdata 32 mem_rdata[31] mem_rdata[30] mem_rdata[29] mem_rdata[28] mem_rdata[27] mem_rdata[26] mem_rdata[25] mem_rdata[24] mem_rdata[23] mem_rdata[22] mem_rdata[21] mem_rdata[20] mem_rdata[19] mem_rdata[18] mem_rdata[17] mem_rdata[16] mem_rdata[15] mem_rdata[14] mem_rdata[13] mem_rdata[12] mem_rdata[11] mem_rdata[10] mem_rdata[9] mem_rdata[8] mem_rdata[7] mem_rdata[6] mem_rdata[5] mem_rdata[4] mem_rdata[3] mem_rdata[2] mem_rdata[1] mem_rdata[0] -autobundled
netbloc @mem_rdata 1 0 14 NJ 4570 200 4650 460 4610 NJ 4610 NJ 4610 NJ 4610 1760J 4680 NJ 4680 NJ 4680 4000J 4560 4590J 4640 NJ 4640 5840 3660 NJ
load netBundle @eoi 32 eoi[31] eoi[30] eoi[29] eoi[28] eoi[27] eoi[26] eoi[25] eoi[24] eoi[23] eoi[22] eoi[21] eoi[20] eoi[19] eoi[18] eoi[17] eoi[16] eoi[15] eoi[14] eoi[13] eoi[12] eoi[11] eoi[10] eoi[9] eoi[8] eoi[7] eoi[6] eoi[5] eoi[4] eoi[3] eoi[2] eoi[1] eoi[0] -autobundled
netbloc @eoi 1 70 1 NJ 7330
load netBundle @mem_addr 32 mem_addr[31] mem_addr[30] mem_addr[29] mem_addr[28] mem_addr[27] mem_addr[26] mem_addr[25] mem_addr[24] mem_addr[23] mem_addr[22] mem_addr[21] mem_addr[20] mem_addr[19] mem_addr[18] mem_addr[17] mem_addr[16] mem_addr[15] mem_addr[14] mem_addr[13] mem_addr[12] mem_addr[11] mem_addr[10] mem_addr[9] mem_addr[8] mem_addr[7] mem_addr[6] mem_addr[5] mem_addr[4] mem_addr[3] mem_addr[2] mem_addr[1] mem_addr[0] -autobundled
netbloc @mem_addr 1 70 1 NJ 6560
load netBundle @mem_la_addr 32 mem_la_addr[31] mem_la_addr[30] mem_la_addr[29] mem_la_addr[28] mem_la_addr[27] mem_la_addr[26] mem_la_addr[25] mem_la_addr[24] mem_la_addr[23] mem_la_addr[22] mem_la_addr[21] mem_la_addr[20] mem_la_addr[19] mem_la_addr[18] mem_la_addr[17] mem_la_addr[16] mem_la_addr[15] mem_la_addr[14] mem_la_addr[13] mem_la_addr[12] mem_la_addr[11] mem_la_addr[10] mem_la_addr[9] mem_la_addr[8] mem_la_addr[7] mem_la_addr[6] mem_la_addr[5] mem_la_addr[4] mem_la_addr[3] mem_la_addr[2] mem_la_addr[1] mem_la_addr[0] -autobundled
netbloc @mem_la_addr 1 69 2 31000 6640 NJ
load netBundle @mem_la_wdata 32 mem_la_wdata[31] mem_la_wdata[30] mem_la_wdata[29] mem_la_wdata[28] mem_la_wdata[27] mem_la_wdata[26] mem_la_wdata[25] mem_la_wdata[24] mem_la_wdata[23] mem_la_wdata[22] mem_la_wdata[21] mem_la_wdata[20] mem_la_wdata[19] mem_la_wdata[18] mem_la_wdata[17] mem_la_wdata[16] mem_la_wdata[15] mem_la_wdata[14] mem_la_wdata[13] mem_la_wdata[12] mem_la_wdata[11] mem_la_wdata[10] mem_la_wdata[9] mem_la_wdata[8] mem_la_wdata[7] mem_la_wdata[6] mem_la_wdata[5] mem_la_wdata[4] mem_la_wdata[3] mem_la_wdata[2] mem_la_wdata[1] mem_la_wdata[0] -autobundled
netbloc @mem_la_wdata 1 69 2 31180 5710 NJ
load netBundle @mem_la_wstrb 4 mem_la_wstrb[3] mem_la_wstrb[2] mem_la_wstrb[1] mem_la_wstrb[0] -autobundled
netbloc @mem_la_wstrb 1 66 5 29020 5990 NJ 5990 NJ 5990 31000J 6020 31480
load netBundle @mem_wdata 32 mem_wdata[31] mem_wdata[30] mem_wdata[29] mem_wdata[28] mem_wdata[27] mem_wdata[26] mem_wdata[25] mem_wdata[24] mem_wdata[23] mem_wdata[22] mem_wdata[21] mem_wdata[20] mem_wdata[19] mem_wdata[18] mem_wdata[17] mem_wdata[16] mem_wdata[15] mem_wdata[14] mem_wdata[13] mem_wdata[12] mem_wdata[11] mem_wdata[10] mem_wdata[9] mem_wdata[8] mem_wdata[7] mem_wdata[6] mem_wdata[5] mem_wdata[4] mem_wdata[3] mem_wdata[2] mem_wdata[1] mem_wdata[0] -autobundled
netbloc @mem_wdata 1 70 1 NJ 5940
load netBundle @mem_wstrb 4 mem_wstrb[3] mem_wstrb[2] mem_wstrb[1] mem_wstrb[0] -autobundled
netbloc @mem_wstrb 1 70 1 NJ 6420
load netBundle @pcpi_insn 32 pcpi_insn[31] pcpi_insn[30] pcpi_insn[29] pcpi_insn[28] pcpi_insn[27] pcpi_insn[26] pcpi_insn[25] pcpi_insn[24] pcpi_insn[23] pcpi_insn[22] pcpi_insn[21] pcpi_insn[20] pcpi_insn[19] pcpi_insn[18] pcpi_insn[17] pcpi_insn[16] pcpi_insn[15] pcpi_insn[14] pcpi_insn[13] pcpi_insn[12] pcpi_insn[11] pcpi_insn[10] pcpi_insn[9] pcpi_insn[8] pcpi_insn[7] pcpi_insn[6] pcpi_insn[5] pcpi_insn[4] pcpi_insn[3] pcpi_insn[2] pcpi_insn[1] pcpi_insn[0] -autobundled
netbloc @pcpi_insn 1 70 1 NJ 5460
load netBundle @pcpi_rs1 32 pcpi_rs1[31] pcpi_rs1[30] pcpi_rs1[29] pcpi_rs1[28] pcpi_rs1[27] pcpi_rs1[26] pcpi_rs1[25] pcpi_rs1[24] pcpi_rs1[23] pcpi_rs1[22] pcpi_rs1[21] pcpi_rs1[20] pcpi_rs1[19] pcpi_rs1[18] pcpi_rs1[17] pcpi_rs1[16] pcpi_rs1[15] pcpi_rs1[14] pcpi_rs1[13] pcpi_rs1[12] pcpi_rs1[11] pcpi_rs1[10] pcpi_rs1[9] pcpi_rs1[8] pcpi_rs1[7] pcpi_rs1[6] pcpi_rs1[5] pcpi_rs1[4] pcpi_rs1[3] pcpi_rs1[2] pcpi_rs1[1] pcpi_rs1[0] -autobundled
netbloc @pcpi_rs1 1 12 59 6060 3630N 6850 5490 7670 6080 8480 7480 NJ 7480 NJ 7480 NJ 7480 NJ 7480 NJ 7480 NJ 7480 NJ 7480 NJ 7480 NJ 7480 NJ 7480 NJ 7480 14630 5090 NJ 5090 NJ 5090 NJ 5090 NJ 5090 NJ 5090 NJ 5090 NJ 5090 NJ 5090 NJ 5090 NJ 5090 NJ 5090 NJ 5090 NJ 5090 NJ 5090 NJ 5090 NJ 5090 20730J 4670 21590J 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 28400 5390 28920J 5440 29690 5490 30530 5690N 31200 5690 31480
load netBundle @pcpi_rs2 32 pcpi_rs2[31] pcpi_rs2[30] pcpi_rs2[29] pcpi_rs2[28] pcpi_rs2[27] pcpi_rs2[26] pcpi_rs2[25] pcpi_rs2[24] pcpi_rs2[23] pcpi_rs2[22] pcpi_rs2[21] pcpi_rs2[20] pcpi_rs2[19] pcpi_rs2[18] pcpi_rs2[17] pcpi_rs2[16] pcpi_rs2[15] pcpi_rs2[14] pcpi_rs2[13] pcpi_rs2[12] pcpi_rs2[11] pcpi_rs2[10] pcpi_rs2[9] pcpi_rs2[8] pcpi_rs2[7] pcpi_rs2[6] pcpi_rs2[5] pcpi_rs2[4] pcpi_rs2[3] pcpi_rs2[2] pcpi_rs2[1] pcpi_rs2[0] -autobundled
netbloc @pcpi_rs2 1 12 59 6260 6050 6950 5750 7510 5690 8620J 5640 NJ 5640 NJ 5640 NJ 5640 NJ 5640 NJ 5640 NJ 5640 NJ 5640 NJ 5640 NJ 5640 NJ 5640 13970J 5370 NJ 5370 NJ 5370 15720J 5490 NJ 5490 NJ 5490 NJ 5490 NJ 5490 NJ 5490 NJ 5490 NJ 5490 NJ 5490 NJ 5490 NJ 5490 NJ 5490 NJ 5490 NJ 5490 NJ 5490 NJ 5490 21470J 5720 22120J 5540 NJ 5540 NJ 5540 NJ 5540 NJ 5540 NJ 5540 NJ 5540 24610J 5520 NJ 5520 NJ 5520 NJ 5520 NJ 5520 NJ 5520 NJ 5520 NJ 5520 NJ 5520 NJ 5520 NJ 5520 NJ 5520 NJ 5520 NJ 5520 NJ 5520 30550 5860 30980 6040 NJ
load netBundle @trace_data 36 trace_data[35] trace_data[34] trace_data[33] trace_data[32] trace_data[31] trace_data[30] trace_data[29] trace_data[28] trace_data[27] trace_data[26] trace_data[25] trace_data[24] trace_data[23] trace_data[22] trace_data[21] trace_data[20] trace_data[19] trace_data[18] trace_data[17] trace_data[16] trace_data[15] trace_data[14] trace_data[13] trace_data[12] trace_data[11] trace_data[10] trace_data[9] trace_data[8] trace_data[7] trace_data[6] trace_data[5] trace_data[4] trace_data[3] trace_data[2] trace_data[1] trace_data[0] -autobundled
netbloc @trace_data 1 70 1 NJ 5090
load netBundle @RTL_ADD_n_ 32 RTL_ADD_n_0 RTL_ADD_n_1 RTL_ADD_n_2 RTL_ADD_n_3 RTL_ADD_n_4 RTL_ADD_n_5 RTL_ADD_n_6 RTL_ADD_n_7 RTL_ADD_n_8 RTL_ADD_n_9 RTL_ADD_n_10 RTL_ADD_n_11 RTL_ADD_n_12 RTL_ADD_n_13 RTL_ADD_n_14 RTL_ADD_n_15 RTL_ADD_n_16 RTL_ADD_n_17 RTL_ADD_n_18 RTL_ADD_n_19 RTL_ADD_n_20 RTL_ADD_n_21 RTL_ADD_n_22 RTL_ADD_n_23 RTL_ADD_n_24 RTL_ADD_n_25 RTL_ADD_n_26 RTL_ADD_n_27 RTL_ADD_n_28 RTL_ADD_n_29 RTL_ADD_n_30 RTL_ADD_n_31 -autobundled
netbloc @RTL_ADD_n_ 1 14 1 7970 5850n
load netBundle @RTL_ADD__0_n_ 32 RTL_ADD__0_n_0 RTL_ADD__0_n_1 RTL_ADD__0_n_2 RTL_ADD__0_n_3 RTL_ADD__0_n_4 RTL_ADD__0_n_5 RTL_ADD__0_n_6 RTL_ADD__0_n_7 RTL_ADD__0_n_8 RTL_ADD__0_n_9 RTL_ADD__0_n_10 RTL_ADD__0_n_11 RTL_ADD__0_n_12 RTL_ADD__0_n_13 RTL_ADD__0_n_14 RTL_ADD__0_n_15 RTL_ADD__0_n_16 RTL_ADD__0_n_17 RTL_ADD__0_n_18 RTL_ADD__0_n_19 RTL_ADD__0_n_20 RTL_ADD__0_n_21 RTL_ADD__0_n_22 RTL_ADD__0_n_23 RTL_ADD__0_n_24 RTL_ADD__0_n_25 RTL_ADD__0_n_26 RTL_ADD__0_n_27 RTL_ADD__0_n_28 RTL_ADD__0_n_29 RTL_ADD__0_n_30 RTL_ADD__0_n_31 -autobundled
netbloc @RTL_ADD__0_n_ 1 14 1 7510 5800n
load netBundle @RTL_ADD__1_n_ 64 RTL_ADD__1_n_0 RTL_ADD__1_n_1 RTL_ADD__1_n_2 RTL_ADD__1_n_3 RTL_ADD__1_n_4 RTL_ADD__1_n_5 RTL_ADD__1_n_6 RTL_ADD__1_n_7 RTL_ADD__1_n_8 RTL_ADD__1_n_9 RTL_ADD__1_n_10 RTL_ADD__1_n_11 RTL_ADD__1_n_12 RTL_ADD__1_n_13 RTL_ADD__1_n_14 RTL_ADD__1_n_15 RTL_ADD__1_n_16 RTL_ADD__1_n_17 RTL_ADD__1_n_18 RTL_ADD__1_n_19 RTL_ADD__1_n_20 RTL_ADD__1_n_21 RTL_ADD__1_n_22 RTL_ADD__1_n_23 RTL_ADD__1_n_24 RTL_ADD__1_n_25 RTL_ADD__1_n_26 RTL_ADD__1_n_27 RTL_ADD__1_n_28 RTL_ADD__1_n_29 RTL_ADD__1_n_30 RTL_ADD__1_n_31 RTL_ADD__1_n_32 RTL_ADD__1_n_33 RTL_ADD__1_n_34 RTL_ADD__1_n_35 RTL_ADD__1_n_36 RTL_ADD__1_n_37 RTL_ADD__1_n_38 RTL_ADD__1_n_39 RTL_ADD__1_n_40 RTL_ADD__1_n_41 RTL_ADD__1_n_42 RTL_ADD__1_n_43 RTL_ADD__1_n_44 RTL_ADD__1_n_45 RTL_ADD__1_n_46 RTL_ADD__1_n_47 RTL_ADD__1_n_48 RTL_ADD__1_n_49 RTL_ADD__1_n_50 RTL_ADD__1_n_51 RTL_ADD__1_n_52 RTL_ADD__1_n_53 RTL_ADD__1_n_54 RTL_ADD__1_n_55 RTL_ADD__1_n_56 RTL_ADD__1_n_57 RTL_ADD__1_n_58 RTL_ADD__1_n_59 RTL_ADD__1_n_60 RTL_ADD__1_n_61 RTL_ADD__1_n_62 RTL_ADD__1_n_63 -autobundled
netbloc @RTL_ADD__1_n_ 1 12 1 5780 3820n
load netBundle @RTL_ADD__10_n_ 32 RTL_ADD__10_n_0 RTL_ADD__10_n_1 RTL_ADD__10_n_2 RTL_ADD__10_n_3 RTL_ADD__10_n_4 RTL_ADD__10_n_5 RTL_ADD__10_n_6 RTL_ADD__10_n_7 RTL_ADD__10_n_8 RTL_ADD__10_n_9 RTL_ADD__10_n_10 RTL_ADD__10_n_11 RTL_ADD__10_n_12 RTL_ADD__10_n_13 RTL_ADD__10_n_14 RTL_ADD__10_n_15 RTL_ADD__10_n_16 RTL_ADD__10_n_17 RTL_ADD__10_n_18 RTL_ADD__10_n_19 RTL_ADD__10_n_20 RTL_ADD__10_n_21 RTL_ADD__10_n_22 RTL_ADD__10_n_23 RTL_ADD__10_n_24 RTL_ADD__10_n_25 RTL_ADD__10_n_26 RTL_ADD__10_n_27 RTL_ADD__10_n_28 RTL_ADD__10_n_29 RTL_ADD__10_n_30 RTL_ADD__10_n_31 -autobundled
netbloc @RTL_ADD__10_n_ 1 23 1 12820 6090n
load netBundle @RTL_ADD__2_n_ 64 RTL_ADD__2_n_0 RTL_ADD__2_n_1 RTL_ADD__2_n_2 RTL_ADD__2_n_3 RTL_ADD__2_n_4 RTL_ADD__2_n_5 RTL_ADD__2_n_6 RTL_ADD__2_n_7 RTL_ADD__2_n_8 RTL_ADD__2_n_9 RTL_ADD__2_n_10 RTL_ADD__2_n_11 RTL_ADD__2_n_12 RTL_ADD__2_n_13 RTL_ADD__2_n_14 RTL_ADD__2_n_15 RTL_ADD__2_n_16 RTL_ADD__2_n_17 RTL_ADD__2_n_18 RTL_ADD__2_n_19 RTL_ADD__2_n_20 RTL_ADD__2_n_21 RTL_ADD__2_n_22 RTL_ADD__2_n_23 RTL_ADD__2_n_24 RTL_ADD__2_n_25 RTL_ADD__2_n_26 RTL_ADD__2_n_27 RTL_ADD__2_n_28 RTL_ADD__2_n_29 RTL_ADD__2_n_30 RTL_ADD__2_n_31 RTL_ADD__2_n_32 RTL_ADD__2_n_33 RTL_ADD__2_n_34 RTL_ADD__2_n_35 RTL_ADD__2_n_36 RTL_ADD__2_n_37 RTL_ADD__2_n_38 RTL_ADD__2_n_39 RTL_ADD__2_n_40 RTL_ADD__2_n_41 RTL_ADD__2_n_42 RTL_ADD__2_n_43 RTL_ADD__2_n_44 RTL_ADD__2_n_45 RTL_ADD__2_n_46 RTL_ADD__2_n_47 RTL_ADD__2_n_48 RTL_ADD__2_n_49 RTL_ADD__2_n_50 RTL_ADD__2_n_51 RTL_ADD__2_n_52 RTL_ADD__2_n_53 RTL_ADD__2_n_54 RTL_ADD__2_n_55 RTL_ADD__2_n_56 RTL_ADD__2_n_57 RTL_ADD__2_n_58 RTL_ADD__2_n_59 RTL_ADD__2_n_60 RTL_ADD__2_n_61 RTL_ADD__2_n_62 RTL_ADD__2_n_63 -autobundled
netbloc @RTL_ADD__2_n_ 1 12 1 5820 3900n
load netBundle @RTL_ADD__3_n_ 32 RTL_ADD__3_n_0 RTL_ADD__3_n_1 RTL_ADD__3_n_2 RTL_ADD__3_n_3 RTL_ADD__3_n_4 RTL_ADD__3_n_5 RTL_ADD__3_n_6 RTL_ADD__3_n_7 RTL_ADD__3_n_8 RTL_ADD__3_n_9 RTL_ADD__3_n_10 RTL_ADD__3_n_11 RTL_ADD__3_n_12 RTL_ADD__3_n_13 RTL_ADD__3_n_14 RTL_ADD__3_n_15 RTL_ADD__3_n_16 RTL_ADD__3_n_17 RTL_ADD__3_n_18 RTL_ADD__3_n_19 RTL_ADD__3_n_20 RTL_ADD__3_n_21 RTL_ADD__3_n_22 RTL_ADD__3_n_23 RTL_ADD__3_n_24 RTL_ADD__3_n_25 RTL_ADD__3_n_26 RTL_ADD__3_n_27 RTL_ADD__3_n_28 RTL_ADD__3_n_29 RTL_ADD__3_n_30 RTL_ADD__3_n_31 -autobundled
netbloc @RTL_ADD__3_n_ 1 15 1 8520 6580n
load netBundle @RTL_ADD__4_n_ 32 RTL_ADD__4_n_0 RTL_ADD__4_n_1 RTL_ADD__4_n_2 RTL_ADD__4_n_3 RTL_ADD__4_n_4 RTL_ADD__4_n_5 RTL_ADD__4_n_6 RTL_ADD__4_n_7 RTL_ADD__4_n_8 RTL_ADD__4_n_9 RTL_ADD__4_n_10 RTL_ADD__4_n_11 RTL_ADD__4_n_12 RTL_ADD__4_n_13 RTL_ADD__4_n_14 RTL_ADD__4_n_15 RTL_ADD__4_n_16 RTL_ADD__4_n_17 RTL_ADD__4_n_18 RTL_ADD__4_n_19 RTL_ADD__4_n_20 RTL_ADD__4_n_21 RTL_ADD__4_n_22 RTL_ADD__4_n_23 RTL_ADD__4_n_24 RTL_ADD__4_n_25 RTL_ADD__4_n_26 RTL_ADD__4_n_27 RTL_ADD__4_n_28 RTL_ADD__4_n_29 RTL_ADD__4_n_30 RTL_ADD__4_n_31 -autobundled
netbloc @RTL_ADD__4_n_ 1 16 1 9440 6330n
load netBundle @RTL_ADD__5_n_ 32 RTL_ADD__5_n_0 RTL_ADD__5_n_1 RTL_ADD__5_n_2 RTL_ADD__5_n_3 RTL_ADD__5_n_4 RTL_ADD__5_n_5 RTL_ADD__5_n_6 RTL_ADD__5_n_7 RTL_ADD__5_n_8 RTL_ADD__5_n_9 RTL_ADD__5_n_10 RTL_ADD__5_n_11 RTL_ADD__5_n_12 RTL_ADD__5_n_13 RTL_ADD__5_n_14 RTL_ADD__5_n_15 RTL_ADD__5_n_16 RTL_ADD__5_n_17 RTL_ADD__5_n_18 RTL_ADD__5_n_19 RTL_ADD__5_n_20 RTL_ADD__5_n_21 RTL_ADD__5_n_22 RTL_ADD__5_n_23 RTL_ADD__5_n_24 RTL_ADD__5_n_25 RTL_ADD__5_n_26 RTL_ADD__5_n_27 RTL_ADD__5_n_28 RTL_ADD__5_n_29 RTL_ADD__5_n_30 RTL_ADD__5_n_31 -autobundled
netbloc @RTL_ADD__5_n_ 1 16 1 9480 6350n
load netBundle @RTL_ADD__6_n_ 5 RTL_ADD__6_n_0 RTL_ADD__6_n_1 RTL_ADD__6_n_2 RTL_ADD__6_n_3 RTL_ADD__6_n_4 -autobundled
netbloc @RTL_ADD__6_n_ 1 26 1 N 6320
load netBundle @RTL_ADD__7_n_ 5 RTL_ADD__7_n_0 RTL_ADD__7_n_1 RTL_ADD__7_n_2 RTL_ADD__7_n_3 RTL_ADD__7_n_4 -autobundled
netbloc @RTL_ADD__7_n_ 1 26 1 14070 6340n
load netBundle @RTL_ADD__8_n_ 32 RTL_ADD__8_n_0 RTL_ADD__8_n_1 RTL_ADD__8_n_2 RTL_ADD__8_n_3 RTL_ADD__8_n_4 RTL_ADD__8_n_5 RTL_ADD__8_n_6 RTL_ADD__8_n_7 RTL_ADD__8_n_8 RTL_ADD__8_n_9 RTL_ADD__8_n_10 RTL_ADD__8_n_11 RTL_ADD__8_n_12 RTL_ADD__8_n_13 RTL_ADD__8_n_14 RTL_ADD__8_n_15 RTL_ADD__8_n_16 RTL_ADD__8_n_17 RTL_ADD__8_n_18 RTL_ADD__8_n_19 RTL_ADD__8_n_20 RTL_ADD__8_n_21 RTL_ADD__8_n_22 RTL_ADD__8_n_23 RTL_ADD__8_n_24 RTL_ADD__8_n_25 RTL_ADD__8_n_26 RTL_ADD__8_n_27 RTL_ADD__8_n_28 RTL_ADD__8_n_29 RTL_ADD__8_n_30 RTL_ADD__8_n_31 -autobundled
netbloc @RTL_ADD__8_n_ 1 68 1 N 5110
load netBundle @RTL_ADD__9_n_ 32 RTL_ADD__9_n_0 RTL_ADD__9_n_1 RTL_ADD__9_n_2 RTL_ADD__9_n_3 RTL_ADD__9_n_4 RTL_ADD__9_n_5 RTL_ADD__9_n_6 RTL_ADD__9_n_7 RTL_ADD__9_n_8 RTL_ADD__9_n_9 RTL_ADD__9_n_10 RTL_ADD__9_n_11 RTL_ADD__9_n_12 RTL_ADD__9_n_13 RTL_ADD__9_n_14 RTL_ADD__9_n_15 RTL_ADD__9_n_16 RTL_ADD__9_n_17 RTL_ADD__9_n_18 RTL_ADD__9_n_19 RTL_ADD__9_n_20 RTL_ADD__9_n_21 RTL_ADD__9_n_22 RTL_ADD__9_n_23 RTL_ADD__9_n_24 RTL_ADD__9_n_25 RTL_ADD__9_n_26 RTL_ADD__9_n_27 RTL_ADD__9_n_28 RTL_ADD__9_n_29 RTL_ADD__9_n_30 RTL_ADD__9_n_31 -autobundled
netbloc @RTL_ADD__9_n_ 1 68 1 30210 5130n
load netBundle @RTL_AND__66_n_ 32 RTL_AND__66_n_0 RTL_AND__66_n_1 RTL_AND__66_n_2 RTL_AND__66_n_3 RTL_AND__66_n_4 RTL_AND__66_n_5 RTL_AND__66_n_6 RTL_AND__66_n_7 RTL_AND__66_n_8 RTL_AND__66_n_9 RTL_AND__66_n_10 RTL_AND__66_n_11 RTL_AND__66_n_12 RTL_AND__66_n_13 RTL_AND__66_n_14 RTL_AND__66_n_15 RTL_AND__66_n_16 RTL_AND__66_n_17 RTL_AND__66_n_18 RTL_AND__66_n_19 RTL_AND__66_n_20 RTL_AND__66_n_21 RTL_AND__66_n_22 RTL_AND__66_n_23 RTL_AND__66_n_24 RTL_AND__66_n_25 RTL_AND__66_n_26 RTL_AND__66_n_27 RTL_AND__66_n_28 RTL_AND__66_n_29 RTL_AND__66_n_30 RTL_AND__66_n_31 -autobundled
netbloc @RTL_AND__66_n_ 1 15 1 8560 5440n
load netBundle @RTL_AND__67_n_ 32 RTL_AND__67_n_0 RTL_AND__67_n_1 RTL_AND__67_n_2 RTL_AND__67_n_3 RTL_AND__67_n_4 RTL_AND__67_n_5 RTL_AND__67_n_6 RTL_AND__67_n_7 RTL_AND__67_n_8 RTL_AND__67_n_9 RTL_AND__67_n_10 RTL_AND__67_n_11 RTL_AND__67_n_12 RTL_AND__67_n_13 RTL_AND__67_n_14 RTL_AND__67_n_15 RTL_AND__67_n_16 RTL_AND__67_n_17 RTL_AND__67_n_18 RTL_AND__67_n_19 RTL_AND__67_n_20 RTL_AND__67_n_21 RTL_AND__67_n_22 RTL_AND__67_n_23 RTL_AND__67_n_24 RTL_AND__67_n_25 RTL_AND__67_n_26 RTL_AND__67_n_27 RTL_AND__67_n_28 RTL_AND__67_n_29 RTL_AND__67_n_30 RTL_AND__67_n_31 -autobundled
netbloc @RTL_AND__67_n_ 1 19 1 11110 6360n
load netBundle @RTL_AND__83_n_ 32 RTL_AND__83_n_0 RTL_AND__83_n_1 RTL_AND__83_n_2 RTL_AND__83_n_3 RTL_AND__83_n_4 RTL_AND__83_n_5 RTL_AND__83_n_6 RTL_AND__83_n_7 RTL_AND__83_n_8 RTL_AND__83_n_9 RTL_AND__83_n_10 RTL_AND__83_n_11 RTL_AND__83_n_12 RTL_AND__83_n_13 RTL_AND__83_n_14 RTL_AND__83_n_15 RTL_AND__83_n_16 RTL_AND__83_n_17 RTL_AND__83_n_18 RTL_AND__83_n_19 RTL_AND__83_n_20 RTL_AND__83_n_21 RTL_AND__83_n_22 RTL_AND__83_n_23 RTL_AND__83_n_24 RTL_AND__83_n_25 RTL_AND__83_n_26 RTL_AND__83_n_27 RTL_AND__83_n_28 RTL_AND__83_n_29 RTL_AND__83_n_30 RTL_AND__83_n_31 -autobundled
netbloc @RTL_AND__83_n_ 1 67 1 29430 6110n
load netBundle @p_1_out 4 p_1_out[3] p_1_out[2] p_1_out[1] p_1_out[0] -autobundled
netbloc @p_1_out 1 67 2 29470 6030 30490
load netBundle @RTL_ARSHIFT_n_ 32 RTL_ARSHIFT_n_0 RTL_ARSHIFT_n_1 RTL_ARSHIFT_n_2 RTL_ARSHIFT_n_3 RTL_ARSHIFT_n_4 RTL_ARSHIFT_n_5 RTL_ARSHIFT_n_6 RTL_ARSHIFT_n_7 RTL_ARSHIFT_n_8 RTL_ARSHIFT_n_9 RTL_ARSHIFT_n_10 RTL_ARSHIFT_n_11 RTL_ARSHIFT_n_12 RTL_ARSHIFT_n_13 RTL_ARSHIFT_n_14 RTL_ARSHIFT_n_15 RTL_ARSHIFT_n_16 RTL_ARSHIFT_n_17 RTL_ARSHIFT_n_18 RTL_ARSHIFT_n_19 RTL_ARSHIFT_n_20 RTL_ARSHIFT_n_21 RTL_ARSHIFT_n_22 RTL_ARSHIFT_n_23 RTL_ARSHIFT_n_24 RTL_ARSHIFT_n_25 RTL_ARSHIFT_n_26 RTL_ARSHIFT_n_27 RTL_ARSHIFT_n_28 RTL_ARSHIFT_n_29 RTL_ARSHIFT_n_30 RTL_ARSHIFT_n_31 -autobundled
netbloc @RTL_ARSHIFT_n_ 1 66 1 28940 3850n
load netBundle @RTL_ARSHIFT__0_n_ 32 RTL_ARSHIFT__0_n_0 RTL_ARSHIFT__0_n_1 RTL_ARSHIFT__0_n_2 RTL_ARSHIFT__0_n_3 RTL_ARSHIFT__0_n_4 RTL_ARSHIFT__0_n_5 RTL_ARSHIFT__0_n_6 RTL_ARSHIFT__0_n_7 RTL_ARSHIFT__0_n_8 RTL_ARSHIFT__0_n_9 RTL_ARSHIFT__0_n_10 RTL_ARSHIFT__0_n_11 RTL_ARSHIFT__0_n_12 RTL_ARSHIFT__0_n_13 RTL_ARSHIFT__0_n_14 RTL_ARSHIFT__0_n_15 RTL_ARSHIFT__0_n_16 RTL_ARSHIFT__0_n_17 RTL_ARSHIFT__0_n_18 RTL_ARSHIFT__0_n_19 RTL_ARSHIFT__0_n_20 RTL_ARSHIFT__0_n_21 RTL_ARSHIFT__0_n_22 RTL_ARSHIFT__0_n_23 RTL_ARSHIFT__0_n_24 RTL_ARSHIFT__0_n_25 RTL_ARSHIFT__0_n_26 RTL_ARSHIFT__0_n_27 RTL_ARSHIFT__0_n_28 RTL_ARSHIFT__0_n_29 RTL_ARSHIFT__0_n_30 RTL_ARSHIFT__0_n_31 -autobundled
netbloc @RTL_ARSHIFT__0_n_ 1 66 1 28740 5030n
load netBundle @RTL_LSHIFT_n_ 32 RTL_LSHIFT_n_0 RTL_LSHIFT_n_1 RTL_LSHIFT_n_2 RTL_LSHIFT_n_3 RTL_LSHIFT_n_4 RTL_LSHIFT_n_5 RTL_LSHIFT_n_6 RTL_LSHIFT_n_7 RTL_LSHIFT_n_8 RTL_LSHIFT_n_9 RTL_LSHIFT_n_10 RTL_LSHIFT_n_11 RTL_LSHIFT_n_12 RTL_LSHIFT_n_13 RTL_LSHIFT_n_14 RTL_LSHIFT_n_15 RTL_LSHIFT_n_16 RTL_LSHIFT_n_17 RTL_LSHIFT_n_18 RTL_LSHIFT_n_19 RTL_LSHIFT_n_20 RTL_LSHIFT_n_21 RTL_LSHIFT_n_22 RTL_LSHIFT_n_23 RTL_LSHIFT_n_24 RTL_LSHIFT_n_25 RTL_LSHIFT_n_26 RTL_LSHIFT_n_27 RTL_LSHIFT_n_28 RTL_LSHIFT_n_29 RTL_LSHIFT_n_30 RTL_LSHIFT_n_31 -autobundled
netbloc @RTL_LSHIFT_n_ 1 12 1 5780 6220n
load netBundle @alu_shl 32 alu_shl[31] alu_shl[30] alu_shl[29] alu_shl[28] alu_shl[27] alu_shl[26] alu_shl[25] alu_shl[24] alu_shl[23] alu_shl[22] alu_shl[21] alu_shl[20] alu_shl[19] alu_shl[18] alu_shl[17] alu_shl[16] alu_shl[15] alu_shl[14] alu_shl[13] alu_shl[12] alu_shl[11] alu_shl[10] alu_shl[9] alu_shl[8] alu_shl[7] alu_shl[6] alu_shl[5] alu_shl[4] alu_shl[3] alu_shl[2] alu_shl[1] alu_shl[0] -autobundled
netbloc @alu_shl 1 15 1 8600 5460n
load netBundle @RTL_LSHIFT__1_n_ 32 RTL_LSHIFT__1_n_0 RTL_LSHIFT__1_n_1 RTL_LSHIFT__1_n_2 RTL_LSHIFT__1_n_3 RTL_LSHIFT__1_n_4 RTL_LSHIFT__1_n_5 RTL_LSHIFT__1_n_6 RTL_LSHIFT__1_n_7 RTL_LSHIFT__1_n_8 RTL_LSHIFT__1_n_9 RTL_LSHIFT__1_n_10 RTL_LSHIFT__1_n_11 RTL_LSHIFT__1_n_12 RTL_LSHIFT__1_n_13 RTL_LSHIFT__1_n_14 RTL_LSHIFT__1_n_15 RTL_LSHIFT__1_n_16 RTL_LSHIFT__1_n_17 RTL_LSHIFT__1_n_18 RTL_LSHIFT__1_n_19 RTL_LSHIFT__1_n_20 RTL_LSHIFT__1_n_21 RTL_LSHIFT__1_n_22 RTL_LSHIFT__1_n_23 RTL_LSHIFT__1_n_24 RTL_LSHIFT__1_n_25 RTL_LSHIFT__1_n_26 RTL_LSHIFT__1_n_27 RTL_LSHIFT__1_n_28 RTL_LSHIFT__1_n_29 RTL_LSHIFT__1_n_30 RTL_LSHIFT__1_n_31 -autobundled
netbloc @RTL_LSHIFT__1_n_ 1 66 1 28780 3950n
load netBundle @RTL_LSHIFT__2_n_ 32 RTL_LSHIFT__2_n_0 RTL_LSHIFT__2_n_1 RTL_LSHIFT__2_n_2 RTL_LSHIFT__2_n_3 RTL_LSHIFT__2_n_4 RTL_LSHIFT__2_n_5 RTL_LSHIFT__2_n_6 RTL_LSHIFT__2_n_7 RTL_LSHIFT__2_n_8 RTL_LSHIFT__2_n_9 RTL_LSHIFT__2_n_10 RTL_LSHIFT__2_n_11 RTL_LSHIFT__2_n_12 RTL_LSHIFT__2_n_13 RTL_LSHIFT__2_n_14 RTL_LSHIFT__2_n_15 RTL_LSHIFT__2_n_16 RTL_LSHIFT__2_n_17 RTL_LSHIFT__2_n_18 RTL_LSHIFT__2_n_19 RTL_LSHIFT__2_n_20 RTL_LSHIFT__2_n_21 RTL_LSHIFT__2_n_22 RTL_LSHIFT__2_n_23 RTL_LSHIFT__2_n_24 RTL_LSHIFT__2_n_25 RTL_LSHIFT__2_n_26 RTL_LSHIFT__2_n_27 RTL_LSHIFT__2_n_28 RTL_LSHIFT__2_n_29 RTL_LSHIFT__2_n_30 RTL_LSHIFT__2_n_31 -autobundled
netbloc @RTL_LSHIFT__2_n_ 1 66 1 28900 4950n
load netBundle @RTL_LSHIFT__3_n_ 4 RTL_LSHIFT__3_n_0 RTL_LSHIFT__3_n_1 RTL_LSHIFT__3_n_2 RTL_LSHIFT__3_n_3 -autobundled
netbloc @RTL_LSHIFT__3_n_ 1 69 1 30940J 5820n
load netBundle @RTL_MINUS_n_ 32 RTL_MINUS_n_0 RTL_MINUS_n_1 RTL_MINUS_n_2 RTL_MINUS_n_3 RTL_MINUS_n_4 RTL_MINUS_n_5 RTL_MINUS_n_6 RTL_MINUS_n_7 RTL_MINUS_n_8 RTL_MINUS_n_9 RTL_MINUS_n_10 RTL_MINUS_n_11 RTL_MINUS_n_12 RTL_MINUS_n_13 RTL_MINUS_n_14 RTL_MINUS_n_15 RTL_MINUS_n_16 RTL_MINUS_n_17 RTL_MINUS_n_18 RTL_MINUS_n_19 RTL_MINUS_n_20 RTL_MINUS_n_21 RTL_MINUS_n_22 RTL_MINUS_n_23 RTL_MINUS_n_24 RTL_MINUS_n_25 RTL_MINUS_n_26 RTL_MINUS_n_27 RTL_MINUS_n_28 RTL_MINUS_n_29 RTL_MINUS_n_30 RTL_MINUS_n_31 -autobundled
netbloc @RTL_MINUS_n_ 1 13 1 6990J 5900n
load netBundle @RTL_MUX_n_ 2 RTL_MUX_n_0 RTL_MUX_n_1 -autobundled
netbloc @RTL_MUX_n_ 1 65 1 28300J 6840n
load netBundle @cpuregs_rs2 32 cpuregs_rs2[31] cpuregs_rs2[30] cpuregs_rs2[29] cpuregs_rs2[28] cpuregs_rs2[27] cpuregs_rs2[26] cpuregs_rs2[25] cpuregs_rs2[24] cpuregs_rs2[23] cpuregs_rs2[22] cpuregs_rs2[21] cpuregs_rs2[20] cpuregs_rs2[19] cpuregs_rs2[18] cpuregs_rs2[17] cpuregs_rs2[16] cpuregs_rs2[15] cpuregs_rs2[14] cpuregs_rs2[13] cpuregs_rs2[12] cpuregs_rs2[11] cpuregs_rs2[10] cpuregs_rs2[9] cpuregs_rs2[8] cpuregs_rs2[7] cpuregs_rs2[6] cpuregs_rs2[5] cpuregs_rs2[4] cpuregs_rs2[3] cpuregs_rs2[2] cpuregs_rs2[1] cpuregs_rs2[0] -autobundled
netbloc @cpuregs_rs2 1 26 42 14030 5860 14510 6190 15090J 6080 NJ 6080 16270J 6190 NJ 6190 NJ 6190 NJ 6190 NJ 6190 NJ 6190 NJ 6190 NJ 6190 NJ 6190 NJ 6190 NJ 6190 NJ 6190 NJ 6190 NJ 6190 NJ 6190 21330J 6000 NJ 6000 NJ 6000 NJ 6000 NJ 6000 NJ 6000 23870J 6170 NJ 6170 NJ 6170 NJ 6170 NJ 6170 NJ 6170 NJ 6170 NJ 6170 NJ 6170 NJ 6170 NJ 6170 NJ 6170 NJ 6170 NJ 6170 NJ 6170 28940 6970 29450J
load netBundle @alu_add_sub 32 alu_add_sub[31] alu_add_sub[30] alu_add_sub[29] alu_add_sub[28] alu_add_sub[27] alu_add_sub[26] alu_add_sub[25] alu_add_sub[24] alu_add_sub[23] alu_add_sub[22] alu_add_sub[21] alu_add_sub[20] alu_add_sub[19] alu_add_sub[18] alu_add_sub[17] alu_add_sub[16] alu_add_sub[15] alu_add_sub[14] alu_add_sub[13] alu_add_sub[12] alu_add_sub[11] alu_add_sub[10] alu_add_sub[9] alu_add_sub[8] alu_add_sub[7] alu_add_sub[6] alu_add_sub[5] alu_add_sub[4] alu_add_sub[3] alu_add_sub[2] alu_add_sub[1] alu_add_sub[0] -autobundled
netbloc @alu_add_sub 1 15 1 8580 5380n
load netBundle @RTL_MUX__10_n_ 32 RTL_MUX__10_n_0 RTL_MUX__10_n_1 RTL_MUX__10_n_2 RTL_MUX__10_n_3 RTL_MUX__10_n_4 RTL_MUX__10_n_5 RTL_MUX__10_n_6 RTL_MUX__10_n_7 RTL_MUX__10_n_8 RTL_MUX__10_n_9 RTL_MUX__10_n_10 RTL_MUX__10_n_11 RTL_MUX__10_n_12 RTL_MUX__10_n_13 RTL_MUX__10_n_14 RTL_MUX__10_n_15 RTL_MUX__10_n_16 RTL_MUX__10_n_17 RTL_MUX__10_n_18 RTL_MUX__10_n_19 RTL_MUX__10_n_20 RTL_MUX__10_n_21 RTL_MUX__10_n_22 RTL_MUX__10_n_23 RTL_MUX__10_n_24 RTL_MUX__10_n_25 RTL_MUX__10_n_26 RTL_MUX__10_n_27 RTL_MUX__10_n_28 RTL_MUX__10_n_29 RTL_MUX__10_n_30 RTL_MUX__10_n_31 -autobundled
netbloc @RTL_MUX__10_n_ 1 23 1 12860 6110n
load netBundle @RTL_MUX__2_n_ 64 RTL_MUX__2_n_0 RTL_MUX__2_n_1 RTL_MUX__2_n_2 RTL_MUX__2_n_3 RTL_MUX__2_n_4 RTL_MUX__2_n_5 RTL_MUX__2_n_6 RTL_MUX__2_n_7 RTL_MUX__2_n_8 RTL_MUX__2_n_9 RTL_MUX__2_n_10 RTL_MUX__2_n_11 RTL_MUX__2_n_12 RTL_MUX__2_n_13 RTL_MUX__2_n_14 RTL_MUX__2_n_15 RTL_MUX__2_n_16 RTL_MUX__2_n_17 RTL_MUX__2_n_18 RTL_MUX__2_n_19 RTL_MUX__2_n_20 RTL_MUX__2_n_21 RTL_MUX__2_n_22 RTL_MUX__2_n_23 RTL_MUX__2_n_24 RTL_MUX__2_n_25 RTL_MUX__2_n_26 RTL_MUX__2_n_27 RTL_MUX__2_n_28 RTL_MUX__2_n_29 RTL_MUX__2_n_30 RTL_MUX__2_n_31 RTL_MUX__2_n_32 RTL_MUX__2_n_33 RTL_MUX__2_n_34 RTL_MUX__2_n_35 RTL_MUX__2_n_36 RTL_MUX__2_n_37 RTL_MUX__2_n_38 RTL_MUX__2_n_39 RTL_MUX__2_n_40 RTL_MUX__2_n_41 RTL_MUX__2_n_42 RTL_MUX__2_n_43 RTL_MUX__2_n_44 RTL_MUX__2_n_45 RTL_MUX__2_n_46 RTL_MUX__2_n_47 RTL_MUX__2_n_48 RTL_MUX__2_n_49 RTL_MUX__2_n_50 RTL_MUX__2_n_51 RTL_MUX__2_n_52 RTL_MUX__2_n_53 RTL_MUX__2_n_54 RTL_MUX__2_n_55 RTL_MUX__2_n_56 RTL_MUX__2_n_57 RTL_MUX__2_n_58 RTL_MUX__2_n_59 RTL_MUX__2_n_60 RTL_MUX__2_n_61 RTL_MUX__2_n_62 RTL_MUX__2_n_63 -autobundled
netbloc @RTL_MUX__2_n_ 1 12 1 6060 4000n
load netBundle @cpuregs_rs1 32 cpuregs_rs1[31] cpuregs_rs1[30] cpuregs_rs1[29] cpuregs_rs1[28] cpuregs_rs1[27] cpuregs_rs1[26] cpuregs_rs1[25] cpuregs_rs1[24] cpuregs_rs1[23] cpuregs_rs1[22] cpuregs_rs1[21] cpuregs_rs1[20] cpuregs_rs1[19] cpuregs_rs1[18] cpuregs_rs1[17] cpuregs_rs1[16] cpuregs_rs1[15] cpuregs_rs1[14] cpuregs_rs1[13] cpuregs_rs1[12] cpuregs_rs1[11] cpuregs_rs1[10] cpuregs_rs1[9] cpuregs_rs1[8] cpuregs_rs1[7] cpuregs_rs1[6] cpuregs_rs1[5] cpuregs_rs1[4] cpuregs_rs1[3] cpuregs_rs1[2] cpuregs_rs1[1] cpuregs_rs1[0] -autobundled
netbloc @cpuregs_rs1 1 14 54 7730 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 NJ 4370 28300J 4390 NJ 4390 29690
load netBundle @RTL_MUX__4_n_ 32 RTL_MUX__4_n_0 RTL_MUX__4_n_1 RTL_MUX__4_n_2 RTL_MUX__4_n_3 RTL_MUX__4_n_4 RTL_MUX__4_n_5 RTL_MUX__4_n_6 RTL_MUX__4_n_7 RTL_MUX__4_n_8 RTL_MUX__4_n_9 RTL_MUX__4_n_10 RTL_MUX__4_n_11 RTL_MUX__4_n_12 RTL_MUX__4_n_13 RTL_MUX__4_n_14 RTL_MUX__4_n_15 RTL_MUX__4_n_16 RTL_MUX__4_n_17 RTL_MUX__4_n_18 RTL_MUX__4_n_19 RTL_MUX__4_n_20 RTL_MUX__4_n_21 RTL_MUX__4_n_22 RTL_MUX__4_n_23 RTL_MUX__4_n_24 RTL_MUX__4_n_25 RTL_MUX__4_n_26 RTL_MUX__4_n_27 RTL_MUX__4_n_28 RTL_MUX__4_n_29 RTL_MUX__4_n_30 RTL_MUX__4_n_31 -autobundled
netbloc @RTL_MUX__4_n_ 1 18 1 10490J 6770n
load netBundle @RTL_MUX__5_n_ 3 RTL_MUX__5_n_0 RTL_MUX__5_n_1 RTL_MUX__5_n_2 -autobundled
netbloc @RTL_MUX__5_n_ 1 15 1 8520 6890n
load netBundle @RTL_MUX__6_n_ 32 RTL_MUX__6_n_0 RTL_MUX__6_n_1 RTL_MUX__6_n_2 RTL_MUX__6_n_3 RTL_MUX__6_n_4 RTL_MUX__6_n_5 RTL_MUX__6_n_6 RTL_MUX__6_n_7 RTL_MUX__6_n_8 RTL_MUX__6_n_9 RTL_MUX__6_n_10 RTL_MUX__6_n_11 RTL_MUX__6_n_12 RTL_MUX__6_n_13 RTL_MUX__6_n_14 RTL_MUX__6_n_15 RTL_MUX__6_n_16 RTL_MUX__6_n_17 RTL_MUX__6_n_18 RTL_MUX__6_n_19 RTL_MUX__6_n_20 RTL_MUX__6_n_21 RTL_MUX__6_n_22 RTL_MUX__6_n_23 RTL_MUX__6_n_24 RTL_MUX__6_n_25 RTL_MUX__6_n_26 RTL_MUX__6_n_27 RTL_MUX__6_n_28 RTL_MUX__6_n_29 RTL_MUX__6_n_30 RTL_MUX__6_n_31 -autobundled
netbloc @RTL_MUX__6_n_ 1 20 1 11470 6290n
load netBundle @RTL_MUX__7_n_ 32 RTL_MUX__7_n_0 RTL_MUX__7_n_1 RTL_MUX__7_n_2 RTL_MUX__7_n_3 RTL_MUX__7_n_4 RTL_MUX__7_n_5 RTL_MUX__7_n_6 RTL_MUX__7_n_7 RTL_MUX__7_n_8 RTL_MUX__7_n_9 RTL_MUX__7_n_10 RTL_MUX__7_n_11 RTL_MUX__7_n_12 RTL_MUX__7_n_13 RTL_MUX__7_n_14 RTL_MUX__7_n_15 RTL_MUX__7_n_16 RTL_MUX__7_n_17 RTL_MUX__7_n_18 RTL_MUX__7_n_19 RTL_MUX__7_n_20 RTL_MUX__7_n_21 RTL_MUX__7_n_22 RTL_MUX__7_n_23 RTL_MUX__7_n_24 RTL_MUX__7_n_25 RTL_MUX__7_n_26 RTL_MUX__7_n_27 RTL_MUX__7_n_28 RTL_MUX__7_n_29 RTL_MUX__7_n_30 RTL_MUX__7_n_31 -autobundled
netbloc @RTL_MUX__7_n_ 1 67 1 29570 4540n
load netBundle @RTL_MUX__8_n_ 4 RTL_MUX__8_n_0 RTL_MUX__8_n_1 RTL_MUX__8_n_2 RTL_MUX__8_n_3 -autobundled
netbloc @RTL_MUX__8_n_ 1 69 1 31140 5630n
load netBundle @RTL_MUX__9_n_ 3 RTL_MUX__9_n_0 RTL_MUX__9_n_1 RTL_MUX__9_n_2 -autobundled
netbloc @RTL_MUX__9_n_ 1 22 1 12450 6350n
load netBundle @RTL_OR__10_n_ 32 RTL_OR__10_n_0 RTL_OR__10_n_1 RTL_OR__10_n_2 RTL_OR__10_n_3 RTL_OR__10_n_4 RTL_OR__10_n_5 RTL_OR__10_n_6 RTL_OR__10_n_7 RTL_OR__10_n_8 RTL_OR__10_n_9 RTL_OR__10_n_10 RTL_OR__10_n_11 RTL_OR__10_n_12 RTL_OR__10_n_13 RTL_OR__10_n_14 RTL_OR__10_n_15 RTL_OR__10_n_16 RTL_OR__10_n_17 RTL_OR__10_n_18 RTL_OR__10_n_19 RTL_OR__10_n_20 RTL_OR__10_n_21 RTL_OR__10_n_22 RTL_OR__10_n_23 RTL_OR__10_n_24 RTL_OR__10_n_25 RTL_OR__10_n_26 RTL_OR__10_n_27 RTL_OR__10_n_28 RTL_OR__10_n_29 RTL_OR__10_n_30 RTL_OR__10_n_31 -autobundled
netbloc @RTL_OR__10_n_ 1 15 1 8860 5180n
load netBundle @RTL_OR__32_n_ 32 RTL_OR__32_n_0 RTL_OR__32_n_1 RTL_OR__32_n_2 RTL_OR__32_n_3 RTL_OR__32_n_4 RTL_OR__32_n_5 RTL_OR__32_n_6 RTL_OR__32_n_7 RTL_OR__32_n_8 RTL_OR__32_n_9 RTL_OR__32_n_10 RTL_OR__32_n_11 RTL_OR__32_n_12 RTL_OR__32_n_13 RTL_OR__32_n_14 RTL_OR__32_n_15 RTL_OR__32_n_16 RTL_OR__32_n_17 RTL_OR__32_n_18 RTL_OR__32_n_19 RTL_OR__32_n_20 RTL_OR__32_n_21 RTL_OR__32_n_22 RTL_OR__32_n_23 RTL_OR__32_n_24 RTL_OR__32_n_25 RTL_OR__32_n_26 RTL_OR__32_n_27 RTL_OR__32_n_28 RTL_OR__32_n_29 RTL_OR__32_n_30 RTL_OR__32_n_31 -autobundled
netbloc @RTL_OR__32_n_ 1 23 1 12840 6130n
load netBundle @RTL_RSHIFT_n_ 32 RTL_RSHIFT_n_0 RTL_RSHIFT_n_1 RTL_RSHIFT_n_2 RTL_RSHIFT_n_3 RTL_RSHIFT_n_4 RTL_RSHIFT_n_5 RTL_RSHIFT_n_6 RTL_RSHIFT_n_7 RTL_RSHIFT_n_8 RTL_RSHIFT_n_9 RTL_RSHIFT_n_10 RTL_RSHIFT_n_11 RTL_RSHIFT_n_12 RTL_RSHIFT_n_13 RTL_RSHIFT_n_14 RTL_RSHIFT_n_15 RTL_RSHIFT_n_16 RTL_RSHIFT_n_17 RTL_RSHIFT_n_18 RTL_RSHIFT_n_19 RTL_RSHIFT_n_20 RTL_RSHIFT_n_21 RTL_RSHIFT_n_22 RTL_RSHIFT_n_23 RTL_RSHIFT_n_24 RTL_RSHIFT_n_25 RTL_RSHIFT_n_26 RTL_RSHIFT_n_27 RTL_RSHIFT_n_28 RTL_RSHIFT_n_29 RTL_RSHIFT_n_30 RTL_RSHIFT_n_31 -autobundled
netbloc @RTL_RSHIFT_n_ 1 66 1 28780 4020n
load netBundle @RTL_RSHIFT__0_n_ 32 RTL_RSHIFT__0_n_0 RTL_RSHIFT__0_n_1 RTL_RSHIFT__0_n_2 RTL_RSHIFT__0_n_3 RTL_RSHIFT__0_n_4 RTL_RSHIFT__0_n_5 RTL_RSHIFT__0_n_6 RTL_RSHIFT__0_n_7 RTL_RSHIFT__0_n_8 RTL_RSHIFT__0_n_9 RTL_RSHIFT__0_n_10 RTL_RSHIFT__0_n_11 RTL_RSHIFT__0_n_12 RTL_RSHIFT__0_n_13 RTL_RSHIFT__0_n_14 RTL_RSHIFT__0_n_15 RTL_RSHIFT__0_n_16 RTL_RSHIFT__0_n_17 RTL_RSHIFT__0_n_18 RTL_RSHIFT__0_n_19 RTL_RSHIFT__0_n_20 RTL_RSHIFT__0_n_21 RTL_RSHIFT__0_n_22 RTL_RSHIFT__0_n_23 RTL_RSHIFT__0_n_24 RTL_RSHIFT__0_n_25 RTL_RSHIFT__0_n_26 RTL_RSHIFT__0_n_27 RTL_RSHIFT__0_n_28 RTL_RSHIFT__0_n_29 RTL_RSHIFT__0_n_30 RTL_RSHIFT__0_n_31 -autobundled
netbloc @RTL_RSHIFT__0_n_ 1 66 1 28760 5010n
load netBundle @RTL_XOR_n_ 32 RTL_XOR_n_0 RTL_XOR_n_1 RTL_XOR_n_2 RTL_XOR_n_3 RTL_XOR_n_4 RTL_XOR_n_5 RTL_XOR_n_6 RTL_XOR_n_7 RTL_XOR_n_8 RTL_XOR_n_9 RTL_XOR_n_10 RTL_XOR_n_11 RTL_XOR_n_12 RTL_XOR_n_13 RTL_XOR_n_14 RTL_XOR_n_15 RTL_XOR_n_16 RTL_XOR_n_17 RTL_XOR_n_18 RTL_XOR_n_19 RTL_XOR_n_20 RTL_XOR_n_21 RTL_XOR_n_22 RTL_XOR_n_23 RTL_XOR_n_24 RTL_XOR_n_25 RTL_XOR_n_26 RTL_XOR_n_27 RTL_XOR_n_28 RTL_XOR_n_29 RTL_XOR_n_30 RTL_XOR_n_31 -autobundled
netbloc @RTL_XOR_n_ 1 15 1 8500 5400n
load netBundle @alu_out 32 alu_out[31] alu_out[30] alu_out[29] alu_out[28] alu_out[27] alu_out[26] alu_out[25] alu_out[24] alu_out[23] alu_out[22] alu_out[21] alu_out[20] alu_out[19] alu_out[18] alu_out[17] alu_out[16] alu_out[15] alu_out[14] alu_out[13] alu_out[12] alu_out[11] alu_out[10] alu_out[9] alu_out[8] alu_out[7] alu_out[6] alu_out[5] alu_out[4] alu_out[3] alu_out[2] alu_out[1] alu_out[0] -autobundled
netbloc @alu_out 1 16 1 9400 5410n
load netBundle @cpu_state_i_n_ 4 cpu_state_i_n_0 cpu_state_i_n_1 cpu_state_i_n_2 cpu_state_i_n_3 -autobundled
netbloc @cpu_state_i_n_ 1 29 1 15500 4850n
load netBundle @cpu_state_i__0_n_ 8 cpu_state_i__0_n_0 cpu_state_i__0_n_1 cpu_state_i__0_n_2 cpu_state_i__0_n_3 cpu_state_i__0_n_4 cpu_state_i__0_n_5 cpu_state_i__0_n_6 cpu_state_i__0_n_7 -autobundled
netbloc @cpu_state_i__0_n_ 1 30 1 16430 4780n
load netBundle @cpu_state_i__1_n_ 8 cpu_state_i__1_n_0 cpu_state_i__1_n_1 cpu_state_i__1_n_2 cpu_state_i__1_n_3 cpu_state_i__1_n_4 cpu_state_i__1_n_5 cpu_state_i__1_n_6 cpu_state_i__1_n_7 -autobundled
netbloc @cpu_state_i__1_n_ 1 29 1 15720 5280n
load netBundle @cpu_state_i__14_n_ 8 cpu_state_i__14_n_0 cpu_state_i__14_n_1 cpu_state_i__14_n_2 cpu_state_i__14_n_3 cpu_state_i__14_n_4 cpu_state_i__14_n_5 cpu_state_i__14_n_6 cpu_state_i__14_n_7 -autobundled
netbloc @cpu_state_i__14_n_ 1 30 1 16470 7110n
load netBundle @cpu_state_i__15_n_ 8 cpu_state_i__15_n_0 cpu_state_i__15_n_1 cpu_state_i__15_n_2 cpu_state_i__15_n_3 cpu_state_i__15_n_4 cpu_state_i__15_n_5 cpu_state_i__15_n_6 cpu_state_i__15_n_7 -autobundled
netbloc @cpu_state_i__15_n_ 1 31 1 16940 6980n
load netBundle @cpu_state_i__16_n_ 8 cpu_state_i__16_n_0 cpu_state_i__16_n_1 cpu_state_i__16_n_2 cpu_state_i__16_n_3 cpu_state_i__16_n_4 cpu_state_i__16_n_5 cpu_state_i__16_n_6 cpu_state_i__16_n_7 -autobundled
netbloc @cpu_state_i__16_n_ 1 32 1 17260 6340n
load netBundle @cpu_state_i__2_n_ 8 cpu_state_i__2_n_0 cpu_state_i__2_n_1 cpu_state_i__2_n_2 cpu_state_i__2_n_3 cpu_state_i__2_n_4 cpu_state_i__2_n_5 cpu_state_i__2_n_6 cpu_state_i__2_n_7 -autobundled
netbloc @cpu_state_i__2_n_ 1 30 1 16410 5330n
load netBundle @cpu_state__0 8 cpu_state__0[7] cpu_state__0[6] cpu_state__0[5] cpu_state__0[4] cpu_state__0[3] cpu_state__0[2] cpu_state__0[1] cpu_state__0[0] -autobundled
netbloc @cpu_state__0 1 31 1 16900 6050n
load netBundle @cpu_state2_out 8 cpu_state2_out[7] cpu_state2_out[6] cpu_state2_out[5] cpu_state2_out[4] cpu_state2_out[3] cpu_state2_out[2] cpu_state2_out[1] cpu_state2_out[0] -autobundled
netbloc @cpu_state2_out 1 32 1 17240 6330n
load netBundle @cpuregs_rdata1 32 cpuregs_rdata1[31] cpuregs_rdata1[30] cpuregs_rdata1[29] cpuregs_rdata1[28] cpuregs_rdata1[27] cpuregs_rdata1[26] cpuregs_rdata1[25] cpuregs_rdata1[24] cpuregs_rdata1[23] cpuregs_rdata1[22] cpuregs_rdata1[21] cpuregs_rdata1[20] cpuregs_rdata1[19] cpuregs_rdata1[18] cpuregs_rdata1[17] cpuregs_rdata1[16] cpuregs_rdata1[15] cpuregs_rdata1[14] cpuregs_rdata1[13] cpuregs_rdata1[12] cpuregs_rdata1[11] cpuregs_rdata1[10] cpuregs_rdata1[9] cpuregs_rdata1[8] cpuregs_rdata1[7] cpuregs_rdata1[6] cpuregs_rdata1[5] cpuregs_rdata1[4] cpuregs_rdata1[3] cpuregs_rdata1[2] cpuregs_rdata1[1] cpuregs_rdata1[0] -autobundled
netbloc @cpuregs_rdata1 1 13 13 7090 6770 NJ 6770 NJ 6770 9300J 6560 NJ 6560 NJ 6560 11010J 6490 11410J 6480 11950J 6460 NJ 6460 12840J 6490 13220J 6570 13630
load netBundle @cpuregs_rdata2 32 cpuregs_rdata2[31] cpuregs_rdata2[30] cpuregs_rdata2[29] cpuregs_rdata2[28] cpuregs_rdata2[27] cpuregs_rdata2[26] cpuregs_rdata2[25] cpuregs_rdata2[24] cpuregs_rdata2[23] cpuregs_rdata2[22] cpuregs_rdata2[21] cpuregs_rdata2[20] cpuregs_rdata2[19] cpuregs_rdata2[18] cpuregs_rdata2[17] cpuregs_rdata2[16] cpuregs_rdata2[15] cpuregs_rdata2[14] cpuregs_rdata2[13] cpuregs_rdata2[12] cpuregs_rdata2[11] cpuregs_rdata2[10] cpuregs_rdata2[9] cpuregs_rdata2[8] cpuregs_rdata2[7] cpuregs_rdata2[6] cpuregs_rdata2[5] cpuregs_rdata2[4] cpuregs_rdata2[3] cpuregs_rdata2[2] cpuregs_rdata2[1] cpuregs_rdata2[0] -autobundled
netbloc @cpuregs_rdata2 1 25 1 13650 5850n
load netBundle @cpuregs_wrdata 32 cpuregs_wrdata[31] cpuregs_wrdata[30] cpuregs_wrdata[29] cpuregs_wrdata[28] cpuregs_wrdata[27] cpuregs_wrdata[26] cpuregs_wrdata[25] cpuregs_wrdata[24] cpuregs_wrdata[23] cpuregs_wrdata[22] cpuregs_wrdata[21] cpuregs_wrdata[20] cpuregs_wrdata[19] cpuregs_wrdata[18] cpuregs_wrdata[17] cpuregs_wrdata[16] cpuregs_wrdata[15] cpuregs_wrdata[14] cpuregs_wrdata[13] cpuregs_wrdata[12] cpuregs_wrdata[11] cpuregs_wrdata[10] cpuregs_wrdata[9] cpuregs_wrdata[8] cpuregs_wrdata[7] cpuregs_wrdata[6] cpuregs_wrdata[5] cpuregs_wrdata[4] cpuregs_wrdata[3] cpuregs_wrdata[2] cpuregs_wrdata[1] cpuregs_wrdata[0] -autobundled
netbloc @cpuregs_wrdata 1 24 1 13260 6110n
load netBundle @current_pc_i_n_ 32 current_pc_i_n_0 current_pc_i_n_1 current_pc_i_n_2 current_pc_i_n_3 current_pc_i_n_4 current_pc_i_n_5 current_pc_i_n_6 current_pc_i_n_7 current_pc_i_n_8 current_pc_i_n_9 current_pc_i_n_10 current_pc_i_n_11 current_pc_i_n_12 current_pc_i_n_13 current_pc_i_n_14 current_pc_i_n_15 current_pc_i_n_16 current_pc_i_n_17 current_pc_i_n_18 current_pc_i_n_19 current_pc_i_n_20 current_pc_i_n_21 current_pc_i_n_22 current_pc_i_n_23 current_pc_i_n_24 current_pc_i_n_25 current_pc_i_n_26 current_pc_i_n_27 current_pc_i_n_28 current_pc_i_n_29 current_pc_i_n_30 current_pc_i_n_31 -autobundled
netbloc @current_pc_i_n_ 1 15 7 8900 6960 NJ 6960 10050 6860 10530J 6840 NJ 6840 11410J 6740 11970
load netBundle @decoded_imm__0 32 decoded_imm__0[31] decoded_imm__0[30] decoded_imm__0[29] decoded_imm__0[28] decoded_imm__0[27] decoded_imm__0[26] decoded_imm__0[25] decoded_imm__0[24] decoded_imm__0[23] decoded_imm__0[22] decoded_imm__0[21] decoded_imm__0[20] decoded_imm__0[19] decoded_imm__0[18] decoded_imm__0[17] decoded_imm__0[16] decoded_imm__0[15] decoded_imm__0[14] decoded_imm__0[13] decoded_imm__0[12] decoded_imm__0[11] decoded_imm__0[10] decoded_imm__0[9] decoded_imm__0[8] decoded_imm__0[7] decoded_imm__0[6] decoded_imm__0[5] decoded_imm__0[4] decoded_imm__0[3] decoded_imm__0[2] decoded_imm__0[1] decoded_imm__0[0] -autobundled
netbloc @decoded_imm__0 1 13 1 6650 6250n
load netBundle @decoded_imm_j__0 32 decoded_imm_j__0[31] decoded_imm_j__0[30] decoded_imm_j__0[29] decoded_imm_j__0[28] decoded_imm_j__0[27] decoded_imm_j__0[26] decoded_imm_j__0[25] decoded_imm_j__0[24] decoded_imm_j__0[23] decoded_imm_j__0[22] decoded_imm_j__0[21] decoded_imm_j__0[20] decoded_imm_j__0[19] decoded_imm_j__0[18] decoded_imm_j__0[17] decoded_imm_j__0[16] decoded_imm_j__0[15] decoded_imm_j__0[14] decoded_imm_j__0[13] decoded_imm_j__0[12] decoded_imm_j__0[11] decoded_imm_j__0[10] decoded_imm_j__0[9] decoded_imm_j__0[8] decoded_imm_j__0[7] decoded_imm_j__0[6] decoded_imm_j__0[5] decoded_imm_j__0[4] decoded_imm_j__0[3] decoded_imm_j__0[2] decoded_imm_j__0[1] decoded_imm_j__0[0] -autobundled
netbloc @decoded_imm_j__0 1 11 1 5100 6740n
load netBundle @eoi_i_n_ 32 eoi_i_n_0 eoi_i_n_1 eoi_i_n_2 eoi_i_n_3 eoi_i_n_4 eoi_i_n_5 eoi_i_n_6 eoi_i_n_7 eoi_i_n_8 eoi_i_n_9 eoi_i_n_10 eoi_i_n_11 eoi_i_n_12 eoi_i_n_13 eoi_i_n_14 eoi_i_n_15 eoi_i_n_16 eoi_i_n_17 eoi_i_n_18 eoi_i_n_19 eoi_i_n_20 eoi_i_n_21 eoi_i_n_22 eoi_i_n_23 eoi_i_n_24 eoi_i_n_25 eoi_i_n_26 eoi_i_n_27 eoi_i_n_28 eoi_i_n_29 eoi_i_n_30 eoi_i_n_31 -autobundled
netbloc @eoi_i_n_ 1 69 1 30940 7340n
load netBundle @latched_rd__0 5 latched_rd__0[4] latched_rd__0[3] latched_rd__0[2] latched_rd__0[1] latched_rd__0[0] -autobundled
netbloc @latched_rd__0 1 22 1 12410 6730n
load netBundle @mem_rdata_latched_noshuffle_i_ 32 mem_rdata_latched_noshuffle_i_n_0 mem_rdata_latched_noshuffle_i_n_1 mem_rdata_latched_noshuffle_i_n_2 mem_rdata_latched_noshuffle_i_n_3 mem_rdata_latched_noshuffle_i_n_4 mem_rdata_latched_noshuffle_i_n_5 mem_rdata_latched_noshuffle_i_n_6 mem_rdata_latched_noshuffle_i_n_7 mem_rdata_latched_noshuffle_i_n_8 mem_rdata_latched_noshuffle_i_n_9 mem_rdata_latched_noshuffle_i_n_10 mem_rdata_latched_noshuffle_i_n_11 mem_rdata_latched_noshuffle_i_n_12 mem_rdata_latched_noshuffle_i_n_13 mem_rdata_latched_noshuffle_i_n_14 mem_rdata_latched_noshuffle_i_n_15 mem_rdata_latched_noshuffle_i_n_16 mem_rdata_latched_noshuffle_i_n_17 mem_rdata_latched_noshuffle_i_n_18 mem_rdata_latched_noshuffle_i_n_19 mem_rdata_latched_noshuffle_i_n_20 mem_rdata_latched_noshuffle_i_n_21 mem_rdata_latched_noshuffle_i_n_22 mem_rdata_latched_noshuffle_i_n_23 mem_rdata_latched_noshuffle_i_n_24 mem_rdata_latched_noshuffle_i_n_25 mem_rdata_latched_noshuffle_i_n_26 mem_rdata_latched_noshuffle_i_n_27 mem_rdata_latched_noshuffle_i_n_28 mem_rdata_latched_noshuffle_i_n_29 mem_rdata_latched_noshuffle_i_n_30 mem_rdata_latched_noshuffle_i_n_31 -autobundled
netbloc @mem_rdata_latched_noshuffle_i_ 1 3 52 740 4650 1040 4730 1390 5470 NJ 5470 NJ 5470 NJ 5470 4060 6300 4390J 6350 5120 7040 NJ 7040 NJ 7040 NJ 7040 NJ 7040 NJ 7040 NJ 7040 NJ 7040 NJ 7040 11530 7150 NJ 7150 NJ 7150 12920 6980 NJ 6980 NJ 6980 NJ 6980 NJ 6980 NJ 6980 NJ 6980 NJ 6980 16840J 7050 NJ 7050 NJ 7050 NJ 7050 NJ 7050 NJ 7050 18880J 7000 NJ 7000 NJ 7000 NJ 7000 19830 6980 20160J 6970 NJ 6970 NJ 6970 NJ 6970 NJ 6970 NJ 6970 NJ 6970 NJ 6970 NJ 6970 NJ 6970 NJ 6970 NJ 6970 25100J
load netBundle @mem_rdata_word_i_n_ 32 mem_rdata_word_i_n_0 mem_rdata_word_i_n_1 mem_rdata_word_i_n_2 mem_rdata_word_i_n_3 mem_rdata_word_i_n_4 mem_rdata_word_i_n_5 mem_rdata_word_i_n_6 mem_rdata_word_i_n_7 mem_rdata_word_i_n_8 mem_rdata_word_i_n_9 mem_rdata_word_i_n_10 mem_rdata_word_i_n_11 mem_rdata_word_i_n_12 mem_rdata_word_i_n_13 mem_rdata_word_i_n_14 mem_rdata_word_i_n_15 mem_rdata_word_i_n_16 mem_rdata_word_i_n_17 mem_rdata_word_i_n_18 mem_rdata_word_i_n_19 mem_rdata_word_i_n_20 mem_rdata_word_i_n_21 mem_rdata_word_i_n_22 mem_rdata_word_i_n_23 mem_rdata_word_i_n_24 mem_rdata_word_i_n_25 mem_rdata_word_i_n_26 mem_rdata_word_i_n_27 mem_rdata_word_i_n_28 mem_rdata_word_i_n_29 mem_rdata_word_i_n_30 mem_rdata_word_i_n_31 -autobundled
netbloc @mem_rdata_word_i_n_ 1 13 1 7050 3570n
load netBundle @mem_rdata_word_i__0_n_ 32 mem_rdata_word_i__0_n_0 mem_rdata_word_i__0_n_1 mem_rdata_word_i__0_n_2 mem_rdata_word_i__0_n_3 mem_rdata_word_i__0_n_4 mem_rdata_word_i__0_n_5 mem_rdata_word_i__0_n_6 mem_rdata_word_i__0_n_7 mem_rdata_word_i__0_n_8 mem_rdata_word_i__0_n_9 mem_rdata_word_i__0_n_10 mem_rdata_word_i__0_n_11 mem_rdata_word_i__0_n_12 mem_rdata_word_i__0_n_13 mem_rdata_word_i__0_n_14 mem_rdata_word_i__0_n_15 mem_rdata_word_i__0_n_16 mem_rdata_word_i__0_n_17 mem_rdata_word_i__0_n_18 mem_rdata_word_i__0_n_19 mem_rdata_word_i__0_n_20 mem_rdata_word_i__0_n_21 mem_rdata_word_i__0_n_22 mem_rdata_word_i__0_n_23 mem_rdata_word_i__0_n_24 mem_rdata_word_i__0_n_25 mem_rdata_word_i__0_n_26 mem_rdata_word_i__0_n_27 mem_rdata_word_i__0_n_28 mem_rdata_word_i__0_n_29 mem_rdata_word_i__0_n_30 mem_rdata_word_i__0_n_31 -autobundled
netbloc @mem_rdata_word_i__0_n_ 1 13 1 7090 3430n
load netBundle @mem_rdata_word 32 mem_rdata_word[31] mem_rdata_word[30] mem_rdata_word[29] mem_rdata_word[28] mem_rdata_word[27] mem_rdata_word[26] mem_rdata_word[25] mem_rdata_word[24] mem_rdata_word[23] mem_rdata_word[22] mem_rdata_word[21] mem_rdata_word[20] mem_rdata_word[19] mem_rdata_word[18] mem_rdata_word[17] mem_rdata_word[16] mem_rdata_word[15] mem_rdata_word[14] mem_rdata_word[13] mem_rdata_word[12] mem_rdata_word[11] mem_rdata_word[10] mem_rdata_word[9] mem_rdata_word[8] mem_rdata_word[7] mem_rdata_word[6] mem_rdata_word[5] mem_rdata_word[4] mem_rdata_word[3] mem_rdata_word[2] mem_rdata_word[1] mem_rdata_word[0] -autobundled
netbloc @mem_rdata_word 1 14 1 7850 3680n
load netBundle @mem_state__0 2 mem_state__0[1] mem_state__0[0] -autobundled
netbloc @mem_state__0 1 65 1 28400 6880n
load netBundle @mem_state1_out 2 mem_state1_out[1] mem_state1_out[0] -autobundled
netbloc @mem_state1_out 1 66 1 N 6910
load netBundle @mem_state_i__4_n_ 2 mem_state_i__4_n_0 mem_state_i__4_n_1 -autobundled
netbloc @mem_state_i__4_n_ 1 66 1 28780 6820n
load netBundle @mem_wordsize_i_n_ 2 mem_wordsize_i_n_0 mem_wordsize_i_n_1 -autobundled
netbloc @mem_wordsize_i_n_ 1 11 1 5120 3670n
load netBundle @mem_wordsize_i__0_n_ 2 mem_wordsize_i__0_n_0 mem_wordsize_i__0_n_1 -autobundled
netbloc @mem_wordsize_i__0_n_ 1 11 1 5100 3690n
load netBundle @mem_wordsize__0 2 mem_wordsize__0[1] mem_wordsize__0[0] -autobundled
netbloc @mem_wordsize__0 1 12 1 5780 3670n
load netBundle @mem_wstrb_i_n_ 4 mem_wstrb_i_n_0 mem_wstrb_i_n_1 mem_wstrb_i_n_2 mem_wstrb_i_n_3 -autobundled
netbloc @mem_wstrb_i_n_ 1 68 1 30150 6110n
load netBundle @mem_wstrb_i__0_n_ 4 mem_wstrb_i__0_n_0 mem_wstrb_i__0_n_1 mem_wstrb_i__0_n_2 mem_wstrb_i__0_n_3 -autobundled
netbloc @mem_wstrb_i__0_n_ 1 69 1 31020 6200n
load netBundle @next_pc 30 next_pc[31] next_pc[30] next_pc[29] next_pc[28] next_pc[27] next_pc[26] next_pc[25] next_pc[24] next_pc[23] next_pc[22] next_pc[21] next_pc[20] next_pc[19] next_pc[18] next_pc[17] next_pc[16] next_pc[15] next_pc[14] next_pc[13] next_pc[12] next_pc[11] next_pc[10] next_pc[9] next_pc[8] next_pc[7] next_pc[6] next_pc[5] next_pc[4] next_pc[3] next_pc[2] -autobundled
netbloc @next_pc 1 68 1 30450 6240n
load netBundle @pcpi_insn_i_n_ 32 pcpi_insn_i_n_0 pcpi_insn_i_n_1 pcpi_insn_i_n_2 pcpi_insn_i_n_3 pcpi_insn_i_n_4 pcpi_insn_i_n_5 pcpi_insn_i_n_6 pcpi_insn_i_n_7 pcpi_insn_i_n_8 pcpi_insn_i_n_9 pcpi_insn_i_n_10 pcpi_insn_i_n_11 pcpi_insn_i_n_12 pcpi_insn_i_n_13 pcpi_insn_i_n_14 pcpi_insn_i_n_15 pcpi_insn_i_n_16 pcpi_insn_i_n_17 pcpi_insn_i_n_18 pcpi_insn_i_n_19 pcpi_insn_i_n_20 pcpi_insn_i_n_21 pcpi_insn_i_n_22 pcpi_insn_i_n_23 pcpi_insn_i_n_24 pcpi_insn_i_n_25 pcpi_insn_i_n_26 pcpi_insn_i_n_27 pcpi_insn_i_n_28 pcpi_insn_i_n_29 pcpi_insn_i_n_30 pcpi_insn_i_n_31 -autobundled
netbloc @pcpi_insn_i_n_ 1 69 1 30940 5480n
load netBundle @pcpi_int_rd 32 pcpi_int_rd[31] pcpi_int_rd[30] pcpi_int_rd[29] pcpi_int_rd[28] pcpi_int_rd[27] pcpi_int_rd[26] pcpi_int_rd[25] pcpi_int_rd[24] pcpi_int_rd[23] pcpi_int_rd[22] pcpi_int_rd[21] pcpi_int_rd[20] pcpi_int_rd[19] pcpi_int_rd[18] pcpi_int_rd[17] pcpi_int_rd[16] pcpi_int_rd[15] pcpi_int_rd[14] pcpi_int_rd[13] pcpi_int_rd[12] pcpi_int_rd[11] pcpi_int_rd[10] pcpi_int_rd[9] pcpi_int_rd[8] pcpi_int_rd[7] pcpi_int_rd[6] pcpi_int_rd[5] pcpi_int_rd[4] pcpi_int_rd[3] pcpi_int_rd[2] pcpi_int_rd[1] pcpi_int_rd[0] -autobundled
netbloc @pcpi_int_rd 1 15 1 8440J 6640n
load netBundle @reg_next_pc_i_n_ 32 reg_next_pc_i_n_0 reg_next_pc_i_n_1 reg_next_pc_i_n_2 reg_next_pc_i_n_3 reg_next_pc_i_n_4 reg_next_pc_i_n_5 reg_next_pc_i_n_6 reg_next_pc_i_n_7 reg_next_pc_i_n_8 reg_next_pc_i_n_9 reg_next_pc_i_n_10 reg_next_pc_i_n_11 reg_next_pc_i_n_12 reg_next_pc_i_n_13 reg_next_pc_i_n_14 reg_next_pc_i_n_15 reg_next_pc_i_n_16 reg_next_pc_i_n_17 reg_next_pc_i_n_18 reg_next_pc_i_n_19 reg_next_pc_i_n_20 reg_next_pc_i_n_21 reg_next_pc_i_n_22 reg_next_pc_i_n_23 reg_next_pc_i_n_24 reg_next_pc_i_n_25 reg_next_pc_i_n_26 reg_next_pc_i_n_27 reg_next_pc_i_n_28 reg_next_pc_i_n_29 reg_next_pc_i_n_30 reg_next_pc_i_n_31 -autobundled
netbloc @reg_next_pc_i_n_ 1 17 1 10010 6340n
load netBundle @reg_next_pc__0 32 reg_next_pc__0[31] reg_next_pc__0[30] reg_next_pc__0[29] reg_next_pc__0[28] reg_next_pc__0[27] reg_next_pc__0[26] reg_next_pc__0[25] reg_next_pc__0[24] reg_next_pc__0[23] reg_next_pc__0[22] reg_next_pc__0[21] reg_next_pc__0[20] reg_next_pc__0[19] reg_next_pc__0[18] reg_next_pc__0[17] reg_next_pc__0[16] reg_next_pc__0[15] reg_next_pc__0[14] reg_next_pc__0[13] reg_next_pc__0[12] reg_next_pc__0[11] reg_next_pc__0[10] reg_next_pc__0[9] reg_next_pc__0[8] reg_next_pc__0[7] reg_next_pc__0[6] reg_next_pc__0[5] reg_next_pc__0[4] reg_next_pc__0[3] reg_next_pc__0[2] reg_next_pc__0[1] reg_next_pc__0[0] -autobundled
netbloc @reg_next_pc__0 1 18 1 10570 6250n
load netBundle @reg_op1 32 reg_op1[31] reg_op1[30] reg_op1[29] reg_op1[28] reg_op1[27] reg_op1[26] reg_op1[25] reg_op1[24] reg_op1[23] reg_op1[22] reg_op1[21] reg_op1[20] reg_op1[19] reg_op1[18] reg_op1[17] reg_op1[16] reg_op1[15] reg_op1[14] reg_op1[13] reg_op1[12] reg_op1[11] reg_op1[10] reg_op1[9] reg_op1[8] reg_op1[7] reg_op1[6] reg_op1[5] reg_op1[4] reg_op1[3] reg_op1[2] reg_op1[1] reg_op1[0] -autobundled
netbloc @reg_op1 1 68 1 30530 4570n
load netBundle @reg_op1_i__0_n_ 32 reg_op1_i__0_n_0 reg_op1_i__0_n_1 reg_op1_i__0_n_2 reg_op1_i__0_n_3 reg_op1_i__0_n_4 reg_op1_i__0_n_5 reg_op1_i__0_n_6 reg_op1_i__0_n_7 reg_op1_i__0_n_8 reg_op1_i__0_n_9 reg_op1_i__0_n_10 reg_op1_i__0_n_11 reg_op1_i__0_n_12 reg_op1_i__0_n_13 reg_op1_i__0_n_14 reg_op1_i__0_n_15 reg_op1_i__0_n_16 reg_op1_i__0_n_17 reg_op1_i__0_n_18 reg_op1_i__0_n_19 reg_op1_i__0_n_20 reg_op1_i__0_n_21 reg_op1_i__0_n_22 reg_op1_i__0_n_23 reg_op1_i__0_n_24 reg_op1_i__0_n_25 reg_op1_i__0_n_26 reg_op1_i__0_n_27 reg_op1_i__0_n_28 reg_op1_i__0_n_29 reg_op1_i__0_n_30 reg_op1_i__0_n_31 -autobundled
netbloc @reg_op1_i__0_n_ 1 67 1 29670 4020n
load netBundle @reg_op1_i__1_n_ 32 reg_op1_i__1_n_0 reg_op1_i__1_n_1 reg_op1_i__1_n_2 reg_op1_i__1_n_3 reg_op1_i__1_n_4 reg_op1_i__1_n_5 reg_op1_i__1_n_6 reg_op1_i__1_n_7 reg_op1_i__1_n_8 reg_op1_i__1_n_9 reg_op1_i__1_n_10 reg_op1_i__1_n_11 reg_op1_i__1_n_12 reg_op1_i__1_n_13 reg_op1_i__1_n_14 reg_op1_i__1_n_15 reg_op1_i__1_n_16 reg_op1_i__1_n_17 reg_op1_i__1_n_18 reg_op1_i__1_n_19 reg_op1_i__1_n_20 reg_op1_i__1_n_21 reg_op1_i__1_n_22 reg_op1_i__1_n_23 reg_op1_i__1_n_24 reg_op1_i__1_n_25 reg_op1_i__1_n_26 reg_op1_i__1_n_27 reg_op1_i__1_n_28 reg_op1_i__1_n_29 reg_op1_i__1_n_30 reg_op1_i__1_n_31 -autobundled
netbloc @reg_op1_i__1_n_ 1 67 1 N 5010
load netBundle @reg_op11_out 32 reg_op11_out[31] reg_op11_out[30] reg_op11_out[29] reg_op11_out[28] reg_op11_out[27] reg_op11_out[26] reg_op11_out[25] reg_op11_out[24] reg_op11_out[23] reg_op11_out[22] reg_op11_out[21] reg_op11_out[20] reg_op11_out[19] reg_op11_out[18] reg_op11_out[17] reg_op11_out[16] reg_op11_out[15] reg_op11_out[14] reg_op11_out[13] reg_op11_out[12] reg_op11_out[11] reg_op11_out[10] reg_op11_out[9] reg_op11_out[8] reg_op11_out[7] reg_op11_out[6] reg_op11_out[5] reg_op11_out[4] reg_op11_out[3] reg_op11_out[2] reg_op11_out[1] reg_op11_out[0] -autobundled
netbloc @reg_op11_out 1 68 1 30470 5000n
load netBundle @reg_op13_out 32 reg_op13_out[31] reg_op13_out[30] reg_op13_out[29] reg_op13_out[28] reg_op13_out[27] reg_op13_out[26] reg_op13_out[25] reg_op13_out[24] reg_op13_out[23] reg_op13_out[22] reg_op13_out[21] reg_op13_out[20] reg_op13_out[19] reg_op13_out[18] reg_op13_out[17] reg_op13_out[16] reg_op13_out[15] reg_op13_out[14] reg_op13_out[13] reg_op13_out[12] reg_op13_out[11] reg_op13_out[10] reg_op13_out[9] reg_op13_out[8] reg_op13_out[7] reg_op13_out[6] reg_op13_out[5] reg_op13_out[4] reg_op13_out[3] reg_op13_out[2] reg_op13_out[1] reg_op13_out[0] -autobundled
netbloc @reg_op13_out 1 69 1 31160 5100n
load netBundle @reg_op2_i_n_ 32 reg_op2_i_n_0 reg_op2_i_n_1 reg_op2_i_n_2 reg_op2_i_n_3 reg_op2_i_n_4 reg_op2_i_n_5 reg_op2_i_n_6 reg_op2_i_n_7 reg_op2_i_n_8 reg_op2_i_n_9 reg_op2_i_n_10 reg_op2_i_n_11 reg_op2_i_n_12 reg_op2_i_n_13 reg_op2_i_n_14 reg_op2_i_n_15 reg_op2_i_n_16 reg_op2_i_n_17 reg_op2_i_n_18 reg_op2_i_n_19 reg_op2_i_n_20 reg_op2_i_n_21 reg_op2_i_n_22 reg_op2_i_n_23 reg_op2_i_n_24 reg_op2_i_n_25 reg_op2_i_n_26 reg_op2_i_n_27 reg_op2_i_n_28 reg_op2_i_n_29 reg_op2_i_n_30 reg_op2_i_n_31 -autobundled
netbloc @reg_op2_i_n_ 1 67 1 29550 4550n
load netBundle @reg_op2 32 reg_op2[31] reg_op2[30] reg_op2[29] reg_op2[28] reg_op2[27] reg_op2[26] reg_op2[25] reg_op2[24] reg_op2[23] reg_op2[22] reg_op2[21] reg_op2[20] reg_op2[19] reg_op2[18] reg_op2[17] reg_op2[16] reg_op2[15] reg_op2[14] reg_op2[13] reg_op2[12] reg_op2[11] reg_op2[10] reg_op2[9] reg_op2[8] reg_op2[7] reg_op2[6] reg_op2[5] reg_op2[4] reg_op2[3] reg_op2[2] reg_op2[1] reg_op2[0] -autobundled
netbloc @reg_op2 1 68 1 30350 6910n
load netBundle @reg_out_i_n_ 32 reg_out_i_n_0 reg_out_i_n_1 reg_out_i_n_2 reg_out_i_n_3 reg_out_i_n_4 reg_out_i_n_5 reg_out_i_n_6 reg_out_i_n_7 reg_out_i_n_8 reg_out_i_n_9 reg_out_i_n_10 reg_out_i_n_11 reg_out_i_n_12 reg_out_i_n_13 reg_out_i_n_14 reg_out_i_n_15 reg_out_i_n_16 reg_out_i_n_17 reg_out_i_n_18 reg_out_i_n_19 reg_out_i_n_20 reg_out_i_n_21 reg_out_i_n_22 reg_out_i_n_23 reg_out_i_n_24 reg_out_i_n_25 reg_out_i_n_26 reg_out_i_n_27 reg_out_i_n_28 reg_out_i_n_29 reg_out_i_n_30 reg_out_i_n_31 -autobundled
netbloc @reg_out_i_n_ 1 14 1 7810 4160n
load netBundle @reg_out_i__0_n_ 32 reg_out_i__0_n_0 reg_out_i__0_n_1 reg_out_i__0_n_2 reg_out_i__0_n_3 reg_out_i__0_n_4 reg_out_i__0_n_5 reg_out_i__0_n_6 reg_out_i__0_n_7 reg_out_i__0_n_8 reg_out_i__0_n_9 reg_out_i__0_n_10 reg_out_i__0_n_11 reg_out_i__0_n_12 reg_out_i__0_n_13 reg_out_i__0_n_14 reg_out_i__0_n_15 reg_out_i__0_n_16 reg_out_i__0_n_17 reg_out_i__0_n_18 reg_out_i__0_n_19 reg_out_i__0_n_20 reg_out_i__0_n_21 reg_out_i__0_n_22 reg_out_i__0_n_23 reg_out_i__0_n_24 reg_out_i__0_n_25 reg_out_i__0_n_26 reg_out_i__0_n_27 reg_out_i__0_n_28 reg_out_i__0_n_29 reg_out_i__0_n_30 reg_out_i__0_n_31 -autobundled
netbloc @reg_out_i__0_n_ 1 15 1 8800 4670n
load netBundle @reg_out__0 32 reg_out__0[31] reg_out__0[30] reg_out__0[29] reg_out__0[28] reg_out__0[27] reg_out__0[26] reg_out__0[25] reg_out__0[24] reg_out__0[23] reg_out__0[22] reg_out__0[21] reg_out__0[20] reg_out__0[19] reg_out__0[18] reg_out__0[17] reg_out__0[16] reg_out__0[15] reg_out__0[14] reg_out__0[13] reg_out__0[12] reg_out__0[11] reg_out__0[10] reg_out__0[9] reg_out__0[8] reg_out__0[7] reg_out__0[6] reg_out__0[5] reg_out__0[4] reg_out__0[3] reg_out__0[2] reg_out__0[1] reg_out__0[0] -autobundled
netbloc @reg_out__0 1 15 1 8780 4990n
load netBundle @reg_out1_out 32 reg_out1_out[31] reg_out1_out[30] reg_out1_out[29] reg_out1_out[28] reg_out1_out[27] reg_out1_out[26] reg_out1_out[25] reg_out1_out[24] reg_out1_out[23] reg_out1_out[22] reg_out1_out[21] reg_out1_out[20] reg_out1_out[19] reg_out1_out[18] reg_out1_out[17] reg_out1_out[16] reg_out1_out[15] reg_out1_out[14] reg_out1_out[13] reg_out1_out[12] reg_out1_out[11] reg_out1_out[10] reg_out1_out[9] reg_out1_out[8] reg_out1_out[7] reg_out1_out[6] reg_out1_out[5] reg_out1_out[4] reg_out1_out[3] reg_out1_out[2] reg_out1_out[1] reg_out1_out[0] -autobundled
netbloc @reg_out1_out 1 16 1 9280 6660n
load netBundle @reg_sh__0 5 reg_sh__0[4] reg_sh__0[3] reg_sh__0[2] reg_sh__0[1] reg_sh__0[0] -autobundled
netbloc @reg_sh__0 1 27 1 14670 4780n
load netBundle @reg_sh_i__0_n_ 5 reg_sh_i__0_n_0 reg_sh_i__0_n_1 reg_sh_i__0_n_2 reg_sh_i__0_n_3 reg_sh_i__0_n_4 -autobundled
netbloc @reg_sh_i__0_n_ 1 27 1 14650 6120n
load netBundle @reg_sh1_out 5 reg_sh1_out[4] reg_sh1_out[3] reg_sh1_out[2] reg_sh1_out[1] reg_sh1_out[0] -autobundled
netbloc @reg_sh1_out 1 28 1 14990 6100n
load netBundle @decoded_rs1 5 decoded_rs1[4] decoded_rs1[3] decoded_rs1[2] decoded_rs1[1] decoded_rs1[0] -autobundled
netbloc @decoded_rs1 1 12 13 6300 7110 NJ 7110 NJ 7110 NJ 7110 NJ 7110 NJ 7110 NJ 7110 NJ 7110 NJ 7110 NJ 7110 NJ 7110 NJ 7110 13320
load netBundle @cpu_state 8 cpu_state[7] cpu_state[6] cpu_state[5] cpu_state[4] cpu_state[3] cpu_state[2] cpu_state[1] cpu_state[0] -autobundled
netbloc @cpu_state 1 5 64 1450 6320 NJ 6320 NJ 6320 NJ 6320 NJ 6320 NJ 6320N 5180 4510N 5980 5500N 6790J 5330 7630J 5130 8700 6450N 9500 6190N 10090 6000N 10590 6660 NJ 6660 11450 7410N 12050 7060N NJ 7060 NJ 7060 NJ 7060 NJ 7060 NJ 7060 14670 6170N 14990 6350 NJ 6350 16370 6510N 16840J 6170 NJ 6170 17620 6470N N 6470 NJ 6470 NJ 6470 NJ 6470 NJ 6470 NJ 6470 NJ 6470 NJ 6470 NJ 6470 NJ 6470 NJ 6470 21610 5670N 22100 5700N NJ 5700 NJ 5700 NJ 5700 NJ 5700 23850 6140N 24180J 6360 NJ 6360 NJ 6360 25410J 6390 NJ 6390 26020J 6330 26360 6100N 26630J 7390 NJ 7390 NJ 7390 NJ 7390 NJ 7390 NJ 7390 NJ 7390 28740 7590 29670 7830N 30470
load netBundle @alu_out_q 32 alu_out_q[31] alu_out_q[30] alu_out_q[29] alu_out_q[28] alu_out_q[27] alu_out_q[26] alu_out_q[25] alu_out_q[24] alu_out_q[23] alu_out_q[22] alu_out_q[21] alu_out_q[20] alu_out_q[19] alu_out_q[18] alu_out_q[17] alu_out_q[16] alu_out_q[15] alu_out_q[14] alu_out_q[13] alu_out_q[12] alu_out_q[11] alu_out_q[10] alu_out_q[9] alu_out_q[8] alu_out_q[7] alu_out_q[6] alu_out_q[5] alu_out_q[4] alu_out_q[3] alu_out_q[2] alu_out_q[1] alu_out_q[0] -autobundled
netbloc @alu_out_q 1 17 6 9870 6900 10650J 6880 NJ 6880 NJ 6880 12030J 6860 12430J
load netBundle @decoded_rd 5 decoded_rd[4] decoded_rd[3] decoded_rd[2] decoded_rd[1] decoded_rd[0] -autobundled
netbloc @decoded_rd 1 21 1 12050 6990n
load netBundle @reg_sh 5 reg_sh[4] reg_sh[3] reg_sh[2] reg_sh[1] reg_sh[0] -autobundled
netbloc @reg_sh 1 25 5 13670 6870 NJ 6870 NJ 6870 NJ 6870 15500
load netBundle @reg_out 32 reg_out[31] reg_out[30] reg_out[29] reg_out[28] reg_out[27] reg_out[26] reg_out[25] reg_out[24] reg_out[23] reg_out[22] reg_out[21] reg_out[20] reg_out[19] reg_out[18] reg_out[17] reg_out[16] reg_out[15] reg_out[14] reg_out[13] reg_out[12] reg_out[11] reg_out[10] reg_out[9] reg_out[8] reg_out[7] reg_out[6] reg_out[5] reg_out[4] reg_out[3] reg_out[2] reg_out[1] reg_out[0] -autobundled
netbloc @reg_out 1 17 50 9930 6920 NJ 6920 NJ 6920 NJ 6920 NJ 6920 12490 5970 NJ 5970 NJ 5970 NJ 5970 NJ 5970 NJ 5970 NJ 5970 NJ 5970 16270J 5840 NJ 5840 NJ 5840 NJ 5840 NJ 5840 NJ 5840 NJ 5840 NJ 5840 NJ 5840 NJ 5840 NJ 5840 NJ 5840 NJ 5840 NJ 5840 NJ 5840 NJ 5840 NJ 5840 NJ 5840 NJ 5840 NJ 5840 NJ 5840 NJ 5840 NJ 5840 24650J 5990 NJ 5990 NJ 5990 NJ 5990 NJ 5990 26320J 6130 NJ 6130 NJ 6130 NJ 6130 NJ 6130 NJ 6130 NJ 6130 NJ 6130 28920J
load netBundle @count_instr 64 count_instr[63] count_instr[62] count_instr[61] count_instr[60] count_instr[59] count_instr[58] count_instr[57] count_instr[56] count_instr[55] count_instr[54] count_instr[53] count_instr[52] count_instr[51] count_instr[50] count_instr[49] count_instr[48] count_instr[47] count_instr[46] count_instr[45] count_instr[44] count_instr[43] count_instr[42] count_instr[41] count_instr[40] count_instr[39] count_instr[38] count_instr[37] count_instr[36] count_instr[35] count_instr[34] count_instr[33] count_instr[32] count_instr[31] count_instr[30] count_instr[29] count_instr[28] count_instr[27] count_instr[26] count_instr[25] count_instr[24] count_instr[23] count_instr[22] count_instr[21] count_instr[20] count_instr[19] count_instr[18] count_instr[17] count_instr[16] count_instr[15] count_instr[14] count_instr[13] count_instr[12] count_instr[11] count_instr[10] count_instr[9] count_instr[8] count_instr[7] count_instr[6] count_instr[5] count_instr[4] count_instr[3] count_instr[2] count_instr[1] count_instr[0] -autobundled
netbloc @count_instr 1 11 3 5200 3980 NJ 3980 6970
load netBundle @decoded_imm_j 32 decoded_imm_j[31] decoded_imm_j[30] decoded_imm_j[29] decoded_imm_j[28] decoded_imm_j[27] decoded_imm_j[26] decoded_imm_j[25] decoded_imm_j[24] decoded_imm_j[23] decoded_imm_j[22] decoded_imm_j[21] decoded_imm_j[20] decoded_imm_j[19] decoded_imm_j[18] decoded_imm_j[17] decoded_imm_j[16] decoded_imm_j[15] decoded_imm_j[14] decoded_imm_j[13] decoded_imm_j[12] decoded_imm_j[11] decoded_imm_j[10] decoded_imm_j[9] decoded_imm_j[8] decoded_imm_j[7] decoded_imm_j[6] decoded_imm_j[5] decoded_imm_j[4] decoded_imm_j[3] decoded_imm_j[2] decoded_imm_j[1] decoded_imm_j[0] -autobundled
netbloc @decoded_imm_j 1 12 4 6240 6980 NJ 6980 NJ 6980 8440J
load netBundle @mem_wordsize 2 mem_wordsize[1] mem_wordsize[0] -autobundled
netbloc @mem_wordsize 1 13 57 6910 3750N 7910 4560 NJ 4560 9400J 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 NJ 4970 13970J 5060 14550 6650 15050J 6690 15520J 6840 NJ 6840 NJ 6840 NJ 6840 NJ 6840 NJ 6840 NJ 6840 NJ 6840 NJ 6840 NJ 6840 NJ 6840 NJ 6840 NJ 6840 20120J 6820 NJ 6820 NJ 6820 NJ 6820 NJ 6820 22530J 6810 22820J 6730 NJ 6730 23330J 6810 NJ 6810 NJ 6810 NJ 6810 NJ 6810 25410J 6720 NJ 6720 NJ 6720 NJ 6720 NJ 6720 NJ 6720 NJ 6720 NJ 6720 NJ 6720 NJ 6720 NJ 6720 28880J 6800 29430J 6850 30270 5840N 31140
load netBundle @reg_pc 32 reg_pc[31] reg_pc[30] reg_pc[29] reg_pc[28] reg_pc[27] reg_pc[26] reg_pc[25] reg_pc[24] reg_pc[23] reg_pc[22] reg_pc[21] reg_pc[20] reg_pc[19] reg_pc[18] reg_pc[17] reg_pc[16] reg_pc[15] reg_pc[14] reg_pc[13] reg_pc[12] reg_pc[11] reg_pc[10] reg_pc[9] reg_pc[8] reg_pc[7] reg_pc[6] reg_pc[5] reg_pc[4] reg_pc[3] reg_pc[2] reg_pc[1] reg_pc[0] -autobundled
netbloc @reg_pc 1 14 53 7930 7000 NJ 7000 NJ 7000 NJ 7000 NJ 7000 NJ 7000 11490J 6940 NJ 6940 12530 7000 NJ 7000 NJ 7000 NJ 7000 NJ 7000 NJ 7000 NJ 7000 15660 5190 NJ 5190 NJ 5190 NJ 5190 NJ 5190 NJ 5190 NJ 5190 NJ 5190 NJ 5190 NJ 5190 NJ 5190 NJ 5190 NJ 5190 NJ 5190 20430J 5370 NJ 5370 NJ 5370 22080J 5360 NJ 5360 NJ 5360 NJ 5360 NJ 5360 NJ 5360 NJ 5360 NJ 5360 NJ 5360 NJ 5360 NJ 5360 NJ 5360 NJ 5360 NJ 5360 NJ 5360 NJ 5360 NJ 5360 NJ 5360 NJ 5360 NJ 5360 NJ
load netBundle @count_cycle 64 count_cycle[63] count_cycle[62] count_cycle[61] count_cycle[60] count_cycle[59] count_cycle[58] count_cycle[57] count_cycle[56] count_cycle[55] count_cycle[54] count_cycle[53] count_cycle[52] count_cycle[51] count_cycle[50] count_cycle[49] count_cycle[48] count_cycle[47] count_cycle[46] count_cycle[45] count_cycle[44] count_cycle[43] count_cycle[42] count_cycle[41] count_cycle[40] count_cycle[39] count_cycle[38] count_cycle[37] count_cycle[36] count_cycle[35] count_cycle[34] count_cycle[33] count_cycle[32] count_cycle[31] count_cycle[30] count_cycle[29] count_cycle[28] count_cycle[27] count_cycle[26] count_cycle[25] count_cycle[24] count_cycle[23] count_cycle[22] count_cycle[21] count_cycle[20] count_cycle[19] count_cycle[18] count_cycle[17] count_cycle[16] count_cycle[15] count_cycle[14] count_cycle[13] count_cycle[12] count_cycle[11] count_cycle[10] count_cycle[9] count_cycle[8] count_cycle[7] count_cycle[6] count_cycle[5] count_cycle[4] count_cycle[3] count_cycle[2] count_cycle[1] count_cycle[0] -autobundled
netbloc @count_cycle 1 11 3 5300 3960 NJ 3960 6930
load netBundle @reg_next_pc 32 reg_next_pc[31] reg_next_pc[30] reg_next_pc[29] reg_next_pc[28] reg_next_pc[27] reg_next_pc[26] reg_next_pc[25] reg_next_pc[24] reg_next_pc[23] reg_next_pc[22] reg_next_pc[21] reg_next_pc[20] reg_next_pc[19] reg_next_pc[18] reg_next_pc[17] reg_next_pc[16] reg_next_pc[15] reg_next_pc[14] reg_next_pc[13] reg_next_pc[12] reg_next_pc[11] reg_next_pc[10] reg_next_pc[9] reg_next_pc[8] reg_next_pc[7] reg_next_pc[6] reg_next_pc[5] reg_next_pc[4] reg_next_pc[3] reg_next_pc[2] reg_next_pc[1] reg_next_pc[0] -autobundled
netbloc @reg_next_pc 1 19 49 11070 6290 11450 6460 11910J 6440 12470 6350 NJ 6350 NJ 6350 13630J 6390 13970J 6410 14510J 6500 NJ 6500 15580J 6510 16310J 6540 NJ 6540 NJ 6540 NJ 6540 NJ 6540 18290J 6560 NJ 6560 NJ 6560 NJ 6560 NJ 6560 NJ 6560 NJ 6560 NJ 6560 NJ 6560 NJ 6560 NJ 6560 NJ 6560 NJ 6560 NJ 6560 23090J 6520 NJ 6520 NJ 6520 NJ 6520 24730J 6480 NJ 6480 NJ 6480 NJ 6480 NJ 6480 NJ 6480 NJ 6480 NJ 6480 NJ 6480 NJ 6480 NJ 6480 NJ 6480 NJ 6480 NJ 6480 29490
load netBundle @mem_rdata_q 32 mem_rdata_q[31] mem_rdata_q[30] mem_rdata_q[29] mem_rdata_q[28] mem_rdata_q[27] mem_rdata_q[26] mem_rdata_q[25] mem_rdata_q[24] mem_rdata_q[23] mem_rdata_q[22] mem_rdata_q[21] mem_rdata_q[20] mem_rdata_q[19] mem_rdata_q[18] mem_rdata_q[17] mem_rdata_q[16] mem_rdata_q[15] mem_rdata_q[14] mem_rdata_q[13] mem_rdata_q[12] mem_rdata_q[11] mem_rdata_q[10] mem_rdata_q[9] mem_rdata_q[8] mem_rdata_q[7] mem_rdata_q[6] mem_rdata_q[5] mem_rdata_q[4] mem_rdata_q[3] mem_rdata_q[2] mem_rdata_q[1] mem_rdata_q[0] -autobundled
netbloc @mem_rdata_q 1 2 52 440 3450 NJ 3450 NJ 3450 1350 2960 1780 4100 2850 4000 3560 5830 4080 6060 NJ 6060 5340 6370 5920 3080 NJ 3080 NJ 3080 NJ 3080 NJ 3080 NJ 3080 NJ 3080 NJ 3080 NJ 3080 NJ 3080 NJ 3080 12820 4350 13260 5110 NJ 5110 NJ 5110 NJ 5110 NJ 5110 NJ 5110 NJ 5110 NJ 5110 NJ 5110 NJ 5110 NJ 5110 NJ 5110 NJ 5110 NJ 5110 NJ 5110 NJ 5110 NJ 5110 NJ 5110 NJ 5110 NJ 5110 NJ 5110 21550J 5090 NJ 5090 NJ 5090 NJ 5090 NJ 5090 NJ 5090 NJ 5090 24200 5780 24670
load netBundle @mem_state 2 mem_state[1] mem_state[0] -autobundled
netbloc @mem_state 1 36 33 18600 7170 18960 7230 NJ 7230 NJ 7230 NJ 7230 NJ 7230 NJ 7230 NJ 7230 NJ 7230 NJ 7230 NJ 7230 NJ 7230 NJ 7230 NJ 7230 NJ 7230 NJ 7230 NJ 7230 NJ 7230 NJ 7230 NJ 7230 NJ 7230 NJ 7230 NJ 7230 NJ 7230 NJ 7230 NJ 7230 NJ 7230 27700J 7190 NJ 7190N 28380 6990N N 6990 29530 6800N 30230
load netBundle @decoded_imm 32 decoded_imm[31] decoded_imm[30] decoded_imm[29] decoded_imm[28] decoded_imm[27] decoded_imm[26] decoded_imm[25] decoded_imm[24] decoded_imm[23] decoded_imm[22] decoded_imm[21] decoded_imm[20] decoded_imm[19] decoded_imm[18] decoded_imm[17] decoded_imm[16] decoded_imm[15] decoded_imm[14] decoded_imm[13] decoded_imm[12] decoded_imm[11] decoded_imm[10] decoded_imm[9] decoded_imm[8] decoded_imm[7] decoded_imm[6] decoded_imm[5] decoded_imm[4] decoded_imm[3] decoded_imm[2] decoded_imm[1] decoded_imm[0] -autobundled
netbloc @decoded_imm 1 14 54 7550 6360 8820J 6030 NJ 6030 NJ 6030 10490J 5970 11010J 5920 NJ 5920 NJ 5920 12550J 5990 NJ 5990 NJ 5990 NJ 5990 NJ 5990 NJ 5990 NJ 5990 NJ 5990 16290J 5860 NJ 5860 NJ 5860 NJ 5860 NJ 5860 NJ 5860 NJ 5860 NJ 5860 NJ 5860 NJ 5860 NJ 5860 NJ 5860 NJ 5860 NJ 5860 NJ 5860 NJ 5860 NJ 5860 NJ 5860 NJ 5860 NJ 5860 NJ 5860 NJ 5860 NJ 5860 24630J 6010 NJ 6010 NJ 6010 NJ 6010 NJ 6010 26300J 6150 NJ 6150 NJ 6150 NJ 6150 NJ 6150 NJ 6150 NJ 6150 NJ 6150 28860 5290 29630
load netBundle @latched_rd 5 latched_rd[4] latched_rd[3] latched_rd[2] latched_rd[1] latched_rd[0] -autobundled
netbloc @latched_rd 1 23 2 12920 6470 13220J
load netBundle @decoded_rs2 5 decoded_rs2[4] decoded_rs2[3] decoded_rs2[2] decoded_rs2[1] decoded_rs2[0] -autobundled
netbloc @decoded_rs2 1 24 3 13240 4950 NJ 4950 13970J
load netBundle @p_0_in 2 p_0_in[2] p_0_in[1] -autobundled
netbloc @p_0_in 1 11 56 5100 5380 6160 5380 6690 5530 7650J 5320 8580J 5310 NJ 5310 NJ 5310 NJ 5310 NJ 5310 NJ 5310 NJ 5310 NJ 5310 NJ 5310 NJ 5310 NJ 5310 NJ 5310 NJ 5310 15010J 5200 15520J 5230 NJ 5230 NJ 5230 NJ 5230 NJ 5230 NJ 5230 NJ 5230 NJ 5230 NJ 5230 NJ 5230 NJ 5230 NJ 5230 NJ 5230 NJ 5230 20410J 5390 NJ 5390 NJ 5390 22180J 5380 NJ 5380 NJ 5380 NJ 5380 NJ 5380 NJ 5380 NJ 5380 NJ 5380 NJ 5380 NJ 5380 NJ 5380 NJ 5380 NJ 5380 NJ 5380 NJ 5380 NJ 5380 NJ 5380 NJ 5380 NJ 5380 28300J 5410 28900
load netBundle @instr_jalr 3 instr_jalr is_lb_lh_lw_lbu_lhu is_alu_reg_imm -autobundled
netbloc @instr_jalr 1 6 53 1740 4080 2810 4580 NJ 4580 4020 5210 4410J 5400 5220 4880 6220 4740 6750 5630 7550J 5590 8500 6050 NJ 6050 NJ 6050 10610J 5990 11010J 6020 11410J 5940 NJ 5940 12530J 6010 NJ 6010 NJ 6010 NJ 6010 NJ 6010 NJ 6010 NJ 6010 NJ 6010 16330J 5880 NJ 5880 NJ 5880 NJ 5880 NJ 5880 NJ 5880 NJ 5880 NJ 5880 NJ 5880 NJ 5880 NJ 5880 NJ 5880 NJ 5880 NJ 5880 NJ 5880 NJ 5880 NJ 5880 NJ 5880 NJ 5880 NJ 5880 NJ 5880 NJ 5880 NJ 5880 24610J 6130 25120 5870 NJ 5870 NJ 5870 NJ 5870 26340J
load netBundle @RTL_AND__70_n_,RTL_AND__69_n_ 3 RTL_AND__70_n_0 RTL_AND__69_n_0 RTL_AND__68_n_0 -autobundled
netbloc @RTL_AND__70_n_,RTL_AND__69_n_ 1 13 1 6670 5560n
load netBundle @instr_slti,instr_blt 3 instr_slti instr_blt instr_slt -autobundled
netbloc @instr_slti,instr_blt 1 11 3 5240 6570 6260 6470 7070J
load netBundle @instr_sltiu,instr_bltu 3 instr_sltiu instr_bltu instr_sltu -autobundled
netbloc @instr_sltiu,instr_bltu 1 11 3 5160 6590 6280 6490 7090J
load netBundle @p_0_out 3 p_0_out[2] p_0_out[1] p_0_out[0] -autobundled
netbloc @p_0_out 1 11 1 5120 4730n
load netBundle @RTL_EQ__79_n_,RTL_EQ__78_n_ 6 RTL_EQ__79_n_0 RTL_EQ__78_n_0 RTL_EQ__77_n_0 RTL_EQ__76_n_0 RTL_EQ__75_n_0 RTL_EQ__74_n_0 -autobundled
netbloc @RTL_EQ__79_n_,RTL_EQ__78_n_ 1 10 1 4510 4300n
load netBundle @p_0_in,instr_addi,instr_add 4 p_0_in[0] instr_addi instr_add instr_sub -autobundled
netbloc @p_0_in,instr_addi,instr_add 1 11 46 5360 5400 6180 6400N 6970 5940 7510J 5920N 8680 5870 9380 6400N 9970 5680 NJ 5680 NJ 5680 NJ 5680 NJ 5680 NJ 5680 NJ 5680 NJ 5680 NJ 5680 NJ 5680 NJ 5680 15130J 5700N 15540J 5530 NJ 5530 NJ 5530 NJ 5530 NJ 5530 NJ 5530 NJ 5530 NJ 5530 NJ 5530 NJ 5530 NJ 5530 NJ 5530 NJ 5530 NJ 5530 NJ 5530 NJ 5530 21370 5760 NJ 5760 NJ 5760 NJ 5760 NJ 5760 NJ 5760 NJ 5760 NJ 5760 24670J 5710 25000J 5770 NJ 5770 25740
load netBundle @instr_lbu,instr_lhu,instr_lw 3 instr_lbu instr_lhu instr_lw -autobundled
netbloc @instr_lbu,instr_lhu,instr_lw 1 9 3 3940 4480 4410 4220N 5100
load netBundle @instr_beq,instr_bne,instr_bge 32 instr_beq instr_bne instr_bge instr_bgeu instr_lb instr_lh instr_sb instr_sh instr_sw instr_xori instr_ori instr_andi instr_slli instr_srli instr_srai instr_sll instr_xor instr_srl instr_sra instr_or instr_and instr_rdcycle instr_rdcycleh instr_rdinstr instr_rdinstrh instr_fence instr_getq instr_setq instr_retirq instr_maskirq instr_waitirq instr_timer -autobundled
netbloc @instr_beq,instr_bne,instr_bge 1 9 57 3900 4460 4650 4610N 5280 4780 6200 4600 6650 4250N 7790 4330N 8900 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 NJ 4390 26380 4450 NJ 4450 NJ 4450 NJ 4450 NJ 4450 NJ 4450 NJ 4450 28440
levelinfo -pg 1 0 90 310 590 900 1220 1590 2160 3030 3720 4260 4910 5550 6430 7240 8140 9060 9630 10300 10800 11260 11730 12240 12680 13060 13440 13840 14270 14860 15360 15950 16710 17120 17400 17810 18140 18400 18670 19030 19300 19470 19630 19990 20250 20590 21090 21820 22370 22620 22870 23210 23590 24020 24340 24870 25260 25580 25880 26180 26510 26770 27030 27330 27520 27820 28180 28580 29190 29910 30790 31320 31520
pagesize -pg 1 -db -bbox -sgen -160 0 31700 7870
show
fullfit
#
# initialize ictrl to current module csdt2 work:csdt2:NOFILE
ictrl init topinfo |
