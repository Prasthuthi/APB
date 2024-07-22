//--------------------------------------------------------------------------------------------
// Class: in_sequence_item
// This class holds the data items required to drive the stimulus to dut
//--------------------------------------------------------------------------------------------

class apb_seq_item extends uvm_sequence_item;

    //factory registration
  `uvm_object_utils(apb_seq_item)
  
  //typedef for READ/Write transaction type
  typedef enum {READ, WRITE} RW;

  //Declaration of the signals
  rand bit   [31:0] addr;      //Address
  rand bit [31:0] data;     //Data - For write or read response
  rand RW  pwrite;       //command type
  
  // constraint c1{addr[31:0]>=32'd0; addr[31:0] <32'd256;};
  // constraint c2{data[31:0]>=32'd0; data[31:0] <32'd256;};
  
  function new (string name = "apb_seq_item");
    super.new(name);
  endfunction
  
endclass
