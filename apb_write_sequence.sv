//------------------------------------------------------------------------------------------------------------
// Class: apb_write_sequence
// Extends the uvm_sequence and contains inline constraint for write sequence
//-------------------------------------------------------------------------------------------------------------

class apb_write_sequence extends uvm_sequence#(apb_seq_item);

    //factory registration
  `uvm_object_utils(apb_write_sequence)
  
//--------------------------------------------------------------------------------------------
// Construct: new
//
//  Parameters:
//  name - apb_write_sequence
//--------------------------------------------------------------------------------------------
  function new(string name = "apb_write_sequence");
			super.new(name);
		endfunction
  
//--------------------------------------------------------------------------------------------
// Task: body
//  Creates the seq_item_h of type write transaction and randomizes the seq_item_h.
//--------------------------------------------------------------------------------------------
  virtual task body();
    `uvm_info(get_type_name(), "APB write sequence", UVM_LOW);

    //Declare in_sequence_item handle
      apb_seq_item seq_item_h;

    seq_item_h = apb_seq_item::type_id::create("apb_seq_item");

   //Sequencer Driver handshaking

    start_item(seq_item_h);
   assert(seq_item_h.randomize() with {pwrite == WRITE;});
    finish_item(seq_item_h);

  endtask
  
endclass:apb_write_sequence


