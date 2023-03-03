// set gender data type (enum with male, female, and unspecified types)
// gender limited to these 3 types
public enum Gender {
    MALE,
    FEMALE,
    UNSPECIFIED
}

// person class
public class Person
{
    private String name;
    private Gender gender;

    // person constructor
    public Person(String name, Gender gender)
    {
        this.name = name;
        this.gender = gender;
    }

}


// abstract class staff, using type Person, for reference by Academic and Support staff
public abstract class Staff
{
    private Person person;

    public Staff(Person person)
    {
        this.person = person;
    }

}


// academic staff class, extending staff class
public class AcademicStaff extends Staff {
    private boolean researchActive; // only required in academic staff class, so declare here and not in staff class

    public AcademicStaff(Person person, boolean researchActive)
    {
        super(person);
        this.researchActive = researchActive;
    }
}

// support staff class, extending staff class
public class SupportStaff extends Staff {
    private String department; // only required in support staff class, so declare here and not in staff class

    public SupportStaff(Person person, String department)
    {
        super(person);
        this.department = department;
    }
}