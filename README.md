# Domain Practice lv1

In this DQ you'll practice drawing your ERD diagram to plan out your models and methods. If you are thorough in drawing this out, writing a lot of your code will be very straightforward, so try to be detailed through each piece of this DQ. 

Think of this a little like a scavenger hunt. You'll start here, in the `README.md`. After you finish each set of "clues", they'll direct you to a different file where you can check your work before moving on to the next set. 

## Your Models

You will have three classes: `Animal`, `Plant` and `AnimalToxin`. `AnimalToxin` belongs to `Animal` and to `Plant`. `Plant` has many `AnimalToxin`. `Animal` has many `AnimalToxin`. 

`Animal`s will have a species (string), domesticated (boolean) and diet (string). All attributes will be readable. Only `domesticated` and `diet` can be changed.

`Plant` will have a common_name (string), a scientific_name (string), and a color (string). All attributes will be readable. Only `common_name` and `color` can be changed.

`AnimalToxin` will have a plant (`Plant` instance), animal (`Animal` instance) and a severity (integer). All attribute will be readable and can be changed. 

## Your Instructions
Draw the ERD Diagram... try to be as thorough as possible. You can use https://awwapp.com/, Google Drawing, or any other tool you can screenshare with your group. 

Make sure that you include... 
- Arrows for associations between models
- Instance and class variables denoted correctly
- What arguments should be included in the initialize method?
- What readers and writers should there be?
- What object association methods would you need to write? Do not write them yet; just write down which you'll need.


## Next Steps
Now to `DiagramPlan.md`. In this file you'll see one way you could have drawn this out. Check against what your group drew; where there elements in the solution you didnt cover? Anything that is unclear? 

now...


now to `solution_class_basics.rb`

Got here pretty confidently? Excellent! Now you have time to get into more logical behavior. 
Go back to all_classes and add....
- a 
- b
- c 


