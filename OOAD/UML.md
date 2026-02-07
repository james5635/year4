# Introduction
| Relationship | Concept     | Lifecycle            | Implementation | Detail                                                 |
| Dependency	 | Uses-a	     | Temporary            | Method         | Whole temporaily use part                              | 
| Association	 | Knows-about | Independent          | Field          | Whole know about part, but they are independent        |
| Aggregation	 | Has-a       | Part survives Whole  | Field          | Whole depend on part, if whole die, then part don't    |
| Composition  | Part-of     | Part dies with Whole | Field          | Whole depend on part, if whole die, then part also do  |

Client[Dependency, Association, Aggregation, Composition] =>  Client[Dependency, Association, Aggregation, Composition] (you can implement whatever you want)

# Dependency
```java
class Document {
    public String getContent() {
        return "Hello World";
    }
}

class Printer {
    // The Printer does not 'own' the document. It just uses it for this method.
    public void print(Document doc) {
        System.out.println("Printing: " + doc.getContent());
    }
}

// Usage
Printer printer = new Printer();
Document doc = new Document();
printer.print(doc); // dependency exists only during this call
```
```
... {
...
}
```
# Association
```java
class Patient {
    private String name;
    public Patient(String name) { this.name = name; }
}

class Doctor {
    private String name;
    // Association: The Doctor keeps a reference to the Patient
    private List<Patient> patients; 

    public Doctor(String name) {
        this.name = name;
        this.patients = new ArrayList<>();
    }

    public void addPatient(Patient p) {
        patients.add(p);
    }
}
```
```
...
(...){
...
}
```
# Aggregation
```java
class Player {
    private String name;
    public Player(String name) { this.name = name; }
}

class Team {
    // Aggregation: The Team has Players, but doesn't exclusively own their life.
    private List<Player> players;

    public Team(List<Player> players) {
        this.players = players; // The list comes from outside
    }
}

// Usage
Player p1 = new Player("Messi");
List<Player> squad = new ArrayList<>();
squad.add(p1);

Team team = new Team(squad); 
// If 'team' is set to null, 'p1' still exists in memory.
```
```
...
(...){
...
}
```
# Composition
```java
class Engine {
    public void start() { System.out.println("Engine started"); }
}

class Car {
    // Composition: The Car owns the Engine entirely.
    private final Engine engine;

    public Car() {
        // The Engine is created INSIDE the Car.
        // It cannot exist without the Car.
        this.engine = new Engine(); 
    }

    public void drive() {
        engine.start();
    }
}

// Usage
Car myCar = new Car(); 
// There is no way to access or save the 'engine' instance if 'myCar' is destroyed.
```
```
...
(){
...
}
```
```
... = ...
```
