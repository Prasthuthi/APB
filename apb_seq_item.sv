//--------------------------------------------------------------------------------------------
// Class: in_sequence_item
// This class holds the data items required to drive the stimulus to dut
//--------------------------------------------------------------------------------------------

class apb_seq_item extends uvm_sequence_item;

    //factory registration
 // `uvm_object_utils(apb_seq_item)
     `uvm_object_utils_begin(apb_seq_item)
			`uvm_field_int(pwrite,UVM_DEFAULT)
			`uvm_field_int(penable,UVM_DEFAULT)
			`uvm_field_int(psel,UVM_DEFAULT)
			`uvm_field_int(pwdata,UVM_DEFAULT)
			`uvm_field_int(paddr,UVM_DEFAULT)
			`uvm_field_int(pready,UVM_DEFAULT)
			`uvm_field_int(prdata,UVM_DEFAULT)
		`uvm_object_utils_end
  
  //typedef for READ/Write transaction type
  typedef enum {READ, WRITE} RW;

//-----------------Declaration of the signals----------------- 
//-----------------Randomizing master signals-----------------

  rand bit [31:0] paddr;
  rand bit [31:0] pwdata;
  rand RW pwrite;
  rand bit psel;
  rand bit penable;

 //-----------------Slave signals-----------------
  bit pready;
  bit [31:0] prdata;

 //-----------------Constraint-----------------------------

  constraint c1{paddr inside {[0:255];}
  constraint c2{pdata inside {[0:255];}

  //class constructor

  function new (string name = "apb_seq_item");
    super.new(name);
  endfunction
  
endclass


  
