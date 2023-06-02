# exp_tran
2023 Summer proejct.

## Cyclus References
*Starting a New Scenario*: http://fuelcycle.org/user/tutorial/sim_parm.html
* Big simulation block (everything goes inside this)
* Control block (only once)
* Archetypes
* Commodities & Recipes

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

*Cycamore Archetypes*
* [Source](http://fuelcycle.org/user/cycamoreagents.html#cycamore-source): a generic source of material.
* [Enrichment](http://fuelcycle.org/user/cycamoreagents.html#cycamore-enrichment): for enrichment of U-235 in U-238, constrained total enrichment capacity.
* [Reactor](http://fuelcycle.org/user/cycamoreagents.html#cycamore-reactor): Fuel is modeled as batches and assemblies that are reloaded at regular intervals.
* [Separations](http://fuelcycle.org/user/cycamoreagents.html#cycamore-separations): Takes in materials and outputs isotope streams.
* [FuelFab](http://fuelcycle.org/user/cycamoreagents.html#cycamore-fuelfab): Mixes fissile and fertile stuff to approximate a recipe with the d-factor approach.
* [Sink](http://fuelcycle.org/user/cycamoreagents.html#cycamore-sink): Takes in whatever, no output.
Format:
```
<archetypes>
    <spec><lib>lib1</lib><name>arch_1</name></spec>
    <spec><lib>lib2</lib><name>arch_2</name></spec>
</archetypes>
```
*Defining Commodities with Recipes*
There isn't one commodity block like the archetypes, instead you do one <commodity> and one <[recipe](http://fuelcycle.org/user/input_specs/recipe.html)> for each material. The basic blocks look like:
    ```
    <commodity>
      <name>u-ore</name>
      <solution_priority>1.0</solution_priority>
    </commodity>
    <recipe>
      <name>u-ore</name>
      <basis>mass</basis>
      <nuclide>
        <id>92235</id>
        <comp>0.00711</comp>
      </nuclide>
      <nuclide>
        <id>92238</id>
        <comp>0.99289</comp>
      </nuclide>
    </recipe>  
    ```
Recipes are typically located at the end of the input file.
    
## Cyclus Tricks
* Run `cyclus -a` in your terminal to see which archetypes you have downloaded.
* 
