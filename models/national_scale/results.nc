�HDF

                    ���������}     ��������        `                               OHDRe"     �            ��      "�      
          �      c      �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       �� �FRHP                    �n      �       �              P             R�                                            (  g�      �$nbBTHD       d(              >��fBTHD 	      d(              �FSHD  d                            P x (        �i     D       D       �Y	RBTLF      ;      $� �    L     �*% �   J     l3�- v   P  	   �J7 @   A    kW�G �   7     @�k          �T�v �    �     ���          Ûŀ �   �    �2� �   ;  
   ��    `     ���� Q    1     ʻ#� �    ,     ��N�'!�                                                                                                                                                                                                                                                                        BTLF 	     ;       Q    1      �    ,      @   A     �    L      �    �      �   �     �   7         `      v   P  	    �   ;  
                        �   J     �P                                                                                                                                                                                                                                                                                                                                BTHD       d(}�              �x5    _model_run         .�         scenario:
applied_overrides: ''
techs:
  ac_transmission:
    inheritance:
    - transmission
    essentials:
      parent: transmission
      carrier: power
      color: '#8465A9'
      name: AC power transmission
      carrier_in: power
      carrier_out: power
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
  battery:
    inheritance:
    - storage
    essentials:
      parent: storage
      carrier: power
      color: '#3B61E3'
      name: Battery storage
      carrier_in: power
      carrier_out: power
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
  ccgt:
    inheritance:
    - supply
    essentials:
      parent: supply
      carrier_out: power
      color: '#E37A72'
      name: Combined cycle gas turbine
      carrier_in: resource
    constraints:
      energy_cap_max_systemwide: 100000
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
  csp:
    inheritance:
    - supply_plus
    essentials:
      parent: supply_plus
      carrier_out: power
      color: '#F9CF22'
      name: Concentrating solar power
      carrier_in: resource
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
  demand_power:
    inheritance:
    - demand
    essentials:
      parent: demand
      carrier: power
      color: '#072486'
      name: Power demand
      carrier_in: power
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
  free_transmission:
    inheritance:
    - transmission
    essentials:
      parent: transmission
      carrier: power
      color: '#6783E3'
      name: Local power transmission
      carrier_in: power
      carrier_out: power
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
tech_groups:
  conversion: []
  conversion_plus: []
  demand:
  - demand_power
  storage:
  - battery
  supply:
  - ccgt
  supply_plus:
  - csp
  transmission:
  - ac_transmission
  - free_transmission
locations:
  region1:
    coordinates:
      lat: 40
      lon: -2
    techs:
      ccgt:
        constraints:
          energy_cap_max: 30000
          energy_eff: 0.5
          energy_prod: true
          energy_ramping: 0.8
          lifetime: 25
          resource: inf
          resource_unit: energy
        costs:
          monetary:
            depreciation_rate: 0.11016807219002081
            energy_cap: 750
            om_con: 0.02
      demand_power:
        constraints:
          resource: file=demand-1.csv:demand
          energy_con: true
          force_resource: true
          resource_unit: energy
    links:
      region1-1:
        techs:
          free_transmission:
            constraints:
              energy_cap_max: inf
              energy_con: true
              energy_eff: 1.0
              energy_prod: true
            costs:
              monetary:
                om_prod: 0
      region1-2:
        techs:
          free_transmission:
            constraints:
              energy_cap_max: inf
              energy_con: true
              energy_eff: 1.0
              energy_prod: true
            costs:
              monetary:
                om_prod: 0
      region1-3:
        techs:
          free_transmission:
            constraints:
              energy_cap_max: inf
              energy_con: true
              energy_eff: 1.0
              energy_prod: true
            costs:
              monetary:
                om_prod: 0
      region2:
        techs:
          ac_transmission:
            constraints:
              energy_cap_max: 10000
              energy_con: true
              energy_eff: 0.85
              energy_prod: true
              lifetime: 25
            costs:
              monetary:
                depreciation_rate: 0.11016807219002081
                energy_cap: 200
                om_prod: 0.002
  region1-1:
    coordinates:
      lat: 41
      lon: -2
    techs:
      csp:
        constraints:
          energy_cap_max: 10000
          energy_cap_per_storage_cap_max: 1
          energy_eff: 0.4
          energy_prod: true
          lifetime: 25
          parasitic_eff: 0.9
          resource: file=csp_resource.csv:region1-1
          resource_area_max: inf
          resource_eff: 1.0
          resource_unit: energy_per_area
          storage_cap_max: 614033
          storage_loss: 0.002
        costs:
          monetary:
            depreciation_rate: 0.11016807219002081
            energy_cap: 1000
            om_prod: 0.002
            resource_area: 200
            resource_cap: 200
            storage_cap: 50
    links:
      region1:
        techs:
          free_transmission:
            constraints:
              energy_cap_max: inf
              energy_con: true
              energy_eff: 1.0
              energy_prod: true
            costs:
              monetary:
                om_prod: 0
  region1-2:
    techs:
      csp:
        constraints:
          energy_cap_max: 10000
          energy_cap_per_storage_cap_max: 1
          energy_eff: 0.4
          energy_prod: true
          lifetime: 25
          parasitic_eff: 0.9
          resource: file=csp_resource.csv:region1-2
          resource_area_max: inf
          resource_eff: 1.0
          resource_unit: energy_per_area
          storage_cap_max: 614033
          storage_loss: 0.002
        costs:
          monetary:
            depreciation_rate: 0.11016807219002081
            energy_cap: 1000
            om_prod: 0.002
            resource_area: 200
            resource_cap: 200
            storage_cap: 50
    coordinates:
      lat: 39
      lon: -1
    links:
      region1:
        techs:
          free_transmission:
            constraints:
              energy_cap_max: inf
              energy_con: true
              energy_eff: 1.0
              energy_prod: true
            costs:
              monetary:
                om_prod: 0
  region1-3:
    techs:
      csp:
        constraints:
          energy_cap_max: 10000
          energy_cap_per_storage_cap_max: 1
          energy_eff: 0.4
          energy_prod: true
          lifetime: 25
          parasitic_eff: 0.9
          resource: file=csp_resource.csv:region1-3
          resource_area_max: inf
          resource_eff: 1.0
          resource_unit: energy_per_area
          storage_cap_max: 614033
          storage_loss: 0.002
        costs:
          monetary:
            depreciation_rate: 0.11016807219002081
            energy_cap: 1000
            om_prod: 0.002
            resource_area: 200
            resource_cap: 200
            storage_cap: 50
    coordinates:
      lat: 39
      lon: -2
    links:
      region1:
        techs:
          free_transmission:
            constraints:
              energy_cap_max: inf
              energy_con: true
              energy_eff: 1.0
              energy_prod: true
            costs:
              monetary:
                om_prod: 0
  region2:
    coordinates:
      lat: 40
      lon: -8
    techs:
      battery:
        constraints:
          energy_cap_max: 1000
          energy_cap_per_storage_cap_max: 4
          energy_con: true
          energy_eff: 0.95
          energy_prod: true
          lifetime: 25
          storage_cap_max: inf
          storage_loss: 0
        costs:
          monetary:
            depreciation_rate: 0.11016807219002081
            storage_cap: 200
      demand_power:
        constraints:
          resource: file=demand-2.csv:demand
          energy_con: true
          force_resource: true
          resource_unit: energy
    links:
      region1:
        techs:
          ac_transmission:
            constraints:
              energy_cap_max: 10000
              energy_con: true
              energy_eff: 0.85
              energy_prod: true
              lifetime: 25
            costs:
              monetary:
                depreciation_rate: 0.11016807219002081
                energy_cap: 200
                om_prod: 0.002
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
  name: National-scale example model
  random_seed:
  reserve_margin: {}
  subset_time:
  - '2005-01-01'
  - '2005-01-05'
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
  - power
  - resource
  carriers:
  - power
  carrier_tiers:
  - out
  - in
  costs:
  - monetary
  locs:
  - region1-1
  - region1-2
  - region1
  - region1-3
  - region2
  techs_non_transmission:
  - demand_power
  - ccgt
  - battery
  - csp
  techs_demand:
  - demand_power
  techs_supply:
  - ccgt
  techs_supply_plus:
  - csp
  techs_conversion: []
  techs_conversion_plus: []
  techs_storage:
  - battery
  techs_transmission_names:
  - ac_transmission
  - free_transmission
  techs_transmission:
  - ac_transmission:region1
  - free_transmission:region1-1
  - ac_transmission:region2
  - free_transmission:region1-3
  - free_transmission:region1-2
  - free_transmission:region1
  techs:
  - demand_power
  - free_transmission
  - ac_transmission
  - csp
  - ccgt
  - battery
  coordinates:
  - lat
  - lon
  timesteps:
  - '2005-01-01 00:00:00'
  - '2005-01-01 01:00:00'
  - '2005-01-01 02:00:00'
  - '2005-01-01 03:00:00'
  - '2005-01-01 04:00:00'
  - '2005-01-01 05:00:00'
  - '2005-01-01 06:00:00'
  - '2005-01-01 07:00:00'
  - '2005-01-01 08:00:00'
  - '2005-01-01 09:00:00'
  - '2005-01-01 10:00:00'
  - '2005-01-01 11:00:00'
  - '2005-01-01 12:00:00'
  - '2005-01-01 13:00:00'
  - '2005-01-01 14:00:00'
  - '2005-01-01 15:00:00'
  - '2005-01-01 16:00:00'
  - '2005-01-01 17:00:00'
  - '2005-01-01 18:00:00'
  - '2005-01-01 19:00:00'
  - '2005-01-01 20:00:00'
  - '2005-01-01 21:00:00'
  - '2005-01-01 22:00:00'
  - '2005-01-01 23:00:00'
  - '2005-01-02 00:00:00'
  - '2005-01-02 01:00:00'
  - '2005-01-02 02:00:00'
  - '2005-01-02 03:00:00'
  - '2005-01-02 04:00:00'
  - '2005-01-02 05:00:00'
  - '2005-01-02 06:00:00'
  - '2005-01-02 07:00:00'
  - '2005-01-02 08:00:00'
  - '2005-01-02 09:00:00'
  - '2005-01-02 10:00:00'
  - '2005-01-02 11:00:00'
  - '2005-01-02 12:00:00'
  - '2005-01-02 13:00:00'
  - '2005-01-02 14:00:00'
  - '2005-01-02 15:00:00'
  - '2005-01-02 16:00:00'
  - '2005-01-02 17:00:00'
  - '2005-01-02 18:00:00'
  - '2005-01-02 19:00:00'
  - '2005-01-02 20:00:00'
  - '2005-01-02 21:00:00'
  - '2005-01-02 22:00:00'
  - '2005-01-02 23:00:00'
  - '2005-01-03 00:00:00'
  - '2005-01-03 01:00:00'
  - '2005-01-03 02:00:00'
  - '2005-01-03 03:00:00'
  - '2005-01-03 04:00:00'
  - '2005-01-03 05:00:00'
  - '2005-01-03 06:00:00'
  - '2005-01-03 07:00:00'
  - '2005-01-03 08:00:00'
  - '2005-01-03 09:00:00'
  - '2005-01-03 10:00:00'
  - '2005-01-03 11:00:00'
  - '2005-01-03 12:00:00'
  - '2005-01-03 13:00:00'
  - '2005-01-03 14:00:00'
  - '2005-01-03 15:00:00'
  - '2005-01-03 16:00:00'
  - '2005-01-03 17:00:00'
  - '2005-01-03 18:00:00'
  - '2005-01-03 19:00:00'
  - '2005-01-03 20:00:00'
  - '2005-01-03 21:00:00'
  - '2005-01-03 22:00:00'
  - '2005-01-03 23:00:00'
  - '2005-01-04 00:00:00'
  - '2005-01-04 01:00:00'
  - '2005-01-04 02:00:00'
  - '2005-01-04 03:00:00'
  - '2005-01-04 04:00:00'
  - '2005-01-04 05:00:00'
  - '2005-01-04 06:00:00'
  - '2005-01-04 07:00:00'
  - '2005-01-04 08:00:00'
  - '2005-01-04 09:00:00'
  - '2005-01-04 10:00:00'
  - '2005-01-04 11:00:00'
  - '2005-01-04 12:00:00'
  - '2005-01-04 13:00:00'
  - '2005-01-04 14:00:00'
  - '2005-01-04 15:00:00'
  - '2005-01-04 16:00:00'
  - '2005-01-04 17:00:00'
  - '2005-01-04 18:00:00'
  - '2005-01-04 19:00:00'
  - '2005-01-04 20:00:00'
  - '2005-01-04 21:00:00'
  - '2005-01-04 22:00:00'
  - '2005-01-04 23:00:00'
  - '2005-01-05 00:00:00'
  - '2005-01-05 01:00:00'
  - '2005-01-05 02:00:00'
  - '2005-01-05 03:00:00'
  - '2005-01-05 04:00:00'
  - '2005-01-05 05:00:00'
  - '2005-01-05 06:00:00'
  - '2005-01-05 07:00:00'
  - '2005-01-05 08:00:00'
  - '2005-01-05 09:00:00'
  - '2005-01-05 10:00:00'
  - '2005-01-05 11:00:00'
  - '2005-01-05 12:00:00'
  - '2005-01-05 13:00:00'
  - '2005-01-05 14:00:00'
  - '2005-01-05 15:00:00'
  - '2005-01-05 16:00:00'
  - '2005-01-05 17:00:00'
  - '2005-01-05 18:00:00'
  - '2005-01-05 19:00:00'
  - '2005-01-05 20:00:00'
  - '2005-01-05 21:00:00'
  - '2005-01-05 22:00:00'
  - '2005-01-05 23:00:00'
  techlists: []
  group_constraints: []
  loc_carriers:
  - region1-2::power
  - region1-1::power
  - region1-3::power
  - region1::power
  - region2::power
  loc_tech_carriers_con:
  - region1::free_transmission:region1-3::power
  - region2::battery::power
  - region1-2::free_transmission:region1::power
  - region1::ac_transmission:region2::power
  - region1-1::free_transmission:region1::power
  - region2::ac_transmission:region1::power
  - region1::free_transmission:region1-1::power
  - region1::free_transmission:region1-2::power
  - region1::demand_power::power
  - region1-3::free_transmission:region1::power
  - region2::demand_power::power
  loc_tech_carriers_conversion_all: []
  loc_tech_carriers_conversion_plus: []
  loc_tech_carriers_demand:
  - region1::demand_power::power
  - region2::demand_power::power
  loc_tech_carriers_export: []
  loc_tech_carriers_prod:
  - region1::free_transmission:region1-3::power
  - region2::battery::power
  - region1-2::csp::power
  - region1-2::free_transmission:region1::power
  - region1::free_transmission:region1-1::power
  - region1-1::csp::power
  - region1::ac_transmission:region2::power
  - region1-1::free_transmission:region1::power
  - region2::ac_transmission:region1::power
  - region1-3::csp::power
  - region1::free_transmission:region1-2::power
  - region1::ccgt::power
  - region1-3::free_transmission:region1::power
  loc_tech_carriers_supply_all:
  - region1-3::csp::power
  - region1::ccgt::power
  - region1-2::csp::power
  - region1-1::csp::power
  loc_tech_carriers_supply_conversion_all:
  - region1-3::csp::power
  - region1::ccgt::power
  - region1-2::csp::power
  - region1-1::csp::power
  loc_techs:
  - region1-2::free_transmission:region1
  - region1-3::csp
  - region1-2::csp
  - region1-3::free_transmission:region1
  - region1::ccgt
  - region1::free_transmission:region1-1
  - region1::demand_power
  - region1-1::csp
  - region1::free_transmission:region1-2
  - region1::ac_transmission:region2
  - region2::ac_transmission:region1
  - region1::free_transmission:region1-3
  - region2::battery
  - region1-1::free_transmission:region1
  - region2::demand_power
  loc_techs_area:
  - region1-3::csp
  - region1-2::csp
  - region1-1::csp
  loc_techs_asynchronous_prod_con: []
  loc_techs_conversion: []
  loc_techs_conversion_all: []
  loc_techs_conversion_plus: []
  loc_techs_cost:
  - region1-2::free_transmission:region1
  - region1-3::csp
  - region1-2::csp
  - region1-3::free_transmission:region1
  - region1::ccgt
  - region1::free_transmission:region1-1
  - region1-1::csp
  - region1::free_transmission:region1-2
  - region1::ac_transmission:region2
  - region2::ac_transmission:region1
  - region1::free_transmission:region1-3
  - region2::battery
  - region1-1::free_transmission:region1
  loc_techs_costs_export: []
  loc_techs_demand:
  - region1::demand_power
  - region2::demand_power
  loc_techs_export: []
  loc_techs_finite_resource:
  - region1-3::csp
  - region1-2::csp
  - region1::demand_power
  - region1-1::csp
  - region2::demand_power
  loc_techs_finite_resource_demand:
  - region1::demand_power
  - region2::demand_power
  loc_techs_finite_resource_supply: []
  loc_techs_finite_resource_supply_plus:
  - region1-3::csp
  - region1-2::csp
  - region1-1::csp
  loc_techs_in_2: []
  loc_techs_in_3: []
  loc_techs_investment_cost:
  - region1-3::csp
  - region2::ac_transmission:region1
  - region1-2::csp
  - region2::battery
  - region1::ccgt
  - region1-1::csp
  - region1::ac_transmission:region2
  loc_techs_milp: []
  loc_techs_non_conversion:
  - region1-2::free_transmission:region1
  - region1-3::csp
  - region1-2::csp
  - region1-3::free_transmission:region1
  - region1::ccgt
  - region1::free_transmission:region1-1
  - region1::demand_power
  - region1-1::csp
  - region1::free_transmission:region1-2
  - region1::ac_transmission:region2
  - region2::ac_transmission:region1
  - region1::free_transmission:region1-3
  - region2::battery
  - region1-1::free_transmission:region1
  - region2::demand_power
  loc_techs_non_transmission:
  - region1-3::csp
  - region1-2::csp
  - region1::ccgt
  - region1::demand_power
  - region1-1::csp
  - region2::battery
  - region2::demand_power
  loc_techs_om_cost:
  - region1-2::free_transmission:region1
  - region1-3::csp
  - region1-2::csp
  - region1-3::free_transmission:region1
  - region1::ccgt
  - region1::free_transmission:region1-1
  - region1-1::csp
  - region1::free_transmission:region1-2
  - region1::ac_transmission:region2
  - region2::ac_transmission:region1
  - region1::free_transmission:region1-3
  - region1-1::free_transmission:region1
  loc_techs_om_cost_conversion: []
  loc_techs_om_cost_conversion_plus: []
  loc_techs_om_cost_supply:
  - region1::ccgt
  loc_techs_om_cost_supply_plus:
  - region1-3::csp
  - region1-2::csp
  - region1-1::csp
  loc_techs_out_2: []
  loc_techs_out_3: []
  loc_techs_purchase: []
  loc_techs_ramping:
  - region1::ccgt
  loc_techs_storage:
  - region2::battery
  loc_techs_store:
  - region1-3::csp
  - region1-2::csp
  - region1-1::csp
  - region2::battery
  loc_techs_supply:
  - region1::ccgt
  loc_techs_supply_all:
  - region1-3::csp
  - region1::ccgt
  - region1-2::csp
  - region1-1::csp
  loc_techs_supply_conversion_all:
  - region1-3::csp
  - region1::ccgt
  - region1-2::csp
  - region1-1::csp
  loc_techs_supply_plus:
  - region1-3::csp
  - region1-2::csp
  - region1-1::csp
  loc_techs_transmission:
  - region1-2::free_transmission:region1
  - region1-3::free_transmission:region1
  - region1::free_transmission:region1-1
  - region1::free_transmission:region1-2
  - region1::ac_transmission:region2
  - region2::ac_transmission:region1
  - region1::free_transmission:region1-3
  - region1-1::free_transmission:region1
constraint_sets:
  loc_carriers_system_balance_constraint:
  - region1-2::power
  - region1-1::power
  - region1-3::power
  - region1::power
  - region2::power
  loc_techs_balance_supply_constraint: []
  loc_techs_balance_demand_constraint:
  - region1::demand_power
  - region2::demand_power
  loc_techs_resource_availability_supply_plus_constraint:
  - region1-3::csp
  - region1-2::csp
  - region1-1::csp
  loc_techs_balance_transmission_constraint:
  - region1-2::free_transmission:region1
  - region1-3::free_transmission:region1
  - region1::free_transmission:region1-1
  - region1::free_transmission:region1-2
  - region1::ac_transmission:region2
  - region2::ac_transmission:region1
  - region1::free_transmission:region1-3
  - region1-1::free_transmission:region1
  loc_techs_balance_supply_plus_constraint:
  - region1-3::csp
  - region1-2::csp
  - region1-1::csp
  loc_techs_balance_storage_constraint:
  - region2::battery
  loc_techs_storage_initial_constraint: []
  loc_techs_storage_discharge_depth: []
  carriers_reserve_margin_constraint: []
  loc_techs_cost_constraint:
  - region1-2::free_transmission:region1
  - region1-3::csp
  - region1-2::csp
  - region1-3::free_transmission:region1
  - region1::ccgt
  - region1::free_transmission:region1-1
  - region1-1::csp
  - region1::free_transmission:region1-2
  - region1::ac_transmission:region2
  - region2::ac_transmission:region1
  - region1::free_transmission:region1-3
  - region2::battery
  - region1-1::free_transmission:region1
  loc_techs_cost_investment_constraint:
  - region1-3::csp
  - region2::ac_transmission:region1
  - region1-2::csp
  - region2::battery
  - region1::ccgt
  - region1-1::csp
  - region1::ac_transmission:region2
  loc_techs_cost_var_constraint:
  - region1-2::free_transmission:region1
  - region1-3::csp
  - region1-2::csp
  - region1-3::free_transmission:region1
  - region1::ccgt
  - region1::free_transmission:region1-1
  - region1-1::csp
  - region1::free_transmission:region1-2
  - region1::ac_transmission:region2
  - region2::ac_transmission:region1
  - region1::free_transmission:region1-3
  - region1-1::free_transmission:region1
  loc_carriers_update_system_balance_constraint: []
  loc_tech_carriers_export_balance_constraint: []
  loc_techs_update_costs_var_constraint: []
  loc_tech_carriers_export_max_constraint: []
  loc_techs_storage_capacity_constraint:
  - region1-3::csp
  - region1-2::csp
  - region1-1::csp
  - region2::battery
  loc_techs_energy_capacity_storage_constraint_old: []
  loc_techs_energy_capacity_storage_equals_constraint: []
  loc_techs_energy_capacity_storage_min_constraint: []
  loc_techs_energy_capacity_storage_max_constraint:
  - region1-3::csp
  - region1-2::csp
  - region1-1::csp
  - region2::battery
  loc_techs_resource_capacity_constraint: []
  loc_techs_resource_capacity_equals_energy_capacity_constraint: []
  loc_techs_resource_area_constraint:
  - region1-3::csp
  - region1-2::csp
  - region1-1::csp
  loc_techs_resource_area_per_energy_capacity_constraint: []
  locs_resource_area_capacity_per_loc_constraint: []
  loc_techs_energy_capacity_constraint:
  - region1-2::free_transmission:region1
  - region1-3::csp
  - region1-2::csp
  - region1-3::free_transmission:region1
  - region1::ccgt
  - region1::free_transmission:region1-1
  - region1::demand_power
  - region1-1::csp
  - region1::free_transmission:region1-2
  - region1::ac_transmission:region2
  - region2::ac_transmission:region1
  - region1::free_transmission:region1-3
  - region2::battery
  - region1-1::free_transmission:region1
  - region2::demand_power
  techs_energy_capacity_systemwide_constraint:
  - ccgt
  loc_tech_carriers_carrier_production_max_constraint:
  - region1::free_transmission:region1-3::power
  - region2::battery::power
  - region1-2::csp::power
  - region1-2::free_transmission:region1::power
  - region1::free_transmission:region1-1::power
  - region1-1::csp::power
  - region1::ac_transmission:region2::power
  - region1-1::free_transmission:region1::power
  - region2::ac_transmission:region1::power
  - region1-3::csp::power
  - region1::free_transmission:region1-2::power
  - region1::ccgt::power
  - region1-3::free_transmission:region1::power
  loc_tech_carriers_carrier_production_min_constraint: []
  loc_tech_carriers_carrier_consumption_max_constraint:
  - region1::free_transmission:region1-3::power
  - region2::battery::power
  - region1-2::free_transmission:region1::power
  - region1::ac_transmission:region2::power
  - region1-1::free_transmission:region1::power
  - region2::ac_transmission:region1::power
  - region1::free_transmission:region1-1::power
  - region1::free_transmission:region1-2::power
  - region1::demand_power::power
  - region1-3::free_transmission:region1::power
  - region2::demand_power::power
  loc_techs_resource_max_constraint:
  - region1-3::csp
  - region1-2::csp
  - region1-1::csp
  loc_tech_carriers_ramping_constraint:
  - region1::ccgt::power
  loc_techs_storage_max_constraint:
  - region1-3::csp
  - region1-2::csp
  - region1-1::csp
  - region2::battery
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
  loc_techs_balance_conversion_constraint: []
  loc_techs_cost_var_conversion_constraint: []
  loc_techs_balance_conversion_plus_primary_constraint: []
  loc_techs_carrier_production_max_conversion_plus_constraint: []
  loc_techs_carrier_production_min_conversion_plus_constraint: []
  loc_techs_cost_var_conversion_plus_constraint: []
  loc_techs_balance_conversion_plus_in_2_constraint: []
  loc_techs_balance_conversion_plus_in_3_constraint: []
  loc_techs_balance_conversion_plus_out_2_constraint: []
  loc_techs_balance_conversion_plus_out_3_constraint: []
  loc_techs_symmetric_transmission_constraint:
  - region1-2::free_transmission:region1
  - region1-3::free_transmission:region1
  - region1::free_transmission:region1-1
  - region1::free_transmission:region1-2
  - region1::ac_transmission:region2
  - region2::ac_transmission:region1
  - region1::free_transmission:region1-3
  - region1-1::free_transmission:region1
  techlists_group_share_energy_cap_min_constraint: []
  techlists_carrier_group_share_carrier_prod_min_constraint: []
  techlists_group_share_energy_cap_max_constraint: []
  techlists_carrier_group_share_carrier_prod_max_constraint: []
  techlists_group_share_energy_cap_equals_constraint: []
  techlists_carrier_group_share_carrier_prod_equals_constraint: []
  constraint_groups: []
BTLF '      V�             }�      �Z             ��!�                                                                                                                                                                                                                                                                                                                                                                                                                                                                      OHDRM                                                 y�                   y�             �     �            ������������������������0        CLASS                DIMENSION_SCALE -       NAME                 loc_carriers 4       _Netcdf4Dimid                             &��OHDRV                                                 y�                   y�             :h     �            ������������������������0        CLASS                DIMENSION_SCALE 6       NAME                 loc_tech_carriers_con 4       _Netcdf4Dimid                            -"HOHDR                                                 y�      #             y�      #       M�     Z            ������������������������0        CLASS                DIMENSION_SCALE 7       NAME                 loc_tech_carriers_prod   �MoOHDRJ                                                 y�      >             y�      >      s�     >          
 ������������������������0        CLASS                DIMENSION_SCALE *       NAME       
          loc_techs 4       _Netcdf4Dimid                            as��OCHK0       NAME                 loc_techs_store �u	�   �)�BTHD      d(�N      o       #� �BTHD      d(�9      o       ��o�                                                         _debug_data        �Z         comments:
  model_run:
    techs:
      ac_transmission:
        essentials:
          parent: From parent tech_group `transmission`
          carrier_in: Set from essentials.carrier
      battery:
        essentials:
          parent: From parent tech_group `storage`
          carrier_in: Set from essentials.carrier
      ccgt:
        essentials:
          parent: From parent tech_group `supply`
      csp:
        essentials:
          parent: From parent tech_group `supply_plus`
      demand_power:
        essentials:
          parent: From parent tech_group `demand`
          carrier_in: Set from essentials.carrier
      free_transmission:
        essentials:
          parent: From parent tech_group `transmission`
          carrier_in: Set from essentials.carrier
    locations: {}
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
    name: National-scale example model
    random_seed:
    reserve_margin: {}
    subset_time:
    - '2005-01-01'
    - '2005-01-05'
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
  techs:
    ac_transmission:
      constraints:
        energy_eff: 0.85
        lifetime: 25
      costs:
        monetary:
          energy_cap: 200
          interest_rate: 0.1
          om_prod: 0.002
      essentials:
        carrier: power
        color: '#8465A9'
        name: AC power transmission
        parent: transmission
    battery:
      constraints:
        energy_cap_max: 1000
        energy_cap_per_storage_cap_max: 4
        energy_eff: 0.95
        lifetime: 25
        storage_cap_max: inf
        storage_loss: 0
      costs:
        monetary:
          interest_rate: 0.1
          storage_cap: 200
      essentials:
        carrier: power
        color: '#3B61E3'
        name: Battery storage
        parent: storage
    ccgt:
      constraints:
        energy_cap_max: 40000
        energy_cap_max_systemwide: 100000
        energy_eff: 0.5
        energy_ramping: 0.8
        lifetime: 25
        resource: inf
      costs:
        monetary:
          energy_cap: 750
          interest_rate: 0.1
          om_con: 0.02
      essentials:
        carrier_out: power
        color: '#E37A72'
        name: Combined cycle gas turbine
        parent: supply
    csp:
      constraints:
        energy_cap_max: 10000
        energy_cap_per_storage_cap_max: 1
        energy_eff: 0.4
        lifetime: 25
        parasitic_eff: 0.9
        resource: file=csp_resource.csv
        resource_area_max: inf
        resource_unit: energy_per_area
        storage_cap_max: 614033
        storage_loss: 0.002
      costs:
        monetary:
          energy_cap: 1000
          interest_rate: 0.1
          om_prod: 0.002
          resource_area: 200
          resource_cap: 200
          storage_cap: 50
      essentials:
        carrier_out: power
        color: '#F9CF22'
        name: Concentrating solar power
        parent: supply_plus
    demand_power:
      essentials:
        carrier: power
        color: '#072486'
        name: Power demand
        parent: demand
    free_transmission:
      constraints:
        energy_cap_max: inf
        energy_eff: 1.0
      costs:
        monetary:
          om_prod: 0
      essentials:
        carrier: power
        color: '#6783E3'
        name: Local power transmission
        parent: transmission
  locations:
    region1:
      coordinates:
        lat: 40
        lon: -2
      techs:
        ccgt:
          constraints:
            energy_cap_max: 30000
        demand_power:
          constraints:
            resource: file=demand-1.csv:demand
    region1-1:
      coordinates:
        lat: 41
        lon: -2
    region1-1, region1-2, region1-3:
      techs:
        csp:
    region1-2:
      coordinates:
        lat: 39
        lon: -1
    region1-3:
      coordinates:
        lat: 39
        lon: -2
    region2:
      coordinates:
        lat: 40
        lon: -8
      techs:
        battery:
        demand_power:
          constraints:
            resource: file=demand-2.csv:demand
  links:
    region1,region1-1:
      techs:
        free_transmission:
    region1,region1-2:
      techs:
        free_transmission:
    region1,region1-3:
      techs:
        free_transmission:
    region1,region2:
      techs:
        ac_transmission:
          constraints:
            energy_cap_max: 10000
  config_path: model.yaml
  overrides:
    check_feasibility:
      model:
        subset_time: '2005-01-04'
      run:
        ensure_feasibility: false
        objective: check_feasibility
    cold_fusion:
      locations:
        region1:
          techs:
            cold_fusion:
        region2:
          techs:
            cold_fusion:
      techs:
        cold_fusion:
          constraints:
            energy_cap_max: 10000
            lifetime: 50
          costs:
            monetary:
              energy_cap: 100
              interest_rate: 0.2
          essentials:
            carrier_out: power
            color: '#233B39'
            name: Cold fusion
            parent: supply
    cold_fusion_cap_share:
      group_constraints:
        max_cap_share_group:
          energy_cap_share_max: 0.2
          techs:
          - csp
          - cold_fusion
      locations:
        region1:
          techs:
            ccgt:
              constraints:
                energy_cap_max: 100000
    cold_fusion_prod_share:
      group_constraints:
        min_carrier_prod_share_group:
          carrier_prod_share_min:
            power: 0.85
          techs:
          - csp
          - cold_fusion
    maximize_utility_costs:
      run:
        objective_options:
          cost_class:
            monetary: 0
            utility: 1
          sense: maximize
      techs:
        ccgt:
          costs:
            utility:
              om_prod: 10
        csp:
          costs:
            utility:
              om_prod: 100
    minimize_emissions_costs:
      run:
        objective_options:
          cost_class:
            emissions: 1
            monetary: 0
      techs:
        ccgt:
          costs:
            emissions:
              om_prod: 100
        csp:
          costs:
            emissions:
              om_prod: 10
    operate:
      links:
        region1,region1-1:
          techs:
            free_transmission:
              constraints:
                energy_cap_equals: 9000
        region1,region1-2:
          techs:
            free_transmission:
              constraints:
                energy_cap_equals: 0
        region1,region1-3:
          techs:
            free_transmission:
              constraints:
                energy_cap_equals: 2281
        region1,region2:
          techs:
            ac_transmission:
              constraints:
                energy_cap_equals: 3231
      locations:
        region1:
          techs:
            ccgt:
              constraints:
                energy_cap_equals: 30000
        region1-1:
          techs:
            csp:
              constraints:
                energy_cap_equals: 10000
                resource_area_equals: 130385
                storage_cap_equals: 244301
        region1-2:
          techs:
            csp:
              constraints:
                energy_cap_equals: 0
                resource_area_equals: 0
                storage_cap_equals: 0
        region1-3:
          techs:
            csp:
              constraints:
                energy_cap_equals: 2534
                resource_area_equals: 8487
                storage_cap_equals: 25301
        region2:
          techs:
            battery:
              constraints:
                energy_cap_equals: 1000
                storage_cap_equals: 5240
      model:
        subset_time:
        - '2005-01-01'
        - '2005-01-10'
      run:
        mode: operate
        operation:
          horizon: 24
          window: 12
    profiling:
      model:
        name: National-scale example model (profiling run)
        subset_time:
        - '2005-01-01'
        - '2005-01-15'
      run:
        solver: cbc
    reserve_margin:
      model:
        reserve_margin:
          power: 0.1
    run1:
      model:
        subset_time:
        - '2005-01-01'
        - '2005-01-31'
    run2:
      model:
        subset_time:
        - '2005-02-01'
        - '2005-02-31'
    run3:
      locations:
        region1:
          techs:
            ccgt:
              constraints:
                energy_cap_max: 0
      model:
        subset_time:
        - '2005-01-01'
        - '2005-01-31'
    run4:
      locations:
        region1:
          techs:
            ccgt:
              constraints:
                energy_cap_max: 0
      subset_time:
      - '2005-02-01'
      - '2005-02-31'
    spores:
      group_constraints:
        systemwide_cost_max:
          cost_max:
            monetary: .inf
      run:
        mode: spores
        objective_options:
          cost_class:
            monetary: 1
            spores_score: 0
        spores_options:
          score_cost_class: spores_score
          slack: 0.1
          slack_cost_group: systemwide_cost_max
          spores_number: 3
      techs:
        ac_transmission:
          costs:
            spores_score:
              energy_cap: 0
              interest_rate: 1
        battery:
          costs:
            spores_score:
              energy_cap: 0
              interest_rate: 1
        ccgt:
          costs:
            spores_score:
              energy_cap: 0
              interest_rate: 1
        csp:
          costs:
            spores_score:
              energy_cap: 0
              interest_rate: 1
    time_clustering:
      model:
        name: National-scale example model with time clustering
        random_seed: 23
        subset_time:
        time:
          function: apply_clustering
          function_options:
            clustering_func: kmeans
            how: closest
            k: 10
    time_resampling:
      model:
        name: National-scale example model with time resampling
        subset_time: 2005-01
        time:
          function: resample
          function_options:
            resolution: 6H
  scenarios:
    cold_fusion_with_capacity_share:
    - cold_fusion
    - cold_fusion_cap_share
    cold_fusion_with_production_share:
    - cold_fusion
    - cold_fusion_prod_share
GCOL                                       region1::power                region2::power  	              region1-3::power
              region1-1::power              region1-2::power                      +       region1::free_transmission:region1-1::power            +       region1::free_transmission:region1-2::power                   region1::demand_power::power           +       region1-3::free_transmission:region1::power                   region2::demand_power::power           '       region1::ac_transmission:region2::power        +       region1-1::free_transmission:region1::power            '       region2::ac_transmission:region1::power         +       region1-2::free_transmission:region1::power     !              region2::battery::power "       +       region1::free_transmission:region1-3::power     #               1       +       region1-1::free_transmission:region1::power     2       '       region2::ac_transmission:region1::power 3              region1-3::csp::power   4       +       region1::free_transmission:region1-2::power     5              region1::ccgt::power    6       +       region1-3::free_transmission:region1::power     7       +       region1::free_transmission:region1-1::power     8              region1-1::csp::power   9       '       region1::ac_transmission:region2::power :              region1-2::csp::power   ;       +       region1-2::free_transmission:region1::power     <              region2::battery::power =       +       region1::free_transmission:region1-3::power     >               N       $       region1::free_transmission:region1-2    O               region1::ac_transmission:region2P               region2::ac_transmission:region1Q       $       region1::free_transmission:region1-3    R              region2::batteryS       $       region1-1::free_transmission:region1    T              region2::demand_power   U              region1::ccgt   V       $       region1::free_transmission:region1-1    W              region1::demand_power   X              region1-1::csp  Y              region1-2::csp  Z       $       region1-3::free_transmission:region1    [              region1-3::csp  \       $       region1-2::free_transmission:region1    ]               a              region1-1::csp  b              region1-2::csp  c              region1-3::csp  d               r       $       region1::free_transmission:region1-2    s               region1::ac_transmission:region2t               region2::ac_transmission:region1u       $       region1::free_transmission:region1-3    v              region2::batteryw       $       region1-1::free_transmission:region1    x              region1::ccgt   y       $       region1::free_transmission:region1-1    z              region1-1::csp  {              region1-2::csp  |       $       region1-3::free_transmission:region1    }              region1-3::csp  ~       $       region1-2::free_transmission:region1                   �              region1::ccgt   �              region1-1::csp  �               region1::ac_transmission:region2�              region1-2::csp  �              region2::battery�               region2::ac_transmission:region1�              region1-3::csp  �               �              region1-1::csp  �       $       region1::free_transmission:region1-2    �               region1::ac_transmission:region2�               region2::ac_transmission:region1�       $       region1::free_transmission:region1-3    �       $       region1-1::free_transmission:region1    �       $       region1-3::free_transmission:region1    �              region1::ccgt   �       $       region1::free_transmission:region1-1    �              region1-2::csp  �              region1-3::csp  �       $       region1-2::free_transmission:region1    �               �              region1-1::csp  �              region2::battery�              region1-2::csp  �              region1-3::csp  �               �              region1-1::csp  �              region1-2::csp  �              region1-3::csp  �                              OHDRO                                                 y�      ]             y�      ]      =     �            ������������������������0        CLASS                DIMENSION_SCALE /       NAME                 loc_techs_area 4       _Netcdf4Dimid                            �vYOHDRO                                                 y�      d             y�      d       ��     �            ������������������������0        CLASS                DIMENSION_SCALE /       NAME                 loc_techs_cost 4       _Netcdf4Dimid                            ��3�OHDRZ                                                 y�                   y�            x     .          	 ������������������������0        CLASS                DIMENSION_SCALE :       NAME                 loc_techs_investment_cost 4       _Netcdf4Dimid                            ��?�OHDRR                                                 y�      �             y�      �      $�     �            ������������������������0        CLASS                DIMENSION_SCALE 2       NAME                 loc_techs_om_cost 4       _Netcdf4Dimid                            ��t�OHDR                                                  y�      �             y�      �       �     Z            ������������������������0        CLASS                DIMENSION_SCALE     ��      >                  �؊�          �jlBFRHP               ���������-      �      @                    o                                                         ��      �e�FSHD  4                             P x          ��     Y       Y       � �DBTLF wm- �  " �8 	  ' �!2 Y   �P� �  + oK	 �
   t�	 �   u2 $   �2� �  ! �B� �  - �=] _  $ vv� �  1 ~�W �
    ͯ� �  ! +˾ 4   ( ���  �  # ٽ�* �  + �u�.   % ڞu/ p   �a�/ ?  + »�2 \   ) ��9 y  7 H:�= �   @MNI �  6 ƷvL �  4 ³�L �  " )m�M �  & y��P    o�6Q �
  ) ��-S �  , ��S �  ) �`T �    � V   ' 6�gV q   &�V �   ! <�<W �    i�`W �  5 u��X �  $ F�Y    j"<Z �   ! .��Z �   ��]   7 �A�^ U  ( �d   + �Y                             BTLF              >        4   ( ?        \   ) @        �    A        �   ! B        �   ! C        �   , D          $ E        3  " F        U  ( G        }   H        �    I        �   J        �   K           L        -  9 M        f  G N        �  F O        �  + P          7 Q        U  / R        �  : S        �  6 T          7 U        L  ; V        �  < W        �  , X        �  7 Y        &  0 Z        V  # [        y  7 \        �  C ]          , c}�       OCHK   Y�           4       _Netcdf4Dimid                            �E�5OHDRV                                                 y�      �             y�      �      ��     �            ������������������������0        CLASS                DIMENSION_SCALE 6       NAME                 loc_techs_supply_plus 4       _Netcdf4Dimid                       	     \L�cOHDRF                                                 y�      �             y�      �      U:     .          	 ������������������������0        CLASS                DIMENSION_SCALE &       NAME                 techs 4       _Netcdf4Dimid                       
     F7OHDRN                                                 ��                  ��            ��                  ������������������������0        CLASS                DIMENSION_SCALE .       NAME                 carrier_tiers 4       _Netcdf4Dimid                          2���OHDRI                                                 ��                  ��           :9                ������������������������0        CLASS                DIMENSION_SCALE )       NAME       	          carriers 4       _Netcdf4Dimid                            ,H_�OHDRL                                                 ��                  ��            �     �            ������������������������0        CLASS                DIMENSION_SCALE ,       NAME                 coordinates 4       _Netcdf4Dimid                            ��a�OHDRF                                                 ��                  ��           +     �           ������������������������0        CLASS                DIMENSION_SCALE &       NAME                 costs 4       _Netcdf4Dimid                            �jzOHDRg                                                 ��                  ��            �     P            ������������������������0        CLASS                DIMENSION_SCALE G       NAME       '          loc_carriers_system_balance_constraint 4       _Netcdf4Dimid                          _��UOHDRu                                                 ��     '             ��     '       m�     �            ������������������������0        CLASS                DIMENSION_SCALE U       NAME       5          loc_tech_carriers_carrier_consumption_max_constraint 4       _Netcdf4Dimid                          �i�OHDRt                                                 ��     >             ��     >       �     �            ������������������������0        CLASS                DIMENSION_SCALE T       NAME       4          loc_tech_carriers_carrier_production_max_constraint 4       _Netcdf4Dimid                          )X#OHDRY                                                 ��     Y             ��     Y       �                  ������������������������0        CLASS                DIMENSION_SCALE 9       NAME                 loc_tech_carriers_demand 4       _Netcdf4Dimid                          ��=�OHDRe                                                 ��     ^             ��     ^       �                 ������������������������0        CLASS                DIMENSION_SCALE E       NAME       %          loc_tech_carriers_ramping_constraint 4       _Netcdf4Dimid                          )p��OHDR]                                                 ��     a             ��     a       ��     @            ������������������������0        CLASS                DIMENSION_SCALE =       NAME                 loc_tech_carriers_supply_all 4       _Netcdf4Dimid                          n��OHDRh                                                 ��     j             ��     j       �     @            ������������������������0        CLASS                DIMENSION_SCALE H       NAME       (          loc_tech_carriers_supply_conversion_all 4       _Netcdf4Dimid                          �жOHDRd                                                 ��     s             ��     s       �                  ������������������������0        CLASS                DIMENSION_SCALE D       NAME       $          loc_techs_balance_demand_constraint 4       _Netcdf4Dimid                          c��OHDR+                                                 ��     x             ��     x       '�     Z            ������������������������0        CLASS                DIMENSION_SCALE E       NAME       %          loc_techs_balance_storage_constraint   *E�OHDRi                                                 ��     {             ��     {       ��     0            ������������������������0        CLASS                DIMENSION_SCALE I       NAME       )          loc_techs_balance_supply_plus_constraint 4       _Netcdf4Dimid                          �¢OHDRj                                                 ��     �             ��     �       ��     �            ������������������������0        CLASS                DIMENSION_SCALE J       NAME       *          loc_techs_balance_transmission_constraint 4       _Netcdf4Dimid                          �(�7OHDRZ                                                 ��     �             ��     �       1�     �            ������������������������0        CLASS                DIMENSION_SCALE :       NAME                 loc_techs_cost_constraint 4       _Netcdf4Dimid                          
�]OOHDR+                                                 ��     �             ��     �       1�     Z            ������������������������0        CLASS                DIMENSION_SCALE E       NAME       %          loc_techs_cost_investment_constraint   �?ǲOHDR^                                                 ��     �             ��     �       q�     �            ������������������������0        CLASS                DIMENSION_SCALE >       NAME                 loc_techs_cost_var_constraint 4       _Netcdf4Dimid                          )�[�OHDRQ                                                 ��                  ��            1�                  ������������������������0        CLASS                DIMENSION_SCALE 1       NAME                 loc_techs_demand 4       _Netcdf4Dimid                          m�)jOHDRe                                                 ��                  ��            Q�     �            ������������������������0        CLASS                DIMENSION_SCALE E       NAME       %          loc_techs_energy_capacity_constraint 4       _Netcdf4Dimid                          ���OHDRq                                                 ��     :             ��     :       A�     @            ������������������������0        CLASS                DIMENSION_SCALE Q       NAME       1          loc_techs_energy_capacity_storage_max_constraint 4       _Netcdf4Dimid                          ��OHDRZ                                                 ��     C             ��     C      �7                ������������������������0        CLASS                DIMENSION_SCALE :       NAME                 loc_techs_finite_resource 4       _Netcdf4Dimid                             �E�OHDR                                                  ��     N             ��     N       Ѭ                  ������������������������0        CLASS                DIMENSION_SCALE     �=     �                ae �BTIN ^        A  3 �        P    �        �  ! �     !�;     !�     Y�     ��                                                                                                                                                                                                                                                                                                                                                                                                                                     BTLF _        t  8 `        �  + a        �  - b          + c        /  0 d        _  $ e        �  5 f          I g        �  4 h        ^  $ i        �  8 j        �  3 k        �  # l        	  ' m        7	  2 n        i	  > o        �	  ) p        �	   q        
   r        1
   s        P
  > t        �
  ) u        �
    v        �
   w        �
  $ x          % y        ?  + z        j   {        �  1 |        �   }        �   ~                    5   6��a       OCHKA       NAME       !          loc_techs_finite_resource_demand 4       _Netcdf4Dimid                       !   1��OHDRf                                                 ��     S             ��     S       �     0            ������������������������0        CLASS                DIMENSION_SCALE F       NAME       &          loc_techs_finite_resource_supply_plus 4       _Netcdf4Dimid                       "   
��OHDRY                                                 ��     Z             ��     Z       �     �            ������������������������0        CLASS                DIMENSION_SCALE 9       NAME                 loc_techs_non_conversion 4       _Netcdf4Dimid                       #     ���?OHDR[                                                 ��     y             ��     y       �     p            ������������������������0        CLASS                DIMENSION_SCALE ;       NAME                 loc_techs_non_transmission 4       _Netcdf4Dimid                       $   ���OHDRY                                                 ��     �             ��     �       ��                 ������������������������0        CLASS                DIMENSION_SCALE 9       NAME                 loc_techs_om_cost_supply 4       _Netcdf4Dimid                       %   5��OHDR$                                                 ��     �             ��     �       ��     Z            ������������������������0        CLASS                DIMENSION_SCALE >       NAME                 loc_techs_om_cost_supply_plus   �H	�OHDRR                                                 ��     �             ��     �       ��                 ������������������������0        CLASS                DIMENSION_SCALE 2       NAME                 loc_techs_ramping 4       _Netcdf4Dimid                       '   f�sOHDRc                                                 ��     �             ��     �       Ѯ     0            ������������������������0        CLASS                DIMENSION_SCALE C       NAME       #          loc_techs_resource_area_constraint 4       _Netcdf4Dimid                       (   J���OHDRw                                                 ��     �             ��     �       �     0            ������������������������0        CLASS                DIMENSION_SCALE W       NAME       7          loc_techs_resource_availability_supply_plus_constraint 4       _Netcdf4Dimid                       )   K��]OHDRb                                                 ��     �             ��     �       1�     0            ������������������������0        CLASS                DIMENSION_SCALE B       NAME       "          loc_techs_resource_max_constraint 4       _Netcdf4Dimid                       *   ��`3OHDRR                                                 ��     �             ��     �       a�                 ������������������������0        CLASS                DIMENSION_SCALE 2       NAME                 loc_techs_storage 4       _Netcdf4Dimid                       +   ;��hOHDR,                                                 ��     �             ��     �       ��     Z            ������������������������0        CLASS                DIMENSION_SCALE F       NAME       &          loc_techs_storage_capacity_constraint   ��~nOHDR'                                                 ��     �             ��     �       �R     Z            ������������������������0        CLASS                DIMENSION_SCALE A       NAME       !          loc_techs_storage_max_constraint   �ce,   �5�BTIN ��e �   �_}� �   �     +�P     (�%     h�_�                                                                                                                                                                                                                                                                                                                                                                                                                                                                     BTLF O�mi �  # FY*j x   o=�n �	   �Elo �  8 ̹�p ^  " {�t &  0 ��x �  $ ��{ �    1��{ �
  $ F��| U  / �T>} 3  " G�+~ L  ; �$�� P
  > O�� Y   �lo� �	  ) 0d�� �  F M߫� �   �<� �   	���   I T��� :   1M7� �  " n�� P    U�� i	  > �X� ^  $ �N� 5   �(�� �  C �9p� C   %�� �  : �Fݵ 7	  2 SQ� t  8 ��_� j   J鱷 �  ' �Pr� 1
   �t1� �  , ��� �  ( �� �  7 7��� �  - Nr� �   , $��� �  3 �[�� P  ! ��                                                              OCHK    ��     @       4       _Netcdf4Dimid                       -   ��"OHDRQ                                                 ��     �             ��     �       �                 ������������������������0        CLASS                DIMENSION_SCALE 1       NAME                 loc_techs_supply 4       _Netcdf4Dimid                       .   d:�TOHDRU                                                 ��     �             ��     �       �     @            ������������������������0        CLASS                DIMENSION_SCALE 5       NAME                 loc_techs_supply_all 4       _Netcdf4Dimid                       /   �OHDR`                                                 ��     �             ��     �       A�     @            ������������������������0        CLASS                DIMENSION_SCALE @       NAME                  loc_techs_supply_conversion_all 4       _Netcdf4Dimid                       0   w$K*OHDRl                                                 ��     �             ��     �       ��     �            ������������������������0        CLASS                DIMENSION_SCALE L       NAME       ,          loc_techs_symmetric_transmission_constraint 4       _Netcdf4Dimid                       1   �N��OHDRW                                                 ?�                  ?�            �     �            ������������������������0        CLASS                DIMENSION_SCALE 7       NAME                 loc_techs_transmission 4       _Netcdf4Dimid                       2     ���GOHDRE                                                 ?�                  ?�           JR     �            ������������������������0        CLASS                DIMENSION_SCALE %       NAME                 locs 4       _Netcdf4Dimid                       3     yB�OHDRJ                                                 ?�     )             ?�     )       �                  ������������������������0        CLASS                DIMENSION_SCALE *       NAME       
          resources 4       _Netcdf4Dimid                       4   ��܇OHDRM                                                 ?�     .             ?�     .       !�                 ������������������������0        CLASS                DIMENSION_SCALE -       NAME                 techs_demand 4       _Netcdf4Dimid                       5   �{�OHDRl                                                 ?�     1             ?�     1       �                 ������������������������0        CLASS                DIMENSION_SCALE L       NAME       ,          techs_energy_capacity_systemwide_constraint 4       _Netcdf4Dimid                       6   2���OHDRW                                                 ?�     4             ?�     4       �     @            ������������������������0        CLASS                DIMENSION_SCALE 7       NAME                 techs_non_transmission 4       _Netcdf4Dimid                       7   ���OHDRN                                                 ?�     =             ?�     =       _�                 ������������������������0        CLASS                DIMENSION_SCALE .       NAME                 techs_storage 4       _Netcdf4Dimid                       8   W)�yOHDRM                                                 ?�     @             ?�     @       o�                 ������������������������0        CLASS                DIMENSION_SCALE -       NAME                 techs_supply 4       _Netcdf4Dimid                       9   NS�OHDRR                                                 ?�     C             ?�     C       �                 ������������������������0        CLASS                DIMENSION_SCALE 2       NAME                 techs_supply_plus 4       _Netcdf4Dimid                       :   ��B�OHDRS                                                 ?�     F             ?�     F       ��     `            ������������������������0        CLASS                DIMENSION_SCALE 3       NAME                 techs_transmission 4       _Netcdf4Dimid                       ;   G�OHDRY                                                 ?�     S             ?�     S       ��                  ������������������������0        CLASS                DIMENSION_SCALE 9       NAME                 techs_transmission_names 4       _Netcdf4Dimid                       <   ���7OHDRw         x       x                 @     ��     _                   �    �     �           ������������������������0        CLASS                DIMENSION_SCALE *       NAME       
          timesteps 4       _Netcdf4Dimid                       =   ?       units                hours since 2005-01-01 00:00:00h0�   _Netcdf4Dimid                       =   Xc�3FSSE �        �    �     �             
 � WK    �e��FSSE �       �     �     �     �     �     �	   ��PFHDB       
  �نq       	resourceso[     r       techs_demand�\     s       +techs_energy_capacity_systemwide_constraint^     t       techs_non_transmission�_     u       techs_storage�`     v       techs_supplySb     w       techs_supply_plus�c     x       techs_transmission
e     y       techs_transmission_namesif     z       	timesteps�g     {       energy_cap_per_storage_cap_maxN�     |       resource_eff��     }       storage_loss��                FHDB         *o�f       6loc_techs_resource_availability_supply_plus_constraint�G     h       loc_techs_storage�J     i       %loc_techs_storage_capacity_constraintML     j        loc_techs_storage_max_constraint�M     k       loc_techs_supplyS     l       loc_techs_supply_allvT     m       loc_techs_supply_conversion_all�U     n       +loc_techs_symmetric_transmission_constraintCW     o       loc_techs_transmission�X     p       locsZ     �       colors      FHDB         ��[]       loc_techs_finite_resourcec7     ^        loc_techs_finite_resource_demand�8     _       %loc_techs_finite_resource_supply_plus^>     `       loc_techs_non_conversion�?     a       loc_techs_non_transmission5A     b       loc_techs_om_cost_supply�B     c       loc_techs_om_cost_supply_plusD     d       loc_techs_ramping1E     e       "loc_techs_resource_area_constraint�F     g       !loc_techs_resource_max_constraint�I                         FHDB         ��AT       $loc_techs_balance_storage_constraint�*     U       (loc_techs_balance_supply_plus_constraint&,     V       )loc_techs_balance_transmission_constraint�-     W       loc_techs_cost_constraint/     X       $loc_techs_cost_investment_constraintw0     Y       loc_techs_cost_var_constraint�1     Z       loc_techs_demand3     [       $loc_techs_energy_capacity_constraintu4     \       0loc_techs_energy_capacity_storage_max_constraint�5                  FHDB         �$K       costs     L       &loc_carriers_system_balance_constraintX     M       4loc_tech_carriers_carrier_consumption_max_constraint�      N       3loc_tech_carriers_carrier_production_max_constraintL"     O       loc_tech_carriers_demand�#     P       $loc_tech_carriers_ramping_constraint1%     Q       loc_tech_carriers_supply_all�&     R       'loc_tech_carriers_supply_conversion_all(     S       #loc_techs_balance_demand_constraint)                 FHDB          �~0        loc_carriers}�      >       loc_tech_carriers_con֛      ?       loc_tech_carriers_prod8�      @       	loc_techsa�      A       loc_techs_areay     B       loc_techs_cost�     C       loc_techs_investment_cost/     D       loc_techs_om_cost�     E       loc_techs_store�     F       loc_techs_supply_plusK     G       techs�     H       carrier_tiers�     I       carriersY     J       coordinates�                       FHIB          t     r     p     n     l     j     ��     ��     ?��FHDB �          o]��    objective_function_value         ?      @ 4 4�                         2jc��A    solution_time    ?      @ 4 4�                         *��
�@    _NCProperties      "          version=2,netcdf=4.7.4,hdf5=1.10.6                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                FHDB �       @   ��� 	   defaults                    available_area: null
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
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         FHDB �           
ͳ�    calliope_version                     0.6.6-post1    applied_overrides                      	   scenario                     None    allow_operate_mode                                             model_config       �          calliope_version: 0.6.6
name: National-scale example model
subset_time:
- '2005-01-01'
- '2005-01-05'
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
    termination_condition                optimal    time_finished                2020-11-22 18:59:47             FHIB �           g�     gv     ��������������������������������������������������������������������������������gz     ������������������������j;_�   y�            y�      
      y�      	      y�            y�         +   y�      "      y�      !   +   y�          '   y�         +   y�         '   y�         +   y�         +   y�            y�         +   y�            y�         +   y�      =      y�      <      y�      :   +   y�      ;   +   y�      7      y�      8   '   y�      9   +   y�      1   '   y�      2      y�      3   +   y�      4      y�      5   +   y�      6   $   y�      \      y�      [      y�      Y   $   y�      Z      y�      U   $   y�      V      y�      W      y�      X   $   y�      N       y�      O       y�      P   $   y�      Q      y�      R   $   y�      S      y�      T      y�      c      y�      b      y�      a   $   y�      ~      y�      }      y�      {   $   y�      |      y�      x   $   y�      y      y�      z   $   y�      r       y�      s       y�      t   $   y�      u      y�      v   $   y�      w      y�      �       y�      �      y�      �      y�      �      y�      �      y�      �       y�      �   $   y�      �      y�      �      y�      �   $   y�      �      y�      �   $   y�      �      y�      �   $   y�      �       y�      �       y�      �   $   y�      �   $   y�      �      y�      �      y�      �      y�      �      y�      �      y�      �      y�      �      y�      �      ��           ��     
      ��     	      ��           ��           ��           ��           ��           ��           ��           ��           ��           ��     &      ��     %      ��     $      ��     "      ��     #   +   ��     =      ��     <   +   ��     ;   '   ��     8   +   ��     9   '   ��     :   +   ��     3   +   ��     4      ��     5   +   ��     6      ��     7   +   ��     X      ��     W      ��     U   +   ��     V   +   ��     R      ��     S   '   ��     T   +   ��     L   '   ��     M      ��     N   +   ��     O      ��     P   +   ��     Q      ��     ]      ��     \      ��     `      ��     w      ��     v      ��     z   OCHK   ��     �       4       _Netcdf4Dimid                            ��CGCOL                        csp                   ccgt                  battery 	              ac_transmission 
              free_transmission                     demand_power                                 in                    out                                  power                                lon                   lat                                  monetary               "              region1::power  #              region2::power  $              region1-3::power%              region1-1::power&              region1-2::power'               3       +       region1::free_transmission:region1-1::power     4       +       region1::free_transmission:region1-2::power     5              region1::demand_power::power    6       +       region1-3::free_transmission:region1::power     7              region2::demand_power::power    8       '       region1::ac_transmission:region2::power 9       +       region1-1::free_transmission:region1::power     :       '       region2::ac_transmission:region1::power ;       +       region1-2::free_transmission:region1::power     <              region2::battery::power =       +       region1::free_transmission:region1-3::power     >               L       +       region1-1::free_transmission:region1::power     M       '       region2::ac_transmission:region1::power N              region1-3::csp::power   O       +       region1::free_transmission:region1-2::power     P              region1::ccgt::power    Q       +       region1-3::free_transmission:region1::power     R       +       region1::free_transmission:region1-1::power     S              region1-1::csp::power   T       '       region1::ac_transmission:region2::power U              region1-2::csp::power   V       +       region1-2::free_transmission:region1::power     W              region2::battery::power X       +       region1::free_transmission:region1-3::power     Y               \              region2::demand_power::power    ]              region1::demand_power::power    ^               `              region1::ccgt::power    a               f              region1-2::csp::power   g              region1-1::csp::power   h              region1::ccgt::power    i              region1-3::csp::power   j               o              region1-2::csp::power   p              region1-1::csp::power   q              region1::ccgt::power    r              region1-3::csp::power   s               v              region2::demand_power   w              region1::demand_power   x               z              region2::battery{                             region1-1::csp  �              region1-2::csp  �              region1-3::csp  �               �               region1::ac_transmission:region2�               region2::ac_transmission:region1�       $       region1::free_transmission:region1-3    �       $       region1-1::free_transmission:region1    �       $       region1::free_transmission:region1-1    �       $       region1::free_transmission:region1-2    �       $       region1-3::free_transmission:region1    �       $       region1-2::free_transmission:region1    �               �       $       region1::free_transmission:region1-2    �               region1::ac_transmission:region2�               region2::ac_transmission:region1�       $       region1::free_transmission:region1-3    �              region2::battery�       $       region1-1::free_transmission:region1    �              region1::ccgt   �       $       region1::free_transmission:region1-1    �              region1-1::csp  �              region1-2::csp  �       $       region1-3::free_transmission:region1    �              region1-3::csp  �       $       region1-2::free_transmission:region1    �               �              region1::ccgt   �              region1-1::csp  �               region1::ac_transmission:region2�              region1-2::csp  �              region2::battery�               region2::ac_transmission:region1�              region1-3::csp  �               �              Power demand               ��     i      ��     h      ��     f      ��     g      ��     r      ��     q      ��     o      ��     p   OCHK    =�            4       _Netcdf4Dimid                          ��    ��     �      ��     �      ��        $   ��     �   $   ��     �   $   ��     �   $   ��     �       ��     �       ��     �   $   ��     �   $   ��     �   $   ��     �      ��     �      ��     �   $   ��     �      ��     �   $   ��     �      ��     �   $   ��     �       ��     �       ��     �   $   ��     �      ��     �   $   ��     �      ��     �       ��     �      ��     �      ��     �      ��     �      ��     �       ��     �   $   ��           ��           ��        $   ��           ��        $   ��           ��     
   $   ��            ��            ��        $   ��        $   ��           ��           ��        $   ��     9      ��     8      ��     6   $   ��     7      ��     2   $   ��     3      ��     4      ��     5   $   ��     +       ��     ,       ��     -   $   ��     .      ��     /   $   ��     0      ��     1      ��     B      ��     A      ��     ?      ��     @      ��     M      ��     L      ��     K      ��     I      ��     J      ��     R      ��     Q      ��     Y      ��     X      ��     W   $   ��     x      ��     w      ��     u   $   ��     v      ��     q   $   ��     r      ��     s      ��     t   $   ��     j       ��     k       ��     l   $   ��     m      ��     n   $   ��     o      ��     p      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �   $   ?�        $   ?�        $   ?�     	   $   ?�     
       ?�            ?�        $   ?�        $   ?�           ?�     -      ?�     ,      ?�     0   OCHK    �     p       4       _Netcdf4Dimid                          �\��GCOL          
              region1-1::csp         $       region1::free_transmission:region1-2                   region1::ac_transmission:region2               region2::ac_transmission:region1       $       region1::free_transmission:region1-3           $       region1-1::free_transmission:region1           $       region1-3::free_transmission:region1                  region1::ccgt          $       region1::free_transmission:region1-1                  region1-2::csp                region1-3::csp         $       region1-2::free_transmission:region1                                 region2::demand_power                 region1::demand_power                  +       $       region1::free_transmission:region1-2    ,               region1::ac_transmission:region2-               region2::ac_transmission:region1.       $       region1::free_transmission:region1-3    /              region2::battery0       $       region1-1::free_transmission:region1    1              region2::demand_power   2              region1::ccgt   3       $       region1::free_transmission:region1-1    4              region1::demand_power   5              region1-1::csp  6              region1-2::csp  7       $       region1-3::free_transmission:region1    8              region1-3::csp  9       $       region1-2::free_transmission:region1    :               ?              region1-1::csp  @              region2::batteryA              region1-2::csp  B              region1-3::csp  C               I              region1-1::csp  J              region2::demand_power   K              region1::demand_power   L              region1-2::csp  M              region1-3::csp  N               Q              region2::demand_power   R              region1::demand_power   S               W              region1-1::csp  X              region1-2::csp  Y              region1-3::csp  Z               j       $       region1::free_transmission:region1-2    k               region1::ac_transmission:region2l               region2::ac_transmission:region1m       $       region1::free_transmission:region1-3    n              region2::batteryo       $       region1-1::free_transmission:region1    p              region2::demand_power   q              region1::ccgt   r       $       region1::free_transmission:region1-1    s              region1::demand_power   t              region1-1::csp  u              region1-2::csp  v       $       region1-3::free_transmission:region1    w              region1-3::csp  x       $       region1-2::free_transmission:region1    y               �              region1-1::csp  �              region2::battery�              region2::demand_power   �              region1::ccgt   �              region1::demand_power   �              region1-2::csp  �              region1-3::csp  �               �              region1::ccgt   �               �              region1-1::csp  �              region1-2::csp  �              region1-3::csp  �               �              region1::ccgt   �               �              region1-1::csp  �              region1-2::csp  �              region1-3::csp  �               �              region1-1::csp  �              region1-2::csp  �              region1-3::csp  �               �              region1-1::csp  �              region1-2::csp  �              region1-3::csp  �               �              region2::battery�               �              region1-1::csp  �              region2::battery�              region1-2::csp  �              region1-3::csp  �               �              region1-1::csp  �              region2::battery�              region1-2::csp  �              region1-3::csp  �               �              region1::ccgt   �               �              region1-2::csp  �              region1-1::csp  �              region1::ccgt   �              region1-3::csp  �               �              region1-2::csp  �              region1-1::csp  �              region1::ccgt   �              region1-3::csp  �                              OCHK    ��     0       4       _Netcdf4Dimid                       &   ��l�OCHK    q�     @       4       _Netcdf4Dimid                       ,   ��$�GCOL                         region1::ac_transmission:region2               region2::ac_transmission:region1       $       region1::free_transmission:region1-3           $       region1-1::free_transmission:region1    	       $       region1::free_transmission:region1-1    
       $       region1::free_transmission:region1-2           $       region1-3::free_transmission:region1           $       region1-2::free_transmission:region1                                  region1::ac_transmission:region2               region2::ac_transmission:region1       $       region1::free_transmission:region1-3           $       region1-1::free_transmission:region1           $       region1::free_transmission:region1-1           $       region1::free_transmission:region1-2           $       region1-3::free_transmission:region1           $       region1-2::free_transmission:region1                   $       	       region1-3       %              region2 &              region1 '       	       region1-2       (       	       region1-1       )               ,              resource-              power   .               0              demand_power    1               3              ccgt    4               9              battery :              csp     ;              ccgt    <              demand_power    =               ?              battery @               B              ccgt    C               E              csp     F               M              free_transmission:region1-3     N              free_transmission:region1-2     O              free_transmission:region1       P              ac_transmission:region2 Q              free_transmission:region1-1     R              ac_transmission:region1 S               V              free_transmission       W              ac_transmission X              �     Y              c7     Z              �     [              K     \              c7     ]              c7     ^              �g     _               `              c7     f              energy_per_area g              energy  h              energy  i              energy_per_area j              energy_per_area k              a�      l              c7     m              y     n              �     o              a�      p              a�      q              a�      r              a�      s              a�      t                   u                   v              /     w                   x                   y              /     z                   {                   |              /     }                   ~                                 /     �                   �                   �              �     �                   �                   �              �     �                   �                   �              /     �               �              �X     �               region2::ac_transmission:region1�               region1::ac_transmission:region2�       $       region1-3::free_transmission:region1    �       $       region1::free_transmission:region1-1    �       $       region1-1::free_transmission:region1    �       $       region1-2::free_transmission:region1    �       $       region1::free_transmission:region1-3    �       $       region1::free_transmission:region1-2    �              �     �              �     �              Z     �               �              �     �              #F9CF22 �              #E37A72 �              #3B61E3 �              #8465A9 �              #6783E3 �              #072486 �               �              �     �              supply_plus     �              supply  �              storage �              transmission    �              transmission    �              demand  �               �              �     �              Concentrating solar power       �              Combined cycle gas turbine      �              Battery storage �              AC power transmission   �              Local power transmission               $   ?�        $   ?�        $   ?�        $   ?�            ?�            ?�        $   ?�        $   ?�        	   ?�     (   	   ?�     '      ?�     &   	   ?�     $      ?�     %      ?�     3      ?�     <      ?�     ;      ?�     9      ?�     :      ?�     ?      ?�     B      ?�     E      ?�     R      ?�     Q      ?�     P      ?�     M      ?�     N      ?�     O      ?�     W      ?�     V                                                                   	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x^cddda@  q x^c`�>|��ᇽ}�}= *�|x^����ʕ+>~��p��%___���$���{{{ %-#x^;{��T���{{{ ���x^��g�gc@� pA M�23���� G�Lx^c�5�f13�3g��3���p��~������w~؃A=��� �!~x^c`�~����C}�}�= ,��x^c`@>|��� "Nx^c`@JJJ{����(�6x^c`�� ? ԇ�`P���e?Rx^c`����Ǉ@������A pO�x^c`���`�� ځ������~�qD��Q��P�PD Ђ�x^c```�ŀfR��^��{ �Bx^c`��ai���A�z�z�z ��  hx^���C�tC�O0��=` � �x^c` x������á���64�x^c` d���D��@ A��x^c` d���D��@ A��x^%�1  �sx�`=؉:����.�@��[�s��n��.�K*�`��'x^c```�f@ $�:$�;�!�
J� �) ��D  ���x^c` �����?��G{���C= I�.x^SQQQQPPQa���0B�:\`���3&O�:] ���x^�T�P����߿ ��� ��x^cg`����U��իV.[�]�� �n
*x^c���fcg� �`p� ]*عc�����E ��
�x^����g� ��A`�!`t��б��Ae`  *�[x^c` �~�A=8� G!�x^stt�À
TA@�A Mxy�9��� �O�x^��і�VW�זa ��T��
�5S tu����54���UTѥ� ?q�x^��c�c@� �� �.��fhb v��x^c`�`���  U��	x^c`�`���  U��	x^c`�    x^�ϰz?���'��d'3h``p`p ws�    OCHK   �3     \      ;    	   calendar                     proleptic_gregorian�i�OHDRi                                           �        �8             shuffle            deflate            ��                ������������������������D     
   is_result                                           P       DIMENSION_LIST                                    ?�     X   �*mOCHKP        _FillValue       ?      @ 4 4�                               �D    
   is_result                                          f��X                             ��             ��STREE  ����������������                       ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OHDR�                           ?      @ 4 4�              �            �8             shuffle            deflate            ��                ������������������������P        _FillValue       ?      @ 4 4�                               �D    
   is_result                                           P       DIMENSION_LIST                                    ?�     Y   `��OCHK    �     �       T        _Netcdf4Coordinates                                           
   P       _FillValue       ?      @ 4 4�                               ��|�B            &{�6TREE  ����������������                       ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OHDR�                           ?      @ 4 4�              �            �8             shuffle            deflate            ��                ������������������������P        _FillValue       ?      @ 4 4�                               �D    
   is_result                                           P       DIMENSION_LIST                                    ?�     Z   �(,�OCHKP        _FillValue       ?      @ 4 4�                               �D    
   is_result                                           R�9                             ;             �U             �ͲTREE  ����������������)                       ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OHDR�                           ?      @ 4 4�              �            �8             shuffle            deflate            �                 ������������������������P        _FillValue       ?      @ 4 4�                               �D    
   is_result                                           P       DIMENSION_LIST                                    ?�     [   �T��FSSE �       �     �     �     �     �     �     �   zE�FHDB         ��~p~       parasitic_eff��            resource	     �       resource_unit�     �       
energy_eff;     �       force_resource     �       resource_area_max�@     �       storage_cap_max�J     �       energy_prod�U     �       
energy_con�_     �       energy_cap_maxk     �       energy_rampingv     �       lifetime�l     �       cost_depreciation_rate�w     �       cost_storage_cap�     �       cost_resource_cap��         TREE  ����������������                       �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OHDRI(                x              x           ?      @ 4 4�              �            �8             shuffle            deflate            Q        x           ������������������������P        _Netcdf4Coordinates                                         =   P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                           `       DIMENSION_LIST                                    ?�     ]      ?�     ^   `��mOCHK            �P       DIMENSION_LIST                                    ?�     s   Q��UOCHK    �a     �       P        _Netcdf4Coordinates                                           ��>  �y{TREE  �����������������                              �                    x                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      OHDR                                                  ?�     _             ?�     _   8             shuffle            deflate            ~&                ������������������������    �     �        xـ�BTLF �        p   �        �  ! �        �  $ �        �  " �        �   �           �        /  ! �        P  ! �        q   �        �  ) �        �  # �        �  $ �          % �        :   �        Y   �        w  " $wؕ                                                                                                                                                                                                                                                                      OCHKD     
   is_result                                           P       DIMENSION_LIST                                    ?�     `   ���vOCHK    ��     0       �     t  REFERENCE_LIST       dataset                                       dimension                                                                      �@             r�             �Qu�            �k[�OHDR�                           ?      @ 4 4�              �            �8             shuffle            deflate            �.                ������������������������P        _FillValue       ?      @ 4 4�                               �D    
   is_result                                           P       DIMENSION_LIST                                    ?�     k   �3�OHDR/                           ?      @ 4 4�      �6     �                   �8             shuffle            deflate            �8                ������������������������P        _FillValue       ?      @ 4 4�                               �2|�w                                                        x^��}4����oe�TҰz`�&Œ&�	IVR�!�E��D1�G�����Z��H!�Y�a4�I�&a��5�1�xH�pUzX���1���=�����������8���@�?5N���V��X���# D��;W���G	�h��M�Ø����� ,�_��fiГ�}V ��ڽ��cA�K��1��rKő�Q08�QT�u����J�2a>"�{I�w o�3�[-�H��5�Ut0�9���9j�i�x�;x11|�A<�#ޗqp+Ґ�9��Z�XW(����Aif}�L��Ml.5
}���V���?��|:Zq�:��U2��#q�s#KRV@>d�3m�yH�rm��x���/-��6[C#<>8���K_��E�C�e��%E���=��,�KI�U�;8��!�c/�hE��aD�>���j�n��.X�ܠ �0���D� %�fE�f:6�3)���B�D���N�I���+�2x+�+�2��	Ӕ̂~`����\�<�����g�N�zq�UarU":�z�j^cڎ#������	Y�ZS�<%�|��o-��8�!Ӑ��P;d��0#�N�'ޞGޓ���_xJj( N����>Vys+�,��T��"+����^�%6z�.�5���́�8o\V��kx��Ɉ��Ĳ�Ȱ��b�d"��Xk��r>Bw���` �,y�?�?h�d�
�h�c�,�1z����$�h�#�tw�+ �	�[`�Ʉ-�&��HLH��P�3�=��W�sd�MsjٴN���<��C�9�9�g,-��9�![���t���a�&��I�v
QK>ωY���gS�&�<�y#8���*\L�
ꄨl�x�e"l�`��sRC�e���1I�w��ǩ�y,vr���a����l#tښ.����@��� 2RHS��6�5����`єZl�L�z"�ݝ.YΗ|I�R# ���l��g���$�hKԔS�`��%�E.p�u���*�h��D�`;������B	����\k*QzaW2I*�
�(a�z��.-��M�#�>g��� o8)�y����� 1m��\Io�P�u�J@����̧Ս�dB��mjv���Z���Z��iI�י�C$��҈7�,�Jk�"��������\K�
�	/���-{ސo�Џ��ԇ|�̱.ô%� ?���^���9 Կ�OMu���su�x0��1�q=��b�d"-E��%���^I�%e竪Y��v[������Cd,�/��Ӱ�q7(����f�oo�Hl3m0�/j���'�m�	�Z���I��w'x\mxs��k$UQ���A�X�4�Y6C67�<���������/=�l��c�J�"�6&�]�vۣw�.7��M��h*��ro_�����2���:��{y�1�c���m�qO�������R��_��{�l�YM$�ɞ}T�-��D�q�M��e��/���������`�X��Fi]��v��v�D�K��v�,��=f�Q��gE�����er�5�1�I#!:�\a��u�Ê�����0���n�M��O�<l3�_I����[S�����@���BC��P%�M��wG���n.V����nO�����s9��[���L���v2_�q������xo��g?������<sQ�y�����g*��W��̼1��p����%�O���Bߗ����~ٸl��n���p���yܢ\�H+��3��ۚu`���߼�30H�3fPy��/� kl�]2Qf=��Z)Y�w��i����;Z:#r��۪aDK�nk���T�V�_
h�5�F4��f� ܺ�X�LԖ�ҷ�c.��#.�1�k&��G�#����}���#�M��+�x<^W�p�����z��3?���E}��b��Y���S������kRC�s�ދ:�4��G4��u>�(6�~A���AZ�L4Zn�/h������_si��v�D��,���o�_���[fp������J�����P������>��>TREE  ����������������!                       0�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           TREE  ����������������5                       Q�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OCHK            �D    
   is_result                                           P       DIMENSION_LIST                                    ?�     l   C���OCHK    ��     P       �     t  REFERENCE_LIST       dataset                                       dimension                                                                      ��             	             �                          �P�>TREE  ����������������                       ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OHDR�                           ?      @ 4 4�              �            �8             shuffle            deflate            �B                ������������������������P        _FillValue       ?      @ 4 4�                               �D    
   is_result                                           P       DIMENSION_LIST                                    ?�     m   '���TREE  ����������������                       ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OHDR�                           ?      @ 4 4�              �            �8             shuffle            deflate            �M                ������������������������P        _FillValue       ?      @ 4 4�                               �D    
   is_result                                           P       DIMENSION_LIST                                    ?�     n   9��>OCHK    r�     �       P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                          ¿           N�             ��             �J             �'�TREE  ����������������                       ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OHDR�                           ?      @ 4 4�              �            �8             shuffle            deflate            �W                ������������������������P        _FillValue       ?      @ 4 4�                               �D    
   is_result                                           P       DIMENSION_LIST                                    ?�     o   ~y�TREE  ����������������                       ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OHDR�                           ?      @ 4 4�              �            �8             shuffle            deflate            �b                ������������������������P        _FillValue       ?      @ 4 4�                               �D    
   is_result                                           P       DIMENSION_LIST                                    ?�     p   )��OCHK    ��     �       P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                           ���           ;             �U             �_             ����TREE  ����������������                       ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OHDR�                           ?      @ 4 4�              �            �8             shuffle            deflate            �m                ������������������������P        _FillValue       ?      @ 4 4�                               �D    
   is_result                                           P       DIMENSION_LIST                                    ?�     q   ����OHDR                            ?      @ 4 4�      c     t                   �8             shuffle            deflate            r�                ������������������������    ��     �                       �&4�TREE  ����������������-                       ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OHDR�                           ?      @ 4 4�              �            �8             shuffle            deflate            y                ������������������������P        _FillValue       ?      @ 4 4�                               �D    
   is_result                                           P       DIMENSION_LIST                                    ?�     r   ^��OHDR (                                         ?      @ 4 4�      �     t                   �8             shuffle            deflate            �                   ������������������������                  !�r:             w\��TREE  ����������������                        ,�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OHDR (                x              x           ?      @ 4 4�      �'     t                   �8             shuffle            deflate            S�        x           ������������������������                  %7sB             �l             t!iTREE  ����������������                       L�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OCHK            �`       DIMENSION_LIST                                    ?�     u      ?�     v   H�OCHKD     
   is_result                                           P       DIMENSION_LIST                                    ?�     �   ١��OCHKD     
   is_result                                           ���e   �恊        ��Q5OCHK    �     �       P        _Netcdf4Coordinates                                           K�R                                �w            1LTREE  ����������������                               j�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          OHDRI(                                         ?      @ 4 4�              �            �8             shuffle            deflate            ]�                   ������������������������P        _Netcdf4Coordinates                                           P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                           `       DIMENSION_LIST                                    ?�     x      ?�     y   �OCHK            �D    
   is_result                                          `       DIMENSION_LIST                                    %(     Z      %(     [   �X�           u�            ����TREE  ����������������                               ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          OHDRI(                                         ?      @ 4 4�              �            �8             shuffle            deflate            �                   ������������������������P        _Netcdf4Coordinates                                           P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                           `       DIMENSION_LIST                                    ?�     {      ?�     |   ��ZOCHK    f�     �       P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                           ��c           �w             �             ��             ![٢TREE  ����������������                               ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          OHDRI(                                         ?      @ 4 4�              �            �8             shuffle            deflate            ��                   ������������������������P        _Netcdf4Coordinates                                           P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                           `       DIMENSION_LIST                                    ?�     ~      ?�        �V�lOHDR (                                         ?      @ 4 4�      4�     t                   �8             shuffle            deflate            �                   ������������������������                  �Z���FHDB         ����       cost_resource_area �     �       cost_om_prod��     �       cost_om_conu�     �       cost_energy_capP�     �       lookup_remotes��     �       loc_coordinates)�     �       inheritance�
     �       namesb     �       energy_cap_max_systemwide%      �       lookup_loc_carriers#     �       lookup_loc_techs�$     �       lookup_loc_techs_area�P     �       timestep_resolutionh[     �       timestep_weights_f             TREE  ����������������                               ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          OHDRI(                                         ?      @ 4 4�              �            �8             shuffle            deflate            .�                   ������������������������P        _Netcdf4Coordinates                                           P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                           `       DIMENSION_LIST                                    ?�     �      ?�     �   @̈́OHDR (         x              x                  ?      @ 4 4�      B�     �                   �8             shuffle            deflate            �;     x              ������������������������                  Q<�m            �l�TREE  ����������������9                               ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          OCHK            �`       DIMENSION_LIST                                    ?�     �      ?�     �   N-/xOHDR                                                  ?�     �             ?�     �   8             shuffle            deflate            ��                ������������������������    &�     �        +9�              u�             #�TREE  ����������������+                               �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          OHDRI(                                         ?      @ 4 4�              �            �8             shuffle            deflate            ��                   ������������������������P        _Netcdf4Coordinates                                           P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                           `       DIMENSION_LIST                                    ?�     �      ?�     �   S�fOCHKP        _FillValue       ?      @ 4 4�                               �D    
   is_result                                          P       DIMENSION_LIST                                    %(     H   �~��            ��             u�             P�             �Z�TREE  ����������������                               1�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          OCHK    ?�     �       �     t  REFERENCE_LIST       dataset                                       dimension                                                                      ��             mD��TREE  ����������������*                       O�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OHDR�(                                                         �        �8             shuffle            deflate            ��                   ������������������������P        _Netcdf4Coordinates                                        3   D    
   is_result                                           `       DIMENSION_LIST                                    ?�     �      ?�     �   �QOCHK    �             �     t  REFERENCE_LIST       dataset                                       dimension                                                                      )�             ]+.�FHIB          t     r     p     n     l     j     ��     ��     hs     ����������������������������������������������������������                                             )�            ��.TREE  ����������������                               y�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          OHDR�                                                 ?�     �             ?�     �   8             shuffle            deflate                            ������������������������D     
   is_result                                           P       DIMENSION_LIST                                    ?�     �   L`ʦOCHK    ��     P       �     t  REFERENCE_LIST       dataset                                       dimension                                                                      #             A`��TREE  ����������������$                       ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OHDR�                                                 ?�     �             ?�     �   8             shuffle            deflate            2                ������������������������D     
   is_result                                           P       DIMENSION_LIST                                    ?�     �   ���OCHK    �H           P       DIMENSION_LIST                                    %(        (�OCHK    C]     �       P       _FillValue       ?      @ 4 4�                               �d�'`#dTREE  ����������������&                       ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OHDR�                                                 ?�     �             ?�     �   8             shuffle            deflate            �                ������������������������D     
   is_result                                           P       DIMENSION_LIST                                    ?�     �   ?�ؚOCHK    !�     �       �     t  REFERENCE_LIST       dataset                                       dimension                                                                      �$             &���            b             0�TREE  ����������������)                       ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OHDR�                           ?      @ 4 4�              �            �8             shuffle            deflate            %8                ������������������������P        _FillValue       ?      @ 4 4�                               �D    
   is_result                                           P       DIMENSION_LIST                                    %(        ���@OHDR8                                                       ?      @ 4 4�      ��     �                   �8             shuffle            deflate            �^                      ������������������������D1��OHDR�                                                 %(                  %(        8             shuffle            deflate            U@                ������������������������D     
   is_result                                           P       DIMENSION_LIST                                    %(        �yVOHDR                                                  %(                  %(        8             shuffle            deflate            D     w            ������������������������    ΋     R           x"��BTLF ��� �  < ��� -  9 q|J�   , �F.� <   �J��   % ���� V  # Ѧ� }   )�:� >  & R���     yI� /  ! Da�� d  # l,��    ]3��   7 �X�   , d�� �   `��� �  # �t�� 
   F�f�     �}"� �   ���� A  3 7��   $ ��� f  G d�� w  " v� �	   ���� �   m�� /  0 z�E�                                                                                                                                                                                                                        OCHK    �     t       P        _Netcdf4Coordinates                                        =   ����  GCOL                        �                                  }�      	       �       region1::free_transmission:region1-3::power,region1::ac_transmission:region2::power,region1::free_transmission:region1-1::power,region1::free_transmission:region1-2::power,region1::ccgt::power,region1::demand_power::power   
       \       region2::battery::power,region2::ac_transmission:region1::power,region2::demand_power::power           A       region1-3::csp::power,region1-3::free_transmission:region1::power              A       region1-1::free_transmission:region1::power,region1-1::csp::power              A       region1-2::csp::power,region1-2::free_transmission:region1::power                                    �?            +       region1::free_transmission:region1-2::power             '       region1::ac_transmission:region2::power !       '       region2::ac_transmission:region1::power "       +       region1::free_transmission:region1-3::power     #              region2::battery::power $       +       region1-1::free_transmission:region1::power     %              region2::demand_power::power    &              region1::ccgt::power    '       +       region1::free_transmission:region1-1::power     (              region1::demand_power::power    )              region1-1::csp::power   *              region1-2::csp::power   +       +       region1-3::free_transmission:region1::power     ,              region1-3::csp::power   -       +       region1-2::free_transmission:region1::power     .               /              Z     5              region1-3::csp  6               7               8              region1-2::csp  9              region1-1::csp  :              �g     ;              �g     <              Y     =              a�      >              8�      ?              8�      @              �g     A              ֛      B              ֛      C              �g     D                   E                   F              �     G              y     H              �     I              �     J              �     K              �g     L              K     M              K     N              �g     O              K     P                   Q                   R              �     S                   T              �     U              �g     V                   W                   X              /     Y              �g     Z              �g     [              8�      \              Y     ]              Y     ^              �     _              Y     `              Y     a                   b              Y     c                   d              �     e              Y     f              Y     g                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 TREE  ����������������                       �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           TREE  ����������������!                       �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           TREE  ����������������8                       ;�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OHDR�                                                 %(     .             %(     .   8             shuffle            deflate            8S                ������������������������D     
   is_result                                           P       DIMENSION_LIST                                    %(     /   #eOCHK    ��     P       �     t  REFERENCE_LIST       dataset                                       dimension                                                                      )�            �P             2�_nTREE  ����������������                        s�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OHDR�         x       x           ?      @ 4 4�              �            �8             shuffle            deflate            /^     x           ������������������������P        _FillValue       ?      @ 4 4�                               �D    
   is_result                                           P       DIMENSION_LIST                                    %(     :   J��HOCHK            �D    
   is_result                                          `       DIMENSION_LIST                                    %(     ?      %(     @   8�o}         h[             6�+�TREE  ����������������                       ��             x                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              OHDR�         x       x           ?      @ 4 4�              �            �8             shuffle            deflate            6i     x           ������������������������P        _FillValue       ?      @ 4 4�                               �D    
   is_result                                           P       DIMENSION_LIST                                    %(     ;   VڐOCHK    M�     �       �     t  REFERENCE_LIST       dataset                                       dimension                                                                      ˌ             ����          _f             <��TREE  ����������������                       ��             x                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              OHDR�                                 @             �            �8             shuffle            deflate            hw                ������������������������D     
   is_result                                           >       units                days since 2005-01-05 16:00:00;    	   calendar                     proleptic_gregorianP       DIMENSION_LIST                                    %(     <   Y�lFHDB         9�
��       max_demand_timestepsfq     �       
energy_cap�     �       carrier_prodD�     �       carrier_conˌ     �       cost<�     �       resource_arear�     �       storage_capM�     �       storage��     �       resource_con �     �       resource_capF�     �       cost_var�     �       cost_investment�     �       capacity_factor�     �       systemwide_capacity_factor�4     �       systemwide_levelised_cost "     �       total_levelised_costK7                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   TREE  ����������������                       ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OHDR�                           ?      @ 4 4�              �            �8             shuffle            deflate            ��                ������������������������P        _FillValue       ?      @ 4 4�                               �D    
   is_result                                          P       DIMENSION_LIST                                    %(     =   � ��OCHK    ͐     �        	   t  REFERENCE_LIST       dataset                                       dimension                                                                      ;             �U             �_             k             v             �l             �             7�/RTREE  ����������������r                       �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OCHK            �D    
   is_result                                          p       DIMENSION_LIST                                    %(     b      %(     c      %(     d   �ܫOCHK    �     �       �     t  REFERENCE_LIST       dataset                                       dimension                                                                      <�            ��
i          _f             D�            g�sZOHDRI(                x              x           ?      @ 4 4�              �            �8             shuffle            deflate            �        x           ������������������������P        _Netcdf4Coordinates                                        =   P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                          `       DIMENSION_LIST                                    %(     B      %(     C   �e�6OHDR (                x              x           ?      @ 4 4�      w�     t                   �8             shuffle            deflate            ��        x           ������������������������                  �c�D           ,�XOHDRI(                                         ?      @ 4 4�              �            �8             shuffle            deflate            ��                   ������������������������P        _Netcdf4Coordinates                                           P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                          `       DIMENSION_LIST                                    %(     E      %(     F   c-��                                                                                x^c0e���`���o�~��Ơ���������n3�30\g`�� ҆�30��i��@1�O�����|��w0��\p���n�݃�3�\����2�� ;�"�TREE  ����������������a                              ��                    x                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      x^�{TW�GV�"�@�*V��Ga)*���� �� ��
Dʢ5Rd�Yآ� kx�%P)�
�
�Y�����$���C��V�%{�{�Dpn�]��|���o����L�o&	�b��B�pW���������Q-JÕ:�kj��Hu����@Y�k�����R$ABee�e��tU�q���MB���®Uϻ�	���݋����/y	t�������@�Ѯ� $d����u�кު���U��5��-˳��g�Ǝ*&
DX���
�2�����&ؚ�&�q��Y&�Ѷ&��X��'�7 ^�+�Ƴ+��kF�g��A��y�Vͼ�-j<Ǫ�xq}����O���V��k�3��X�/�?�к���#'b�Գ� *Zc�W�8D(.h1��e��RS���%90�D��ŸB(lN��ks��wZy�RB�S��6�R���P����EVG��x��Ћ�s����>�s��5�]����	�������m)�4�)��L�o��ϻE�!�ʺ�����%���wD���D!"lпF(���}.�<���������H����ȃ~u���'L{�َ�u�̣m<��#��CݼqIͼ�-L寻����֤o�ڡۅ�S6�WL��Tۀ��J݂��/_'ZnƯ��ק�8�C\�2�;�&�_	.^�jn����*����^���R�p�o݅+%t^���E�����ǵ��GV�$�e���.����Q%MO�w]K�m�:��S'�\��X��������L�s%2|�4/94��L��ZW�Xr�΅��M���##�#�0�%�##wF��}.�B�akI�����ϐr��p����o�9�GJ6Det|ٝ�y�l?��5�XsC�)��I�[����Un7��){W���i��[��d[�qA���t�ދ���<������O��?�RSh�.�D͖@\!�ii�^���6�§�WJ�|2�[�O(����ݯ�U%���<w����1���%��=wK?��`�lG��oj��e?��I\8`�W4l����!9ɾYog��� $s���a{s�fffФ�]�X�"F��ٮ�����>lFGa���"��n�d��Q��p�~8�H�]���$h�?Ɵ�y�4� �$~t��7F���Ba�J�u;��mvބ����~d���[�	ӊ����W�u�������1�k����Vゖ�;�T\j�q\�${7�m[|p�Hh����v7�p��i����y�#�,��^<G�<�������D��TŶt�j\q,��au:��v��\���"������Ώ���ḁ��b��n7[��;�d���5�=|<\\�Z/Zd$�!��[�D>"�a�l�e�{��F�k���	r�5��P	�q���^��z���Tc�3� >�@/��y�Dͼ�-J?:����1-� �����}OR';#�g�}igh����iJ�[~��模�1!hH��T��qA����g\j��O�����au�D�B�]G+�A��=;�K���+�1�g0��=�r�gPty<_�x]����3�T!��_I�qCH��d�����_6s?mz�����d�;݂���Mh�-Y�����~׶�� %`��%��r�����x�ѱ��b��9<˗=직�c#l� ��r|oc��c�ir �� ��?4�Yc����.��y~u�B��7����b�K�B�|��ݬ�m��m�2n>�����OWL"��L&�|Փ�7y0�������'�݀fz��yv��kE'��ǡ)�gM�7���2q�H��}�;H
/g/���
����9N�x�"x���g��y�2I��
�dŹN��9_UQl-�o&܊�����m�����boRQ�h�o��(��K�Ta�5�<�\�K.�;�
 <�_(�?H�W$��}�ssa����x �lnn9	�����>{��x<^~!����<�O�� *��yC[H��T�v��!�|��~�M&�Je�]]]R�L��I������N�w�����0+j��m��p��s:���
�u��z���u����i �����K.�;�_[��A�H�t���x���~����� g�CTREE  �����������������
                              $�                    x                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      OCHK    -�     �       �     t  REFERENCE_LIST       dataset                                       dimension                                                                      ��            u�            �            ���            ��             u�             P�             <�             ob�OHDR�                           ?      @ 4 4�              �            �8             shuffle            deflate            ��                ������������������������P        _FillValue       ?      @ 4 4�                               �D    
   is_result                                          P       DIMENSION_LIST                                    %(     G   �aX4OHDR                            ?      @ 4 4�              �            �8             shuffle            deflate            ��                ������������������������    ��     �                       �ZBTLF �        �  " �        �	   �        �   �        �   �          , �        >  & �        d  # �        �  ( �        �  & �        �  # �          ' �        <   �        Y   �        x   �        �   �        �    �        �   �        �   �           �        $   �        C   �        ^  " �        �  " �        �  - �        �  , �        �  ' ɬ��                                                                                                                OCHK    �     @       �     t  REFERENCE_LIST       dataset                                       dimension                                                                      N�             ��             �J             M�             ��             �^��OCHK    �L     �       P        _Netcdf4Coordinates                                     	   =   b#eK                                                         x^�{PSW�ϸH�u���K�j�5"�,*ZEA�!f(b��R( �P(����bO#���h1bb
]D-F@�a6+.h�=�����ݝ�����|��|�/!�$����(4��!`X*�S-��a,������t菪f(�la��?܄2��{��
�����c�����<=��¹BD��H�P�)�<��c�R,9=WY�d0w��%K>	����4��
���K�Ŵ���!ןw�~�Z3 |�Ε�W��w��F�P���}�����,�8����}��w�f��g�C����X��᣾ݣ����2�0Ҙ#t����>~$=�z���Lúj�*Ǯbz����^�Zq�&�f:��ԭgI��3�H��[�������3��ˬ>{��-�sf:GnK	��J�*r{�/!^�N$�G8�f7v}E)#��	�)� F׈�
�:ra>�aHG���N+q��Y3.nh({!3N�<J��bN�'�3iH�B3�d �R�;d@�ZZ|>��}�0�~�j��H�y��YV���	>m��zGUC3�Ӿ31�|�"&3�����L�=�X���XD^�TY�H7�Ɖ� �Y���A����3+��!��Ӝ�����o��ۇ�w����/�2�./�9��a�EN~�����K;Y���xG*f�HO���RZ�%���"�L'rq�nҳ�^'���^qФ��Y�ԅ�|�{���7�9%R�u72����	�i����g!�eK��=< h
p;�[��Z�H��iS9-��G�M��#k%�rF�V;����q�-;�}a�1�M��_�D���%*���[�#n�w�P��T�T[�)D&kme'����D<��'d�=��I�W�&"�1���90�p�A>`?���	c�y�3�(�����Cni�S�~z��\]M�LL�4��k���v��y,ׅ����>����^�{'�SE%�'A�0�9}�*Os7�*`���ˇ���g��ۯSk������95���p�XG�T7�S�W`�gu{��>X��a�c%���´dI肞��#�BN�/2�t�1<�Gg�ꢈ����D�3L��>�޴��ҵ�����s�46has^s<ݫlN��i�ޠ�q�0�iN��g ����^�k�hE���Z�*%��9�,�pŶ� �[��rc�h������v�-LM��%�����D�8m�CT�=�z��d��l��*IJ�47wsc�ͩ��gts�����~&�D�F��(�VRtt���:��h�%�:+�+�!�a��L��)�=S�i�6V2����\FZ��Y��\މX��������] �;�� Y��D�~!��T�,�:�Ȁ~�3y�~`�}�z7�<:������?�q�K��b�sY�\,-w�?v��.�� %{�Lί��9����9B��/2�t�'�N�����W�^v�*�W�щ�s�na�)=),��t[��ғ��6;ѥ�˟�V��^��R��^��o�M��{��R{+?J��[F�-�_j7D�#m��+^��x���Q�r�����,��@b��!���D�xx��[���\�
(�/�32�_S���T���N���jO�g��"
��9����%�$@�
E.���	,�}�=O(�&��A�ʎO�d���D���CC�����CCg�\��xh�4�y,ׅ�5W,�@�JY�{�:|��� �����d��U~(ҋ�R��P��<\��3����� 7t^�[��mjC7/F��bT�\�[`��rōx+
�:����G���U_f�3�l�!y��2��t���W$����I��1��J�����a��-���(��<T�:�����Λ��^;�^߯���7�s���:�Wgoվ��}uʚ�?<�]����SX~�慅Fz�V��B��Y��u{WuK|[K�}h"�c�A8ؽ��Tw����:������y����g����r���j����~&)Qh&Ꮐ�P�Y��)		 �8��oc
E`�`�e���#+T54c\ɴ��e�f�98�: �ľ������X.�G*�����U��Ibn�R��I=�/n��1�!*���e�x"��e�������??��%d�
���!9����;�<���2��0�:'^�[&�}��-�Զ��u�����ƿ��Iq���Q��d�~�2�\l����F�A�h���t�1uF�f�߰&gg���=.k��ż]��ש���ά��L��u2\`[��PrG�#�����u��&��M||D[f�1�dY��L�e�'��3�)3*���]�si��\���;�AnD_N��ņLt����(�-�.~�r��Ʀ���:�͵/��'��*����4<�B3Q1 >B�:$cADDT�ý�C�����?�����S��l��������~�
1�����<��(-.*��
y��r���`Q,*,U�s��l��)Qy�gT�WZ�-:�-)��#����Ӯ���ܲKj���Ǿx��Q�PX�l��D8ؕRt�fD"��E������7�c�~�2��ok�駶�����vv<�@�v�A�în�HwWg��D����^8���R��J�ҷw�k�'��������B�p�����8'�r�`�WC�Y�{r8S�	�L"�ЌH����"|�E�WFc5*��M����3�xOӌ���n5i�+�?���e�!>���Mh�Դ���U~l���?`
TREE  ����������������e                               ,�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          x^�1
�  @�'t���FC�E�lhjo�1W'� ��:Gs���k��|��'1��`e�� �5,�\)�����?��O'*z�s�����rs'g?���.�-TREE  ����������������!                       ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           TREE  ����������������)                       ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OHDRI(                x              x           ?      @ 4 4�              �            �8             shuffle            deflate            �        x           ������������������������P        _Netcdf4Coordinates                                        =   P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                          `       DIMENSION_LIST                                    %(     J      %(     K   �Ɇ[OHDR                            ?      @ 4 4�       �     t                   �8             shuffle            deflate            �                ������������������������    ��     �                       ���           ��            �)ҪOCHK            �`       DIMENSION_LIST                                    %(     M      %(     N   A �aOCHK    ��     �       �     t  REFERENCE_LIST       dataset                                       dimension                                                                      D�             �            ���FSSE �       �     �     �     �     �     �     �   � "   �T� {4POCHK    o�     �       P        _Netcdf4Coordinates                                     =      P       _FillValue       ?      @ 4 4�                               ��Q�� �            �1)7OCHK            �P       DIMENSION_LIST                                    %(     O   ����OCHK    -�     0       �     t  REFERENCE_LIST       dataset                                       dimension                                                                      ��              �             F�             �]�?FSSE �       �     �     �     �     �     �     �   � �   �9�      x^c��q�aZ '������R��20��`������  �
7TREE  �����������������                              R�                    x                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      x^��y<����R�){�qt1��k�L)D��س\۱/ɒd�1�3�&�d,ǒ=±T֌�Q�\���9^��?��������<���z^� _1?K�ڙx�f�c9!��`�r��R�s�f�P6�R2%aEU��p�֡�ք`�Z��:�e<��P�MfoP˘��B��_e��\˅�,��(E����1�K��ϥ��w)�������2�� 7'�G$��Bh�5iH
B_d{���ccyGݵ��"b�Aj58�]W�N��h��䬞�_CmQ��0[����潵i?�m6Q��~�շpm\�Կ�����T���y���j5cf�����e1����GIH`�%%P6RwUU�:�`����֯�Ltbs���"��s7yђk���RTdh%��m���"�o���.BA�P�]����a������|���m���(�FЄ��j��m�-緵���I�ie1x4�wE��kU�|�S�V���qlX��Yx�.�#���O��{@z|�æ�2�+U��o/�گ�g�V#l����㫢Ë$b�9B[r�-���U��{�L���b�I���#shla�FJGE�΋��S�К�]�Fav:�(tZ�RK��EC�%}��ZZ�E����Mu�`\���q�2Cab[\$���W�PD_��ʱ�	��*���M㦅S�5c���9��N��IQB��mt���L�ģM4j��f<�Z<�'}��P��Bd��'�N�q�47��"ɡ��LV�ߏ�Ȏ�)�I�U_Kz;f.g��8,�R���h�j��88�H]KC�)9���5�{��}��:1���rT)=�2qQ�Jxcݸ$�%�b�4���x����]qhf�po
p\����C(�[�q�˜��ّ��Y�-�'�^��v�	�B����b�� ��e ��m���:8�PL �[�f���-/��ĺ�**պ�+�������$:]��
Bog���K��o�%,�P����+�����Ow7A_�]��04�~H�H�3����;��N�L�r���,�;%�v�Ei���V�|π%ҽZYW~C�zsKWC����S���W��,�c�\��8=����m���W��i��<icE�'� �";����Cn\r<�R���8X)�kg��$�A������(+}J�(Ͷ&�3-aS��6.W���ʑي2��eg����{��O��gE|�P�.�Y�u��.�}���L��3��zs���ͮ�����%<?�L�5���cg���&��t��55W��P�~Փ{	��߂�H�a���I�z�]w����T����hͻi�sJ����3�!"o`Y3��o8�Op�u�μ�]����p�7�Φ��ӛ�#�NZ$u��7A��[��p�
uyYˬ�g�j����8���t�H�I��;��z�S�0"�g_6���#��P��H9S �q���Ync��d��I�3ќ'���_)�U�E;����,o0���H�L&��3�PG�ϫ�(�Efm�#� �v�=�Vi���!k�m��BB�}�gJA0.!��s�^�:ȏh����ģǏu ?��x�xG�-\�^B����Ŏra���6
\�z�*}m,�=.��r���43�����I񃴻Q�>����k ��@s#}u�����DW��Њ���G�x�&{1�Q�N�?@�66�L<�V�Aw�>B�0�U_�L
������)��= O�zm��ʹcU8gn�+H��.�~<ǩ5�B�MU�	��o���5��8��2|G�Y!m>�1L���]�T��H����	lM�SzYQv��L��@��*�u�wc잃�\w-Cu�f���	:b���<?++�]C�����*)��ۇ0��a����C_V�K���5^<��F�9`曺��%3������A^9�g����������ޏ����o`hx���k��W�}��/�����������4�Nge�`;�L�Z�{�o���4V60�Q)�s�w�䷛�aNn�#�L;[���(�ӯ��LG8��r������*eyvh��;�����c�ꀘ�Ԍ4D
(#�*��Wb0U�j��K]V^^��b�`J�32��V`p�b\eqNLL<"+U�{
�TUa����� ��ʾ�^ɹ=������-�����5�s�_�K�?���TREE  �����������������                              
                    x                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      x^��MHq��&jhZ���NJ���P��̓%�&"��V"S3lrE֩����t�5��J7�RVS����du��$:�����b����s��!�YY�p���?Ұ�p<"!)},��*-z|WX6"��~b�Q�ҵ�x���V�|x]^�@��+�#�|���:~����A#q7�	)9+�ͨ4wA�����IAH���,=o��i��Y��j�͘L&}�6�ދ�L��}m?x�L?��<���d����՘LEGրbo7��Ң�Ɔ DB�>1�[K���HQ�N!�UҬ��(�,ާY�ɪ<ݫw?�J���N�����*J���;��#1�8��-C�4*m�`x��HH��`��JӶ�r�#Ҳ�4	Ոj����0z��^6�se_:x��z�?�4>��|�a<C�7���0�ׇF��}f�r�wK�d�x"}�0��� ���
�E���}ijCT���`��l�V����k.�? >_@���t�����8�hd���^��@纝��DTZ�ӹL�H���tz��,�"N�#�f+B��j���/IRl�xf]A�T#'t��w��}�"z�\�$9����C�t9����Q�)A���b5�8���RT�iA�-C�+�]�U��ᚘ�P�����c�]��qao�����>=7;F���;�	���,|������*�z�����c�%�TREE  ����������������!                       �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OHDRq8                       x                     x           ?      @ 4 4�              �            �8             shuffle            deflate                       x           ������������������������T        _Netcdf4Coordinates                                           =   P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                          p       DIMENSION_LIST                                    %(     S      %(     T      %(     U   "��OCHK    ��     p           t  REFERENCE_LIST       dataset                                       dimension                                                                      �w            �            ��             �            P�            �            ��l!            <�             �             ߤ��OHDRI(                                         ?      @ 4 4�              �            �8             shuffle            deflate            b)                   ������������������������P        _Netcdf4Coordinates                                           P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                          `       DIMENSION_LIST                                    %(     W      %(     X   ����OCHK    �            h    t  REFERENCE_LIST       dataset                                       dimension                                                                      �w             �             ��              �             ��             u�             P�             <�             �             �              "            K7            S�R                                                                  x^kf������6�A�C�s��>808  s�	5TREE  ����������������                                      \"                           x                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              x^�}L�G�DD--�i�:g�|������Q�2�P*:����ѐ�Z@J+:tM��Mq0>Ԋ���GQ٢5��"����z�_K�b�%�������{� ��9�4���7H�.��t���M�Hgl��w�<��{<Qdÿ}���jӨܘ[�	p=y�����XtT[
���oCP�b�2 "E��jP�Ii,J�.�Ђ����P��uߌ���Q���ΏBS����XP�c/lܘ��D8̩ +�סy�d=EL��$��ڵ�*��3����ܢ�3�y4�[@#��B�L��7�5+�q��B>g-��Їt���ծ��kE�
�a}Wr�/���<S��
�np��/�+3Ig��B
N1̆8�JX�,0�����ב�k���p��V�[�^Y o��
ϝu�uu�=)�d��ݨM�4�.�Ђ��w#��~@�F��)�FN	� �2�Y��'���~e����ìoolmp�M�����S�4��O��tI�**��pVp0�"�g:y4?[�%iC����G�X��N�|@%A��1�?A_��9R��#�s7�v{X�E�c����]�`&{�S���v�t�t��HglV�]w
���kv�h�׎�#��6��op}��h���6~lL�s�I���s>��X�+u�V�R��T��Ђ)�:(�n`�[q���p�w��Ekf�iB�ʤ�r <T��wr9�)���a��筶n���I7�s�+����R�����h�4��L��O�<�/�-��������[ڦ�K��� ��ѡ�=��k\j�";VM��'������ �K�4����<%A:Da˽Ǥ3	���,�:J�
�_/��'�Ѱ���ѷ_.;ד�ח�t><��|�i r�=��w��4R����pR� ��1��z.�N3��S_\�t�_�x�㦿�?��4�qs�#��v��8P�n�'��:\�~�~u�K���"��$�i�Z=����X,c��l����G�2ظ�h$�%}<�L��憦RI�E�WB����^�aLs�c�=��L�c��eyi07�H��.�;����oG:�`�G�;�MK�<��������.1���'�S�����eφ����z�j7����9���O*���Ii,�����<=�+7�3����y��FD.�U�-���jl�G�V����f�K�b^=���ٲ�eԞ�"�ɪ�{���i4g��G�)��z�P�P ����W�Ѫ�л��=|����T$�g�υ�������\���찇���>�_^��S��Tnv��CDz��"�IPP!�����N[�Kr�v�Ή�Ϧ�4�$V^�>Bv�Bg?^�T��l۵�O�f��I�-�{�2).��O�%��'�a,�����_|=�7�o�3pWX[���� ��4�̙�T�����Ό*z��{����SOo���S�4��>gqF��#���u�79VN:�9�hn����*�O��,�i]#�a ��B?��n��:L,[<�6{X_H�c��Es�4�߇[�
�j;���t�_Ig��H��!��2Y�45Y"��e���\&���'�i�R�}���f�a�5,m>o`��Xuf�������s�ug���z���M��Ki��qv���4�ѓ\)�/�/k2�mi�:��`2�L�hL���0Gؠ���3t��64*	�u���[w{&ӖN��혌a����?����"��ۛT�{M�˿�x��>����#�~���K�/��#%«w�YӁ������� ����TREE  ����������������@                               �;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          OCHK            �8    t  REFERENCE_LIST       dataset                                       dimension                                                        	       	       	            h[             _f             D�            ˌ            ��             �            �            �             ]�FOHDRI(                                         ?      @ 4 4�              �            �8             shuffle            deflate            �T                   ������������������������P        _Netcdf4Coordinates                                        
   P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                          `       DIMENSION_LIST                                    %(     ]      %(     ^   V��OHDR�(                                         ?      @ 4 4�      /k     �                   �8             shuffle            deflate            cs                   ������������������������P        _Netcdf4Coordinates                                           P       _FillValue       ?      @ 4 4�                               �D    
   is_result                                          �.<�OCHK    ݔ            �     t  REFERENCE_LIST       dataset                                       dimension                                                                      fq             �4              "             K7             ;Ȇ&         �hEOCHK    ]�     `           t  REFERENCE_LIST       dataset                                       dimension                                                                                    �
             b             %              �4             "            1��K                       x^K���nU�mCƚ_:�_2�i���W�AΤR�����6����a�[�f<�V����  ���TREE  ����������������q                              F             x                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             x^͚	��U�O])�6�����^LjJIҤ��h*d�(�G�R��,i�%���K�,)��P�\c���^�"˘�g9����q��S�g��������������?�s��9���v�s�\�
��2h������n�v!7���eR��s󝛢�u���D�i0ܹ�����4�)�5#ts.a�ù*�����r��j���P�28�M9�k�s��5�'�EXi@�%aME�j�:P;�H.S;r���BGO!�F�B���{|M!��#|�n�!�o�$C�u��� ���S�	�+�x����Z���H�i�U�B�A U����@��ρn3�d��r��Z���Ԇ�x���6�^[�����n�hأxm��{3Isa�­r7Y�f�� ,]	�v@�d���`#()����fX����;�������ecn�.+���y�B��M��?� �]���t�G����O����:��kj�vI'�	4�Wu�M)p�m ��.��C�^W�K�wφ� �8�r�쯡�͛�n������FC��KGH��11y�X���э}�(I)�~���Э����@��A���tK�0�/dw*�k�U�	w�c�3�TW�a0ڠbp�]�G-�G��P�6��z !��������}�+f@�|�A����;Հ�6ـ�v��_%�u�sݵ�I���n��f�a��P{��_��M;Z��\/Îk|�VHFHq�yX�C�an9.ĺ���� ��Sw
�n`�\� ]6!��t�a@����A������=��qĨV|�P3����' ���&<�Ӡ�o@���	z��Â��ׇu{�w)<&w�]�	��m% ��FA��W �� �����@�y� z/�I��bϲՠ[��@�՝p&y��������(�M/����$�{���n>1T��9�=��\^F�=,�`@wO�b �K�i0g1��V w"LOz)��pJh>�Ho
�����I�Ukvqu���
|���ZJa��j.s�!���-��$��n�]M�?����"�o[�X��4�~��>�΍� ������1餣���Ӽ��\8jP:$�k�qn����öP�����������K��i��.��
��6(�AP�U7��QI���5P u.�r�A��/�'ı?aCp�[��ٺ���+�
�]{��ֱ���M;*YU���*��`�e�Zë���r�i��y�K&H���X�<��g�
�XR?f�3�4����jt��?�����3q�2�@��� ��ݎ� ݎ,�i�}V��j=n�����*��V�4���Yoj;j����a�8[�C{^��!X7q��vrY�-��T�M-�.@�; &7(�����{��8�ё�k��۷ɠۖ�����A��N�`�q�H��k@���nmZ�(�q�W�n��u��4J���:���0�?ٮ�Pϊ��#����� ��Tк@�I s1�rD���s�t�J���2�B��IB�����?�](�Ρ�+�pDA�1q쬛DW�yZB2�T��_�0��~�Dh��$���:�
���b�1d��'��A��)<f����8=n�ӥ h����,�{��*��1�-O���w9��K�&O�ZJ�M
��R��m6�m�O���ySߖl{���%��O��$�o�紝�x1�J�w������ÑY�]�h��I��'�_�9_$yHA�)�o�rdF0��4?�dBb���=�=��r�Sv�N�R��V�.�!����e�$���10��'Y�[��2���n�V��m����� oU���R��7�.�}�!j�m@�<�e$�ϺIB�G�Jl�K2Ro	�[�L)�h@r-l�	�!�;�j�et G ����/��t�4,H�n?��^�pRBv]ЭC�mJ��������X7��F��x�OL�pIh�:��c�����0p}.�}x�ɲ U�.��:��FЭ�߃n�I�����3�/��z��z9��]
��|�� H]sЬ���Fc�d�uK���dE2�ǝ�6si���|)Ϡ�S�atk�ή�ʶ(<�T��W
���v��~�i�B����Z�R�&�s���B�n3
jpR�d��x���t��U�oޓG��<)�n!�y��8i@7]�#v��z$_3ʠvp�5���K�@d�2]t��~U�?�
qhKةA$?i��5��Ē}�����L%�u�B�0Kʥ�<DO~��#���UWK��MZ��A,#Lɪ1 U�; n>t�rtK�%�Y����N��u�D��m���5�\R��3�iI�h�3�9�s�n<�u<T�ȸփ�M6x��T��p��� ^�`�1���gK��YM�O:}n�r�m�ۮЭkMЭ�� ��N����� ν4t+St��B�m��D����u�i`�(��P�
��'^�,��4i���	��Z��A� ��Ly�"�lz`lr~�p2��TZ�K@��&��+p�7	��8�$8G�P��$�$��E������ɧl�b�r�<T|���%���6��7�O�d��2(j?6D2�!ݟ_��֐��#ޏ�d�\8 c�g��*Ď,'D�a���M�b�8��x�\epȚ���$E!N�+�x��-�y��W]�Ś<��8�>a��h߼{�D��#�ӂZ㤁n��X7��P�A���7���mH�Ad��Tt�MBȣ�8�.��l@k� H���NA6�UA߉\�u��@wn���Et�����j貱�������]U�F�Tk����&ݾ+"Өq��I���\������Q�vA���B��0ߴ�yv�$��u�Dvt���l�)���m���\m�� �j�� P�: ["���5M^ h�vme�nU'�n��n���8����g��d{�~�m�^����A��Nh��7�� \Ǻ�}�+y���I84��㡯�xȫ�P�|�g���@̓xO]��̘���R;�Ĭ�c��*�oN��B��XV;�(	��~"U�ɛ�k��$���>�f�
֍^n����9d̺Y������Y��s���xt��t��'��q�cH�N`�Y�6�p>4��#�(������In`��#�Nb����Y�Z����d�����e�i(b���!Ү^)���o6��!_��;���@�O�LC���n\����K��=�u�^��5��t]+
����2����4��B͊e�ΎT �R�}�<r�ɗj���!#@vB&@���M����&���U��RaO�m�Ýʑ�ĭec�R��2���`� 6Ӎ���̜�a{�N�*+��f���L�!���Z;�5y�k6i{6�*��#���;��N��I53=���x2�vn?m��}
�2�w�~ �h�� �{d%*�
1ݸo��*��B���s�<"2d!X��e~��dؚ���فn9Y2&y�5Z�Ƈ6�L�|���ҥd���/��_�4�� �;ȿ�����@�M�� }������~����R��)������k~A�g�9K�����P?ߚk����Y@��ۚ�u��#M��/9}�TREE  ����������������4                               �^                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          x^c``�پ�����3�\6k�\��$s���Fw~��q�݁��z{{{ b�gTREE  ����������������4                                       /s                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         OCHK            �`       DIMENSION_LIST                                    %(     f      %(     g   �/G                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            x^c``�wȞ������d�� $���$�@R`��?~Z������� *�TREE  ����������������                               �}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          x^�Y��⡾� �