#sys clk and reset on board
#set_property PACKAGE_PIN N18 [get_ports mclk]
#set_property PACKAGE_PIN E17 [get_ports reset_n]
#set_property IOSTANDARD LVCMOS33 [get_ports mclk]
#set_property IOSTANDARD LVCMOS33 [get_ports reset_n]
# for hdmi out en
set_property PACKAGE_PIN E19 [get_ports hdmi_out_en]
 
#--------------------------- SNOWLeo HDMI interface  ------------------------------
#set_property PACKAGE_PIN D19 [get_ports I2C0_SCL_O  ] 
#set_property PACKAGE_PIN D20 [get_ports I2C0_SDA_O  ]
set_property PACKAGE_PIN K18 [get_ports HDMI_CLK_N  ] 
set_property PACKAGE_PIN K17 [get_ports HDMI_CLK_P  ] 
set_property PACKAGE_PIN F20 [get_ports HDMI_D0_N   ] 
set_property PACKAGE_PIN F19 [get_ports HDMI_D0_P   ]
set_property PACKAGE_PIN H18 [get_ports HDMI_D1_N   ] 
set_property PACKAGE_PIN J18 [get_ports HDMI_D1_P   ]
set_property PACKAGE_PIN H17 [get_ports HDMI_D2_N   ] 
set_property PACKAGE_PIN H16 [get_ports HDMI_D2_P   ] 

#----------------------------HDMI-------------------------------------------------
#set_property IOSTANDARD LVCMOS33 [get_ports I2C0_SCL_O  ] 
#set_property IOSTANDARD LVCMOS33 [get_ports I2C0_SDA_O  ] 
set_property IOSTANDARD TMDS_33  [get_ports HDMI_CLK_N]
set_property IOSTANDARD TMDS_33  [get_ports HDMI_CLK_P]
set_property IOSTANDARD TMDS_33  [get_ports HDMI_D0_N]
set_property IOSTANDARD TMDS_33  [get_ports HDMI_D0_P]
set_property IOSTANDARD TMDS_33  [get_ports HDMI_D1_N]
set_property IOSTANDARD TMDS_33  [get_ports HDMI_D1_P]
set_property IOSTANDARD TMDS_33  [get_ports HDMI_D2_P]
set_property IOSTANDARD TMDS_33  [get_ports HDMI_D2_N]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_out_en]
