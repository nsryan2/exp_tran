# exp_tran

## Cyclus References
*Starting a New Scenario*: http://fuelcycle.org/user/tutorial/sim_parm.html
* Big simulation block (everything goes inside this)
* Control block (only once)
* 

*Control Parameters*: http://fuelcycle.org/user/input_specs/control.html
* duration (required once) - time duration (months)
* startmonth (required once) - starting month, 1 = January
* startyear (required once) - starting year
* simhandle (optional, once) - simulation name
* explicit_inventory (optional, once) - boolean, when on it slows down a lot.
* explicit_inventory_compact (optional, once) - boolean, when on it slows down a lot.
* dt (optional, once) - the duration of a single time step in seconds. Default is 1/12 of a year (i.e., 2,629,846 seconds).
* decay (optional, once) - choose one of:
*   never: no decay
*   manual: decay only if archetypes/agents explicilty decay.
*   lazy: decay is only computed whenever archetypes/agents “look” at a composition.
* solver (optional, once) - configure the DRE solver.
*   choose one of:
*     greedy: fast, based on the average preference of exchange groups
*     coin-or: use the COIN-OR CLP/CBC solver suite
*   allow_exclusive_orders (optional) - False doesn't work with cycamore, but guarentees DRE solution
