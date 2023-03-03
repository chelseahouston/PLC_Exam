data Gender = Male | Female | Unspecified

data Person = 
    Person
    {
        name :: String, -- field names specified
        gender :: Gender -- field names specified
    }

data Person2 = Person2 String Gender -- using positional indexing 

data Staff =
    AcademicStaff
    {
        person :: Person,
        researchActive :: Bool
    }
    |
    SupportStaff
    {
        person :: Person,
        department :: String
    }
