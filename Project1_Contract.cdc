pub contract Project1 {

    //
    //state
    //
    pub var details: {Address: Detail}
    
    //
    //logic
    //
    init() {
        self.details = {}
    }
    
    pub struct Detail {
        pub let firstName: String
        pub let lastName: String
        pub let enrollmentNumber: String
        pub var engMarks: Int
        pub var matMarks: Int
        pub var sciMarks: Int

        // You have to pass in 4 arguments when creating this Struct.
        init(_firstName: String, _lastName: String, _enrollmentNumber: String, _engMarks: Int, _matMarks: Int, _sciMarks: Int) {
            self.firstName = _firstName
            self.lastName = _lastName
            self.enrollmentNumber = _enrollmentNumber
            self.engMarks = _engMarks
            self.matMarks = _matMarks
            self.sciMarks = _sciMarks
        }
    }

    pub fun addProfile(account: Address, firstName: String, lastName: String, enrollmentNumber: String, engMarks: Int, matMarks: Int, sciMarks: Int) {
        let newProfile = Detail(_firstName: firstName, _lastName: lastName, _enrollmentNumber: enrollmentNumber, _engMarks: engMarks, _matMarks: matMarks, _sciMarks: sciMarks)
        self.details[account] = newProfile
    }

}
