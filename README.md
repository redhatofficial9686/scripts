# scripts

https://youtu.be/ht7tXR18UW8?si=i4Zuf97vqulqbDq8

https://drive.google.com/file/d/1TyvrKWEMAggguJlynI6zWh_s1XjQB22R/view?usp=sharing

https://drive.google.com/file/d/1Pz_Pos-UqzDJt4CocqFKxeE4MeGTnfuY/view?usp=sharing

https://drive.google.com/file/d/1J_-zt-lssz3wYGl0M26u3sPbLoWh70lf/view?usp=sharing




INVERTER:
-virtuoso &
-file ->new library->attach to an existing library-gpdk180->apply ok
- file new->cellview -> select created library-> give cell name apply,ok
- i(component list)(select gpdk180nm) and place cmos and nmos
- p(for pins) vdd vss vin vout
- connect the wires
- check and save
- create->cellview->from cellview
- apply,ok
- draw the diagram of inverter(create->shape->polygon)
- check andc save
- again file-> new->cellview
- click i and place the created cell
- analoglib->vdc->DC voltage 1.8v
- vpulse ->voltage2 1.8v  period 20ns, delay time 1ns,risetime 1ns,pulse width10ns
- place gnd(4gnds)
- cap(Capacitance 100pf F)
- connect the wires
- Create wire names vout and vdd   save
- Launch-> ADE L
-setup-> simulator directory.....->spectre
->setup->model libraries->NN
-Analyse->choose->analysis tran
                Stop time 100n
                accuracy default MODERATE
-Analyse->choose->dc
          save dc operating point
          component parameter
                  parameter name  =dc
                sweepreange-> start 0   stop 1.8
                sweep type linear
                step size 0.01
                click on select component and click on vpulse
  -Outputs ->setup->from design
  -simulation->first option
  -click on split
                       
