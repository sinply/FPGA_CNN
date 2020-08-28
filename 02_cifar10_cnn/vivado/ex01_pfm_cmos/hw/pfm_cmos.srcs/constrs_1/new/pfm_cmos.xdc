#sys clk and reset on board
#set_property PACKAGE_PIN N18 [get_ports mclk]
#set_property PACKAGE_PIN E17 [get_ports reset_n]
#set_property IOSTANDARD LVCMOS33 [get_ports mclk]
#set_property IOSTANDARD LVCMOS33 [get_ports reset_n]
# for hdmi out en
set_property PACKAGE_PIN E19 [get_ports hdmi_out_en]
#for leds
set_property PACKAGE_PIN H20 [get_ports led]
 
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

#-----------------CMOSCONFIG-BY--SPI--------
set_property PACKAGE_PIN P20  [get_ports spi_miso      ]
set_property PACKAGE_PIN R19  [get_ports spi_cs      ]
set_property PACKAGE_PIN J19  [get_ports spi_mosi      ]
set_property PACKAGE_PIN K19  [get_ports spi_sclk      ] 

set_property PACKAGE_PIN U20  [get_ports cmos_rst    ]
set_property PACKAGE_PIN U18  [get_ports rgbin_clk ]
#set_property PACKAGE_PIN R17  [get_ports cmos_lval_pin   ]
#set_property PACKAGE_PIN T20  [get_ports cmos_fval_pin   ]

set_property PACKAGE_PIN W16  [get_ports bayer_data[0]]
set_property PACKAGE_PIN V15  [get_ports bayer_data[1]]
set_property PACKAGE_PIN Y19  [get_ports bayer_data[2]]
set_property PACKAGE_PIN Y18  [get_ports bayer_data[3]]
set_property PACKAGE_PIN V16  [get_ports bayer_data[4]]
set_property PACKAGE_PIN U17	[get_ports bayer_data[5]]
set_property PACKAGE_PIN W20  [get_ports bayer_data[6]]
set_property PACKAGE_PIN T17  [get_ports bayer_data[7]]


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

set_property IOSTANDARD LVCMOS33 [get_ports spi_miso]
set_property IOSTANDARD LVCMOS33 [get_ports spi_mosi]
set_property IOSTANDARD LVCMOS33 [get_ports spi_cs]
set_property IOSTANDARD LVCMOS33 [get_ports spi_sclk]

set_property IOSTANDARD LVCMOS33 [get_ports cmos_rst]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_out_en]
set_property IOSTANDARD LVCMOS33 [get_ports led]
set_property IOSTANDARD LVCMOS33 [get_ports rgbin_clk]
#set_property IOSTANDARD LVCMOS33 [get_ports cmos_lval_pin]
#set_property IOSTANDARD LVCMOS33 [get_ports cmos_fval_pin]
set_property IOSTANDARD LVCMOS33 [get_ports {bayer_data[*]}]
