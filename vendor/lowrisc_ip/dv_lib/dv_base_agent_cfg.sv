// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

class dv_base_agent_cfg extends uvm_object;

  // agent cfg knobs
  bit         is_active = 1'b1;   // active driver or passive monitor
  bit         en_cov    = 1'b1;   // enable coverage
  if_mode_e   if_mode;            // interface mode - Host or Device

  `uvm_object_utils_begin(dv_base_agent_cfg)
    `uvm_field_int (is_active,          UVM_DEFAULT)
    `uvm_field_int (en_cov,             UVM_DEFAULT)
    `uvm_field_enum(if_mode_e, if_mode, UVM_DEFAULT)
  `uvm_object_utils_end

  `uvm_object_new

endclass
