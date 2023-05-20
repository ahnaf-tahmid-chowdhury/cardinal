[Mesh]
  type = FileMesh
  file = ../../../neutronics/meshes/pincell.e
[]

[AuxVariables]
  [cell_vol]
    family = MONOMIAL
    order = CONSTANT
  []
[]

[AuxKernels]
  [cell_vol]
    type = CellVolumeAux
    variable = cell_vol
    volume_type = actual
  []
[]

[Problem]
  type = OpenMCCellAverageProblem
  power = 500.0
  solid_blocks = '1 3'
  fluid_blocks = '2'
  tally_blocks = '1'
  tally_name = heat_source
  verbose = true
  tally_type = cell
  solid_cell_level = 1
  fluid_cell_level = 1

  volume_calculation = vol
  initial_properties = xml
[]

[UserObjects]
  [vol]
    type = OpenMCVolumeCalculation
    n_samples = 1000
  []
[]

[Executioner]
  type = Steady
[]

[Postprocessors]
  [p1]
    type = PointValue
    variable = cell_vol
    point = '0.0 0.0 0.5'
  []
  [p2]
    type = PointValue
    variable = cell_vol
    point = '0.0 0.0 1.5'
  []
  [p3]
    type = PointValue
    variable = cell_vol
    point = '0.0 0.0 2.5'
  []
  [p4]
    type = PointValue
    variable = cell_vol
    point = '0.0 0.0 3.5'
  []
  [p5]
    type = PointValue
    variable = cell_vol
    point = '0.0 0.0 4.5'
  []
  [p6]
    type = PointValue
    variable = cell_vol
    point = '0.0 0.0 5.5'
  []
  [p7]
    type = PointValue
    variable = cell_vol
    point = '0.0 0.0 6.5'
  []
  [p8]
    type = PointValue
    variable = cell_vol
    point = '0.0 0.0 7.5'
  []
  [p9]
    type = PointValue
    variable = cell_vol
    point = '0.0 0.0 8.5'
  []
  [p10]
    type = PointValue
    variable = cell_vol
    point = '0.0 0.0 9.5'
  []
[]

[Outputs]
  csv = true
[]