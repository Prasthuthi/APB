//------------------------------------------------------------------------------------------------------------
// Class: apb_read_sequence
// Extends the uvm_sequence and contains inline constraint for read sequence
//-------------------------------------------------------------------------------------------------------------

class apb_read_sequence extends uvm_sequence#(apb_seq_item);

    //factory registration
  `uvm_object_utils(apb_read_sequence)
  
//--------------------------------------------------------------------------------------------
// Construct: new
//
//  Parameters:
//  name - apb_read_sequence
//--------------------------------------------------------------------------------------------
  function new(string name = "apb_read_sequence");
			super.new(name);
		endfunction
  
//--------------------------------------------------------------------------------------------
// Task: body
//  Creates the seq_item_h of type read transaction and randomizes the seq_item_h.
//--------------------------------------------------------------------------------------------
  virtual task body();
    `uvm_info(get_type_name(), "APB read sequence", UVM_LOW);
    
    //Declare in_sequence_item handle
      apb_seq_item seq_item_h;

    seq_item_h = apb_seq_item::type_id::create("apb_seq_item");

   //Sequencer Driver handshaking

    start_item(seq_item_h);
   assert(seq_item_h.randomize() with {pwrite == READ;
                                      paddr == 32'h0010_0010;});
    finish_item(seq_item_h);

  endtask
  
endclass:apb_read_sequence
