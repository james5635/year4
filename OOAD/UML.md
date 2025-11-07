Perfect — let’s make this **practical** by implementing each UML relationship (**Dependency, Association, Aggregation, Composition**) in **C#** with clear examples and explanations.

---

## 🧩 1. Dependency

👉 **“Uses temporarily”** — occurs when a class only depends on another in a method (not stored as a field).

```csharp
public class Payment
{
    public void Process() => Console.WriteLine("Payment processed.");
}

public class OrderService
{
    public void MakePayment()
    {
        // Temporary use of Payment (Dependency)
        Payment payment = new Payment();
        payment.Process();
    }
}
```

**Explanation:**

* `OrderService` depends on `Payment`, but doesn’t *own* it.
* If `Payment` changes, it may affect `OrderService`.
* This is a **Dependency**.

---

## 🔗 2. Association

👉 **“Has a reference”** — one class knows another class via a property or field.

```csharp
public class Student
{
    public string Name { get; set; }

    public Student(string name) => Name = name;
}

public class Teacher
{
    public string Name { get; set; }
    public List<Student> Students { get; } = new List<Student>(); // Association

    public Teacher(string name) => Name = name;
}
```

**Usage:**

```csharp
var teacher = new Teacher("Mr. Smith");
teacher.Students.Add(new Student("Alice"));
teacher.Students.Add(new Student("Bob"));
```

**Explanation:**

* `Teacher` is *associated* with many `Student`s.
* Both exist independently.
* This is a **bidirectional or unidirectional association** depending on whether `Student` also has a reference to `Teacher`.

---

## ⚙️ 3. Aggregation (Has-a)

👉 **“Whole–part relationship (independent lifetime)”** — parts can exist without the whole.

```csharp
public class Teacher
{
    public string Name { get; set; }

    public Teacher(string name) => Name = name;
}

public class School
{
    public string Name { get; set; }
    public List<Teacher> Teachers { get; } = new List<Teacher>(); // Aggregation

    public School(string name) => Name = name;
}
```

**Usage:**

```csharp
var teacher1 = new Teacher("Mr. John");
var teacher2 = new Teacher("Ms. Rose");

var school = new School("Central High");
school.Teachers.Add(teacher1);
school.Teachers.Add(teacher2);
```

**Explanation:**

* `School` *aggregates* teachers.
* If `School` is deleted, `Teacher`s still exist.
* Teachers can belong to multiple schools, too.

---

## 🧱 4. Composition (Owns-a / Part-of)

👉 **“Whole–part relationship (dependent lifetime)”** — parts die when the whole dies.

```csharp
public class Room
{
    public string Name { get; set; }

    public Room(string name) => Name = name;
}

public class House
{
    public string Address { get; set; }
    private List<Room> _rooms = new List<Room>(); // Composition

    public House(string address)
    {
        Address = address;
        _rooms.Add(new Room("Living Room"));
        _rooms.Add(new Room("Bedroom"));
    }

    public void ShowRooms()
    {
        foreach (var room in _rooms)
            Console.WriteLine($"Room: {room.Name}");
    }
}
```

**Usage:**

```csharp
var house = new House("123 Main St");
house.ShowRooms();
// When `house` is gone, its rooms are gone too
```

**Explanation:**

* `House` **owns** its `Room`s.
* `Room`s cannot exist independently.
* This is a **Composition** relationship.

---

## 🧮 Summary

| UML Relationship | C# Concept                                  | Lifetime    | Example                  |
| ---------------- | ------------------------------------------- | ----------- | ------------------------ |
| **Dependency**   | Method-level usage                          | Temporary   | `OrderService → Payment` |
| **Association**  | Object reference                            | Independent | `Teacher` ↔ `Student`    |
| **Aggregation**  | Collection or reference (shared)            | Independent | `School` ◇— `Teacher`    |
| **Composition**  | Owned object (private creation/destruction) | Dependent   | `House` ◆— `Room`        |

---

Would you like me to generate a **UML class diagram (image)** showing all four examples together visually?


- Association => Both objects can exist independently
- Aggregation => If the whole object is destroyed, the part object is not destroyed
- Composition => If the whole object is destroyed, the part object is also destroyed