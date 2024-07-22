//APB interface

interface apb_interface;

  //CLOCK AND RESET SIGNALS
  
  logic pclk;
  logic rst_n;

  //MASTER SIGNALS
  
  logic [31:0] paddr;
  logic psel;
  logic penable;
  logic pwrite;
  logic [31:0] pwdata;

  //SLAVE SIGNALS
  
  logic pready;
  logic [31:0] prdata;
  logic 
 
endinterface



// interface apb_if();
//   //Reset and clock
//   bit PCLK;
//   bit PRESET;
//   bit PSEL;
//   bit PENABLE;
//   bit PWRITE;
//   bit [0:3] PSTRB;
//   logic [31:0] PADDR;
//   logic [31:0] PWDATA;
//   logic [31:0] PRDATA;
//   bit PREADY;
//   bit PSLVERR; 
// endinterface: apb_if
