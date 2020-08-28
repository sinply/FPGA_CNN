
 add_fsm_encoding \
       {axi_data_fifo_v2_1_10_axic_reg_srl_fifo.state} \
       { }  \
       {{00 0100} {01 1000} {10 0001} {11 0010} }

 add_fsm_encoding \
       {axi_data_fifo_v2_1_10_axic_reg_srl_fifo__parameterized0.state} \
       { }  \
       {{00 0100} {01 1000} {10 0001} {11 0010} }

 add_fsm_encoding \
       {axi_data_fifo_v2_1_10_axic_reg_srl_fifo__parameterized1.state} \
       { }  \
       {{00 0100} {01 1000} {10 0001} {11 0010} }

 add_fsm_encoding \
       {sync_em2sp.state1} \
       { }  \
       {{00000 000} {00001 001} {00010 010} {00011 011} {00100 100} {00101 101} {00110 110} {00111 111} }

 add_fsm_encoding \
       {sync_em2sp.state2} \
       { }  \
       {{00000 0000001} {00001 0000010} {00010 0000100} {00011 0001000} {00100 0010000} {00101 0100000} {00110 1000000} }

 add_fsm_encoding \
       {bayer2rgb.statefv} \
       { }  \
       {{0000 000} {0001 001} {0010 010} {0011 011} {0100 100} {0101 101} }

 add_fsm_encoding \
       {bayer2rgb.staterd} \
       { }  \
       {{0000 00} {0001 01} {0010 10} {0011 11} }

 add_fsm_encoding \
       {axi_master_burst_pcc.sig_pcc_sm_state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 101} {110 110} }

 add_fsm_encoding \
       {user_logic_wr.state_wr} \
       { }  \
       {{00000 0000} {00001 0001} {00010 0010} {00011 0011} {00100 0100} {00101 0101} {00110 0110} {00111 0111} {11111 1000} }

 add_fsm_encoding \
       {user_logic_wr.state} \
       { }  \
       {{00000 0000} {00001 0001} {00010 0010} {00011 0011} {00100 0100} {00101 0101} {00110 0110} {00111 0111} {01000 1000} {01001 1001} }

 add_fsm_encoding \
       {user_logic_wr.statec} \
       { }  \
       {{0000 00} {0001 01} {0010 10} {0011 11} }

 add_fsm_encoding \
       {user_logic.state} \
       { }  \
       {{00000 000} {00001 001} {00010 010} {00011 011} {00100 100} {00101 101} {00110 110} }
