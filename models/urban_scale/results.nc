�HDF

                    ���������     ��������        `                               OHDRb"     �       7     3�      Y�      
          �      `      �       
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ��=�FRHP              �      �n      �       �              P             X                                           (  �      ���~BTHD       d(�              H�
�BTHD 	      d(�              �w)�FSHD  g                            P x (        8�     D       D       ��5�BTLF      ;      $� �    L     �*% �   J     l3�- v   P  	   �J7 @   A    kW�G ~   7     @�k          �T�v �    �     ���          Ûŀ �   �    �2� �   ;  
   ��    `     ���� Q    1     ʻ#� �    ,     ��N��                                                                                                                                                                                                                                                                         BTLF 	     ;       Q    1      �    ,      @   A     �    L      �    �      �   �     ~   7         `      v   P  	    �   ;  
                        �   J     ���                                                                                                                                                                                                                                                                                                                                 BTHD       d(��              /9M    _model_run         l�         scenario:
applied_overrides: ''
techs:
  boiler:
    inheritance:
    - conversion
    essentials:
      parent: conversion
      carrier_in: gas
      carrier_out: heat
      color: '#8E2999'
      name: Natural gas boiler
    constraints: {}
    required_constraints: []
    allowed_constraints:
    - energy_cap_equals
    - energy_cap_equals_systemwide
    - energy_cap_max
    - energy_cap_max_systemwide
    - energy_cap_min
    - energy_cap_min_use
    - energy_cap_per_unit
    - energy_cap_scale
    - energy_con
    - energy_eff
    - energy_prod
    - energy_ramping
    - export_cap
    - export_carrier
    - lifetime
    - units_equals
    - units_equals_systemwide
    - units_max
    - units_max_systemwide
    - units_min
    allowed_group_constraints:
    - demand_share_min
    - demand_share_max
    - demand_share_equals
    - demand_share_per_timestep_min
    - demand_share_per_timestep_max
    - demand_share_per_timestep_equals
    - demand_share_per_timestep_decision
    - carrier_prod_share_min
    - carrier_prod_share_max
    - carrier_prod_share_equals
    - carrier_prod_share_per_timestep_min
    - carrier_prod_share_per_timestep_max
    - carrier_prod_share_per_timestep_equals
    - cost_max
    - cost_min
    - cost_equals
    - cost_var_max
    - cost_var_min
    - cost_var_equals
    - cost_investment_min
    - cost_investment_max
    - cost_investment_equals
    - energy_cap_share_min
    - energy_cap_share_max
    - energy_cap_share_equals
    - energy_cap_min
    - energy_cap_max
    - energy_cap_equals
    - carrier_prod_min
    - carrier_prod_max
    - carrier_prod_equals
    - carrier_con_min
    - carrier_con_max
    - carrier_con_equals
    allowed_costs:
    - depreciation_rate
    - energy_cap
    - export
    - interest_rate
    - om_annual
    - om_annual_investment_fraction
    - om_con
    - om_prod
    - purchase
  chp:
    inheritance:
    - conversion_plus
    essentials:
      parent: conversion_plus
      carrier_in: gas
      carrier_out: electricity
      carrier_out_2: heat
      color: '#E4AB97'
      name: Combined heat and power
      primary_carrier_out: electricity
      primary_carrier_in: gas
    constraints: {}
    required_constraints: []
    allowed_constraints:
    - carrier_ratios
    - energy_cap_equals
    - energy_cap_equals_systemwide
    - energy_cap_max
    - energy_cap_max_systemwide
    - energy_cap_min
    - energy_cap_min_use
    - energy_cap_per_unit
    - energy_cap_scale
    - energy_con
    - energy_eff
    - energy_prod
    - energy_ramping
    - export_cap
    - export_carrier
    - lifetime
    - units_equals
    - units_equals_systemwide
    - units_max
    - units_max_systemwide
    - units_min
    allowed_group_constraints:
    - demand_share_min
    - demand_share_max
    - demand_share_equals
    - demand_share_per_timestep_min
    - demand_share_per_timestep_max
    - demand_share_per_timestep_equals
    - demand_share_per_timestep_decision
    - carrier_prod_share_min
    - carrier_prod_share_max
    - carrier_prod_share_equals
    - carrier_prod_share_per_timestep_min
    - carrier_prod_share_per_timestep_max
    - carrier_prod_share_per_timestep_equals
    - cost_max
    - cost_min
    - cost_equals
    - cost_var_max
    - cost_var_min
    - cost_var_equals
    - cost_investment_min
    - cost_investment_max
    - cost_investment_equals
    - energy_cap_share_min
    - energy_cap_share_max
    - energy_cap_share_equals
    - energy_cap_min
    - energy_cap_max
    - energy_cap_equals
    - carrier_prod_min
    - carrier_prod_max
    - carrier_prod_equals
    - carrier_con_min
    - carrier_con_max
    - carrier_con_equals
    allowed_costs:
    - depreciation_rate
    - energy_cap
    - export
    - interest_rate
    - om_annual
    - om_annual_investment_fraction
    - om_con
    - om_prod
    - purchase
  demand_electricity:
    inheritance:
    - demand
    essentials:
      parent: demand
      carrier: electricity
      color: '#072486'
      name: Electrical demand
      carrier_in: electricity
      carrier_out: resource
    constraints: {}
    required_constraints:
    - resource
    allowed_constraints:
    - energy_con
    - force_resource
    - resource
    - resource_area_equals
    - resource_scale
    - resource_unit
    allowed_group_constraints:
    - cost_max
    - cost_min
    - cost_equals
    - cost_var_max
    - cost_var_min
    - cost_var_equals
    - carrier_con_min
    - carrier_con_max
    - carrier_con_equals
    allowed_costs:
    - om_con
  demand_heat:
    inheritance:
    - demand
    essentials:
      parent: demand
      carrier: heat
      color: '#660507'
      name: Heat demand
      carrier_in: heat
      carrier_out: resource
    constraints: {}
    required_constraints:
    - resource
    allowed_constraints:
    - energy_con
    - force_resource
    - resource
    - resource_area_equals
    - resource_scale
    - resource_unit
    allowed_group_constraints:
    - cost_max
    - cost_min
    - cost_equals
    - cost_var_max
    - cost_var_min
    - cost_var_equals
    - carrier_con_min
    - carrier_con_max
    - carrier_con_equals
    allowed_costs:
    - om_con
  heat_pipes:
    inheritance:
    - transmission
    essentials:
      parent: transmission
      carrier: heat
      color: '#823739'
      name: District heat distribution
      carrier_in: heat
      carrier_out: heat
    constraints: {}
    required_constraints: []
    allowed_constraints:
    - energy_cap_equals
    - energy_cap_min
    - energy_cap_max
    - energy_cap_per_unit
    - energy_cap_scale
    - energy_con
    - energy_eff
    - energy_eff_per_distance
    - energy_prod
    - force_asynchronous_prod_con
    - lifetime
    - one_way
    allowed_group_constraints:
    - cost_max
    - cost_min
    - cost_equals
    - cost_var_max
    - cost_var_min
    - cost_var_equals
    - cost_investment_min
    - cost_investment_max
    - cost_investment_equals
    - energy_cap_min
    - energy_cap_max
    - energy_cap_equals
    - net_import_share_min
    - net_import_share_max
    - net_import_share_equals
    allowed_costs:
    - depreciation_rate
    - energy_cap
    - energy_cap_per_distance
    - interest_rate
    - om_annual
    - om_annual_investment_fraction
    - om_prod
    - purchase
    - purchase_per_distance
  power_lines:
    inheritance:
    - transmission
    essentials:
      parent: transmission
      carrier: electricity
      color: '#6783E3'
      name: Electrical power distribution
      carrier_in: electricity
      carrier_out: electricity
    constraints: {}
    required_constraints: []
    allowed_constraints:
    - energy_cap_equals
    - energy_cap_min
    - energy_cap_max
    - energy_cap_per_unit
    - energy_cap_scale
    - energy_con
    - energy_eff
    - energy_eff_per_distance
    - energy_prod
    - force_asynchronous_prod_con
    - lifetime
    - one_way
    allowed_group_constraints:
    - cost_max
    - cost_min
    - cost_equals
    - cost_var_max
    - cost_var_min
    - cost_var_equals
    - cost_investment_min
    - cost_investment_max
    - cost_investment_equals
    - energy_cap_min
    - energy_cap_max
    - energy_cap_equals
    - net_import_share_min
    - net_import_share_max
    - net_import_share_equals
    allowed_costs:
    - depreciation_rate
    - energy_cap
    - energy_cap_per_distance
    - interest_rate
    - om_annual
    - om_annual_investment_fraction
    - om_prod
    - purchase
    - purchase_per_distance
  pv:
    inheritance:
    - supply_power_plus
    - supply_plus
    essentials:
      parent: supply_power_plus
      carrier: electricity
      color: '#F9D956'
      name: Solar photovoltaic power
      carrier_in: resource
      carrier_out: electricity
    constraints: {}
    required_constraints: []
    allowed_constraints:
    - charge_rate
    - energy_cap_per_storage_cap_min
    - energy_cap_per_storage_cap_max
    - energy_cap_per_storage_cap_equals
    - energy_cap_equals
    - energy_cap_equals_systemwide
    - energy_cap_max
    - energy_cap_max_systemwide
    - energy_cap_min
    - energy_cap_min_use
    - energy_cap_per_unit
    - energy_cap_scale
    - energy_eff
    - energy_prod
    - energy_ramping
    - export_cap
    - export_carrier
    - force_resource
    - lifetime
    - parasitic_eff
    - resource
    - resource_area_equals
    - resource_area_max
    - resource_area_min
    - resource_area_per_energy_cap
    - resource_cap_equals
    - resource_cap_equals_energy_cap
    - resource_cap_max
    - resource_cap_min
    - resource_eff
    - resource_min_use
    - resource_scale
    - resource_unit
    - storage_cap_equals
    - storage_cap_max
    - storage_cap_min
    - storage_cap_per_unit
    - storage_initial
    - storage_loss
    - units_equals
    - units_equals_systemwide
    - units_max
    - units_max_systemwide
    - units_min
    allowed_group_constraints:
    - demand_share_min
    - demand_share_max
    - demand_share_equals
    - demand_share_per_timestep_min
    - demand_share_per_timestep_max
    - demand_share_per_timestep_equals
    - demand_share_per_timestep_decision
    - carrier_prod_share_min
    - carrier_prod_share_max
    - carrier_prod_share_equals
    - carrier_prod_share_per_timestep_min
    - carrier_prod_share_per_timestep_max
    - carrier_prod_share_per_timestep_equals
    - cost_max
    - cost_min
    - cost_equals
    - cost_var_max
    - cost_var_min
    - cost_var_equals
    - cost_investment_min
    - cost_investment_max
    - cost_investment_equals
    - energy_cap_share_min
    - energy_cap_share_max
    - energy_cap_share_equals
    - energy_cap_min
    - energy_cap_max
    - energy_cap_equals
    - resource_area_min
    - resource_area_max
    - resource_area_equals
    - carrier_prod_min
    - carrier_prod_max
    - carrier_prod_equals
    allowed_costs:
    - depreciation_rate
    - energy_cap
    - export
    - interest_rate
    - om_annual
    - om_annual_investment_fraction
    - om_con
    - om_prod
    - purchase
    - resource_area
    - resource_cap
    - storage_cap
  supply_gas:
    inheritance:
    - supply
    essentials:
      parent: supply
      carrier: gas
      color: '#C98AAD'
      name: Natural gas import
      carrier_in: resource
      carrier_out: gas
    constraints: {}
    required_constraints: []
    allowed_constraints:
    - energy_cap_equals
    - energy_cap_equals_systemwide
    - energy_cap_max
    - energy_cap_max_systemwide
    - energy_cap_min
    - energy_cap_min_use
    - energy_cap_per_unit
    - energy_cap_scale
    - energy_eff
    - energy_prod
    - energy_ramping
    - export_cap
    - export_carrier
    - force_resource
    - lifetime
    - resource
    - resource_area_equals
    - resource_area_max
    - resource_area_min
    - resource_area_per_energy_cap
    - resource_min_use
    - resource_scale
    - resource_unit
    - units_equals
    - units_equals_systemwide
    - units_max
    - units_max_systemwide
    - units_min
    allowed_group_constraints:
    - demand_share_min
    - demand_share_max
    - demand_share_equals
    - demand_share_per_timestep_min
    - demand_share_per_timestep_max
    - demand_share_per_timestep_equals
    - demand_share_per_timestep_decision
    - carrier_prod_share_min
    - carrier_prod_share_max
    - carrier_prod_share_equals
    - carrier_prod_share_per_timestep_min
    - carrier_prod_share_per_timestep_max
    - carrier_prod_share_per_timestep_equals
    - cost_max
    - cost_min
    - cost_equals
    - cost_var_max
    - cost_var_min
    - cost_var_equals
    - cost_investment_min
    - cost_investment_max
    - cost_investment_equals
    - energy_cap_share_min
    - energy_cap_share_max
    - energy_cap_share_equals
    - energy_cap_min
    - energy_cap_max
    - energy_cap_equals
    - resource_area_min
    - resource_area_max
    - resource_area_equals
    - carrier_prod_min
    - carrier_prod_max
    - carrier_prod_equals
    allowed_costs:
    - depreciation_rate
    - energy_cap
    - export
    - interest_rate
    - om_annual
    - om_annual_investment_fraction
    - om_con
    - om_prod
    - purchase
    - resource_area
  supply_grid_power:
    inheritance:
    - supply
    essentials:
      parent: supply
      carrier: electricity
      color: '#C5ABE3'
      name: National grid import
      carrier_in: resource
      carrier_out: electricity
    constraints: {}
    required_constraints: []
    allowed_constraints:
    - energy_cap_equals
    - energy_cap_equals_systemwide
    - energy_cap_max
    - energy_cap_max_systemwide
    - energy_cap_min
    - energy_cap_min_use
    - energy_cap_per_unit
    - energy_cap_scale
    - energy_eff
    - energy_prod
    - energy_ramping
    - export_cap
    - export_carrier
    - force_resource
    - lifetime
    - resource
    - resource_area_equals
    - resource_area_max
    - resource_area_min
    - resource_area_per_energy_cap
    - resource_min_use
    - resource_scale
    - resource_unit
    - units_equals
    - units_equals_systemwide
    - units_max
    - units_max_systemwide
    - units_min
    allowed_group_constraints:
    - demand_share_min
    - demand_share_max
    - demand_share_equals
    - demand_share_per_timestep_min
    - demand_share_per_timestep_max
    - demand_share_per_timestep_equals
    - demand_share_per_timestep_decision
    - carrier_prod_share_min
    - carrier_prod_share_max
    - carrier_prod_share_equals
    - carrier_prod_share_per_timestep_min
    - carrier_prod_share_per_timestep_max
    - carrier_prod_share_per_timestep_equals
    - cost_max
    - cost_min
    - cost_equals
    - cost_var_max
    - cost_var_min
    - cost_var_equals
    - cost_investment_min
    - cost_investment_max
    - cost_investment_equals
    - energy_cap_share_min
    - energy_cap_share_max
    - energy_cap_share_equals
    - energy_cap_min
    - energy_cap_max
    - energy_cap_equals
    - resource_area_min
    - resource_area_max
    - resource_area_equals
    - carrier_prod_min
    - carrier_prod_max
    - carrier_prod_equals
    allowed_costs:
    - depreciation_rate
    - energy_cap
    - export
    - interest_rate
    - om_annual
    - om_annual_investment_fraction
    - om_con
    - om_prod
    - purchase
    - resource_area
tech_groups:
  conversion:
  - boiler
  conversion_plus:
  - chp
  demand:
  - demand_electricity
  - demand_heat
  storage: []
  supply:
  - supply_gas
  - supply_grid_power
  supply_plus:
  - pv
  transmission:
  - heat_pipes
  - power_lines
  supply_power_plus:
  - pv
locations:
  N1:
    coordinates:
      x: 5
      y: 7
    transmission_node: true
    links:
      X1:
        techs:
          heat_pipes:
            constraints:
              energy_cap_max: 2000
              energy_con: true
              energy_eff: 0.9268593749999999
              energy_prod: true
              lifetime: 25
            costs:
              monetary:
                depreciation_rate: 0.11016807219002081
                energy_cap: 0.8999999999999999
            distance: 3.0
      X2:
        techs:
          heat_pipes:
            constraints:
              energy_cap_max: 2000
              energy_con: true
              energy_eff: 0.9268593749999999
              energy_prod: true
              lifetime: 25
            costs:
              monetary:
                depreciation_rate: 0.11016807219002081
                energy_cap: 0.8999999999999999
            distance: 3.0
      X3:
        techs:
          heat_pipes:
            constraints:
              energy_cap_max: 2000
              energy_con: true
              energy_eff: 0.9036878906249999
              energy_prod: true
              lifetime: 25
            costs:
              monetary:
                depreciation_rate: 0.11016807219002081
                energy_cap: 1.2
            distance: 4.0
  X1:
    available_area: 500
    coordinates:
      x: 2
      y: 7
    techs:
      chp:
        constraints:
          carrier_ratios:
            carrier_out_2:
              heat: 0.8
          energy_cap_max: 1500
          energy_con: true
          energy_eff: 0.405
          energy_prod: true
          export_carrier: electricity
          lifetime: 25
        costs:
          monetary:
            depreciation_rate: 0.11016807219002081
            energy_cap: 750
            export: file=export_power.csv:X1
            om_prod: 0.004
      demand_electricity:
        constraints:
          resource: file=demand_power.csv:X1
          energy_con: true
          force_resource: true
          resource_unit: energy
      demand_heat:
        constraints:
          resource: file=demand_heat.csv:X1
          energy_con: true
          force_resource: true
          resource_unit: energy
      pv:
        constraints:
          energy_cap_max: 250
          energy_prod: true
          export_carrier: electricity
          force_resource: true
          lifetime: 25
          parasitic_eff: 0.85
          resource: file=pv_resource.csv:per_area
          resource_area_max: 1500
          resource_area_per_energy_cap: 7
          resource_eff: 1.0
          resource_unit: energy_per_area
        costs:
          monetary:
            depreciation_rate: 0.11016807219002081
            energy_cap: 1350
      supply_gas:
        constraints:
          energy_cap_max: 2000
          energy_prod: true
          lifetime: 25
          resource: inf
          resource_unit: energy
        costs:
          monetary:
            depreciation_rate: 0.11016807219002081
            energy_cap: 1
            om_con: 0.025
      supply_grid_power:
        costs:
          monetary:
            energy_cap: 100
            depreciation_rate: 0.11016807219002081
            om_con: 0.1
        constraints:
          energy_cap_max: 2000
          energy_prod: true
          lifetime: 25
          resource: inf
          resource_unit: energy
    links:
      N1:
        techs:
          heat_pipes:
            constraints:
              energy_cap_max: 2000
              energy_con: true
              energy_eff: 0.9268593749999999
              energy_prod: true
              lifetime: 25
            costs:
              monetary:
                depreciation_rate: 0.11016807219002081
                energy_cap: 0.8999999999999999
            distance: 3.0
      X2:
        techs:
          power_lines:
            constraints:
              energy_cap_max: 2000
              energy_con: true
              energy_eff: 0.98
              energy_prod: true
              lifetime: 25
            costs:
              monetary:
                depreciation_rate: 0.11016807219002081
                energy_cap: 0.1
            distance: 10
      X3:
        techs:
          power_lines:
            constraints:
              energy_cap_max: 2000
              energy_con: true
              energy_eff: 0.98
              energy_prod: true
              lifetime: 25
            costs:
              monetary:
                depreciation_rate: 0.11016807219002081
                energy_cap: 0.05
            distance: 5.0
  X2:
    available_area: 1300
    coordinates:
      x: 8
      y: 7
    techs:
      boiler:
        costs:
          monetary:
            energy_cap: 43.1
            depreciation_rate: 0.11016807219002081
            om_con: 0.004
        constraints:
          energy_cap_max: 600
          energy_con: true
          energy_eff: 0.85
          energy_prod: true
          lifetime: 25
      demand_electricity:
        constraints:
          resource: file=demand_power.csv:X2
          energy_con: true
          force_resource: true
          resource_unit: energy
      demand_heat:
        constraints:
          resource: file=demand_heat.csv:X2
          energy_con: true
          force_resource: true
          resource_unit: energy
      pv:
        costs:
          monetary:
            export: -0.0491
            om_prod: -0.0203
            depreciation_rate: 0.11016807219002081
            energy_cap: 1350
        constraints:
          energy_cap_max: 250
          energy_prod: true
          export_carrier: electricity
          force_resource: true
          lifetime: 25
          parasitic_eff: 0.85
          resource: file=pv_resource.csv:per_area
          resource_area_max: 1500
          resource_area_per_energy_cap: 7
          resource_eff: 1.0
          resource_unit: energy_per_area
      supply_gas:
        constraints:
          energy_cap_max: 2000
          energy_prod: true
          lifetime: 25
          resource: inf
          resource_unit: energy
        costs:
          monetary:
            depreciation_rate: 0.11016807219002081
            energy_cap: 1
            om_con: 0.025
    links:
      N1:
        techs:
          heat_pipes:
            constraints:
              energy_cap_max: 2000
              energy_con: true
              energy_eff: 0.9268593749999999
              energy_prod: true
              lifetime: 25
            costs:
              monetary:
                depreciation_rate: 0.11016807219002081
                energy_cap: 0.8999999999999999
            distance: 3.0
      X1:
        techs:
          power_lines:
            constraints:
              energy_cap_max: 2000
              energy_con: true
              energy_eff: 0.98
              energy_prod: true
              lifetime: 25
            costs:
              monetary:
                depreciation_rate: 0.11016807219002081
                energy_cap: 0.1
            distance: 10
  X3:
    available_area: 900
    coordinates:
      x: 5
      y: 3
    techs:
      boiler:
        costs:
          monetary:
            energy_cap: 78
            depreciation_rate: 0.11016807219002081
            om_con: 0.004
        constraints:
          energy_cap_max: 600
          energy_con: true
          energy_eff: 0.85
          energy_prod: true
          lifetime: 25
      demand_electricity:
        constraints:
          resource: file=demand_power.csv:X3
          energy_con: true
          force_resource: true
          resource_unit: energy
      demand_heat:
        constraints:
          resource: file=demand_heat.csv:X3
          energy_con: true
          force_resource: true
          resource_unit: energy
      pv:
        constraints:
          energy_cap_max: 50
          energy_prod: true
          export_carrier: electricity
          force_resource: true
          lifetime: 25
          parasitic_eff: 0.85
          resource: file=pv_resource.csv:per_area
          resource_area_max: 1500
          resource_area_per_energy_cap: 7
          resource_eff: 1.0
          resource_unit: energy_per_area
        costs:
          monetary:
            om_annual: -80.5
            depreciation_rate: 0.11016807219002081
            energy_cap: 1350
      supply_gas:
        constraints:
          energy_cap_max: 2000
          energy_prod: true
          lifetime: 25
          resource: inf
          resource_unit: energy
        costs:
          monetary:
            depreciation_rate: 0.11016807219002081
            energy_cap: 1
            om_con: 0.025
    links:
      N1:
        techs:
          heat_pipes:
            constraints:
              energy_cap_max: 2000
              energy_con: true
              energy_eff: 0.9036878906249999
              energy_prod: true
              lifetime: 25
            costs:
              monetary:
                depreciation_rate: 0.11016807219002081
                energy_cap: 1.2
            distance: 4.0
      X1:
        techs:
          power_lines:
            constraints:
              energy_cap_max: 2000
              energy_con: true
              energy_eff: 0.98
              energy_prod: true
              lifetime: 25
            costs:
              monetary:
                depreciation_rate: 0.11016807219002081
                energy_cap: 0.05
            distance: 5.0
run:
  backend: pyomo
  bigM: 1000000.0
  cyclic_storage: true
  ensure_feasibility: true
  mode: plan
  objective_options:
    cost_class:
      monetary: 1
    sense: minimize
  objective: minmax_cost_optimization
  operation:
    window:
    horizon:
    use_cap_results: false
  spores_options:
    spores_number: 3
    slack: 0.1
    score_cost_class: spores_score
    slack_cost_group:
  save_logs:
  solver_io:
  solver_options:
  solver: glpk
  zero_threshold: 1e-10
model:
  calliope_version: 0.6.6
  group_share: {}
  name: Urban-scale example model
  random_seed:
  reserve_margin: {}
  subset_time:
  - '2005-07-01'
  - '2005-07-02'
  time: {}
  timeseries_data_path: timeseries_data
  timeseries_data:
  timeseries_dateformat: '%Y-%m-%d %H:%M:%S'
  file_allowed:
  - clustering_func
  - energy_con
  - energy_eff
  - energy_prod
  - energy_ramping
  - export
  - force_resource
  - om_con
  - om_prod
  - parasitic_eff
  - resource
  - resource_eff
  - storage_loss
  - carrier_ratios
group_constraints: {}
sets:
  resources:
  - heat
  - electricity
  - gas
  - resource
  carriers:
  - heat
  - electricity
  - gas
  carrier_tiers:
  - out
  - out_2
  - in
  costs:
  - monetary
  locs:
  - X1
  - N1
  - X3
  - X2
  techs_non_transmission:
  - supply_grid_power
  - boiler
  - pv
  - chp
  - supply_gas
  - demand_heat
  - demand_electricity
  techs_demand:
  - demand_heat
  - demand_electricity
  techs_supply:
  - supply_grid_power
  - supply_gas
  techs_supply_plus:
  - pv
  techs_conversion:
  - boiler
  techs_conversion_plus:
  - chp
  techs_storage: []
  techs_transmission_names:
  - heat_pipes
  - power_lines
  techs_transmission:
  - heat_pipes:X2
  - heat_pipes:N1
  - power_lines:X3
  - heat_pipes:X1
  - power_lines:X2
  - heat_pipes:X3
  - power_lines:X1
  techs:
  - boiler
  - supply_gas
  - heat_pipes
  - supply_grid_power
  - pv
  - chp
  - demand_heat
  - demand_electricity
  - power_lines
  coordinates:
  - y
  - x
  timesteps:
  - '2005-07-01 00:00:00'
  - '2005-07-01 01:00:00'
  - '2005-07-01 02:00:00'
  - '2005-07-01 03:00:00'
  - '2005-07-01 04:00:00'
  - '2005-07-01 05:00:00'
  - '2005-07-01 06:00:00'
  - '2005-07-01 07:00:00'
  - '2005-07-01 08:00:00'
  - '2005-07-01 09:00:00'
  - '2005-07-01 10:00:00'
  - '2005-07-01 11:00:00'
  - '2005-07-01 12:00:00'
  - '2005-07-01 13:00:00'
  - '2005-07-01 14:00:00'
  - '2005-07-01 15:00:00'
  - '2005-07-01 16:00:00'
  - '2005-07-01 17:00:00'
  - '2005-07-01 18:00:00'
  - '2005-07-01 19:00:00'
  - '2005-07-01 20:00:00'
  - '2005-07-01 21:00:00'
  - '2005-07-01 22:00:00'
  - '2005-07-01 23:00:00'
  - '2005-07-02 00:00:00'
  - '2005-07-02 01:00:00'
  - '2005-07-02 02:00:00'
  - '2005-07-02 03:00:00'
  - '2005-07-02 04:00:00'
  - '2005-07-02 05:00:00'
  - '2005-07-02 06:00:00'
  - '2005-07-02 07:00:00'
  - '2005-07-02 08:00:00'
  - '2005-07-02 09:00:00'
  - '2005-07-02 10:00:00'
  - '2005-07-02 11:00:00'
  - '2005-07-02 12:00:00'
  - '2005-07-02 13:00:00'
  - '2005-07-02 14:00:00'
  - '2005-07-02 15:00:00'
  - '2005-07-02 16:00:00'
  - '2005-07-02 17:00:00'
  - '2005-07-02 18:00:00'
  - '2005-07-02 19:00:00'
  - '2005-07-02 20:00:00'
  - '2005-07-02 21:00:00'
  - '2005-07-02 22:00:00'
  - '2005-07-02 23:00:00'
  techlists: []
  group_constraints: []
  loc_carriers:
  - N1::heat
  - X2::gas
  - X2::electricity
  - X1::gas
  - X2::heat
  - X3::electricity
  - X1::electricity
  - X1::heat
  - X3::gas
  - X3::heat
  loc_tech_carriers_con:
  - X2::boiler::gas
  - X2::demand_electricity::electricity
  - X3::power_lines:X1::electricity
  - X2::power_lines:X1::electricity
  - X1::chp::gas
  - X3::demand_heat::heat
  - X1::heat_pipes:N1::heat
  - N1::heat_pipes:X2::heat
  - N1::heat_pipes:X3::heat
  - N1::heat_pipes:X1::heat
  - X1::demand_heat::heat
  - X1::power_lines:X3::electricity
  - X1::power_lines:X2::electricity
  - X3::heat_pipes:N1::heat
  - X2::demand_heat::heat
  - X3::boiler::gas
  - X2::heat_pipes:N1::heat
  - X3::demand_electricity::electricity
  - X1::demand_electricity::electricity
  loc_tech_carriers_conversion_all:
  - X1::chp::electricity
  - X3::boiler::heat
  - X1::chp::heat
  - X2::boiler::heat
  loc_tech_carriers_conversion_plus:
  - X1::chp::gas
  - X1::chp::electricity
  - X1::chp::heat
  loc_tech_carriers_demand:
  - X3::demand_heat::heat
  - X2::demand_heat::heat
  - X2::demand_electricity::electricity
  - X3::demand_electricity::electricity
  - X1::demand_electricity::electricity
  - X1::demand_heat::heat
  loc_tech_carriers_export:
  - X1::chp::electricity
  - X2::pv::electricity
  - X1::pv::electricity
  - X3::pv::electricity
  loc_tech_carriers_prod:
  - X1::chp::electricity
  - X1::supply_grid_power::electricity
  - X3::power_lines:X1::electricity
  - X2::power_lines:X1::electricity
  - X3::boiler::heat
  - X2::boiler::heat
  - X1::heat_pipes:N1::heat
  - N1::heat_pipes:X2::heat
  - N1::heat_pipes:X3::heat
  - X3::supply_gas::gas
  - X3::pv::electricity
  - N1::heat_pipes:X1::heat
  - X1::power_lines:X3::electricity
  - X1::pv::electricity
  - X1::power_lines:X2::electricity
  - X1::chp::heat
  - X3::heat_pipes:N1::heat
  - X2::supply_gas::gas
  - X1::supply_gas::gas
  - X2::pv::electricity
  - X2::heat_pipes:N1::heat
  loc_tech_carriers_supply_all:
  - X1::pv::electricity
  - X2::pv::electricity
  - X1::supply_grid_power::electricity
  - X2::supply_gas::gas
  - X1::supply_gas::gas
  - X3::supply_gas::gas
  - X3::pv::electricity
  loc_tech_carriers_supply_conversion_all:
  - X1::pv::electricity
  - X3::boiler::heat
  - X1::chp::heat
  - X2::pv::electricity
  - X1::chp::electricity
  - X1::supply_grid_power::electricity
  - X2::supply_gas::gas
  - X1::supply_gas::gas
  - X3::supply_gas::gas
  - X3::pv::electricity
  - X2::boiler::heat
  loc_techs:
  - X3::demand_heat
  - X3::heat_pipes:N1
  - X1::supply_grid_power
  - X2::pv
  - X2::demand_electricity
  - X2::supply_gas
  - X3::boiler
  - X1::demand_electricity
  - X1::demand_heat
  - X3::pv
  - N1::heat_pipes:X2
  - X2::boiler
  - X3::supply_gas
  - X1::heat_pipes:N1
  - X3::power_lines:X1
  - X1::chp
  - X1::power_lines:X2
  - X2::demand_heat
  - X1::power_lines:X3
  - X1::pv
  - X2::heat_pipes:N1
  - X2::power_lines:X1
  - X1::supply_gas
  - N1::heat_pipes:X1
  - X3::demand_electricity
  - N1::heat_pipes:X3
  loc_techs_area:
  - X3::pv
  - X1::pv
  - X2::pv
  loc_techs_asynchronous_prod_con: []
  loc_techs_conversion:
  - X2::boiler
  - X3::boiler
  loc_techs_conversion_all:
  - X2::boiler
  - X3::boiler
  - X1::chp
  loc_techs_conversion_plus:
  - X1::chp
  loc_techs_cost:
  - X3::heat_pipes:N1
  - X1::supply_grid_power
  - X2::pv
  - X2::supply_gas
  - X3::boiler
  - X3::pv
  - N1::heat_pipes:X2
  - X2::boiler
  - X3::supply_gas
  - X1::heat_pipes:N1
  - X3::power_lines:X1
  - X1::chp
  - X1::power_lines:X2
  - X1::power_lines:X3
  - X1::pv
  - X2::heat_pipes:N1
  - X2::power_lines:X1
  - X1::supply_gas
  - N1::heat_pipes:X1
  - N1::heat_pipes:X3
  loc_techs_costs_export:
  - X1::chp
  - X2::pv
  loc_techs_demand:
  - X3::demand_heat
  - X2::demand_electricity
  - X2::demand_heat
  - X1::demand_electricity
  - X1::demand_heat
  - X3::demand_electricity
  loc_techs_export:
  - X3::pv
  - X1::pv
  - X2::pv
  - X1::chp
  loc_techs_finite_resource:
  - X3::demand_heat
  - X2::demand_electricity
  - X2::pv
  - X2::demand_heat
  - X1::pv
  - X1::demand_electricity
  - X1::demand_heat
  - X3::pv
  - X3::demand_electricity
  loc_techs_finite_resource_demand:
  - X3::demand_heat
  - X2::demand_electricity
  - X2::demand_heat
  - X1::demand_electricity
  - X1::demand_heat
  - X3::demand_electricity
  loc_techs_finite_resource_supply: []
  loc_techs_finite_resource_supply_plus:
  - X3::pv
  - X1::pv
  - X2::pv
  loc_techs_in_2: []
  loc_techs_in_3: []
  loc_techs_investment_cost:
  - X3::heat_pipes:N1
  - X2::pv
  - X1::supply_grid_power
  - X2::supply_gas
  - X3::boiler
  - X3::pv
  - N1::heat_pipes:X2
  - X2::boiler
  - X3::supply_gas
  - X1::heat_pipes:N1
  - X3::power_lines:X1
  - X1::chp
  - X1::power_lines:X2
  - X1::power_lines:X3
  - X1::pv
  - X2::heat_pipes:N1
  - X2::power_lines:X1
  - X1::supply_gas
  - N1::heat_pipes:X1
  - N1::heat_pipes:X3
  loc_techs_milp: []
  loc_techs_non_conversion:
  - X3::demand_heat
  - X3::heat_pipes:N1
  - X2::pv
  - X1::supply_grid_power
  - X2::demand_electricity
  - X2::supply_gas
  - X1::demand_electricity
  - X1::demand_heat
  - X3::pv
  - N1::heat_pipes:X2
  - X3::supply_gas
  - X1::heat_pipes:N1
  - X3::power_lines:X1
  - X1::power_lines:X2
  - X2::demand_heat
  - X1::power_lines:X3
  - X1::pv
  - X2::heat_pipes:N1
  - X2::power_lines:X1
  - X1::supply_gas
  - N1::heat_pipes:X1
  - X3::demand_electricity
  - N1::heat_pipes:X3
  loc_techs_non_transmission:
  - X3::demand_heat
  - X1::chp
  - X1::supply_grid_power
  - X2::pv
  - X2::demand_heat
  - X2::supply_gas
  - X2::demand_electricity
  - X1::pv
  - X3::boiler
  - X1::supply_gas
  - X1::demand_heat
  - X1::demand_electricity
  - X3::pv
  - X3::demand_electricity
  - X2::boiler
  - X3::supply_gas
  loc_techs_om_cost:
  - X1::chp
  - X2::pv
  - X1::supply_grid_power
  - X2::supply_gas
  - X3::boiler
  - X1::supply_gas
  - X3::pv
  - X2::boiler
  - X3::supply_gas
  loc_techs_om_cost_conversion:
  - X2::boiler
  - X3::boiler
  loc_techs_om_cost_conversion_plus:
  - X1::chp
  loc_techs_om_cost_supply:
  - X2::supply_gas
  - X1::supply_gas
  - X3::supply_gas
  - X1::supply_grid_power
  loc_techs_om_cost_supply_plus:
  - X3::pv
  - X2::pv
  loc_techs_out_2:
  - X1::chp
  loc_techs_out_3: []
  loc_techs_purchase: []
  loc_techs_ramping: []
  loc_techs_storage: []
  loc_techs_store: []
  loc_techs_supply:
  - X2::supply_gas
  - X3::supply_gas
  - X1::supply_gas
  - X1::supply_grid_power
  loc_techs_supply_all:
  - X1::supply_gas
  - X1::supply_grid_power
  - X2::pv
  - X3::pv
  - X1::pv
  - X2::supply_gas
  - X3::supply_gas
  loc_techs_supply_conversion_all:
  - X1::supply_grid_power
  - X2::pv
  - X1::chp
  - X2::supply_gas
  - X1::pv
  - X3::boiler
  - X1::supply_gas
  - X3::pv
  - X2::boiler
  - X3::supply_gas
  loc_techs_supply_plus:
  - X3::pv
  - X1::pv
  - X2::pv
  loc_techs_transmission:
  - X1::heat_pipes:N1
  - X3::heat_pipes:N1
  - X3::power_lines:X1
  - X1::power_lines:X2
  - X1::power_lines:X3
  - X2::heat_pipes:N1
  - X2::power_lines:X1
  - N1::heat_pipes:X1
  - N1::heat_pipes:X2
  - N1::heat_pipes:X3
constraint_sets:
  loc_carriers_system_balance_constraint:
  - N1::heat
  - X2::gas
  - X2::electricity
  - X1::gas
  - X2::heat
  - X3::electricity
  - X1::electricity
  - X1::heat
  - X3::gas
  - X3::heat
  loc_techs_balance_supply_constraint: []
  loc_techs_balance_demand_constraint:
  - X3::demand_heat
  - X2::demand_electricity
  - X2::demand_heat
  - X1::demand_electricity
  - X1::demand_heat
  - X3::demand_electricity
  loc_techs_resource_availability_supply_plus_constraint:
  - X3::pv
  - X1::pv
  - X2::pv
  loc_techs_balance_transmission_constraint:
  - X1::heat_pipes:N1
  - X3::heat_pipes:N1
  - X3::power_lines:X1
  - X1::power_lines:X2
  - X1::power_lines:X3
  - X2::heat_pipes:N1
  - X2::power_lines:X1
  - N1::heat_pipes:X1
  - N1::heat_pipes:X2
  - N1::heat_pipes:X3
  loc_techs_balance_supply_plus_constraint:
  - X3::pv
  - X1::pv
  - X2::pv
  loc_techs_balance_storage_constraint: []
  loc_techs_storage_initial_constraint: []
  loc_techs_storage_discharge_depth: []
  carriers_reserve_margin_constraint: []
  loc_techs_cost_constraint:
  - X3::heat_pipes:N1
  - X1::supply_grid_power
  - X2::pv
  - X2::supply_gas
  - X3::boiler
  - X3::pv
  - N1::heat_pipes:X2
  - X2::boiler
  - X3::supply_gas
  - X1::heat_pipes:N1
  - X3::power_lines:X1
  - X1::chp
  - X1::power_lines:X2
  - X1::power_lines:X3
  - X1::pv
  - X2::heat_pipes:N1
  - X2::power_lines:X1
  - X1::supply_gas
  - N1::heat_pipes:X1
  - N1::heat_pipes:X3
  loc_techs_cost_investment_constraint:
  - X3::heat_pipes:N1
  - X2::pv
  - X1::supply_grid_power
  - X2::supply_gas
  - X3::boiler
  - X3::pv
  - N1::heat_pipes:X2
  - X2::boiler
  - X3::supply_gas
  - X1::heat_pipes:N1
  - X3::power_lines:X1
  - X1::chp
  - X1::power_lines:X2
  - X1::power_lines:X3
  - X1::pv
  - X2::heat_pipes:N1
  - X2::power_lines:X1
  - X1::supply_gas
  - N1::heat_pipes:X1
  - N1::heat_pipes:X3
  loc_techs_cost_var_constraint:
  - X2::pv
  - X1::supply_grid_power
  - X2::supply_gas
  - X1::supply_gas
  - X3::pv
  - X3::supply_gas
  loc_carriers_update_system_balance_constraint:
  - X2::electricity
  - X3::electricity
  - X1::electricity
  loc_tech_carriers_export_balance_constraint:
  - X1::chp::electricity
  - X2::pv::electricity
  - X1::pv::electricity
  - X3::pv::electricity
  loc_techs_update_costs_var_constraint:
  - X1::chp
  - X2::pv
  - X3::pv
  loc_tech_carriers_export_max_constraint: []
  loc_techs_storage_capacity_constraint: []
  loc_techs_energy_capacity_storage_constraint_old: []
  loc_techs_energy_capacity_storage_equals_constraint: []
  loc_techs_energy_capacity_storage_min_constraint: []
  loc_techs_energy_capacity_storage_max_constraint: []
  loc_techs_resource_capacity_constraint: []
  loc_techs_resource_capacity_equals_energy_capacity_constraint: []
  loc_techs_resource_area_constraint:
  - X3::pv
  - X1::pv
  - X2::pv
  loc_techs_resource_area_per_energy_capacity_constraint:
  - X3::pv
  - X1::pv
  - X2::pv
  locs_resource_area_capacity_per_loc_constraint:
  - X1
  - X3
  - X2
  loc_techs_energy_capacity_constraint:
  - X3::demand_heat
  - X3::heat_pipes:N1
  - X1::supply_grid_power
  - X2::pv
  - X2::demand_electricity
  - X2::supply_gas
  - X3::boiler
  - X1::demand_electricity
  - X1::demand_heat
  - X3::pv
  - N1::heat_pipes:X2
  - X2::boiler
  - X3::supply_gas
  - X1::heat_pipes:N1
  - X3::power_lines:X1
  - X1::chp
  - X1::power_lines:X2
  - X2::demand_heat
  - X1::power_lines:X3
  - X1::pv
  - X2::heat_pipes:N1
  - X2::power_lines:X1
  - X1::supply_gas
  - N1::heat_pipes:X1
  - X3::demand_electricity
  - N1::heat_pipes:X3
  techs_energy_capacity_systemwide_constraint: []
  loc_tech_carriers_carrier_production_max_constraint:
  - X1::supply_grid_power::electricity
  - X3::power_lines:X1::electricity
  - X2::power_lines:X1::electricity
  - X3::boiler::heat
  - X2::boiler::heat
  - X1::heat_pipes:N1::heat
  - N1::heat_pipes:X2::heat
  - N1::heat_pipes:X3::heat
  - X3::supply_gas::gas
  - X3::pv::electricity
  - N1::heat_pipes:X1::heat
  - X1::power_lines:X3::electricity
  - X1::pv::electricity
  - X1::power_lines:X2::electricity
  - X3::heat_pipes:N1::heat
  - X2::supply_gas::gas
  - X1::supply_gas::gas
  - X2::pv::electricity
  - X2::heat_pipes:N1::heat
  loc_tech_carriers_carrier_production_min_constraint: []
  loc_tech_carriers_carrier_consumption_max_constraint:
  - X2::demand_electricity::electricity
  - X3::power_lines:X1::electricity
  - X2::power_lines:X1::electricity
  - X3::demand_heat::heat
  - X1::heat_pipes:N1::heat
  - N1::heat_pipes:X2::heat
  - N1::heat_pipes:X3::heat
  - N1::heat_pipes:X1::heat
  - X1::demand_heat::heat
  - X1::power_lines:X3::electricity
  - X1::power_lines:X2::electricity
  - X3::heat_pipes:N1::heat
  - X2::demand_heat::heat
  - X2::heat_pipes:N1::heat
  - X3::demand_electricity::electricity
  - X1::demand_electricity::electricity
  loc_techs_resource_max_constraint:
  - X3::pv
  - X1::pv
  - X2::pv
  loc_tech_carriers_ramping_constraint: []
  loc_techs_storage_max_constraint: []
  loc_techs_unit_commitment_milp_constraint: []
  loc_techs_unit_capacity_milp_constraint: []
  loc_tech_carriers_carrier_production_max_milp_constraint: []
  loc_techs_carrier_production_max_conversion_plus_milp_constraint: []
  loc_tech_carriers_carrier_production_min_milp_constraint: []
  loc_techs_carrier_production_min_conversion_plus_milp_constraint: []
  loc_tech_carriers_carrier_consumption_max_milp_constraint: []
  loc_techs_energy_capacity_units_milp_constraint: []
  loc_techs_storage_capacity_units_milp_constraint: []
  loc_techs_energy_capacity_max_purchase_milp_constraint: []
  loc_techs_energy_capacity_min_purchase_milp_constraint: []
  loc_techs_storage_capacity_max_purchase_milp_constraint: []
  loc_techs_storage_capacity_min_purchase_milp_constraint: []
  loc_techs_update_costs_investment_units_milp_constraint: []
  loc_techs_update_costs_investment_purchase_milp_constraint: []
  techs_unit_capacity_systemwide_milp_constraint: []
  loc_techs_asynchronous_prod_con_milp_constraint: []
  loc_techs_balance_conversion_constraint:
  - X2::boiler
  - X3::boiler
  loc_techs_cost_var_conversion_constraint:
  - X2::boiler
  - X3::boiler
  loc_techs_balance_conversion_plus_primary_constraint:
  - X1::chp
  loc_techs_carrier_production_max_conversion_plus_constraint:
  - X1::chp
  loc_techs_carrier_production_min_conversion_plus_constraint: []
  loc_techs_cost_var_conversion_plus_constraint:
  - X1::chp
  loc_techs_balance_conversion_plus_in_2_constraint: []
  loc_techs_balance_conversion_plus_in_3_constraint: []
  loc_techs_balance_conversion_plus_out_2_constraint:
  - X1::chp
  loc_techs_balance_conversion_plus_out_3_constraint: []
  loc_techs_symmetric_transmission_constraint:
  - X1::heat_pipes:N1
  - X3::heat_pipes:N1
  - X3::power_lines:X1
  - X1::power_lines:X2
  - X1::power_lines:X3
  - X2::heat_pipes:N1
  - X2::power_lines:X1
  - N1::heat_pipes:X1
  - N1::heat_pipes:X2
  - N1::heat_pipes:X3
  techlists_group_share_energy_cap_min_constraint: []
  techlists_carrier_group_share_carrier_prod_min_constraint: []
  techlists_group_share_energy_cap_max_constraint: []
  techlists_carrier_group_share_carrier_prod_max_constraint: []
  techlists_group_share_energy_cap_equals_constraint: []
  techlists_carrier_group_share_carrier_prod_equals_constraint: []
  constraint_groups: []
BTLF $      ��             ��      �`             4�R5                                                                                                                                                                                                                                                                                                                                                                                                                                                                      OHDRI                                                 |                   |            B�                ������������������������0        CLASS                DIMENSION_SCALE )       NAME       	          carriers 4       _Netcdf4Dimid                             ��OHDRM         
       
                                 |                   |             ��     �            ������������������������0        CLASS                DIMENSION_SCALE -       NAME                 loc_carriers 4       _Netcdf4Dimid                            &��OHDRV                                                 |                   |             7     �            ������������������������0        CLASS                DIMENSION_SCALE 6       NAME                 loc_tech_carriers_con 4       _Netcdf4Dimid                            D��,OHDRY                                                 |      D             |      D       >     �            ������������������������0        CLASS                DIMENSION_SCALE 9       NAME                 loc_tech_carriers_export 4       _Netcdf4Dimid                            �Z<5  =
�cBTHD      d(�s      �       jԩrBTHD      d(�^      �       �f}W                                                             _debug_data        �`         comments:
  model_run:
    techs:
      boiler:
        essentials:
          parent: From parent tech_group `conversion`
      chp:
        essentials:
          parent: From parent tech_group `conversion_plus`
      demand_electricity:
        essentials:
          parent: From parent tech_group `demand`
          carrier_in: Set from essentials.carrier
      demand_heat:
        essentials:
          parent: From parent tech_group `demand`
          carrier_in: Set from essentials.carrier
      heat_pipes:
        essentials:
          parent: From parent tech_group `transmission`
          carrier_in: Set from essentials.carrier
      power_lines:
        essentials:
          parent: From parent tech_group `transmission`
          carrier_in: Set from essentials.carrier
      pv:
        essentials:
          parent: From parent tech_group `supply_power_plus`
          carrier: From parent tech_group `supply_power_plus`
      supply_gas:
        essentials:
          parent: From parent tech_group `supply`
      supply_grid_power:
        essentials:
          parent: From parent tech_group `supply`
    locations:
      N1:
        transmission_node: 'Automatically inserted: specifies that this node is a
          transmission-only node.'
        links:
          X2:
            techs:
              heat_pipes:
                distance: Distance automatically computed from coordinates
                constraints:
                  energy_eff: Includes value computed from energy_eff_per_distance
                costs:
                  monetary:
                    energy_cap_per_distance: Includes value computed from energy_cap_per_distance
          X3:
            techs:
              heat_pipes:
                distance: Distance automatically computed from coordinates
                constraints:
                  energy_eff: Includes value computed from energy_eff_per_distance
                costs:
                  monetary:
                    energy_cap_per_distance: Includes value computed from energy_cap_per_distance
      X1:
        links:
          N1:
            techs:
              heat_pipes:
                distance: Distance automatically computed from coordinates
                constraints:
                  energy_eff: Includes value computed from energy_eff_per_distance
                costs:
                  monetary:
                    energy_cap_per_distance: Includes value computed from energy_cap_per_distance
          X2:
            techs:
              power_lines:
                costs:
                  monetary:
                    energy_cap_per_distance: Includes value computed from energy_cap_per_distance
          X3:
            techs:
              power_lines:
                distance: Distance automatically computed from coordinates
                costs:
                  monetary:
                    energy_cap_per_distance: Includes value computed from energy_cap_per_distance
config_initial:
  run:
    backend: pyomo
    bigM: 1000000.0
    cyclic_storage: true
    ensure_feasibility: true
    mode: plan
    objective_options:
      cost_class:
        monetary: 1
      sense: minimize
    objective: minmax_cost_optimization
    operation:
      window:
      horizon:
      use_cap_results: false
    spores_options:
      spores_number: 3
      slack: 0.1
      score_cost_class: spores_score
      slack_cost_group:
    save_logs:
    solver_io:
    solver_options:
    solver: glpk
    zero_threshold: 1e-10
  model:
    calliope_version: 0.6.6
    group_share: {}
    name: Urban-scale example model
    random_seed:
    reserve_margin: {}
    subset_time:
    - '2005-07-01'
    - '2005-07-02'
    time: {}
    timeseries_data_path: timeseries_data
    timeseries_data:
    timeseries_dateformat: '%Y-%m-%d %H:%M:%S'
    file_allowed:
    - clustering_func
    - energy_con
    - energy_eff
    - energy_prod
    - energy_ramping
    - export
    - force_resource
    - om_con
    - om_prod
    - parasitic_eff
    - resource
    - resource_eff
    - storage_loss
    - carrier_ratios
  tech_groups:
    conversion:
      required_constraints: []
      allowed_constraints:
      - energy_cap_equals
      - energy_cap_equals_systemwide
      - energy_cap_max
      - energy_cap_max_systemwide
      - energy_cap_min
      - energy_cap_min_use
      - energy_cap_per_unit
      - energy_cap_scale
      - energy_con
      - energy_eff
      - energy_prod
      - energy_ramping
      - export_cap
      - export_carrier
      - lifetime
      - units_equals
      - units_equals_systemwide
      - units_max
      - units_max_systemwide
      - units_min
      allowed_group_constraints:
      - demand_share_min
      - demand_share_max
      - demand_share_equals
      - demand_share_per_timestep_min
      - demand_share_per_timestep_max
      - demand_share_per_timestep_equals
      - demand_share_per_timestep_decision
      - carrier_prod_share_min
      - carrier_prod_share_max
      - carrier_prod_share_equals
      - carrier_prod_share_per_timestep_min
      - carrier_prod_share_per_timestep_max
      - carrier_prod_share_per_timestep_equals
      - cost_max
      - cost_min
      - cost_equals
      - cost_var_max
      - cost_var_min
      - cost_var_equals
      - cost_investment_min
      - cost_investment_max
      - cost_investment_equals
      - energy_cap_share_min
      - energy_cap_share_max
      - energy_cap_share_equals
      - energy_cap_min
      - energy_cap_max
      - energy_cap_equals
      - carrier_prod_min
      - carrier_prod_max
      - carrier_prod_equals
      - carrier_con_min
      - carrier_con_max
      - carrier_con_equals
      allowed_costs:
      - depreciation_rate
      - energy_cap
      - export
      - interest_rate
      - om_annual
      - om_annual_investment_fraction
      - om_con
      - om_prod
      - purchase
      essentials:
        parent:
      constraints:
        energy_con: true
        energy_prod: true
    conversion_plus:
      required_constraints: []
      allowed_constraints:
      - carrier_ratios
      - energy_cap_equals
      - energy_cap_equals_systemwide
      - energy_cap_max
      - energy_cap_max_systemwide
      - energy_cap_min
      - energy_cap_min_use
      - energy_cap_per_unit
      - energy_cap_scale
      - energy_con
      - energy_eff
      - energy_prod
      - energy_ramping
      - export_cap
      - export_carrier
      - lifetime
      - units_equals
      - units_equals_systemwide
      - units_max
      - units_max_systemwide
      - units_min
      allowed_group_constraints:
      - demand_share_min
      - demand_share_max
      - demand_share_equals
      - demand_share_per_timestep_min
      - demand_share_per_timestep_max
      - demand_share_per_timestep_equals
      - demand_share_per_timestep_decision
      - carrier_prod_share_min
      - carrier_prod_share_max
      - carrier_prod_share_equals
      - carrier_prod_share_per_timestep_min
      - carrier_prod_share_per_timestep_max
      - carrier_prod_share_per_timestep_equals
      - cost_max
      - cost_min
      - cost_equals
      - cost_var_max
      - cost_var_min
      - cost_var_equals
      - cost_investment_min
      - cost_investment_max
      - cost_investment_equals
      - energy_cap_share_min
      - energy_cap_share_max
      - energy_cap_share_equals
      - energy_cap_min
      - energy_cap_max
      - energy_cap_equals
      - carrier_prod_min
      - carrier_prod_max
      - carrier_prod_equals
      - carrier_con_min
      - carrier_con_max
      - carrier_con_equals
      allowed_costs:
      - depreciation_rate
      - energy_cap
      - export
      - interest_rate
      - om_annual
      - om_annual_investment_fraction
      - om_con
      - om_prod
      - purchase
      essentials:
        parent:
      constraints:
        energy_con: true
        energy_prod: true
    demand:
      required_constraints:
      - resource
      allowed_constraints:
      - energy_con
      - force_resource
      - resource
      - resource_area_equals
      - resource_scale
      - resource_unit
      allowed_group_constraints:
      - cost_max
      - cost_min
      - cost_equals
      - cost_var_max
      - cost_var_min
      - cost_var_equals
      - carrier_con_min
      - carrier_con_max
      - carrier_con_equals
      allowed_costs:
      - om_con
      essentials:
        parent:
      constraints:
        energy_con: true
        force_resource: true
        resource_unit: energy
    storage:
      required_constraints: []
      allowed_constraints:
      - charge_rate
      - energy_cap_per_storage_cap_min
      - energy_cap_per_storage_cap_max
      - energy_cap_per_storage_cap_equals
      - energy_cap_equals
      - energy_cap_equals_systemwide
      - energy_cap_max
      - energy_cap_max_systemwide
      - energy_cap_min
      - energy_cap_min_use
      - energy_cap_per_unit
      - energy_cap_scale
      - energy_con
      - energy_eff
      - energy_prod
      - energy_ramping
      - export_cap
      - export_carrier
      - force_asynchronous_prod_con
      - lifetime
      - storage_cap_equals
      - storage_cap_max
      - storage_cap_min
      - storage_cap_per_unit
      - storage_initial
      - storage_loss
      - storage_time_max
      - storage_discharge_depth
      - units_equals
      - units_equals_systemwide
      - units_max
      - units_max_systemwide
      - units_min
      allowed_group_constraints:
      - cost_max
      - cost_min
      - cost_equals
      - cost_var_max
      - cost_var_min
      - cost_var_equals
      - cost_investment_min
      - cost_investment_max
      - cost_investment_equals
      - energy_cap_share_min
      - energy_cap_share_max
      - energy_cap_share_equals
      - energy_cap_min
      - energy_cap_max
      - energy_cap_equals
      allowed_costs:
      - depreciation_rate
      - energy_cap
      - export
      - interest_rate
      - om_annual
      - om_annual_investment_fraction
      - om_prod
      - purchase
      - storage_cap
      essentials:
        parent:
      constraints:
        energy_con: true
        energy_prod: true
        storage_cap_max: inf
    supply:
      required_constraints: []
      allowed_constraints:
      - energy_cap_equals
      - energy_cap_equals_systemwide
      - energy_cap_max
      - energy_cap_max_systemwide
      - energy_cap_min
      - energy_cap_min_use
      - energy_cap_per_unit
      - energy_cap_scale
      - energy_eff
      - energy_prod
      - energy_ramping
      - export_cap
      - export_carrier
      - force_resource
      - lifetime
      - resource
      - resource_area_equals
      - resource_area_max
      - resource_area_min
      - resource_area_per_energy_cap
      - resource_min_use
      - resource_scale
      - resource_unit
      - units_equals
      - units_equals_systemwide
      - units_max
      - units_max_systemwide
      - units_min
      allowed_group_constraints:
      - demand_share_min
      - demand_share_max
      - demand_share_equals
      - demand_share_per_timestep_min
      - demand_share_per_timestep_max
      - demand_share_per_timestep_equals
      - demand_share_per_timestep_decision
      - carrier_prod_share_min
      - carrier_prod_share_max
      - carrier_prod_share_equals
      - carrier_prod_share_per_timestep_min
      - carrier_prod_share_per_timestep_max
      - carrier_prod_share_per_timestep_equals
      - cost_max
      - cost_min
      - cost_equals
      - cost_var_max
      - cost_var_min
      - cost_var_equals
      - cost_investment_min
      - cost_investment_max
      - cost_investment_equals
      - energy_cap_share_min
      - energy_cap_share_max
      - energy_cap_share_equals
      - energy_cap_min
      - energy_cap_max
      - energy_cap_equals
      - resource_area_min
      - resource_area_max
      - resource_area_equals
      - carrier_prod_min
      - carrier_prod_max
      - carrier_prod_equals
      allowed_costs:
      - depreciation_rate
      - energy_cap
      - export
      - interest_rate
      - om_annual
      - om_annual_investment_fraction
      - om_con
      - om_prod
      - purchase
      - resource_area
      essentials:
        parent:
      constraints:
        energy_prod: true
        resource: inf
        resource_unit: energy
    supply_plus:
      required_constraints: []
      allowed_constraints:
      - charge_rate
      - energy_cap_per_storage_cap_min
      - energy_cap_per_storage_cap_max
      - energy_cap_per_storage_cap_equals
      - energy_cap_equals
      - energy_cap_equals_systemwide
      - energy_cap_max
      - energy_cap_max_systemwide
      - energy_cap_min
      - energy_cap_min_use
      - energy_cap_per_unit
      - energy_cap_scale
      - energy_eff
      - energy_prod
      - energy_ramping
      - export_cap
      - export_carrier
      - force_resource
      - lifetime
      - parasitic_eff
      - resource
      - resource_area_equals
      - resource_area_max
      - resource_area_min
      - resource_area_per_energy_cap
      - resource_cap_equals
      - resource_cap_equals_energy_cap
      - resource_cap_max
      - resource_cap_min
      - resource_eff
      - resource_min_use
      - resource_scale
      - resource_unit
      - storage_cap_equals
      - storage_cap_max
      - storage_cap_min
      - storage_cap_per_unit
      - storage_initial
      - storage_loss
      - units_equals
      - units_equals_systemwide
      - units_max
      - units_max_systemwide
      - units_min
      allowed_group_constraints:
      - demand_share_min
      - demand_share_max
      - demand_share_equals
      - demand_share_per_timestep_min
      - demand_share_per_timestep_max
      - demand_share_per_timestep_equals
      - demand_share_per_timestep_decision
      - carrier_prod_share_min
      - carrier_prod_share_max
      - carrier_prod_share_equals
      - carrier_prod_share_per_timestep_min
      - carrier_prod_share_per_timestep_max
      - carrier_prod_share_per_timestep_equals
      - cost_max
      - cost_min
      - cost_equals
      - cost_var_max
      - cost_var_min
      - cost_var_equals
      - cost_investment_min
      - cost_investment_max
      - cost_investment_equals
      - energy_cap_share_min
      - energy_cap_share_max
      - energy_cap_share_equals
      - energy_cap_min
      - energy_cap_max
      - energy_cap_equals
      - resource_area_min
      - resource_area_max
      - resource_area_equals
      - carrier_prod_min
      - carrier_prod_max
      - carrier_prod_equals
      allowed_costs:
      - depreciation_rate
      - energy_cap
      - export
      - interest_rate
      - om_annual
      - om_annual_investment_fraction
      - om_con
      - om_prod
      - purchase
      - resource_area
      - resource_cap
      - storage_cap
      essentials:
        parent:
      constraints:
        energy_prod: true
        resource: inf
        resource_eff: 1.0
        resource_unit: energy
    transmission:
      required_constraints: []
      allowed_constraints:
      - energy_cap_equals
      - energy_cap_min
      - energy_cap_max
      - energy_cap_per_unit
      - energy_cap_scale
      - energy_con
      - energy_eff
      - energy_eff_per_distance
      - energy_prod
      - force_asynchronous_prod_con
      - lifetime
      - one_way
      allowed_group_constraints:
      - cost_max
      - cost_min
      - cost_equals
      - cost_var_max
      - cost_var_min
      - cost_var_equals
      - cost_investment_min
      - cost_investment_max
      - cost_investment_equals
      - energy_cap_min
      - energy_cap_max
      - energy_cap_equals
      - net_import_share_min
      - net_import_share_max
      - net_import_share_equals
      allowed_costs:
      - depreciation_rate
      - energy_cap
      - energy_cap_per_distance
      - interest_rate
      - om_annual
      - om_annual_investment_fraction
      - om_prod
      - purchase
      - purchase_per_distance
      essentials:
        parent:
      constraints:
        energy_con: true
        energy_prod: true
    supply_power_plus:
      essentials:
        carrier: electricity
        parent: supply_plus
  techs:
    boiler:
      constraints:
        energy_cap_max: 600
        energy_eff: 0.85
        lifetime: 25
      costs:
        monetary:
          interest_rate: 0.1
          om_con: 0.004
      essentials:
        carrier_in: gas
        carrier_out: heat
        color: '#8E2999'
        name: Natural gas boiler
        parent: conversion
    chp:
      constraints:
        carrier_ratios:
          carrier_out_2:
            heat: 0.8
        energy_cap_max: 1500
        energy_eff: 0.405
        export_carrier: electricity
        lifetime: 25
      costs:
        monetary:
          energy_cap: 750
          export: file=export_power.csv
          interest_rate: 0.1
          om_prod: 0.004
      essentials:
        carrier_in: gas
        carrier_out: electricity
        carrier_out_2: heat
        color: '#E4AB97'
        name: Combined heat and power
        parent: conversion_plus
        primary_carrier_out: electricity
    demand_electricity:
      essentials:
        carrier: electricity
        color: '#072486'
        name: Electrical demand
        parent: demand
    demand_heat:
      essentials:
        carrier: heat
        color: '#660507'
        name: Heat demand
        parent: demand
    heat_pipes:
      constraints:
        energy_cap_max: 2000
        energy_eff_per_distance: 0.975
        lifetime: 25
      costs:
        monetary:
          energy_cap_per_distance: 0.3
          interest_rate: 0.1
      essentials:
        carrier: heat
        color: '#823739'
        name: District heat distribution
        parent: transmission
    power_lines:
      constraints:
        energy_cap_max: 2000
        energy_eff: 0.98
        lifetime: 25
      costs:
        monetary:
          energy_cap_per_distance: 0.01
          interest_rate: 0.1
      essentials:
        carrier: electricity
        color: '#6783E3'
        name: Electrical power distribution
        parent: transmission
    pv:
      constraints:
        energy_cap_max: 250
        export_carrier: electricity
        force_resource: true
        lifetime: 25
        parasitic_eff: 0.85
        resource: file=pv_resource.csv:per_area
        resource_area_max: 1500
        resource_area_per_energy_cap: 7
        resource_unit: energy_per_area
      costs:
        monetary:
          energy_cap: 1350
          interest_rate: 0.1
      essentials:
        color: '#F9D956'
        name: Solar photovoltaic power
        parent: supply_power_plus
    supply_gas:
      constraints:
        energy_cap_max: 2000
        lifetime: 25
        resource: inf
      costs:
        monetary:
          energy_cap: 1
          interest_rate: 0.1
          om_con: 0.025
      essentials:
        carrier: gas
        color: '#C98AAD'
        name: Natural gas import
        parent: supply
    supply_grid_power:
      constraints:
        energy_cap_max: 2000
        lifetime: 25
        resource: inf
      costs:
        monetary:
          energy_cap: 15
          interest_rate: 0.1
          om_con: 0.1
      essentials:
        carrier: electricity
        color: '#C5ABE3'
        name: National grid import
        parent: supply
  locations:
    N1:
      coordinates:
        x: 5
        y: 7
    X1:
      available_area: 500
      coordinates:
        x: 2
        y: 7
      techs:
        chp:
        demand_electricity:
          constraints:
            resource: file=demand_power.csv
        demand_heat:
          constraints:
            resource: file=demand_heat.csv
        pv:
        supply_gas:
        supply_grid_power:
          costs:
            monetary:
              energy_cap: 100
    X2:
      available_area: 1300
      coordinates:
        x: 8
        y: 7
      techs:
        boiler:
          costs:
            monetary:
              energy_cap: 43.1
        demand_electricity:
          constraints:
            resource: file=demand_power.csv
        demand_heat:
          constraints:
            resource: file=demand_heat.csv
        pv:
          costs:
            monetary:
              export: -0.0491
              om_prod: -0.0203
        supply_gas:
    X3:
      available_area: 900
      coordinates:
        x: 5
        y: 3
      techs:
        boiler:
          costs:
            monetary:
              energy_cap: 78
        demand_electricity:
          constraints:
            resource: file=demand_power.csv
        demand_heat:
          constraints:
            resource: file=demand_heat.csv
        pv:
          constraints:
            energy_cap_max: 50
          costs:
            monetary:
              om_annual: -80.5
        supply_gas:
  links:
    N1,X2:
      techs:
        heat_pipes:
    N1,X3:
      techs:
        heat_pipes:
    X1,N1:
      techs:
        heat_pipes:
    X1,X2:
      techs:
        power_lines:
          distance: 10
    X1,X3:
      techs:
        power_lines:
  config_path: model.yaml
  overrides:
    mapbox_ready:
      links:
        N1,X2:
          techs:
            heat_pipes:
              distance: 3
        N1,X3:
          techs:
            heat_pipes:
              distance: 4
        X1,N1:
          techs:
            heat_pipes:
              distance: 3
        X1,X2:
          techs:
            power_lines:
              distance: 10
        X1,X3:
          techs:
            power_lines:
              distance: 5
      locations:
        N1:
          coordinates:
            lat: 51.4450766
            lon: -0.1247183
        X1:
          coordinates:
            lat: 51.4596158
            lon: -0.1613446
        X2:
          coordinates:
            lat: 51.4652373
            lon: -0.1141548
        X3:
          coordinates:
            lat: 51.4287016
            lon: -0.1310635
    milp:
      model:
        name: Urban-scale example model with MILP
      run:
        solver_options:
          mipgap: 0.05
      techs:
        boiler:
          costs:
            monetary:
              energy_cap: 35
              purchase: 2000
        chp:
          constraints:
            energy_cap_min_use: 0.2
            energy_cap_per_unit: 300
            units_max: 4
          costs:
            monetary:
              energy_cap: 700
              purchase: 40000
        heat_pipes:
          constraints:
            force_asynchronous_prod_con: true
    operate:
      links:
        N1,X2:
          techs:
            heat_pipes:
              constraints:
                energy_cap_max: 250
        N1,X3:
          techs:
            heat_pipes:
              constraints:
                energy_cap_max: 320
        X1,N1:
          techs:
            heat_pipes:
              constraints:
                energy_cap_max: 300
        X1,X2:
          techs:
            power_lines:
              constraints:
                energy_cap_max: 300
        X1,X3:
          techs:
            power_lines:
              constraints:
                energy_cap_max: 60
      locations:
        X1:
          techs:
            chp:
              constraints:
                energy_cap_max: 300
            pv:
              constraints:
                energy_cap_max: 0
            supply_gas:
              constraints:
                energy_cap_max: 700
            supply_grid_power:
              constraints:
                energy_cap_max: 40
        X2:
          techs:
            boiler:
              constraints:
                energy_cap_max: 200
            pv:
              constraints:
                energy_cap_max: 70
            supply_gas:
              constraints:
                energy_cap_max: 250
        X3:
          techs:
            boiler:
              constraints:
                energy_cap_max: 0
            pv:
              constraints:
                energy_cap_max: 50
            supply_gas:
              constraints:
                energy_cap_max: 0
      model:
        subset_time:
        - '2005-07-01'
        - '2005-07-10'
      run:
        mode: operate
        operation:
          horizon: 48
          window: 24
    time_masking:
      model:
        name: Urban-scale example model with time masking
        subset_time: 2005-01
        time:
          function: resample
          function_options:
            resolution: 6H
          masks:
          - function: extreme_diff
            options:
              tech0: demand_heat
              tech1: demand_electricity
              how: max
              n: 2
GCOL                                       gas                   electricity                   heat                                 X3::electricity               X1::electricity               X1::heat              X3::gas               X3::heat              X1::gas               X2::heat              X2::electricity               X2::gas               N1::heat               1              X1::demand_heat::heat   2              X1::power_lines:X3::electricity 3              X1::power_lines:X2::electricity 4              X3::heat_pipes:N1::heat 5              X2::demand_heat::heat   6              X3::boiler::gas 7              X2::heat_pipes:N1::heat 8       #       X3::demand_electricity::electricity     9       #       X1::demand_electricity::electricity     :              X3::demand_heat::heat   ;              X1::heat_pipes:N1::heat <              N1::heat_pipes:X2::heat =              N1::heat_pipes:X3::heat >              N1::heat_pipes:X1::heat ?              X2::power_lines:X1::electricity @              X1::chp::gas    A              X3::power_lines:X1::electricity B       #       X2::demand_electricity::electricity     C              X2::boiler::gas D               I              X1::pv::electricity     J              X3::pv::electricity     K              X2::pv::electricity     L              X1::chp::electricity    M               c              N1::heat_pipes:X1::heat d              X1::power_lines:X3::electricity e              X1::pv::electricity     f              X1::power_lines:X2::electricity g              X1::chp::heat   h              X3::heat_pipes:N1::heat i              X2::supply_gas::gas     j              X1::supply_gas::gas     k              X2::pv::electricity     l              X2::heat_pipes:N1::heat m              X1::heat_pipes:N1::heat n              N1::heat_pipes:X2::heat o              N1::heat_pipes:X3::heat p              X3::supply_gas::gas     q              X3::pv::electricity     r              X2::power_lines:X1::electricity s              X3::boiler::heatt              X2::boiler::heatu              X3::power_lines:X1::electricity v       "       X1::supply_grid_power::electricity      w              X1::chp::electricity    x               �              X1::heat_pipes:N1       �              X3::power_lines:X1      �              X1::chp �              X1::power_lines:X2      �              X2::demand_heat �              X1::power_lines:X3      �              X1::pv  �              X2::heat_pipes:N1       �              X2::power_lines:X1      �              X1::supply_gas  �              N1::heat_pipes:X1       �              X3::demand_electricity  �              N1::heat_pipes:X3       �              X1::demand_electricity  �              X1::demand_heat �              X3::pv  �              N1::heat_pipes:X2       �       
       X2::boiler      �              X3::supply_gas  �              X2::demand_electricity  �              X2::supply_gas  �       
       X3::boiler      �              X1::supply_grid_power   �              X2::pv  �              X3::heat_pipes:N1       �              X3::demand_heat �               �              X2::pv  �              X1::pv  �              X3::pv  �               �              X3::power_lines:X1      �              X1::chp �              X1::power_lines:X2      �              X1::power_lines:X3      �              X1::pv  �              X2::heat_pipes:N1       �              X2::power_lines:X1      �              X1::supply_gas  �              N1::heat_pipes:X1       �              N1::heat_pipes:X3       �              X3::pv  �              N1::heat_pipes:X2       �       
       X2::boiler      �              X3::supply_gas  �              X1::heat_pipes:N1       �              X2::supply_gas  �       
       X3::boiler      �              X2::pv  �              X1::supply_grid_power   �              X3::heat_pipes:N1       �               �              X1::chp �              X1::power_lines:X3             OHDR                                                 |      M             |      M       ��     Z            ������������������������0        CLASS                DIMENSION_SCALE 7       NAME                 loc_tech_carriers_prod   �~�OHDRJ                                                 |      x             |      x           .          	 ������������������������0        CLASS                DIMENSION_SCALE *       NAME       
          loc_techs 4       _Netcdf4Dimid                            y�OHDRO                                                 |      �             |      �      Qu     �            ������������������������0        CLASS                DIMENSION_SCALE /       NAME                 loc_techs_area 4       _Netcdf4Dimid                            ����OHDRO                                                 |      �             |      �       �     �            ������������������������0        CLASS                DIMENSION_SCALE /       NAME                 loc_techs_cost 4       _Netcdf4Dimid                            �O{OOHDR                                                  |      �             |      �       �;     Z            ������������������������0        CLASS                DIMENSION_SCALE :       NAME                 loc_techs_investment_cost   �|��OCHK$       dtype                bool�qe�PFRHP               ���������)      �7      @                    �                                                         	k      �59FSHD  f                             P x          ��     U       U       S�LNBTLF �8 �  ' �!2 2   �P� R	  + oK	 �   C�h
   ) u2 �   �2� D  ! �B� }	  - ޅ� �  @ ˿< �  6 t_\ �  , ͯ� G  ! +˾ O   ( w::    ! ���  �  # ��q& �  + �7�'   / ���) t  ; ٽ�* �  + �u�. 9  % ڞu/ �   �a�/ ^  + »�2 �   ) ��9 a  7 �~< �  7 ǋB �  ! ���D C  # @MNI S  6 ���J �  8 ƷvL k  4 ³�L �  " )m�M �  & ZF�O   N y��P    o�6Q �  ) ��-S �  , ��S �  ) �`T �    � V �  ' 6�gV �   &�V   ! Xa�                                                   BTLF              L        0    M        O   ( N        w   + O        �   ) P        �    Q        �   ! R          ! S        )  , T        U  $ U        y  ( V        �   W        �    X        �   Y           Z        -  9 [        f  @ \        �  G ]        �  F ^        3  3 N+�                                                                                                                                                                                                          OCHK   Ӟ     �       4       _Netcdf4Dimid                            �ɭOHDRR         	       	                                 �     #             �     #      (                ������������������������0        CLASS                DIMENSION_SCALE 2       NAME                 loc_techs_om_cost 4       _Netcdf4Dimid                       	     OP�OHDRV                                                 �     6             �     6      �y     �            ������������������������0        CLASS                DIMENSION_SCALE 6       NAME                 loc_techs_supply_plus 4       _Netcdf4Dimid                       
     �ĂOHDRF         	       	                                 �     =             �     =      ��                ������������������������0        CLASS                DIMENSION_SCALE &       NAME                 techs 4       _Netcdf4Dimid                            	dEOHDRN                                                 �     P             �     P      �     �            ������������������������0        CLASS                DIMENSION_SCALE .       NAME                 carrier_tiers 4       _Netcdf4Dimid                            �5�3OHDRL                                                 �     W             �     W       �N     �            ������������������������0        CLASS                DIMENSION_SCALE ,       NAME                 coordinates 4       _Netcdf4Dimid                            ��9!OHDRF                                                 �     \             �     \      P      ~           ������������������������0        CLASS                DIMENSION_SCALE &       NAME                 costs 4       _Netcdf4Dimid                             ��OHDRg         
       
                                 �     _             �     _       �     �            ������������������������0        CLASS                DIMENSION_SCALE G       NAME       '          loc_carriers_system_balance_constraint 4       _Netcdf4Dimid                          ]
o�OHDRn                                                 �     t             �     t       >�     0            ������������������������0        CLASS                DIMENSION_SCALE N       NAME       .          loc_carriers_update_system_balance_constraint 4       _Netcdf4Dimid                          �ƅ�OHDRu                                                 �     {             �     {       ��                 ������������������������0        CLASS                DIMENSION_SCALE U       NAME       5          loc_tech_carriers_carrier_consumption_max_constraint 4       _Netcdf4Dimid                          �{��OHDRt                                                 �     �             �     �       ��     0           ������������������������0        CLASS                DIMENSION_SCALE T       NAME       4          loc_tech_carriers_carrier_production_max_constraint 4       _Netcdf4Dimid                          (!�4OHDRa                                                 �     �             �     �       n�     @            ������������������������0        CLASS                DIMENSION_SCALE A       NAME       !          loc_tech_carriers_conversion_all 4       _Netcdf4Dimid                          �F�OHDRb                                                 �     �             �     �       �n     �            ������������������������0        CLASS                DIMENSION_SCALE B       NAME       "          loc_tech_carriers_conversion_plus 4       _Netcdf4Dimid                            :&�OHDRY                                                 �     �             �     �       �     `            ������������������������0        CLASS                DIMENSION_SCALE 9       NAME                 loc_tech_carriers_demand 4       _Netcdf4Dimid                          ����OHDR2                                                 �     �             �     �       �     Z            ������������������������0        CLASS                DIMENSION_SCALE L       NAME       ,          loc_tech_carriers_export_balance_constraint   ���OHDR]                                                 b�                  b�            ��     p            ������������������������0        CLASS                DIMENSION_SCALE =       NAME                 loc_tech_carriers_supply_all 4       _Netcdf4Dimid                          8e�OHDRh                                                 b�                  b�            �     �            ������������������������0        CLASS                DIMENSION_SCALE H       NAME       (          loc_tech_carriers_supply_conversion_all 4       _Netcdf4Dimid                          ǀkOHDR.                                                 b�     +             b�     +       b     Z            ������������������������0        CLASS                DIMENSION_SCALE H       NAME       (          loc_techs_balance_conversion_constraint   bL��OHDRs                                                 b�     0             b�     0       ��                 ������������������������0        CLASS                DIMENSION_SCALE S       NAME       3          loc_techs_balance_conversion_plus_out_2_constraint 4       _Netcdf4Dimid                          �fOHDR;                                                 b�     3             b�     3       �     Z            ������������������������0        CLASS                DIMENSION_SCALE U       NAME       5          loc_techs_balance_conversion_plus_primary_constraint   ���OHDRd                                                 b�     6             b�     6       �     `            ������������������������0        CLASS                DIMENSION_SCALE D       NAME       $          loc_techs_balance_demand_constraint 4       _Netcdf4Dimid                          #]"�OHDRi                                                 b�     C             b�     C       h�     0            ������������������������0        CLASS                DIMENSION_SCALE I       NAME       )          loc_techs_balance_supply_plus_constraint 4       _Netcdf4Dimid                          !~�OHDRj         
       
                                 b�     J             b�     J       ��     �            ������������������������0        CLASS                DIMENSION_SCALE J       NAME       *          loc_techs_balance_transmission_constraint 4       _Netcdf4Dimid                          e�Q�OHDRB                                                 b�     _             b�     _            Z            ������������������������0        CLASS                DIMENSION_SCALE \       NAME       <          loc_techs_carrier_production_max_conversion_plus_constraint   *�yOHDRU                                                 b�     b             b�     b       �K     �            ������������������������0        CLASS                DIMENSION_SCALE 5       NAME                 loc_techs_conversion 4       _Netcdf4Dimid                             4��OHDR                                                  b�     g             b�     g       �b     Z            ������������������������0        CLASS                DIMENSION_SCALE     |�     G                  ̞��                 �=$0BTIN _        f  4 �        �
  5 �        D  ! �        d  . �9     �`     !��     !K�     ��     �<                                                                                                                                                                                                                                                                                                                                                                                                             BTLF `        �  + a          > b        �  / c        S  : d        �  : e        �  E f          G g        S  6 h        �  ; i        �  < j          N k        c  ' l        �  + m        �  , n        �  , o          7 p        D  0 q        t  ; r        �  @ s          ) t        >  # u        a  7 v        �  # w        �  , x        �  3 y        	  8 z        R	  + {        }	  - |        �	  / }        
  4 ~        I
  +         t
  0 �        �	  " �e�!       OCHK    h�     0       4       _Netcdf4Dimid                       !   \: �OHDRZ                                                 b�     n             b�     n      ��     �            ������������������������0        CLASS                DIMENSION_SCALE :       NAME                 loc_techs_conversion_plus 4       _Netcdf4Dimid                       "     �\pkOHDRZ                                                 b�     q             b�     q       ��     @           ������������������������0        CLASS                DIMENSION_SCALE :       NAME                 loc_techs_cost_constraint 4       _Netcdf4Dimid                       #   (��OHDRe                                                 b�     �             b�     �       ��     @           ������������������������0        CLASS                DIMENSION_SCALE E       NAME       %          loc_techs_cost_investment_constraint 4       _Netcdf4Dimid                       $   �zD�OHDR^                                                 b�     �             b�     �       (�     `            ������������������������0        CLASS                DIMENSION_SCALE >       NAME                 loc_techs_cost_var_constraint 4       _Netcdf4Dimid                       %   ���OHDRi                                                 b�     �             b�     �       ��                  ������������������������0        CLASS                DIMENSION_SCALE I       NAME       )          loc_techs_cost_var_conversion_constraint 4       _Netcdf4Dimid                       &   q���OHDRn                                                 b�     �             b�     �       ��                 ������������������������0        CLASS                DIMENSION_SCALE N       NAME       .          loc_techs_cost_var_conversion_plus_constraint 4       _Netcdf4Dimid                       '   3���OHDRW                                                 b�     �             b�     �       ��                  ������������������������0        CLASS                DIMENSION_SCALE 7       NAME                 loc_techs_costs_export 4       _Netcdf4Dimid                       (   ����OHDRQ                                                 b�     �             b�     �       ��     `            ������������������������0        CLASS                DIMENSION_SCALE 1       NAME                 loc_techs_demand 4       _Netcdf4Dimid                       )   @{4�OHDR+                                                 �     �             �     �       p     Z            ������������������������0        CLASS                DIMENSION_SCALE E       NAME       %          loc_techs_energy_capacity_constraint   Y�P�OHDRQ                                                 j     5             j     5      X�     �            ������������������������0        CLASS                DIMENSION_SCALE 1       NAME                 loc_techs_export 4       _Netcdf4Dimid                       +     ���OHDRZ         	       	                                 j     >             j     >      K�                ������������������������0        CLASS                DIMENSION_SCALE :       NAME                 loc_techs_finite_resource 4       _Netcdf4Dimid                       ,     �d:eOHDR'                                                 j     Q             j     Q       �w     Z            ������������������������0        CLASS                DIMENSION_SCALE A       NAME       !          loc_techs_finite_resource_demand   t��         �7BTIN <�<W �    ��_� �   �7     )�u     *:�     +�Ռ                                                                                                                                                                                                                                                                                                                                                                                                                                                                     BTLF i�`W �
  5 u��X   $ F�Y �   j"<Z �   ! �A�^ y  ( �@�a �	  " �Lb 3  3 �d I
  + ��e C    � f �  # ��if �   O�mi �  # FY*j Q   �I�j d  . o=�n �   ̹�p    " '	�t �  : {�t D  0 \X$z   G ��{ �    1��{   $ F��| �  / G�+~ �  ; O�� �   �lo� �  ) 0d�� �  F M߫� �   �<� �   	��� "  I T��� e   1M7� B  " 3ﮝ f  4 n�� �    U�� G  > �N� �   �9p�    �ԕ� ,   %�� S  : I��� f  ( � f  @ �Fݵ   2 SQ� 	  8 �9��                                        OCHK    j     `       4       _Netcdf4Dimid                       -   ����OHDRf                                                 j     ^             j     ^       �     0            ������������������������0        CLASS                DIMENSION_SCALE F       NAME       &          loc_techs_finite_resource_supply_plus 4       _Netcdf4Dimid                       .   ���OHDRY                                                 j     e             j     e       0�     �            ������������������������0        CLASS                DIMENSION_SCALE 9       NAME                 loc_techs_non_conversion 4       _Netcdf4Dimid                       /     yqړOHDR[                                                 j     �             j     �       j                  ������������������������0        CLASS                DIMENSION_SCALE ;       NAME                 loc_techs_non_transmission 4       _Netcdf4Dimid                       0   �{p�OHDR]                                                 j     �             j     �       j!                  ������������������������0        CLASS                DIMENSION_SCALE =       NAME                 loc_techs_om_cost_conversion 4       _Netcdf4Dimid                       1   �L|�OHDRb                                                 j     �             j     �       �!                 ������������������������0        CLASS                DIMENSION_SCALE B       NAME       "          loc_techs_om_cost_conversion_plus 4       _Netcdf4Dimid                       2   �h�!OHDRY                                                 j     �             j     �       �!     @            ������������������������0        CLASS                DIMENSION_SCALE 9       NAME                 loc_techs_om_cost_supply 4       _Netcdf4Dimid                       3   �t3WOHDR^                                                 j     �             j     �       �!                  ������������������������0        CLASS                DIMENSION_SCALE >       NAME                 loc_techs_om_cost_supply_plus 4       _Netcdf4Dimid                       4   FOc~OHDRP                                                 j     �             j     �       �!                 ������������������������0        CLASS                DIMENSION_SCALE 0       NAME                 loc_techs_out_2 4       _Netcdf4Dimid                       5   IΏ4OHDRc                                                 j     �             j     �       
"     0            ������������������������0        CLASS                DIMENSION_SCALE C       NAME       #          loc_techs_resource_area_constraint 4       _Netcdf4Dimid                       6   �a�OHDR=                                                 j     �             j     �       �     Z            ������������������������0        CLASS                DIMENSION_SCALE W       NAME       7          loc_techs_resource_area_per_energy_capacity_constraint   Tv�&OHDRw                                                 j     �             j     �       j"     0            ������������������������0        CLASS                DIMENSION_SCALE W       NAME       7          loc_techs_resource_availability_supply_plus_constraint 4       _Netcdf4Dimid                       8   .��OHDR(                                                 j     �             j     �       $     Z            ������������������������0        CLASS                DIMENSION_SCALE B       NAME       "          loc_techs_resource_max_constraint   �\5OHDRQ                                                 j     �             j     �       �"     @            ������������������������0        CLASS                DIMENSION_SCALE 1       NAME                 loc_techs_supply 4       _Netcdf4Dimid                       :   �p��OHDRU                                                 j     �             j     �       
#     p            ������������������������0        CLASS                DIMENSION_SCALE 5       NAME                 loc_techs_supply_all 4       _Netcdf4Dimid                       ;   ^rlOHDR`         
       
                                 z#                  z#            z3     �            ������������������������0        CLASS                DIMENSION_SCALE @       NAME                  loc_techs_supply_conversion_all 4       _Netcdf4Dimid                       <   g�xOHDRl         
       
                                 z#                  z#            4     �            ������������������������0        CLASS                DIMENSION_SCALE L       NAME       ,          loc_techs_symmetric_transmission_constraint 4       _Netcdf4Dimid                       =   � OHDRW         
       
                                 z#     ,             z#     ,      �m     �            ������������������������0        CLASS                DIMENSION_SCALE 7       NAME                 loc_techs_transmission 4       _Netcdf4Dimid                       >     2{OHDRf                                                 z#     A             z#     A       Z5     0            ������������������������0        CLASS                DIMENSION_SCALE F       NAME       &          loc_techs_update_costs_var_constraint 4       _Netcdf4Dimid                       ?   f���OHDRE                                                 z#     H             z#     H      �     �            ������������������������0        CLASS                DIMENSION_SCALE %       NAME                 locs 4       _Netcdf4Dimid                       @     .Z�OHDRo                                                 z#     Q             z#     Q       �5     0            ������������������������0        CLASS                DIMENSION_SCALE O       NAME       /          locs_resource_area_capacity_per_loc_constraint 4       _Netcdf4Dimid                       A   +��OHDRJ                                                 z#     X             z#     X       �5     @            ������������������������0        CLASS                DIMENSION_SCALE *       NAME       
          resources 4       _Netcdf4Dimid                       B   [�W]OHDR                                                  z#     a             z#     a       :6                 ������������������������0        CLASS                DIMENSION_SCALE     ��     y                K;&�            T��BTLF �        �
  I �        "  I �        k  4 �        �  # �        �  ' �          2 �        G  > �        �  ) �        �  8 �        �   �        �  A �        '   �        C  # �        f  ( �        �   �        �  ) �        �   �          $ �        9  % �        ^  + �        �   �        �    �        �   �        �   �        �    �          $ �        C   �        b  ! �        �   �        �   �        �  ! �        �   �          / �eҐ       OCHK1       NAME                 techs_conversion 4       _Netcdf4Dimid                       C   Z�{OHDRV                                                 z#     d             z#     d       J6                 ������������������������0        CLASS                DIMENSION_SCALE 6       NAME                 techs_conversion_plus 4       _Netcdf4Dimid                       D   ]�F5OHDRM                                                 z#     g             z#     g       Z6                  ������������������������0        CLASS                DIMENSION_SCALE -       NAME                 techs_demand 4       _Netcdf4Dimid                       E   ��
KOHDRW                                                 z#     l             z#     l       z6     p            ������������������������0        CLASS                DIMENSION_SCALE 7       NAME                 techs_non_transmission 4       _Netcdf4Dimid                       F   �!��OHDRM                                                 z#     {             z#     {       �6                  ������������������������0        CLASS                DIMENSION_SCALE -       NAME                 techs_supply 4       _Netcdf4Dimid                       G   0��OHDRR                                                 z#     �             z#     �       
7                 ������������������������0        CLASS                DIMENSION_SCALE 2       NAME                 techs_supply_plus 4       _Netcdf4Dimid                       H   �ő{OHDRS                                                 z#     �             z#     �       7     p            ������������������������0        CLASS                DIMENSION_SCALE 3       NAME                 techs_transmission 4       _Netcdf4Dimid                       I   ¿�OHDRY                                                 z#     �             z#     �       �7                  ������������������������0        CLASS                DIMENSION_SCALE 9       NAME                 techs_transmission_names 4       _Netcdf4Dimid                       J   c�OHDRw         0       0                 @     ~     _                   �    �7     �           ������������������������0        CLASS                DIMENSION_SCALE *       NAME       
          timesteps 4       _Netcdf4Dimid                       K   ?       units                hours since 2005-07-01 00:00:00/�N�                       K   *�,FSSE �        �    �     �             
 � WK    ���OCHK9       NAME                 loc_techs_conversion_all �1
FHDB 7        ���       techs_supply_plusp�     �       techs_transmissionΟ     �       techs_transmission_names-�     �       	timesteps��     �       resource_unit$     �       
energy_con�     �       
energy_effP     �       parasitic_eff`K     �       resource_area_max;M     �       resource_eff�O     �       energy_cap_max�k     �       resource�n     �       lifetime
�     �       export_carrier�     �       energy_prod��             FHDB 7        :����       loc_techs_supply_conversion_all��     �       +loc_techs_symmetric_transmission_constraint��     �       loc_techs_transmissionm�     �       %loc_techs_update_costs_var_constraintЏ     �       .locs_resource_area_capacity_per_loc_constraint��     �       	resources�     �       techs_conversiond�     �       techs_conversion_plus��     �       techs_demand[�     �       techs_non_transmission��     �       techs_supply�                FHDB 7      
  9��`}       !loc_techs_om_cost_conversion_plus�}     ~       loc_techs_om_cost_supply1            loc_techs_om_cost_supply_plus��     �       "loc_techs_resource_area_constraint\�     �       6loc_techs_resource_area_per_energy_capacity_constraint˄     �       6loc_techs_resource_availability_supply_plus_constraint�     �       !loc_techs_resource_max_constraint��     �       loc_techs_supplyˈ     �       loc_techs_supply_all(�     �       locsB�     FHDB 7        ��&Ys       loc_techs_costs_export�k     t       loc_techs_demand+m     u       $loc_techs_energy_capacity_constraint�n     v       loc_techs_export�o     w       loc_techs_finite_resourceq     x        loc_techs_finite_resource_demand�r     y       %loc_techs_finite_resource_supply_plusx     z       loc_techs_non_conversion�y     {       loc_techs_non_transmission�z     |       loc_techs_om_cost_conversionZ|     �       loc_techs_out_2 �          FHDB 7        �4frj       ;loc_techs_carrier_production_max_conversion_plus_constraint[     k       loc_techs_conversionV\     l       loc_techs_conversion_all�]     m       loc_techs_conversion_plus2c     n       loc_techs_cost_constraint�d     o       $loc_techs_cost_investment_constraint�e     p       loc_techs_cost_var_constraintog     q       (loc_techs_cost_var_conversion_constraint�h     r       -loc_techs_cost_var_conversion_plus_constraintNj                      FHDB 7        ��j�a       +loc_tech_carriers_export_balance_constraint�N     c       'loc_tech_carriers_supply_conversion_all9Q     d       'loc_techs_balance_conversion_constraint�R     e       2loc_techs_balance_conversion_plus_out_2_constraint�S     f       4loc_techs_balance_conversion_plus_primary_constraintfU     g       #loc_techs_balance_demand_constraint�V     h       (loc_techs_balance_supply_plus_constraintX     i       )loc_techs_balance_transmission_constraint�Y     FHDB 7        MDoY       costsC     Z       &loc_carriers_system_balance_constraintdD     [       -loc_carriers_update_system_balance_constraint�E     \       4loc_tech_carriers_carrier_consumption_max_constraintQG     ]       3loc_tech_carriers_carrier_production_max_constraint�H     ^        loc_tech_carriers_conversion_allRJ     _       !loc_tech_carriers_conversion_plus�K     `       loc_tech_carriers_demand-M     b       loc_tech_carriers_supply_all�O                 FHDB 7         9 �        carriers��      L       loc_carriers�      M       loc_tech_carriers_conf�      N       loc_tech_carriers_exportȽ      O       loc_tech_carriers_prod|0     P       	loc_techs�1     Q       loc_techs_area�2     R       loc_techs_costV4     S       loc_techs_investment_cost�5     T       loc_techs_om_costN<     U       loc_techs_supply_plus�=     V       techs?     W       carrier_tiers`@     X       coordinates�A              OCHKD     
   is_result                                           ���em�\FHDB �          �L��    objective_function_value         ?      @ 4 4�                         �,� S�@    solution_time    ?      @ 4 4�                         ����f@    _NCProperties      "          version=2,netcdf=4.7.4,hdf5=1.10.6                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                FHDB �       @   ���g 	   defaults                    available_area: null
carrier_ratios: false
charge_rate: false
coordinates: {}
cost_energy_cap: 0
cost_energy_cap_per_distance: 0
cost_export: 0
cost_interest_rate: 0
cost_om_annual: 0
cost_om_annual_investment_fraction: 0
cost_om_con: 0
cost_om_prod: 0
cost_purchase: 0
cost_resource_area: 0
cost_resource_cap: 0
cost_storage_cap: 0
energy_cap_equals: false
energy_cap_equals_systemwide: false
energy_cap_max: .inf
energy_cap_max_systemwide: .inf
energy_cap_min: 0
energy_cap_min_use: false
energy_cap_per_storage_cap_equals: false
energy_cap_per_storage_cap_max: false
energy_cap_per_storage_cap_min: false
energy_cap_per_unit: false
energy_cap_scale: 1.0
energy_con: false
energy_eff: 1.0
energy_eff_per_distance: 1.0
energy_prod: false
energy_ramping: false
exists: true
export_cap: .inf
export_carrier: null
force_asynchronous_prod_con: false
force_resource: false
group_carrier_con_equals: null
group_carrier_con_max: null
group_carrier_con_min: null
group_carrier_prod_equals: null
group_carrier_prod_max: null
group_carrier_prod_min: null
group_carrier_prod_share_equals: null
group_carrier_prod_share_max: .inf
group_carrier_prod_share_min: 0
group_carrier_prod_share_per_timestep_equals: null
group_carrier_prod_share_per_timestep_max: .inf
group_carrier_prod_share_per_timestep_min: 0
group_cost_equals: null
group_cost_investment_equals: null
group_cost_investment_max: null
group_cost_investment_min: null
group_cost_max: null
group_cost_min: null
group_cost_var_equals: null
group_cost_var_max: null
group_cost_var_min: null
group_demand_share_equals: null
group_demand_share_max: .inf
group_demand_share_min: 0
group_demand_share_per_timestep_decision: null
group_demand_share_per_timestep_equals: null
group_demand_share_per_timestep_max: .inf
group_demand_share_per_timestep_min: 0
group_energy_cap_equals: false
group_energy_cap_max: .inf
group_energy_cap_min: 0
group_energy_cap_share_equals: false
group_energy_cap_share_max: .inf
group_energy_cap_share_min: 0
group_net_import_share_equals: null
group_net_import_share_max: null
group_net_import_share_min: null
group_resource_area_equals: false
group_resource_area_max: .inf
group_resource_area_min: 0
lifetime: null
one_way: false
parasitic_eff: 1.0
resource: 0
resource_area_equals: false
resource_area_max: .inf
resource_area_min: 0
resource_area_per_energy_cap: false
resource_cap_equals: false
resource_cap_equals_energy_cap: false
resource_cap_max: .inf
resource_cap_min: 0
resource_eff: 1.0
resource_min_use: false
resource_scale: 1.0
resource_unit: energy
storage_cap_equals: false
storage_cap_max: .inf
storage_cap_min: 0
storage_cap_per_unit: false
storage_discharge_depth: 0
storage_initial: 0
storage_loss: 0
techs: None
transmission_node: false
units_equals: false
units_equals_systemwide: false
units_max: false
units_max_systemwide: .inf
units_min: false
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         FHDB �           �nfs    calliope_version                     0.6.6-post1    applied_overrides                      	   scenario                     None    allow_operate_mode                                             model_config       �          calliope_version: 0.6.6
name: Urban-scale example model
subset_time:
- '2005-07-01'
- '2005-07-02'
timeseries_data_path: timeseries_data
timeseries_dateformat: '%Y-%m-%d %H:%M:%S'
    run_config         �         backend: pyomo
bigM: 1000000.0
cyclic_storage: true
ensure_feasibility: true
mode: plan
objective_options:
  cost_class:
    monetary: 1
  sense: minimize
objective: minmax_cost_optimization
operation:
  window:
  horizon:
  use_cap_results: false
spores_options:
  spores_number: 3
  slack: 0.1
  score_cost_class: spores_score
  slack_cost_group:
solver: glpk
zero_threshold: 1e-10
    termination_condition                optimal    time_finished                2020-11-21 21:16:04                FHIB �           �     �     ���������������������������������������������������������������������������������     ������������������������1��$   |            |            |            |            |            |            |            |            |            |            |            |            |            |      C   #   |      B      |      A      |      ?      |      @      |      :      |      ;      |      <      |      =      |      >      |      1      |      2      |      3      |      4      |      5      |      6      |      7   #   |      8   #   |      9      |      L      |      K      |      I      |      J      |      w   "   |      v      |      u      |      r      |      s      |      t      |      m      |      n      |      o      |      p      |      q      |      c      |      d      |      e      |      f      |      g      |      h      |      i      |      j      |      k      |      l      |      �      |      �      |      �      |      �      |      �      |      �   
   |      �      |      �      |      �      |      �      |      �   
   |      �      |      �      |      �      |      �      |      �      |      �      |      �      |      �      |      �      |      �      |      �      |      �      |      �      |      �      |      �      |      �      |      �      |      �      |      �      |      �      |      �      |      �   
   |      �      |      �      |      �   
   |      �      |      �      |      �      |      �      |      �      |      �      |      �      |      �      |      �      |      �      |      �      |      �      |      �      �     "      �     !      �            �        
   �           �           �        
   �           �           �           �           |      �      �           |      �      �           �           �           �           �           �           �     5      �     4      �     3      �     1   
   �     2      �     -      �     .   
   �     /      �     0      �     <      �     ;      �     :      �     O   
   �     N   
   �     M      �     K      �     L      �     G      �     H      �     I      �     J      �     V      �     U      �     T      �     [      �     Z      �     ^      �     z      �     y      �     x      �     �      �     �      �     �      �     �   OCHK   :�     �       4       _Netcdf4Dimid                            Tl�HGCOL                        X3::power_lines:X1                    X1::power_lines:X2                    X1::pv                X2::heat_pipes:N1                     X2::power_lines:X1                    X1::supply_gas                N1::heat_pipes:X1                     N1::heat_pipes:X3                     X3::pv                N1::heat_pipes:X2              
       X2::boiler                    X3::supply_gas                X1::heat_pipes:N1                     X2::supply_gas         
       X3::boiler                     X1::supply_grid_power   !              X2::pv  "              X3::heat_pipes:N1       #               -              X1::supply_gas  .              X3::pv  /       
       X2::boiler      0              X3::supply_gas  1              X2::supply_gas  2       
       X3::boiler      3              X1::supply_grid_power   4              X2::pv  5              X1::chp 6               :              X2::pv  ;              X1::pv  <              X3::pv  =               G              chp     H              demand_heat     I              demand_electricity      J              power_lines     K              supply_grid_power       L              pv      M       
       heat_pipes      N       
       supply_gas      O              boiler  P               T              in      U              out_2   V              out     W               Z              x       [              y       \               ^              monetary_               j              X3::electricity k              X1::electricity l              X1::heatm              X3::gas n              X3::heato              X1::gas p              X2::heatq              X2::electricity r              X2::gas s              N1::heatt               x              X1::electricity y              X3::electricity z              X2::electricity {               �              X1::demand_heat::heat   �              X1::power_lines:X3::electricity �              X1::power_lines:X2::electricity �              X3::heat_pipes:N1::heat �              X2::demand_heat::heat   �              X2::heat_pipes:N1::heat �       #       X3::demand_electricity::electricity     �       #       X1::demand_electricity::electricity     �              X1::heat_pipes:N1::heat �              N1::heat_pipes:X2::heat �              N1::heat_pipes:X3::heat �              N1::heat_pipes:X1::heat �              X2::power_lines:X1::electricity �              X3::demand_heat::heat   �              X3::power_lines:X1::electricity �       #       X2::demand_electricity::electricity     �               �              N1::heat_pipes:X1::heat �              X1::power_lines:X3::electricity �              X1::pv::electricity     �              X1::power_lines:X2::electricity �              X3::heat_pipes:N1::heat �              X2::supply_gas::gas     �              X1::supply_gas::gas     �              X2::pv::electricity     �              X2::heat_pipes:N1::heat �              X1::heat_pipes:N1::heat �              N1::heat_pipes:X2::heat �              N1::heat_pipes:X3::heat �              X3::supply_gas::gas     �              X3::pv::electricity     �              X3::boiler::heat�              X2::boiler::heat�              X2::power_lines:X1::electricity �              X3::power_lines:X1::electricity �       "       X1::supply_grid_power::electricity      �               �              X1::chp::heat   �              X2::boiler::heat�              X3::boiler::heat�              X1::chp::electricity    �               �              X1::chp::heat   �              X1::chp::electricity    �              X1::chp::gas    �               �       #       X3::demand_electricity::electricity     �       #       X1::demand_electricity::electricity     �              X1::demand_heat::heat   �       #       X2::demand_electricity::electricity     �              X2::demand_heat::heat   �              X3::demand_heat::heat   �               �              X3::pv::electricity     �                  �     s      �     r      �     q      �     o      �     p      �     j      �     k      �     l      �     m      �     n   #   �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �   #   �     �   #   �     �   "   �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �   #   �     �   #   �     �   #   �     �      �     �      b�           b�           b�           �     �      b�           b�        "   b�           b�           b�           b�           b�           b�     *      b�     )      b�     (      b�     %      b�     &   "   b�     '      b�            b�     !      b�     "      b�     #      b�     $   
   b�     /   
   b�     .      b�     2      b�     5      b�     B      b�     A      b�     @      b�     =      b�     >      b�     ?      b�     I      b�     H      b�     G      b�     ^      b�     ]      b�     \      b�     Z      b�     [      b�     U      b�     V      b�     W      b�     X      b�     Y      b�     a   
   b�     f   
   b�     e   
   b�     m   
   b�     l      b�     k      b�     p      b�     �      b�     �      b�     �      b�     �   
   b�     �      b�     �      b�     �   
   b�     �      b�     �      b�     �      b�     �      b�     �      b�     �      b�     �      b�     �      b�     �      b�     �      b�     �      b�     �      b�     �      b�     �      b�     �      b�     �      b�     �   
   b�     �      b�     �      b�     �   
   b�     �      b�     �      b�     �      b�     �      b�     �      b�     �      b�     �      b�     �      b�     �      b�     �      b�     �      b�     �      b�     �      b�     �      b�     �      b�     �      b�     �      b�     �      b�     �   
   b�     �   
   b�     �      b�     �      b�     �      b�     �      b�     �      b�     �      b�     �      b�     �      b�     �      b�     �      j     =      j     <      j     :      j     ;      j     P      j     O      j     N      j     L      j     M      j     H      j     I      j     J      j     K   OCHK    h�     @       4       _Netcdf4Dimid                          ׷xGCOL                        X1::pv::electricity                   X2::pv::electricity                   X1::chp::electricity                                 X1::supply_gas::gas                   X3::supply_gas::gas                   X3::pv::electricity            "       X1::supply_grid_power::electricity                    X2::supply_gas::gas                   X2::pv::electricity                   X1::pv::electricity                                   X2::supply_gas::gas     !              X1::supply_gas::gas     "              X3::supply_gas::gas     #              X3::pv::electricity     $              X2::boiler::heat%              X2::pv::electricity     &              X1::chp::electricity    '       "       X1::supply_grid_power::electricity      (              X1::chp::heat   )              X3::boiler::heat*              X1::pv::electricity     +               .       
       X3::boiler      /       
       X2::boiler      0               2              X1::chp 3               5              X1::chp 6               =              X1::demand_electricity  >              X1::demand_heat ?              X3::demand_electricity  @              X2::demand_heat A              X2::demand_electricity  B              X3::demand_heat C               G              X2::pv  H              X1::pv  I              X3::pv  J               U              X2::heat_pipes:N1       V              X2::power_lines:X1      W              N1::heat_pipes:X1       X              N1::heat_pipes:X2       Y              N1::heat_pipes:X3       Z              X1::power_lines:X2      [              X1::power_lines:X3      \              X3::power_lines:X1      ]              X3::heat_pipes:N1       ^              X1::heat_pipes:N1       _               a              X1::chp b               e       
       X3::boiler      f       
       X2::boiler      g               k              X1::chp l       
       X3::boiler      m       
       X2::boiler      n               p              X1::chp q               �              X3::power_lines:X1      �              X1::chp �              X1::power_lines:X2      �              X1::power_lines:X3      �              X1::pv  �              X2::heat_pipes:N1       �              X2::power_lines:X1      �              X1::supply_gas  �              N1::heat_pipes:X1       �              N1::heat_pipes:X3       �              X3::pv  �              N1::heat_pipes:X2       �       
       X2::boiler      �              X3::supply_gas  �              X1::heat_pipes:N1       �              X2::supply_gas  �       
       X3::boiler      �              X2::pv  �              X1::supply_grid_power   �              X3::heat_pipes:N1       �               �              X3::power_lines:X1      �              X1::chp �              X1::power_lines:X2      �              X1::power_lines:X3      �              X1::pv  �              X2::heat_pipes:N1       �              X2::power_lines:X1      �              X1::supply_gas  �              N1::heat_pipes:X1       �              N1::heat_pipes:X3       �              X3::pv  �              N1::heat_pipes:X2       �       
       X2::boiler      �              X3::supply_gas  �              X1::heat_pipes:N1       �              X2::supply_gas  �       
       X3::boiler      �              X1::supply_grid_power   �              X2::pv  �              X3::heat_pipes:N1       �               �              X1::supply_gas  �              X3::pv  �              X3::supply_gas  �              X2::supply_gas  �              X1::supply_grid_power   �              X2::pv  �               �       
       X3::boiler      �       
       X2::boiler      �               �              X1::chp �               �              X2::pv  �              X1::chp �               �              X1::demand_electricity  �              X1::demand_heat �              X3::demand_electricity  �              X2::demand_heat �              X2::demand_electricity  �              X3::demand_heat OCHK    ��             4       _Netcdf4Dimid                          ��ToOCHK    ��            4       _Netcdf4Dimid                          �m=�OCHK    8�            4       _Netcdf4Dimid                          �*��OCHK    �     �      4       _Netcdf4Dimid                       *   A�&�OCHK    :"     0       4       _Netcdf4Dimid                       7   ��T	OCHK    �"     0       4       _Netcdf4Dimid                       9   [��)OCHK   џ     l      ;    	   calendar                     proleptic_gregorianh)�`FSSE �7       �	     �   	  �     �     �     �   e�BOHDR�         	       	                                 z#     �             z#     �   8             shuffle            deflate            *9     	           ������������������������D     
   is_result                                           P       DIMENSION_LIST                                    z#     �   �|�OCHK    @�     �       P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                           r�d         �n            �ݻA�YOHDR�                           ?      @ 4 4�              �            �8             shuffle            deflate            �A                ������������������������P        _FillValue       ?      @ 4 4�                               �D    
   is_result                                           P       DIMENSION_LIST                                    z#     �   �[AlOCHK            �D    
   is_result                                          P       DIMENSION_LIST                                    ��        DbX           `K             ����OHDR/                           ?      @ 4 4�      �I     �                   �8             shuffle            deflate            �Q                ������������������������P        _FillValue       ?      @ 4 4�                               �r��                                                                  j     4      j     3      j     1      j     2      j     .      j     /   
   j     0      j     (      j     )      j     *      j     +   
   j     ,      j     -      j           j           j           j           j           j            j     !      j     "      j     #      j     $      j     %      j     &      j     '   GCOL                        X1::heat_pipes:N1                     X3::power_lines:X1                    X1::chp               X1::power_lines:X2                    X2::demand_heat                X1::power_lines:X3      !              X1::pv  "              X2::heat_pipes:N1       #              X2::power_lines:X1      $              X1::supply_gas  %              N1::heat_pipes:X1       &              X3::demand_electricity  '              N1::heat_pipes:X3       (              X1::demand_electricity  )              X1::demand_heat *              X3::pv  +              N1::heat_pipes:X2       ,       
       X2::boiler      -              X3::supply_gas  .              X2::demand_electricity  /              X2::supply_gas  0       
       X3::boiler      1              X1::supply_grid_power   2              X2::pv  3              X3::heat_pipes:N1       4              X3::demand_heat 5               :              X2::pv  ;              X1::chp <              X1::pv  =              X3::pv  >               H              X1::demand_electricity  I              X1::demand_heat J              X3::pv  K              X3::demand_electricity  L              X2::demand_heat M              X1::pv  N              X2::pv  O              X2::demand_electricity  P              X3::demand_heat Q               X              X1::demand_electricity  Y              X1::demand_heat Z              X3::demand_electricity  [              X2::demand_heat \              X2::demand_electricity  ]              X3::demand_heat ^               b              X2::pv  c              X1::pv  d              X3::pv  e               }              X3::power_lines:X1      ~              X1::power_lines:X2                    X2::demand_heat �              X1::power_lines:X3      �              X1::pv  �              X2::heat_pipes:N1       �              X2::power_lines:X1      �              X1::supply_gas  �              N1::heat_pipes:X1       �              X3::demand_electricity  �              N1::heat_pipes:X3       �              X1::demand_electricity  �              X1::demand_heat �              X3::pv  �              N1::heat_pipes:X2       �              X3::supply_gas  �              X1::heat_pipes:N1       �              X1::supply_grid_power   �              X2::demand_electricity  �              X2::supply_gas  �              X2::pv  �              X3::heat_pipes:N1       �              X3::demand_heat �               �       
       X3::boiler      �              X1::supply_gas  �              X1::demand_heat �              X1::demand_electricity  �              X3::pv  �              X3::demand_electricity  �       
       X2::boiler      �              X3::supply_gas  �              X2::demand_heat �              X2::supply_gas  �              X2::demand_electricity  �              X1::pv  �              X1::supply_grid_power   �              X2::pv  �              X1::chp �              X3::demand_heat �               �       
       X3::boiler      �       
       X2::boiler      �               �              X1::chp �               �              X3::supply_gas  �              X1::supply_grid_power   �              X1::supply_gas  �              X2::supply_gas  �               �              X2::pv  �              X3::pv  �               �              X1::chp �               �              X2::pv  �              X1::pv  �              X3::pv  �               �              X2::pv  �              X1::pv  �              X3::pv  �               �              X2::pv  �              X1::pv  �              X3::pv  �               �              X2::pv  �              X1::pv  �              X3::pv  �               �              X1::supply_gas  �              X1::supply_grid_power   �              X3::supply_gas  �              X2::supply_gas  �               �              X1::pv  �              X2::supply_gas  �              X3::supply_gas  �              X2::pv  �              X3::pv                X1::supply_gas     j     ]      j     \      j     [      j     X      j     Y      j     Z      j     d      j     c      j     b      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     }      j     ~      j           j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �   
   j     �      j     �      j     �      j     �      j     �      j     �   
   j     �      j     �   
   j     �   
   j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j     �      j           z#           j     �      j     �      j     �      j     �      j     �   GCOL                        X1::supply_grid_power                         
       X3::boiler                    X1::supply_gas                X3::pv         
       X2::boiler                    X3::supply_gas                X2::supply_gas                X1::pv                X1::chp               X2::pv                X1::supply_grid_power                  "              X2::heat_pipes:N1       #              X2::power_lines:X1      $              N1::heat_pipes:X1       %              N1::heat_pipes:X2       &              N1::heat_pipes:X3       '              X1::power_lines:X2      (              X1::power_lines:X3      )              X3::power_lines:X1      *              X3::heat_pipes:N1       +              X1::heat_pipes:N1       ,               7              X2::heat_pipes:N1       8              X2::power_lines:X1      9              N1::heat_pipes:X1       :              N1::heat_pipes:X2       ;              N1::heat_pipes:X3       <              X1::power_lines:X2      =              X1::power_lines:X3      >              X3::power_lines:X1      ?              X3::heat_pipes:N1       @              X1::heat_pipes:N1       A               E              X3::pv  F              X2::pv  G              X1::chp H               M              X3      N              X2      O              N1      P              X1      Q               U              X2      V              X3      W              X1      X               ]              gas     ^              resource_              electricity     `              heat    a               c              boiler  d               f              chp     g               j              demand_electricity      k              demand_heat     l               t       
       supply_gas      u              demand_heat     v              demand_electricity      w              pv      x              chp     y              boiler  z              supply_grid_power       {               ~       
       supply_gas                    supply_grid_power       �               �              pv      �               �              power_lines:X2  �              heat_pipes:X3   �              power_lines:X1  �              power_lines:X3  �              heat_pipes:X1   �              heat_pipes:N1   �              heat_pipes:X2   �               �              power_lines     �       
       heat_pipes      �               �              q     �              energy  �              energy  �              energy_per_area �              energy  �              energy  �              energy_per_area �              energy_per_area �              energy  �              energy  �              �1     �              �1     �              �=     �              �2     �              q     �              �1     �              q     �              q     �              ��     �              �1     �               �              �o     �              electricity     �              electricity     �              electricity     �              electricity     �              �1     �              �2     �              q     �              C     �              C     �              N<     �              C     �              C     �              �5     �              C     �              C     �              �5     �              C     �              C     �              N<     �              C     �              N<     �              ��     �              C     �              C     �              N<     �              C     �              C     �              N<     �              m�     �               �              m�     �              N1::heat_pipes:X2       �              X1::power_lines:X2      �              X1::heat_pipes:N1       �              X2::heat_pipes:N1       �              X3::heat_pipes:N1       �              X2::power_lines:X1      �              X1::power_lines:X3      �              X2::pv            z#           z#           z#           z#           z#        
   z#           z#           z#        
   z#           z#           z#     +      z#     *      z#     )      z#     '      z#     (      z#     "      z#     #      z#     $      z#     %      z#     &      z#     @      z#     ?      z#     >      z#     <      z#     =      z#     7      z#     8      z#     9      z#     :      z#     ;      z#     G      z#     F      z#     E      z#     P      z#     O      z#     M      z#     N      z#     W      z#     V      z#     U      z#     `      z#     _      z#     ]      z#     ^      z#     c      z#     f      z#     k      z#     j      z#     z      z#     y      z#     w      z#     x   
   z#     t      z#     u      z#     v      z#        
   z#     ~      z#     �      z#     �      z#     �      z#     �      z#     �      z#     �      z#     �      z#     �   
   z#     �      z#     �                                                                   	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       TREE  ����������������*                       ZA             	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              x^cc�B b��`@�` ])^�j�e�-^�]	   ��TREE  ����������������'                       �Q                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OCHK            �D    
   is_result                                           P       DIMENSION_LIST                                    z#     �   ���OCHK    ��     �       T        _Netcdf4Coordinates                                        	   K   P       _FillValue       ?      @ 4 4�                               ���            Ov             �-��OHDR�                           ?      @ 4 4�              �            �8             shuffle            deflate            �Z                ������������������������P        _FillValue       ?      @ 4 4�                               �D    
   is_result                                           P       DIMENSION_LIST                                    z#     �   w!�~OHDRi                                           �        �8             shuffle            deflate            �b                ������������������������D     
   is_result                                           P       DIMENSION_LIST                                    z#     �   �[w�OCHK    f�     	      P       DIMENSION_LIST                                    z#     �   ��BOCHKP        _FillValue       ?      @ 4 4�                               �43G�     �C� OHDR�         	       	           ?      @ 4 4�              �            �8             shuffle            deflate            s     	           ������������������������P        _FillValue       ?      @ 4 4�                               �D    
   is_result                                           P       DIMENSION_LIST                                    z#     �   4Q�                                                                           x^c`��Ç?>����A�eo__o_oo� 
� >� �TREE  �����������������                       Z                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           x^5��!W.�1�@�8�"Ǵ� �t`�ĉ D�^���~���A;	�`��	6W��e� �G@ V�!镐�e�`�����Ld�402���.�]9�sP�*S��h럮�Ц�[Ϝ�Z�y�/offL�TREE  ����������������                       �b                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           x^36F�_���� F�TREE  ����������������                       	s                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           FHIB 7         ò     ð     î     ì     ê     è     æ     ä     �     �     ������������������������������������������������8���OCHKD     
   is_result                                           ���e   )OHDR�                           ?      @ 4 4�              �            �8             shuffle            deflate            b{                ������������������������P        _FillValue       ?      @ 4 4�                               �D    
   is_result                                           P       DIMENSION_LIST                                    z#     �   ,�pPOCHK    �4     �       �     t  REFERENCE_LIST       dataset                                       dimension                                                                      �             �             �ī#           M�B>OHDRI(         	       0       	       0           ?      @ 4 4�              �            �8             shuffle            deflate            ҃     	   0           ������������������������P        _Netcdf4Coordinates                                     ,   K   P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                           `       DIMENSION_LIST                                    z#     �      z#     �   e+k�OHDR�         0       0           ?      @ 4 4�              �            �8             shuffle            deflate            =     0           ������������������������P        _FillValue       ?      @ 4 4�                               �D    
   is_result                                           P       DIMENSION_LIST                                    ��        jE�9�        x^�s�+++  ��TREE  ����������������                       J{             	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              x^c` �������� ��XTREE  ����������������@                       ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           x^ŉ�  ;_�����OVq,�R����@�� �m��n"�8��IrQ즑��,�<I��/TREE  ����������������                              
�             	       0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      OHDR�                           ?      @ 4 4�              �            �8             shuffle            deflate            �                ������������������������P        _FillValue       ?      @ 4 4�                               �D    
   is_result                                           P       DIMENSION_LIST                                    z#     �   �{��OHDR                                            �        �8             shuffle            deflate            �                ������������������������    ô     R           ��     ^                 �U?5��OHDR�                                                 z#     �             z#     �   8             shuffle            deflate            g�                ������������������������D     
   is_result                                           P       DIMENSION_LIST                                    z#     �   �ԚOHDR�                           ?      @ 4 4�              �            �8             shuffle            deflate            ��                ������������������������P        _FillValue       ?      @ 4 4�                               �D    
   is_result                                           P       DIMENSION_LIST                                    z#     �   S�$tOHDR (                0              0           ?      @ 4 4�      t     t                   �8             shuffle            deflate            �,        0           ������������������������                  �}�r             �7�OCHKP       DIMENSION_LIST                                    z#     �   tt!                                           x^��{4T{��J�%u*'�\��[eP�	�2.�62c�l��{!3�6�D�(L.e�r��8�L$S��i3�ܚܣ^��.K�8�Y�}�Z��Y����?�����ð���.�<S�^��[�ք7�QF�:� �4�(��	�i0\'�yǏ�pj���ѿF���ɕW�r�mS�F��%�059iF0�(me�A"\��Ŧ�f�)�?��Q�B?���y����*zj�.P��qp:���+4��o�Ǚ��ĖPR9�ZO\����*����n����������N�_�˨�!�WתC\�R�6����R�O8-��(j�=|�R�`	;V3nl�͟|B���"�p\$K	��a���#ڥ%�����6
8-���X�1�F P����d�t�U�4=(t���Q�G Pz `o7 � `8LG`0ɺv"t�d(c�~��U~�Rɽ��3/c���XȮcX���G�R�.gў�'�����;��w]q\�O�ག�]���=M\*�C�B�ZB���U^�fǽ���坃)�1�&Mw.�<S_���g���lv~��=��2��vG'��eX���3CD�1K��㸵�6#�u#T��ckjXN��K�mɓ}Y?+"��h��גӝ1�da�дoM�z�E�R��@�b��� ߈� ���%�$ҟ���+��
|	��`��+H �ASpx���12;���j)�(~�r_����ɼ�HI�E�o��l�O�-�e���hϧ����
�,5O�� ~��zm�5P1�3����"�@�H{g3���2��0��O��BŨP	�($�+��qKE�ɟ	e��_kW�����k[�g@S45Š�@�i)��ᤥ<[J��ay[Q���Z^�E[[���)�wF$c�6L��4#f�F��0Q���`�%Uiv�kܭe�;����܊��4�F3F�Bm��;�@jP���@��1!��D!�C)����[�~�I�S��l�L�Sug���',�>l�Ѕ�5.9�w�t���h`Uڙ�g�ʊu��rR�x?߅�u��wn<itY�~5��@�g��_��b?
�yC"v�
�M�O��2�w7>�K�F��u,��uq/v��]wv�1O�z�R�/ɱ�n�9o��o^���;���)N�c�(?�#o�Xo�Vw��D�*C�E_����,~9���#�n��}����VҾ�$�����:�Sm=�Z	a p��j�H���L��T#���H�W9�� QA`dN$#�Ca��-��/l����T�؊Ub����H�"8��i�>��M;�guc��Y�P����׽!�M{Ix��l����\��5v�,x{�t�@u���ӏk��>�i�5��{m���u��܁���>bb����CG�mOu�b0V��c��4�hg�k�p�o�
F=\����!��.\W[V���`I�v=�R3�D�}��֢�U��z�=X�װ]ᛅ�c#��M����5�F)#P�������)R,��|�?�Ul��)s��湅[�р��̽̤ԡ�V(:�c����{�qv}~陷��F}�O�ɏ3Qh/��F{n�8���=��~�DU�B�?XG=��>C��E}�@��a��<�ni�9`�@���	��\�ղ�K�+"��V�mS�kVy�?F���&544�r�m���'7ڸ>�J�.�R����I��	vCF��O}�vݢ2�X,�����]�Ϧ{�el��M���_�k!��.@�ƃV�ݭTG�j#�	.�3�u>$�OHx��e���q�8��>Ap�3����4�����;��� ��b �D"z�\�vj?�/(�H�B�T��w�J�ˋ���J�������).�(+*`\��Z��a{W<���稛�QW/<�7𘳃���'>(4�������q�&<>���f.��7l6�/����������~��Yʳ�4�!s��G.��������n�sV#���4=5>�[���#����������5ܥ���o���P=���Va@{b���G/|�����9�8�����7���>�~���/E�OGTREE  ����������������'                       @�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           x^c`�����%� �` e���wpp �zPF� �?TREE  ����������������                        ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           x^����f@U@�L@�,���ރ� ���TREE  ����������������(                       �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           x^c`��Ǉ���(�Ǉz{{{ ��` e�� : wFHDB 7        x��       resource_area_per_energy_cap�     �       force_resource?�     �       cost_om_prod��     �       cost_depreciation_rate��     �       cost_energy_cap�     �       cost_export(�     �       cost_om_con��     �       cost_om_annual��     �       distance�     �       lookup_remotes�     �       available_areaJ     �       loc_coordinates�L     �       colors�P     �       inheritancem     �       names�o     �       carrier_ratios*r     �       lookup_loc_carriers(�     �       lookup_loc_techs��     �       lookup_loc_techs_conversion�     �       #lookup_primary_loc_tech_carriers_inP�     �       $lookup_primary_loc_tech_carriers_outõ     �        lookup_loc_techs_conversion_plusF�     �       lookup_loc_techs_export��     �       lookup_loc_techs_area}�     �       timestep_resolution�     �       timestep_weights%q     �       max_demand_timesteps6                 TREE  ����������������                       Y�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OHDR          	       	                  	      �      �8             shuffle            deflate            �N     w            ������������������������    �k     R           �6     2                          ��BTLF �        e   �        �  ) �        �  " �        �   �        �   �          ! �        ,   �        G  ! �        h  ! �        �  " �        �   �        �   �        �   �        �  ! �          & �        A  # ����                                                                                                                                                                                                                                                                      OCHK    x�     �       �     t  REFERENCE_LIST       dataset                                       dimension                                                                      $             �O             �n             ?�             �<�x^cggg�  � TREE  ����������������                       ��             	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              OHDRI(                	              	           ?      @ 4 4�              �            �8             shuffle            deflate            ��        	           ������������������������P        _Netcdf4Coordinates                                        	   P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                           `       DIMENSION_LIST                                    z#     �      z#     �   cs<$OHDRI(                                         ?      @ 4 4�              �            �8             shuffle            deflate            �                   ������������������������P        _Netcdf4Coordinates                                           P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                           `       DIMENSION_LIST                                    z#     �      z#     �   &_}�OCHK            �`       DIMENSION_LIST                                    z#     �      z#     �   UG�FSSE �7       �	     �   	  �     �     �   �     �    �   ��t b��lOHDRI(                                         ?      @ 4 4�              �            �8             shuffle            deflate            Y�                   ������������������������P        _Netcdf4Coordinates                                           P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                           `       DIMENSION_LIST                                    z#     �      z#     �   g{2                                   x^cd�  6 
TREE  ����������������)                               ��                    	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      x^��� +3����PƥP�o+��t�(�����C  ���TREE  ����������������                               :�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          BTLF i�Ӷ   > J鱷 �  ' �Pr� �   �� �  3 �t1� �  , ��� \  ( + �� 2  * ��   7 7��� d  - XV�� �  ! Nr� )  , �_}� �   ��� �  < ��� -  9 �f6� 
  4 t��� w   + �F.�    ���� >  # Ѧ� �   X��� �	  / )�:�   & �� �  E R��� �    yI� b  ! Da�� A  # l,�� �   �X� �  , d��     �t�� '   F�f� 0    �$J� c  ' �}"� o   ���� �  3 j0� �  ! 7�� U  $ ݂N� �
  I ��� �  G d�� �  " v� �   ���� �   m�� t
  0 dBt� h  ! ���� �  A �e�                             OCHK    ��     P      �     t  REFERENCE_LIST       dataset                                       dimension                                                                      c�             K�            p\�OHDRq8                	       0              	       0           ?      @ 4 4�              �            �8             shuffle            deflate            ��        	   0           ������������������������T        _Netcdf4Coordinates                                        	   K   P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                           p       DIMENSION_LIST                                    z#     �      z#     �      z#     �   �Q=yOHDR (                	              	           ?      @ 4 4�      F     z                  �8             shuffle            deflate            L        	           ������������������������                  ����MxOHDRC(                	              	           ?      @ 4 4�      �     �                   �8             shuffle            deflate            �        	           ������������������������P        _Netcdf4Coordinates                                        	   ��N�                                                        x^��L�䰀n,�'`����  sdW�TREE  ����������������W                               ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          x^3f �3g��b�5D�16���a83�a�LI��C�ę �`�L	��穑���q��fe�ΕS����泽��ۃ0��� ��<�TREE  �����������������                                      (                    	       0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              OCHK    ��     �       �     t  REFERENCE_LIST       dataset                                       dimension                                                                      ��            (�            ��            ��            �x            �7Y;OCHK            �P        _Netcdf4Coordinates                                        	   P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                           `       DIMENSION_LIST                                    z#     �      z#     �   п��OCHK    �     @      �     t  REFERENCE_LIST       dataset                                       dimension                                                                      B            �F	�            �             (�             ��             ��             �1��OHDR�         
       
           ?      @ 4 4�              �            �8             shuffle            deflate            �)     
           ������������������������P        _FillValue       ?      @ 4 4�                               �D    
   is_result                                           P       DIMENSION_LIST                                    z#     �   ��`{OHDR�         
       
                                 z#     �             z#     �   8             shuffle            deflate            �1     
           ������������������������D     
   is_result                                           P       DIMENSION_LIST                                    z#     �   ���OCHK    �d     	      P       DIMENSION_LIST                                    :     	   NJ�aFSSE �7       �	     �   	  �     �     �     �   3  �   n�rP   x^~sF����*��k�-�%B*���󩽙�������hײ��O{�g�&0��]�,IٓW�Ug��-3��v잵�z�t���n�ד��\8�U���bo�����:�?�D�n�(�T�Yg2�:���ii�Ҥ�3�]��.-a�r�s�%_1��+�t��
�?񍧜D�n�(���]�'����͞�E��F��
��^y�IR��,ڨ����<��F=�S^(�!��7
(�{#[�N�eeT~h����������=��yl�ߧ�߷����V��u[D?�۫��f� ݾQ@�Y�A�*3+u����Lz�����EY���3KEe��}ʨ��ڟu2�_�d���$t�Fe`�����Ι�p��eK�,^�dيK��¹�gϞ9k���-]�d��˗.Y�$�T�i�GU �C�QTREE  ����������������A                                                   	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      x^�A !C�:C&P�t�q�l������4?͓"��l䌇^�[�d&9Y�y���TREE  ����������������                               �)                    	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      x^c` (00� ��?���@}= �^�TREE  ����������������                       �1             
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              x^c` p���p�pp8� �1TREE  ����������������<                       R             
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              GCOL                        X3::power_lines:X1                    N1::heat_pipes:X3                     N1::heat_pipes:X1                     B�                   �A                   �A                   B�                    	              ?                   #E4AB97               #660507               #072486               #6783E3               #C5ABE3               #F9D956               #823739               #C98AAD               #8E2999                              ?     '              conversion_plus (              demand  )              demand  *              transmission    +              supply  ,              supply_power_plus.supply_plus   -              transmission    .              supply  /       
       conversion      0               1              ?     ;              Combined heat and power <              Heat demand     =              Electrical demand       >              Electrical power distribution   ?              National grid import    @              Solar photovoltaic powerA              District heat distribution      B              Natural gas import      C              Natural gas boiler      D              `@     E              `@     F              �K     G               H              �      S       W       X3::power_lines:X1::electricity,X3::demand_electricity::electricity,X3::pv::electricity T       �       X1::power_lines:X3::electricity,X1::pv::electricity,X1::power_lines:X2::electricity,X1::chp::electricity,X1::supply_grid_power::electricity,X1::demand_electricity::electricity U       ;       X1::demand_heat::heat,X1::chp::heat,X1::heat_pipes:N1::heat     V       #       X3::boiler::gas,X3::supply_gas::gas     W       >       X3::heat_pipes:N1::heat,X3::demand_heat::heat,X3::boiler::heat  X               X1::supply_gas::gas,X1::chp::gasY       >       X2::heat_pipes:N1::heat,X2::demand_heat::heat,X2::boiler::heat  Z       W       X2::pv::electricity,X2::power_lines:X1::electricity,X2::demand_electricity::electricity [       #       X2::boiler::gas,X2::supply_gas::gas     \       G       N1::heat_pipes:X2::heat,N1::heat_pipes:X3::heat,N1::heat_pipes:X1::heat ]               ^              �y     v              X3::power_lines:X1::electricity w              X1::power_lines:X2::electricity x              X2::demand_heat::heat   y              X1::power_lines:X3::electricity z              X1::pv::electricity     {              X2::heat_pipes:N1::heat |              X2::power_lines:X1::electricity }              X1::supply_gas::gas     ~              N1::heat_pipes:X1::heat        #       X3::demand_electricity::electricity     �              N1::heat_pipes:X3::heat �       #       X1::demand_electricity::electricity     �              X1::demand_heat::heat   �              X3::pv::electricity     �              N1::heat_pipes:X2::heat �              X3::supply_gas::gas     �              X1::heat_pipes:N1::heat �       "       X1::supply_grid_power::electricity      �       #       X2::demand_electricity::electricity     �              X2::supply_gas::gas     �              X2::pv::electricity     �              X3::heat_pipes:N1::heat �              X3::demand_heat::heat   �               �              `@     �              `@     �              V\     �               �              X2::boiler::gas �              X3::boiler::gas �               �              X3::boiler::heat�              X2::boiler::heat�               �              2c     �              X1::chp::gas    �               �              2c     �              X1::chp::electricity    �               �              `@     �              `@     �              2c     �              X1::chp::gas    �              X1::chp::heat   �              X1::chp::electricity    �               �              �o     �              X2::pv::electricity     �              X1::chp::electricity    �              X1::pv::electricity     �              X3::pv::electricity     �               �              B�     OHDR�                           ?      @ 4 4�              �            �8             shuffle            deflate            RR                ������������������������P        _FillValue       ?      @ 4 4�                               �D    
   is_result                                           P       DIMENSION_LIST                                    :        X^�oOCHK    H�             �     t  REFERENCE_LIST       dataset                                       dimension                                                                      �            �|c!OHDR�(                                                         �        �8             shuffle            deflate            �Z                   ������������������������P        _Netcdf4Coordinates                                        @   D    
   is_result                                           `       DIMENSION_LIST                                    :           :        TX�wOCHK    �             �     t  REFERENCE_LIST       dataset                                       dimension                                                                      �L             �Z
�OCHK    U�     �       P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                          ;�n�           J             �L            ���OHDR3         	       	                                 :                  :        8             shuffle            deflate            ^     w            ������������������������D     
   is_result                                              �g]8FSSE �7       �	     �   	  �     �     �   �     �   C� x^d��Ī�������������U�L�^2>y���tT  ��XTREE  ����������������                       �Z                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           x^c`�
�?z�8�;8  Y�TREE  ����������������                               �d                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          x^cggfgbe�`�  -TREE  ����������������&                       u             	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              OHDR�         	       	                                 :                  :        8             shuffle            deflate            :u     	           ������������������������D     
   is_result                                           P       DIMENSION_LIST                                    :        ���OCHK    ��     0       �     t  REFERENCE_LIST       dataset                                       dimension                                                                      *r            �vς            Z�*8OHDR�         	       	                                 :     0             :     0   8             shuffle            deflate            �}     	           ������������������������D     
   is_result                                           P       DIMENSION_LIST                                    :     1   N?	hOCHK    ��     0       �     t  REFERENCE_LIST       dataset                                       dimension                                                                      6             ��             W�             g�OHDRI(                                         ?      @ 4 4�              �            �8             shuffle            deflate            ��                   ������������������������P        _Netcdf4Coordinates                                           P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                           `       DIMENSION_LIST                                    :     E      :     F   ��4�OCHK    �O     �       P        _Netcdf4Coordinates                                        K   �=�U                                 x^cg��@�`�Е��R���"�b�H  X\�TREE  ����������������+                       j}             	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              x^�b�a��gc�a��`�
�a ])^����������.� �+�TREE  ����������������+                       Ņ             	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              x^����e��`�
�a ])^���h�`mck�.� Ȓ�TREE  ����������������                               (�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          OHDR�         
       
                                 :     G             :     G   8             shuffle            deflate            B�     
           ������������������������D     
   is_result                                           P       DIMENSION_LIST                                    :     H   {��OCHK    ��     �       �     t  REFERENCE_LIST       dataset                                       dimension                                                                      (�             ��q�OHDR�                                                 :     ]             :     ]   8             shuffle            deflate            ��                ������������������������D     
   is_result                                           P       DIMENSION_LIST                                    :     ^   \���OCHK    �     p      �     t  REFERENCE_LIST       dataset                                       dimension                                                                      ��             ܚT�OHDR(                                                               :     �             :     �   8             shuffle            deflate            �                   ������������������������P        _Netcdf4Coordinates                                            D    
   is_result                                           `       DIMENSION_LIST                                    :     �      :     �   �KZ�OCHK    ��     0       �     t  REFERENCE_LIST       dataset                                       dimension                                                                      *r             �             F�             ����             x^c` �Y f�� /�� !8TREE  ����������������.                       r�             
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              x^sWW�_o�lǀ���0��j� &:*"28$4,]  ��	kTREE  ����������������H                       Ш                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           x^VRV��������� b؁v���J������������VV^QYU]S[W߀��,  	�OTREE  ����������������&                               P�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          OHDR�                                                 :     �             :     �   8             shuffle            deflate            v�                ������������������������D     
   is_result                                           P       DIMENSION_LIST                                    :     �   YO�WOCHK    ��     0       �     t  REFERENCE_LIST       dataset                                       dimension                                                                      6             ┆:OHDR�                                                 :     �             :     �   8             shuffle            deflate            ��                ������������������������D     
   is_result                                           P       DIMENSION_LIST                                    :     �   ZQ��OCHK    8�     @       �     t  REFERENCE_LIST       dataset                                       dimension                                                                      �             ��             FrlsOHDR(                                                               :     �             :     �   8             shuffle            deflate            ��                   ������������������������P        _Netcdf4Coordinates                                        "   D    
   is_result                                           `       DIMENSION_LIST                                    :     �      :     �   -w�OCHK            �`       DIMENSION_LIST                                    ��           ��        |��OCHK    ^     �       P        _Netcdf4Coordinates                                        K   �y�   x^``��g� b``�`��̙=k���� ��TREE  ����������������                       ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           x^�a``�bf �@ � TREE  ����������������                       ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OCHK    ��            �     t  REFERENCE_LIST       dataset                                       dimension                                                                      P�             õ             F�            H	�EOHDR�                                                 :     �             :     �   8             shuffle            deflate            U�                ������������������������D     
   is_result                                           P       DIMENSION_LIST                                    :     �   &9ڔOHDR�                                                 :     �             :     �   8             shuffle            deflate            ��                ������������������������D     
   is_result                                           P       DIMENSION_LIST                                    :     �   7�iOCHK    �5     @       �     t  REFERENCE_LIST       dataset                                       dimension                                                                      J             �L            }�             X�OHDR�         0       0           ?      @ 4 4�              �            �8             shuffle            deflate            ��     0           ������������������������P        _FillValue       ?      @ 4 4�                               �D    
   is_result                                           P       DIMENSION_LIST                                    ��        � yOCHK    ��     0       �     t  REFERENCE_LIST       dataset                                       dimension                                                                      6             ��             ؛oR          �j2-   x^a``�bf �%@ �TREE  ����������������                               6�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          x^��a�111+++fff��[�� >�.TREE  ����������������                        ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           x^a@b@`�@�,;�o݆� t�tTREE  ����������������%                       ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           GCOL                        X3::pv                               X1::pv                ��                   ��                   ��      	              �1     
              |0                   |0                   ��                   f�                    f�                    ��                   C                   C                   V4                   �2                   �=                   �=                   ��                   �=                   Ƚ                    Ƚ                    ��                   C                   C                   N<                   C                   N<                    ��     !              C     "              C     #              �5     $              ��     %              ��     &              |0     '              ��      (              ��      )              ?     *              ��      +              ��      ,              C     -              ��      .              C     /              ?     0              ��      1              ��      2              C             x                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              x^cc`cc@W�^�z��2333�8��0�E� e�TREE  ����������������                       *             0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              OHDR (                0              0           ?      @ 4 4�      ٺ     t                   �8             shuffle            deflate            �O        0           ������������������������                  �
�oOHDR�                                 @             �            �8             shuffle            deflate            �                ������������������������D     
   is_result                                           ?       units                hours since 2005-07-01 07:00:00;    	   calendar                     proleptic_gregorianP       DIMENSION_LIST                                    ��        �&��OHDR�                           ?      @ 4 4�              �            �8             shuffle            deflate            �#                ������������������������P        _FillValue       ?      @ 4 4�                               �D    
   is_result                                          P       DIMENSION_LIST                                    ��     	   �_dyOCHK    >�     �          t  REFERENCE_LIST       dataset                                       dimension                                                                      �             P             �k             
�             ��             9
             �0�OHDR (                                         ?      @ 4 4�      �9     z                  �8             shuffle            deflate            k                   ������������������������                  R�           zJc<OCHK    �6     �       P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                          ��              x^c`���=�  �+8�TREE  ����������������                       m             0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              x^c`���=�  �+8�TREE  ����������������                       �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           x^c`���� [O�FHDB 7        ��Q�       
energy_cap9
     �       carrier_prodc�     �       carrier_con*     �       costB     �       resource_areaA<     �       resource_conOv     �       resource_cap]8     �       carrier_export�z     �       cost_var�x     �       cost_investment}�     �       capacity_factorK�     �       systemwide_capacity_factor��     �       systemwide_levelised_costW�     �       total_levelised_cost��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 TREE  �����������������                       �+                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           x^S�`~�ƽ�%�e�������l|�z�y9���oK61(�	2���o�P��9�k���oL��b����Uo`ǫ��;z+O���󻐵O��a�9���5�^53Ly���'
	s���g8<Y��U}����F*��s~���Oo��K�f~�q�1�q%f�;J%�9�_~{�gL�r+(,scH/l�
(q {{{	�0@( Ɛc�TREE  �����������������                              �>                    0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      OCHK            �`       DIMENSION_LIST                                    ��           ��        ���OCHK    ~�     0      �     t  REFERENCE_LIST       dataset                                       dimension                                                                      *             $߼�OHDR                            ?      @ 4 4�      r
     �                   �8             shuffle            deflate            y�                ������������������������    'O     ^                       �3�&           *            �dOCHK            �P        _Netcdf4Coordinates                                           P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                          `       DIMENSION_LIST                                    ��           ��        HiOCHK    ��     �       P        _Netcdf4Coordinates                                           P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                          !�	H      ��             B             � �OHDR�                           ?      @ 4 4�              �            �8             shuffle            deflate            �}                ������������������������P        _FillValue       ?      @ 4 4�                               �D    
   is_result                                          P       DIMENSION_LIST                                    ��        R�M�OCHK    ��     @       �     t  REFERENCE_LIST       dataset                                       dimension                                                                      �z             �F�D x^��	8T���OY�lE��)�=[di,���6c�1�,-�6SR�P�k-�0�Rɒ��R�RII�l����m��}������~��{�9׽�{��mI\�=�?777�@���͍H��n`%��qVXzK��qU�,W�-􇬰`���- ����%(��,2�M-����Gߏ�T~9��`�:H^��t��W]u�Յ|"�3�ΨN.�e�E����U���s��IE�1��%On��q���t3#GU7���6��%��Vٗ�$�|��,����g�d����n
U�RL���ȏ�^"`�2�9�ywq�"�m�uy�`6�� ��Q��_54� tz�:��uq�I�������]��I�mKs�JmG�j눌���*StV�G�)�x���@I���_7��2���w��P̯IJ�]�)
����g�m�����K�'���������{;p�3���`�5.IǏ�Շ�l(Ӌ3���K�' p2*�C$�n�Ghbk}D;e�5�� \�" A��t9컭U����>C�K�Gr�M�f���4�Z�耂�d��K�vĜ�v�4�z��+�o����F@������1>c�\��N��4�]�v�JC��_'���Y�go{��fx�y����T���J$7���(��A���X���F�FD�,�
7�Ϭ��7}�{8�r����:b��QQQ<S"A�	�H�[�t`�HGӾ������W��C�3�r������`���tU\q��%[2��{ć-d��l��.����m����%�R����$:W���8za�y�f�������{r���4k�O0�m�-����:������� �wAvt�_�uO�<�� *�������N/J�"8��s��L�u�Κ�-�^�y�@~W�\��4����V �=���r��!�i�g��h��M3�}:'��i��v u H�T��L:���Βa�x�����W](չ�4���	g���3E�=�U�J�l~6��l
	����DمB�t<zO�S �(�c��]�
ۤ�(��g^^�)z\��`���T{7�z���z�%@��A� � ��W�+���uC�ǋ��p}(�C5�Y�4�ڛz=@�pE���i��4��Ma�:���!�׸��KJP�-���vdb_)@���t_)UQW~��ؿ��n#�>ߛ;��$9���{�T'*����U�$�D�n��>ҝ��f7���o�{v���ڛ�)�}����w��]�=n������=��6H4ПR��������uY#���De�WZ�4Ӳ��9l���<��H�*5C6�)�Zn�.��
������R�}��`�8~Fc*��'O>�S�N>Pg��q��%cgneY�z�q5'd�xqp˝˕�˱� �CTPm�l!��;w.���u�ܬ	�Qb�P
�*N�<�W&T����	x�5z�`� u�{;��ճ���p���A2�9���(�ƦS	f1��
@����gȓ=�D�uq�m?N�R�sR�~�.[�o5T�e���%rm��Wk�1�dԉ��2�㧒��OY�n9��:�rN�i�H%E��V��p���`����T��2WWWW�Sf�F� $��0��%!��TX�P���`��__4�NF���ʪ�>q8��9���f����gv�t
�6���ѻ��e��Ǆ�W����-�ը�$���R��cG?ߜ�/�<jw���?	����[d:�J`�rg$�&xkt�Z�Ì���}v�z\�Z�O+�����~��+F!=AA^���V\�Q{�cK�s9J���r���[���{5�6�ȭ�cnb��"���y��}y<�2&�S�Jn�T�d��M���aZ����ӵܺ��@g��g�٭iuW�bnA?�8���;�������ߑ�2��������Z̙�K�)��h�NN~X]�!*҃+W��ho����ɳ��QC{7N�r��'=�n�I���
W�7�ёYR�sA�,��a���I��jCR5E��6���_M�}�OQ�i\�A�����-򓡗��1�
�r��#ٺ�;�{�!$s�� �q⏃�"ǽ0c��V �=DM�C���CD?�&Ug���x��KC�������q�v,�b\P����������x�gݰ��G��sb����A|��/~e��K�l~09�v	B���ސ|0(���0���W��$2l}ȹ#���גPRa����q7�Ӑ�}�{tkzw�����C�r0VD1"Cu�c��X�&����T��lDڎVz.�b��C5Zw6��Fj�繏��<S�9�7�=+^����l�lC��O:�Ń�o6�ޡX����D��_�ޔo�e�ʾR��*��!��0����p�yğ�3�}է$�{�5�׶�����vb�rۅ���K��ֻ����t#���������U�����cz$$$Z�(�[M8#��sc5�����A!�|��~�+�g,���͝_�|T Ä��P3�Oe�
�s�&U�Or�QD��{���S<6A�P}ܿ{�cLN)�k�Ƹ�fS�k̮� ��g�I��=-U�X?E���Sv������YPm�l!�г��uu�3C6���`-p*�]>�c9*�����䷆^"�W@h�@�>嚎�ϗ�F���zYfo.��`�,��-�!Jl��N+,�Z=�J��h�k�5��5)NĞ�8�څ�����]X��Q����6
ga������m��\�>��|j�$���l�2z�3/i��Q8�!��	�ֵ����555yJ�.�]E"M��Q���'��]Ü�S�}�-�3*z�!�����]�aiR�m�e�L-uȒ
�@�[[O��h�f� �c�UR��!���j4^��VK:\k�(�G�̼U�զ��=d2�.R�k�7�'�o(�z�*O�D��hx�ѷz���ӑ�������G�S��7��VW��9jǉ��b��-�p���g�<����6rʦ���}<�+څ�S�
�>�}n���@�"?j`�x�癛��W�8�z��o���n��u�o/|��6�A��0�2u)I����I#d���܁t��]ǉ˖��JY��� v�:Ӆ;4�}:
U��������[3n�XJa�T�i���0'��r#�M��������1O_����̂jf�jI_:W=	C��3j �M+~wV��.����@e���̿>�_�%���W@�攲گ����ˬ
�7�A42��
b�a�hZ���"��8>P+--3b(H���۫�Ĥ����:�e	U����Hv	;��
v��5��h��h>�W�w�"��jdү5л*��*������J���C5����C����۫�Ǯ�>�D��t�%5�����{A�K�~Y�[,�4h���Iq�R���{?O���M^� �#���vDDJ���L2���F���Mϼ�1�H�	F������Q�T[ܯ�뻴�GTT�K�l)��Do�F7Fo���!RaOa�`~�����8�q��~�^�7R������V_d�I��Q��G��6���e�z���Rd[���v ��W��'�V��P͕�~^��X���5�u����loo�@�������� ��������������������Û��f���fh�"�u%=\":b�F�Y� ����+�^^JZQ�� ���Ӆ������*;kkk����7���N�$����y��v������v���� ����K��q��چ�B�KL�x��=˶5T�ʺ���:(�Cw�AP�������K�m�hz�O}Ȩ,vw�����213B2�90��? ��Ԓ�d���V �=d��������&%YI!��ye�-j
녹'Cekeee�#�H$��O��O��ζ;�}qqCn���Gp���lG�l~�	Iɬ㥷���C���rw'�݈nH�E������s'y�]�X����i��j׈�d��� �p؍�7�0�`�]`0�`p����P-��77���ˣ�i�U1f&X/{�*m�p�/�Q9v���>x��a$:v$8`�8��Î!>H>4����H(k�a0:jJŨ��iX%�u0��[6Ɋ�-��*,,�\�G����Dt��[�hmceie�w'��\�"�h���iyv�D4�3u�L֦���=�m�-�iGҀ��}4������̏�5�S4~�0�����<U�L-�����������g����?��g�/О9GtD�&ұ ܅\C���<�+�{���ܱg�W������mtZTREE  ����������������?                              �Y                    0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      x^��	8T�����RH�]�5�	��5�`�%fD�����Eo��M�eW�(�奱4dϖT�s&Y�|o�u}�q���9��<�Y�s�b�F2�`�ƏI`�L���.�;�U�g�ɴL$�9є;�
�{`5<��z�ؽW\<���n��Ӻ�(�g�-钊�U���������9�Va׭����=2$L������T���=/��Uq�%�`쐨n��\������Ԯ��bIz���Y�τ9������q��x�����W��|����ӵB��n.�x���7���Ɩ��
�E#$dUg�+�W �8X�T/�E�G��wD�>���*M���T��V����=\�t">u �<�&�&��S�N�w�cR�D�{	�w(�D�>7�b�� �&��f���c��'e�$�~9Y�g�qaucXzo-��fd�HAG8��� ���A�b���w��ff�	�����5��o�g�N���`Z��T�~f��#m��2?�2�Po��S�F��Q(�qw�q������SH?%-˗���F�5�M����<2��3��Ed�,hك bf�mKe�dT���L�v�:l�m�p���#�Nj��V�/\)�h=�Z&Y�^�G��Vw�Q����ݺ~-��G�`�����02�=B�=_��1g�Hn-�ϗ��/쪻rK�m��۞-�D�B귇���s���h�Ҫޏq�Wjf�N��ë|����@v�XQ=�"�K�3��p}*�� ��b�b[�L�*��tբ����'7�^Ms^�������yk��sR�����m(((^�*�"���?;�X'�x(�ׯcr˦W��iԘz�;������d���)��|�(F��$fÉ��`d{1�fc��9W$�U5 �K'=�������.ZȔz?A����o�B�Һ�Ň��ot{Xr��g�5��b�\Z�]Z�Tj� ���ıs��B�r�!��s*P� �1�����d7�c�����({A��4P�w�b��{�*���A(��d�/�҅̚�L�WOD0d��h0\h��n����x�p��Py�6.$+!6ٌ����+��@e����3��$�)��j�{�^��O����R��6����|������=\*��"���DD�=�&�|��;�<����5��}#,�_�~�X�z'~�3��5os)w�p�!Ig���&c� ����Z�ir�$#7��(ޛ�m����~�d� ���kɃ��dF 980�iT���:$���\HrkIz���Q|[�2r���\B�PZz��|�z��3�Ɋ]��Z��!N*@���#��A}l��;�i��r�aA{TQ������~�I+:1=�OXi�ď�}O�z����"��U�����],��ퟣQ�V|�4&22���8#�3Ej/nu����o���RaO{^�F<��[�c��w[�a�$i/f��F����`��6i`۰EX�/V�����c�
X~�5["��ڗ�,�9a��r���5z�L}�%�<-���էR�n^��~�%9��@�Ѿ6��9���s�Is�B��x����Ir�Vc���s�s��M�{�� %:r�>���:^���An�i4 �R�������8qڠ��#�~0Y��4�����[�T+	sg�΅S����a/P��_���ڿ,n�2KD{��b؃_�l��.�I3x"���a$��T�=�Q���^.���޹�"ݻ|���l�v����R������`��p{��B�I��|�=w��,��w)�߼<��o��C���':ò��OaF<'ZJ^�K�V���Ƥ����~��e	������ ��Bʡ�>�����g��q&�Rv����C���� T��ޥ)U<W*/�+�e�/Jrk��؝h�qk��}�����"�F�f� ��<0�)s�&K������@?!}5�qv� J�.��ѣŃѳl���7J��ݧ����3X�+��~�.���+S�ْ�C~��BʤzsC��s(�TO3�����i�9}쀢�q�������ݓ�֙�a�����������Z�p���q�*p��8i���ýB�p�8�<Nw�A��V���P倖����,���G��,Z�I��tk���*	3G��4�a!lN,	h���'�&Q3�h,W;K�Ob�{�6�-�w}S�E1�Ѳ��E�SV��
m l��x�i=��]v�\9{�����Y��8��!��S;U���/ɦO������y>�����bMS4��+�����u����LC.�g2����R�)�A�f�ɠ`I�s�47��X�� 9���إ�/�7Wi�ʃ�}{�mս�g���n雋��'~ens�!BC-LO�0!X�Kx:6-�iydo���~�|�t��=�P �iǾ�*�f<Ι�����Χ7�þ�������}�Ӄ+w���6m��M`�Ph8�[��?Y)�u�Z�6#2� T����� ������y�Crk)�Z
����P���3���_]�>Ό�����<�I$\��������j`����q{�S�U�VӘ���kz��L����rȳ6l�C`4�.�|F�	��-��U8��>���WE�U������K��?��B۲�o800�>���I:(
\�z�P�GU�.����{#��p�J�+���G�r�)��"��c� �	�!�@p� �XB���Β��.�\t�����5c�r���"(�k��e�N֧��]I�]{}���7��xP%�w��\վ;-U��q-�N�Y���5ĝz��U�U��by�> �B�^IM>*e+�P�tL�!@��$�]�\�l*����d�'�>���[�+�\�˕E��o4�\y�z���Q��'y��ɑ�e�3/��ӷ[���7�I^�E�)x�0��'n����`BҖ�'{�D�&`��=-����:�������7���*��ś[s���t�Q��9�4�qyd_�2)Z�|Wb�����eL�=U!)�pJ:(͓S�¢�%����;�����Z�g��st�J]j������H��<`��JAح�ג-+C\�(�8Ё�{���\+`����GHn-F�K�L|�e��9g��{�.�N[������Tr��%.K��z�-I����3�ζʣ^�ݑ��Ύy�1��%�.Ŧ�&���~nOV����iG���b�e9�Ç�W��-\�}="���qw����:4�'p��E�����_��4�>�s�@�5ǆO�߄��
��
�i��m�����4>����*|
Z�'�8�':���х��ɞ&�w|�@1 �hO��.����Zl����A���b�w�\�Y� �^�)<(���F�ݰ�Aņy�A�#���x�+�.�0LUuUuĀ?�Ruw�XL�$�n�! ������g�b��Z�ݡ�l�������r�c�7v�O%"�2I�4�9�&�J=XCw�����w��|�[�9s�`��Ǡ��_8;(�=uI�AW⏪zNٖj��:p���iJ�ƞ_�hy¢]M�f���<�P�P����+�wL��
�OskoS<S�<2v?��Iσ��5��Ϡ�c�$��s ���:�4�k9���!���v���5uo�gc*s�¦@�Q�mz\�3���0
~�Rv������2s�/8��������XK��]�Q�9"ɭe�c)�����C�3�s�=��gԱx:zM\σ]��uunf��	sM	 "���i�b���[�L�!�N����:���Ph�����9�]i�@�:���rB�:yx��Q��Z��y6�#\�V�+www�_PHHt�; E!A>��h4s.0�bP�����@��t�Ǩ��,��R}�<;5;5=�1
���~-�H)�H����������������icj����t���A8������>�oc���domee�t�	mbelױ�G"`q�	�V&ƣ ���3� z���������(��
���cc�^}c}�Z�����PW�J����������G z;��;��,|��\�Ead���(*((rq�򉈑�;ݏ���s������1�������tAB��bgf�S��;tB89:�<�����pyd��������&��ⶄ* ���3ԅ=}Ck��⤥�I#[Gw{3#Ko'�����1������1������[ׯ�Zx��&Ѐ�U D`�utu�tu����DI����]gggw?q``�8��Ç��q�`L���A�OV�g��e��Y����(Hn�����;e0���C�������`�++e��;�UY��(Hj����_ �Ͽ�f�a�*��s�G�֭x8\��#+^)�u�Zʗr�I8��,w����s��TREE  �����������������                               Q}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          OCHK    ��     0       �     t  REFERENCE_LIST       dataset                                       dimension                                                                      ;M             �             A<             �R�OHDRI(                0              0           ?      @ 4 4�              �            �8             shuffle            deflate            G�        0           ������������������������P        _Netcdf4Coordinates                                     
   K   P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                          `       DIMENSION_LIST                                    ��           ��        ��ٌOHDR8                	       0              	       0           ?      @ 4 4�      rJ     �                   �8             shuffle            deflate            ��        	   0           ��������������������������B          *            Ov            B�]�OCHK    �     0       �     t  REFERENCE_LIST       dataset                                       dimension                                                                      `K             Ov             ]8             u�tKOHDRI(                0              0           ?      @ 4 4�              �            �8             shuffle            deflate            ʢ        0           ������������������������P        _Netcdf4Coordinates                                        K   P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                          `       DIMENSION_LIST                                    ��           ��        ���                              x^SR�b��������b_��S�~��9W�@-��oU/�ZȬ?�4UwNy��ȭ9���\&��]�]�$j��]�!�sۅ���B���c2�V�eU�R�q�0,�tJ�T1�_����ɟ��X�P���O�t�\R�V���qKnpcX�иf�����=ڃ0� <sDSTREE  ����������������                        '�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           x^c`�d`ha`�e`�a`X��aS)C�� 2TREE  �����������������                              �                    0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      x^c` �嶟J�2Mb�ħU+�� ���Y-&��:<uq�Co&B�D��tD�-�a���Z���q};s6������c�D��\����/gr�����f� �_�nw�7�V��~ߴif	�����ow�Ǿ��!�h&ٵ��U����pw�ŷ�ؾ�Lb)C��Z���b_Z}+=��~M>Ϳ�1B�D "ȕ�U�J�����$�BϜ��y�5_��y?g���RLΜ1aH=�Ț�Plӌ�&3f3�N[���� <3�:T�%� ��[Z!��źO��l���mI�u�D���3�ig@L��3�	�3i3��$Hz�s-,`s7.���9!^�Wz3�m�,�w�B=� $Ҋ�ϼ���� �{$n�\�d��p�%�}eA��k�{+�}���^q���k+NI/�~'z�.Φbl���doaf��čPϦbhn���dc��$�x!A"�ִptuww��13TD��h��9�{�9Y�K�ހ�;� �zTq{�� �\�`�[���TREE  ����������������!                       ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OCHK            �`       DIMENSION_LIST                                    ��     "      ��     #   ���OCHK            �`       DIMENSION_LIST                                    ��     1      ��     2   ��c�            *            Ov            �z            ��jXBTLF �        �  6 �        �  7 �        �  3 �        2  * �        \  ( �        �  & �        �  # �        �  ' �           �        2   �        Q   �        o   �        �    �        �   �        �   �        �  ! �           �           " �        B  " �        d  - �        �  , �        �  ' M+��                                                                                                                                                                            OCHK            �D    
   is_result                                          p       DIMENSION_LIST                                    ��           ��           ��         �&�OCHK    N�     @      �     t  REFERENCE_LIST       dataset                                       dimension                                                                      ��            �            }�            ���IOCHK            �H    t  REFERENCE_LIST       dataset                                       dimension                                                        
       
       �n            (�            �             %q             c�            *            Ov            �z            �x            K�             F��[           Ov            �z            �x            �g#jOHDR (                                         ?      @ 4 4�      ;                       �8             shuffle            deflate            W�                   ������������������������                  s���                                x^ce�w���!��3��d�^ɰ�Á� ~��TREE  �����������������                               �                    0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      x^c` tog`X�.�t�<yv��;��`�n��U�n�ȫ���8+��`�.<*�`�El��x5tA hb�eb`�Cl�q5� �a~b��b𧟵_�A�"�տޡ�6����`�.�F�N��88 1� H�J�
  �8#&TREE  ����������������j                                      ��                    	       0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              OCHK    N�     �       �     t  REFERENCE_LIST       dataset                                       dimension                                                                      �P             m             �o             ��            W�            ��4\            B             �x             }�             8���OHDRI(         0              0                  ?      @ 4 4�              �            �8             shuffle            deflate            :�     0              ������������������������P        _Netcdf4Coordinates                                     K      P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                          `       DIMENSION_LIST                                    ��     %      ��     &   �:�OHDRI(                	              	           ?      @ 4 4�              �            �8             shuffle            deflate            �        	           ������������������������P        _Netcdf4Coordinates                                            P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                          `       DIMENSION_LIST                                    ��     (      ��     )   bRe'OHDR�(                                         ?      @ 4 4�      -�     �                   �8             shuffle            deflate            �                   ������������������������P        _Netcdf4Coordinates                                            P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                          2�5         x^��{4�iǟm(&m$��H��.��(Ԋ��B7GK�mH�mN�-���2D�[ʄ���˸4��\ri�<�gf�ݳ��������{������+��c�B�933�Tw����8�̡�~*�R����IW��D�n�������}�%�:븊K�=;\�6u�xcTţ�A�����A��g|��	�/�b�D�^���s��xS�'�x�I
��xXax\'�B/������.gw�����/�uѫ�~�Ty쎢ш��h��#l]sC��Ց�D-��Ƀ��l�X�u�J�r���g
Lx V�]��W��
�@pR��o?�I�f�|s�RQ���-/{(�����Z�9�&ê8�4�PpF����G���wG��X����O^���/�|J��p}1��wՑ�iHoY�U��4v�	�B3����'��ᚼ���
�ۯ�$9s�_��L�˵Z~�ӧA�$A�%���Q����#ZX�2�w&��{O�ߔ6�}�f�+ ��a��#Ă�+欓��ׯ��HgrRr�iˎ��T)��c[��ި-B�cPϝ���KM�<�W�g����av�ыg�#<�̓7����>����4���U1�:s���5K����g�CU�#�����o7�y V^�E��E)�w�	%\��$�Ts�]	�CMV-'v�R�C�ߚ�@_$~�^�"��f�A\o�"�b7h�+��e߼6�@<�0|_d��p2���1W�.�M������(V�l��D�/��y��=�-��r��(�ξKF�<\^��#��g�<�c~�Z/�Ꭰ�I�!hi�Y<����8�#g����޽�� J��R�af��TlA��
�goW���WVVη�d?}$�I��@�jp�����1�?��]R�ޚ�L�#���s��ˈ�GnI��	S���Yu�<+�7���]�������}����q�ˌ�䃂�ʹ����B�5�����������{��$	�;��.�v����4���vA��Ӵ�i�	��3�!����
)q�H/g���]��5İ^�&��x���ס��!\HMMr-��qRj|�a�կO�dO���L��[�A?lͽ�/"����$_1�~�R9��,�����ۃ4��M<+_F06�+�H&��@W���'��4��f�F���{1�㷞.荌6q�l�u���}m��G���M�ƶ�q�E읠>�ӣ����?q%s�\j��=-V�ԉ�HDi��c(!!���x��J���a��s���p�<����61��e�K�
�%s�U=�>�PT�[F���0^%�U��̒D%57��v�QH�o�$ oI <+�K�R�GYSSS,s���{N��`��i4Z����ɉ�ct|z��;�<FZa2G���_����Y^#4>=����,}R���%�F|�Yx�Z�>��i�4�
�����Os�R�I�O�I����&##�UY�H$jh�)��R�$�.�m򲲲���Z��ԿQRRVW�^Ci;2�:ne7����!�����Q��S_"�V�����/�;W�7�����_@p�$�L�;� �瞅��d�9�z����0<�5y� ӫ����R�Q�TREE  �����������������                               ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          x^� _�"c}��.F��d��� FEd"���V�&����T &T������g�x)��$� $#)�S'�g���D��D ��Sa�rs�:�m�Rd	d �	Ra��<��u;��� u����I �H2��F]�F ��ج�?@@??@?@>??@?? ?????,�FTTREE  �����������������                              r�             0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             x^��w\׶�W�=�h��,(*�!<��(��h@E�h���XPk�bP�r�B@�A�!`,tD:CU���w�='���r�?�|سg��3��^{�i��B�q�L��Z���a�ϩUL�f$��N�GN�Pw��	x��,� E*4��#�S�غSG�=�~X����=\y:�p/�\�V�MK�4��7����r?$~�)��Z �@��ex�$C'�.f�c��i��@��|4����%P7j�q�'���a�S�)��WGmS,=�p�����d����,�1<�+���Ba����`��8�nz�M��{8������L?������q/�\��<�g�m:�0���#�EѪ�A��F��pc�H�b0�ڧ�͇s�IW��/rY�9�/���Nq�ѐ1(4�6>���z����Im=�vCC34,FkWQs�7�@�F4<`R��N��8{!$ya��T4Z�a <��wuo�hX��*MŤ�ۅ���_'YT�F���{�u��N=��q�{�wk���wM�ك�-�A�ڹG>�r�%��>��˨����N�$��/?��L�r�x�*�g������;���U��h&"iM��Ef�y�ۅ�W]�h����a��ހA",:v�lF��w�G�m׾�Ӎ�<�R��4���&g���c��ك}3{�َt3��ܠ>J̲���/Xr$|3l �#5<�n�Za�C��{(BXҊ�`���ѐ�j��. h\no���9B�E��ס��_\�v}�:#<}	'�h?*�{5/�.NK0_HVP�6?�88�E���_��:��I��u�p�S�	�N�T�q.8j���bf��|�Zec��4��h�Zv3�E_(W#m�Xd2��t���m�	zm'Ӡc5oM�"�&�~�])y/i����W��E��L��R�����C��	
l�"P��Ͱ�H�eK\���`(*��ku�=�����I��\C#�"�0��7�b�	Oq4���Lx�I�N��
a�6�����Ԗ���U��ĺ'�+Vd���3�v�P� ��p;�b��i!��|M�:�� ���5�����N��"` ��]\��N�X#���R.�Y�u� �I�Ďp��	�2��H���=��
�©?����u�Mqb�R�O�����ۅ'�pz�xBrA�i2�|���B�l+n҃[���v痢%S#��dX;�aL��1}�odZUh�����������PЏ�y���_�8-���Q�f!����xis�D�<��xP��\-{m:�� {,uŘ3���Lq�t�$w�	�-��Y�j��XSf���\���޼X����L��}X��/i�t�ͻe)j��Ɨ��!���44��1p�F�;[����>����n2Q�f�)�����^�<�İ�bi�}��4K,<0oupj�Y����,�v���KP����|�u&���#�P�@�
s���rע��wr0�Fj]��_0t��T8�@��@  ly��Q52�0u30[��u4h@�� [�=�e��Y�-�Mx�e�zO������~�n=�2�t�'�y�6"��	�<M�x�l��a'JX�bTI�3�|,�4����p
{��[1�s�2w
޹-Ʉ'�`\� ^ς d�zc�/C-|y{��o�����/�`g�vy�RK�������ֳ�H�_��*y�j(4UC5 Q�l���(�f�`����c	s�lvϰD�1�|M�#�K<�p�1����x�v�2jY����.^P�F���]�A^8߂<�@��Ԏ���x3�Z}^W@� L6��c�)��C�3@M-��a'`�3����N(��M��Z��;1�+���1fQ�i�q�k�,�O5��Q�]l��H�9�<����d�"/�4��V,2�x\�%�1���I�dK[�|��-���dGHG�&r�^ב�A�.�b�4"sI�OV��[&�9u��JL�R�K�a����Vh�: �� ۂ:�>9
�9o~ %�[4�QJ���`�~0jG���0ʅ�v��(z��v �gh�D��p&��Pf�C3��pm2nr�А����"WS�9��S:]��m`'	�a�e�ο�I8���  ?�5&���!�������g�KP��2���~>���'�΂�{�b(,���#Е��4�����ď�b��8��t$�d4>Y��#q�Y�z:�I8�*�f
Z� '08̣UmsJ9��s�V� �	��K���Ć���a+<#�X���CՑ��SP��ǰ���-�ч��픛�GL)&�z.n���mV�I�+uW�Àʋ:��aX��!��5@W6m.��������.��E~͠�qMl[���K����L�6���0��\k��1V=�0��Q��r��y�R^4�XCrh8�}��6��&ȡ���,�(�r{k�/����w���b�;(��5�p��h��à� /�HȻ]u
C�+��'?�l\{
'|#$9�l�7'���V"[���؀F��b��ZR������az{�P9>�	n�Ņ�r51��=�^;خ3n���&�,�Ja�9��~1��Ń��}ǡ؎��S�F����A��~Elbۮ�	t*h,Z�l�o�nM��F�5m?��*:\ay�,נc-kɳ��%�����"(�'��ʎ�_S�����~=�'��_`^��~�%� j�e~,���� ^�ƢI=,��ǁ�_�d/DL8�Ґ�tx�q�"��ƊyI�+xqbW�#^d�4z��
~�f_2d/s�&�"��=Y:>����PT�����%z��>T�BJN��6 �#Tb/�yH݊&般�P}Iޝ�8�|p<R�������b��pd�~��	(T��P%����}h�U���*B:�q��߷����X3�tHG#)=vot���" _q�	�Z�-)�ѱ��9M�m짱E��?���fM�.|���{�����b��1�Gk�/��S�;t}�t��j���gN<�e�ڄ1ʮ�RK]z;l�|eb>��~,t���%����!���i�TXjY�v�V��T�����VA)@-�l�HL9�bx
/8��P����8��smd����S�T"�7�k��{=��ī���$�S@5\�ya���\Կ�j�\��/��k�����E..0˄B���P�B�KIH|C3�����w+�p9�Z��9������n�:��k�2�:�~8���V���Q�/99W��Ds�h���(�*�ů9_>�s��v
$��(��G��"Έ]'�5���}F����F�CS*�Ź�C�����k��P^8����d��e�&׀�1PohCY8��t�i�ƾB��bz�/�`Ɂ��X`y�f<�6'L����0X7?�U�K����cHZ�mf�k�H���о��A|�,�(.^4��;P��3�:�\a��Р�䠋J|�
8wа'd���f"�w��-�
�:"R2����M��26��U���������يR�Q�wR�@� ��"���n�I�VP����)�<	�O�_4�qa#�_ȡ�B0?��F�b��6|±��0�'�L�_riiɱ���5&�wpr:?�3���v�șh)�(���!�T��_�k��.��OPi���s��a.�����ݣ���w�)r|Z��e��0a;��bL�_D�+mљ�v����fh߄���S�e(̶~���(VMoG.��1�-�E�y
n��᏶nIH����s��������s.�(��/�/���x��B7����6A�#঎d�z�&�	����(,����;-�:�-z����-���`?�;�5'>��l����P�;�x��d�M�n��Br6�����UP�ԫ������*4�Z��6��������.Wҭ^�c��ٰ���t|`| ����!*����Q�%�6��}�C�/�h^����'��>Ul�	XOz�%�"QښITԯ���լ�|���Ëj7���s�j*��`3,�Q�h�,��� {{Q�0�4{Gn�[�;���[�[`��!�h�k�-/�E
'1��Y��:�uޔ���+�!��Vݐ�Ӻ���+��*�,�#�#���F���Ich���VC+�N3�F@�랣�;���.��#4>���A�y������w��w������D
8�c���M���~
2%^OI����{�K0K:�/��B��� [�]/�3���|<�A[&��
�GپL]���:��aJ�ʃu)UR�Ibx���@I�_/��F*dX,��B��PU#�cX.��stQ]%�����m����>��r��T�-[��*�e�)+�!C�4V,τ������Y����:O[��	��"�߮�G}�#���P��*$�P�Z&�g	��C�'�5�R��yj"L�Y/Ur������;��GRy��y�&��GA�ľK�ν��Z�J����'��E9�X�T��b�8"%(Y�ANV��#$\T����_I���q� yB����y9yB2��$SH��%�Dj�e"��e�"���^��Ž*�G(%u��6��1b�$���UO�����z�p�<����7����3d��jRh�ݓ��jk�Gg>*���-Y�\�A|9�fӢ�@ee��?ĈC[�!�t�Z�"�%�+�*�R�?
mf#�7m�}�r�j�XE,��b���UU4/��G�^�UIeҵVq�1B�$�H�| ���P�Z'I�����2� -{$e�d��I�u(�I��E��V�סF��%Y兩Ez'�I\OH��ݗ��G`����7��!0�1�=(�?��9�׉��o(���H�'(�He��/���X��_���r�ǲ�C�m��
�����?���?���#�4�ퟂ�!��O������I�e�����}����A�y~�A��cI���%e��$����:˲���2�?�w$�	W�D�TREE  �����������������                               W                    	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      OHDRq8                       	                     	           ?      @ 4 4�              �            �8             shuffle            deflate            �           	           ������������������������T        _Netcdf4Coordinates                                               P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                          p       DIMENSION_LIST                                    ��     -      ��     .      ��     /   �1@OCHK    .�            H    t  REFERENCE_LIST       dataset                                       dimension                                                        
       
       ��             ��             �             (�             ��             ��             B             �x             }�             W�            L�OCHK    ��     0       �     t  REFERENCE_LIST       dataset                                       dimension                                                                      6             ��             W�             ��             ��*�OCHK    .�            X    t  REFERENCE_LIST       dataset                                       dimension                                                                      ��             ��             �             (�             ��             ��             B             �x             }�             W�            ��            h�@                                                                                                                                                                                                                                                                                                                                                                                                         x^c �� ��![�DIBxG@D�-����|uvR�=��z"4!��A��T�`��K�A�[��:q�ָ��6@�3�``x�������s��� d�3�30����z{{0��f 2 ��)$TREE  ����������������{                                                                  	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              x^�a �� ���s�4�1L�v\�I�*�"�!�i�@�/��B!a�}}�ڠR`�� �%G@�T�6�耰7��Q�R~|�0�� �cﲉ �L ��a_`H�#��^7�TREE  ����������������!                               �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          x^���������B~����+vlYhoo �t'