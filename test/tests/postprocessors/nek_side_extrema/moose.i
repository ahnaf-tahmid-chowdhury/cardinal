[Mesh]
  type = FileMesh
  file = ../meshes/pyramid.exo
[]

[AuxVariables]
  [temp_test]
  []
  [pressure_test]
  []
[]

[ICs]
  [temp_test]
    type = FunctionIC
    variable = temp_test
    function = f
  []
  [pressure_test]
    type = FunctionIC
    variable = pressure_test
    function = f
  []
[]

[Variables]
  [dummy]
  []
[]

[Kernels]
  [dummy]
    type = Diffusion
    variable = dummy
  []
[]

[BCs]
  [fixed]
    type = DirichletBC
    variable = dummy
    value = 1.0
    boundary = '1'
  []
[]

[Functions]
  [f]
    type = ParsedFunction
    value = 'exp(x)+sin(y)+x*y*z'
  []
[]

[Executioner]
  type = Transient
  dt = 5e-4
  num_steps = 1
[]

[Outputs]
  [out]
    type = CSV
    execute_on = 'final'
  []
[]

[Postprocessors]
  [max_temp_side1]
    type = NodalExtremeValue
    variable = temp_test
    boundary = '1'
  []
  [max_temp_side2]
    type = NodalExtremeValue
    variable = temp_test
    boundary = '2'
  []
  [max_temp_side3]
    type = NodalExtremeValue
    variable = temp_test
    boundary = '3'
  []
  [max_temp_side4]
    type = NodalExtremeValue
    variable = temp_test
    boundary = '4'
  []
  [max_temp_side5]
    type = NodalExtremeValue
    variable = temp_test
    boundary = '5'
  []
  [max_temp_side6]
    type = NodalExtremeValue
    variable = temp_test
    boundary = '6'
  []
  [max_temp_side7]
    type = NodalExtremeValue
    variable = temp_test
    boundary = '7'
  []
  [max_temp_side8]
    type = NodalExtremeValue
    variable = temp_test
    boundary = '8'
  []
  [min_temp_side1]
    type = NodalExtremeValue
    variable = temp_test
    boundary = '1'
    value_type = min
  []
  [min_temp_side2]
    type = NodalExtremeValue
    variable = temp_test
    boundary = '2'
    value_type = min
  []
  [min_temp_side3]
    type = NodalExtremeValue
    variable = temp_test
    boundary = '3'
    value_type = min
  []
  [min_temp_side4]
    type = NodalExtremeValue
    variable = temp_test
    boundary = '4'
    value_type = min
  []
  [min_temp_side5]
    type = NodalExtremeValue
    variable = temp_test
    boundary = '5'
    value_type = min
  []
  [min_temp_side6]
    type = NodalExtremeValue
    variable = temp_test
    boundary = '6'
    value_type = min
  []
  [min_temp_side7]
    type = NodalExtremeValue
    variable = temp_test
    boundary = '7'
    value_type = min
  []
  [min_temp_side8]
    type = NodalExtremeValue
    variable = temp_test
    boundary = '8'
    value_type = min
  []

  [max_pressure_side1]
    type = NodalExtremeValue
    variable = pressure_test
    boundary = '1'
  []
  [max_pressure_side2]
    type = NodalExtremeValue
    variable = pressure_test
    boundary = '2'
  []
  [max_pressure_side3]
    type = NodalExtremeValue
    variable = pressure_test
    boundary = '3'
  []
  [max_pressure_side4]
    type = NodalExtremeValue
    variable = pressure_test
    boundary = '4'
  []
  [max_pressure_side5]
    type = NodalExtremeValue
    variable = pressure_test
    boundary = '5'
  []
  [max_pressure_side6]
    type = NodalExtremeValue
    variable = pressure_test
    boundary = '6'
  []
  [max_pressure_side7]
    type = NodalExtremeValue
    variable = pressure_test
    boundary = '7'
  []
  [max_pressure_side8]
    type = NodalExtremeValue
    variable = pressure_test
    boundary = '8'
  []
  [min_pressure_side1]
    type = NodalExtremeValue
    variable = pressure_test
    boundary = '1'
    value_type = min
  []
  [min_pressure_side2]
    type = NodalExtremeValue
    variable = pressure_test
    boundary = '2'
    value_type = min
  []
  [min_pressure_side3]
    type = NodalExtremeValue
    variable = pressure_test
    boundary = '3'
    value_type = min
  []
  [min_pressure_side4]
    type = NodalExtremeValue
    variable = pressure_test
    boundary = '4'
    value_type = min
  []
  [min_pressure_side5]
    type = NodalExtremeValue
    variable = pressure_test
    boundary = '5'
    value_type = min
  []
  [min_pressure_side6]
    type = NodalExtremeValue
    variable = pressure_test
    boundary = '6'
    value_type = min
  []
  [min_pressure_side7]
    type = NodalExtremeValue
    variable = pressure_test
    boundary = '7'
    value_type = min
  []
  [min_pressure_side8]
    type = NodalExtremeValue
    variable = pressure_test
    boundary = '8'
    value_type = min
  []
[]