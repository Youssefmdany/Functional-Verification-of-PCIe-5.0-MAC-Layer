class DLLP_vSeq_TX_MASTER  extends uvm_sequence #(LPIF_seq_item) ;
  
`uvm_object_utils(DLLP_vSeq_TX_MASTER)

TX_Master_D_Sequencer sqr_d;
TX_Master_U_Sequencer sqr_u;


DLLP_Seq_TX_MASTER_D DLLP_Seq_TX_MASTER_D_h;
DLLP_Seq_TX_MASTER_U DLLP_Seq_TX_MASTER_U_h;


function new (string name = "DLLP_vSeq_TX_MASTER");
		super.new (name);
	endfunction


task body ();
  
DLLP_Seq_TX_MASTER_D_h = DLLP_Seq_TX_MASTER_D::type_id::create("DLLP_Seq_TX_MASTER_D");
DLLP_Seq_TX_MASTER_U_h = DLLP_Seq_TX_MASTER_U::type_id::create("DLLP_Seq_TX_MASTER_U");
            

fork

 begin
	DLLP_Seq_TX_MASTER_U_h.start(sqr_u);
 end
 
 begin
	DLLP_Seq_TX_MASTER_D_h.start(sqr_d); 
 end 
	     
join_any


endtask


endclass
