# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "H_ACTIVE_TIME" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_ACT_END" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_ACT_START" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_BACK_PORCH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_LEFT_BORDER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_SYNC_TIME" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_TOTAL_TIME" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_ACTIVE_TIME" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_ACT_END" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_ACT_START" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_BACK_PORCH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_SYNC_TIME" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_TOP_BORDER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_TOTAL_TIME" -parent ${Page_0}


}

proc update_PARAM_VALUE.H_ACTIVE_TIME { PARAM_VALUE.H_ACTIVE_TIME } {
	# Procedure called to update H_ACTIVE_TIME when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_ACTIVE_TIME { PARAM_VALUE.H_ACTIVE_TIME } {
	# Procedure called to validate H_ACTIVE_TIME
	return true
}

proc update_PARAM_VALUE.H_ACT_END { PARAM_VALUE.H_ACT_END } {
	# Procedure called to update H_ACT_END when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_ACT_END { PARAM_VALUE.H_ACT_END } {
	# Procedure called to validate H_ACT_END
	return true
}

proc update_PARAM_VALUE.H_ACT_START { PARAM_VALUE.H_ACT_START } {
	# Procedure called to update H_ACT_START when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_ACT_START { PARAM_VALUE.H_ACT_START } {
	# Procedure called to validate H_ACT_START
	return true
}

proc update_PARAM_VALUE.H_BACK_PORCH { PARAM_VALUE.H_BACK_PORCH } {
	# Procedure called to update H_BACK_PORCH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_BACK_PORCH { PARAM_VALUE.H_BACK_PORCH } {
	# Procedure called to validate H_BACK_PORCH
	return true
}

proc update_PARAM_VALUE.H_LEFT_BORDER { PARAM_VALUE.H_LEFT_BORDER } {
	# Procedure called to update H_LEFT_BORDER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_LEFT_BORDER { PARAM_VALUE.H_LEFT_BORDER } {
	# Procedure called to validate H_LEFT_BORDER
	return true
}

proc update_PARAM_VALUE.H_SYNC_TIME { PARAM_VALUE.H_SYNC_TIME } {
	# Procedure called to update H_SYNC_TIME when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_SYNC_TIME { PARAM_VALUE.H_SYNC_TIME } {
	# Procedure called to validate H_SYNC_TIME
	return true
}

proc update_PARAM_VALUE.H_TOTAL_TIME { PARAM_VALUE.H_TOTAL_TIME } {
	# Procedure called to update H_TOTAL_TIME when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_TOTAL_TIME { PARAM_VALUE.H_TOTAL_TIME } {
	# Procedure called to validate H_TOTAL_TIME
	return true
}

proc update_PARAM_VALUE.V_ACTIVE_TIME { PARAM_VALUE.V_ACTIVE_TIME } {
	# Procedure called to update V_ACTIVE_TIME when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_ACTIVE_TIME { PARAM_VALUE.V_ACTIVE_TIME } {
	# Procedure called to validate V_ACTIVE_TIME
	return true
}

proc update_PARAM_VALUE.V_ACT_END { PARAM_VALUE.V_ACT_END } {
	# Procedure called to update V_ACT_END when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_ACT_END { PARAM_VALUE.V_ACT_END } {
	# Procedure called to validate V_ACT_END
	return true
}

proc update_PARAM_VALUE.V_ACT_START { PARAM_VALUE.V_ACT_START } {
	# Procedure called to update V_ACT_START when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_ACT_START { PARAM_VALUE.V_ACT_START } {
	# Procedure called to validate V_ACT_START
	return true
}

proc update_PARAM_VALUE.V_BACK_PORCH { PARAM_VALUE.V_BACK_PORCH } {
	# Procedure called to update V_BACK_PORCH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_BACK_PORCH { PARAM_VALUE.V_BACK_PORCH } {
	# Procedure called to validate V_BACK_PORCH
	return true
}

proc update_PARAM_VALUE.V_SYNC_TIME { PARAM_VALUE.V_SYNC_TIME } {
	# Procedure called to update V_SYNC_TIME when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_SYNC_TIME { PARAM_VALUE.V_SYNC_TIME } {
	# Procedure called to validate V_SYNC_TIME
	return true
}

proc update_PARAM_VALUE.V_TOP_BORDER { PARAM_VALUE.V_TOP_BORDER } {
	# Procedure called to update V_TOP_BORDER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_TOP_BORDER { PARAM_VALUE.V_TOP_BORDER } {
	# Procedure called to validate V_TOP_BORDER
	return true
}

proc update_PARAM_VALUE.V_TOTAL_TIME { PARAM_VALUE.V_TOTAL_TIME } {
	# Procedure called to update V_TOTAL_TIME when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_TOTAL_TIME { PARAM_VALUE.V_TOTAL_TIME } {
	# Procedure called to validate V_TOTAL_TIME
	return true
}


proc update_MODELPARAM_VALUE.H_SYNC_TIME { MODELPARAM_VALUE.H_SYNC_TIME PARAM_VALUE.H_SYNC_TIME } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_SYNC_TIME}] ${MODELPARAM_VALUE.H_SYNC_TIME}
}

proc update_MODELPARAM_VALUE.H_BACK_PORCH { MODELPARAM_VALUE.H_BACK_PORCH PARAM_VALUE.H_BACK_PORCH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_BACK_PORCH}] ${MODELPARAM_VALUE.H_BACK_PORCH}
}

proc update_MODELPARAM_VALUE.H_LEFT_BORDER { MODELPARAM_VALUE.H_LEFT_BORDER PARAM_VALUE.H_LEFT_BORDER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_LEFT_BORDER}] ${MODELPARAM_VALUE.H_LEFT_BORDER}
}

proc update_MODELPARAM_VALUE.H_ACT_START { MODELPARAM_VALUE.H_ACT_START PARAM_VALUE.H_ACT_START } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_ACT_START}] ${MODELPARAM_VALUE.H_ACT_START}
}

proc update_MODELPARAM_VALUE.H_ACTIVE_TIME { MODELPARAM_VALUE.H_ACTIVE_TIME PARAM_VALUE.H_ACTIVE_TIME } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_ACTIVE_TIME}] ${MODELPARAM_VALUE.H_ACTIVE_TIME}
}

proc update_MODELPARAM_VALUE.H_ACT_END { MODELPARAM_VALUE.H_ACT_END PARAM_VALUE.H_ACT_END } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_ACT_END}] ${MODELPARAM_VALUE.H_ACT_END}
}

proc update_MODELPARAM_VALUE.H_TOTAL_TIME { MODELPARAM_VALUE.H_TOTAL_TIME PARAM_VALUE.H_TOTAL_TIME } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_TOTAL_TIME}] ${MODELPARAM_VALUE.H_TOTAL_TIME}
}

proc update_MODELPARAM_VALUE.V_TOTAL_TIME { MODELPARAM_VALUE.V_TOTAL_TIME PARAM_VALUE.V_TOTAL_TIME } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_TOTAL_TIME}] ${MODELPARAM_VALUE.V_TOTAL_TIME}
}

proc update_MODELPARAM_VALUE.V_SYNC_TIME { MODELPARAM_VALUE.V_SYNC_TIME PARAM_VALUE.V_SYNC_TIME } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_SYNC_TIME}] ${MODELPARAM_VALUE.V_SYNC_TIME}
}

proc update_MODELPARAM_VALUE.V_BACK_PORCH { MODELPARAM_VALUE.V_BACK_PORCH PARAM_VALUE.V_BACK_PORCH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_BACK_PORCH}] ${MODELPARAM_VALUE.V_BACK_PORCH}
}

proc update_MODELPARAM_VALUE.V_TOP_BORDER { MODELPARAM_VALUE.V_TOP_BORDER PARAM_VALUE.V_TOP_BORDER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_TOP_BORDER}] ${MODELPARAM_VALUE.V_TOP_BORDER}
}

proc update_MODELPARAM_VALUE.V_ACT_START { MODELPARAM_VALUE.V_ACT_START PARAM_VALUE.V_ACT_START } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_ACT_START}] ${MODELPARAM_VALUE.V_ACT_START}
}

proc update_MODELPARAM_VALUE.V_ACTIVE_TIME { MODELPARAM_VALUE.V_ACTIVE_TIME PARAM_VALUE.V_ACTIVE_TIME } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_ACTIVE_TIME}] ${MODELPARAM_VALUE.V_ACTIVE_TIME}
}

proc update_MODELPARAM_VALUE.V_ACT_END { MODELPARAM_VALUE.V_ACT_END PARAM_VALUE.V_ACT_END } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_ACT_END}] ${MODELPARAM_VALUE.V_ACT_END}
}

