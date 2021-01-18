iginiib
# Zoo Lab
​
Welcome to your first day as a Flatiron Zookeeper!
Today, we are being asked to create a three domain models - a `Origin` model, a `Zoo` model, a  and an `Animal` model and build out their relationships! 

Here are some questions to consider:
​
* What are your models?
* What does your domain look like?
* What are the relationships between your models? 
* Which model should know about the other in its initialization?
​
## Before you start
1. Run `bundle` to install gems
2. In order to test your code run from the root directory `ruby tools/console.rb`
3. Write all your test code in the `console.rb` file
​
## Here are our deliverables:
_Keep in mind that in order to properly build out the relationships between the three models, one of these classes will be instantiated with objects of others. This will not be mentioned in the description below, you need to deduce it on your own. Consider where and how this dependency needs to be implemented._
​
### Origin Class
- An `Origin` should be initialized with a `continent` and a `country`, which should both be passed as strings.
- `Origin#country` should return the country for the origin instance.
- `Origin#continent` should return the name of continent for the origin instance.
- `Origin.all` should return an array of all the origin instances.
- `Origin#animals` should return all the animals that a specific instance of an origin has.
- `Origin#zoos` should return all the zoos that hold animals of this specific origin.
- `Origin#animal_number` should return an integer that indicates the number of different animal instances an origin has in total.
- `Origin.find_by_continent` should take in a string of a continent as an argument and return an array of all the countries within that continent.
- `Origin.most_animals` should return an instance of an origin that in general has the most animals.
​
### Animal Class
- An `Animal` should be instantiated with the species (e.g. "Lion", "Koala", "Lynx") and name (e.g. "Mufasa", "Simba", "Fluffy"). 
- `Animal#zoo` should return the zoo instance that the animal can be found in.
- `Animal#origin` should return the origin instance that the animal can be found in.
- `Animal#species` should return the species of the animal.
- `Animal#name` should return the name of the animal.
- `Animal.all` should return an array of all the animal instances.
​
### Zoo Class
- A `Zoo` should be initialized with a name and address, which should be in passed as string. Keep in mind that the Zoo's name should be able to change, but its address cannot.
- `Zoo#name` should return the name of the zoo instance. 
- `Zoo#address` should return the address of the zoo instance.
- `Zoo.all` should return an array of all the zoo instances.
- `Zoo#all_animals` should return all the animals that a specific instance of a zoo has.
- `Zoo#all_animal_species` should return an array of the unique animal species that a specific instance of a zoo has.
- `Zoo.find_by_name` should take in an argument of a string of a name and return an instance of the zoo.
`Zoo#origins` should return all the unique animal origins that a specific instance of a zoo has.
​
There are no `rspec` files, so it's up to you to test your code within the `console.rb` file.