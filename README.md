# ruby_exercise_pets_and_owners
ruby exercise 

### Instructions
- youtube video that goes along with this tutorial https://www.youtube.com/watch?v=7LIo9bioW5k
- This is a ruby exercise tutorial that I am making, solving, and posting on youtube so that you can attempt and have a guided solution if needed. 
- This exercise will be broken out in to 4 parts called iterations, to avoid working on too much at once. 
- I will create an iteration pattern that is meant to guide your development of the software. 
- I will be using TestDrivenDevelopment(TDD)

### Tools 
- Minitest (testing framework)
- Ruby (language)
- Pry (debugging)

### Iteration 1 
Create a Dog class that responds to the following: 
- foxy = Dog.new('Foxy', :australian_cattle_dog)
- - return: dog object
- foxy.name
- - return: 'Foxy'
- foxy.breed
- - return: :australina_cattle_dog

### Iteration 2
Create a PetOwner class that responds to the following: 
- foxy = Dog.new('Foxy', :australian_cattle_dog)
- - return: dog object
- krypto = Dog.new('Krypto', :pitbull)
- - return: dog object
- david = DogOwner.new('David')
- - return: DogOwner object
- david.name
- - return: 'David'
- david.dog_family
- - return: []
- david.add_dog(foxy)
- david.add_dog(krypto)
- david.dog_family
- - return [foxy_object, krypto_object ]
- david.dog_family.length 
- - return: 2

### Iteration 3 
Updating the DogOwner class to do the following: 
- foxy = Dog.new('Foxy', :australian_cattle_dog)
- - return: dog object
- krypto = Dog.new('Krypto', :pitbull)
- - return: dog object
- bear = Dog.new('Bear', :australiand_cattle_dog)
- - return: dog object
- mr_jingle = Dog.new('Mr.Jingles', :chowchow)
- - return: dog object
- david.add_dog(foxy)
- david.add_dog(krypto)
- david.add_dog(bear)
- david.add_dog(mr_jingle)
- david.get_all_dogs_by_breed(:australian_cattle_dog)
- - [foxy_object, bear_object ]

### Iteration 4
Using the above objects create the following methods
- david.sorted_dogs
- - return: {:australian_cattle_dog=>['Foxy', 'Bear'], :chowchow=>['Mr.Jingles'], :pitbull=>['Krypto]}
- david.ratio(:australian_cattle_dog)
- - return: 50.0
