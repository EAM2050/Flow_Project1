import Project1 from 0x09

transaction(account: Address, firstName: String, lastName: String, enrollmentNumber: String, engMarks: Int, matMarks: Int, sciMarks: Int) {

    prepare(signer: AuthAccount) {}

    execute {
        Project1.addProfile(account: account, firstName: firstName, lastName: lastName, enrollmentNumber: enrollmentNumber, engMarks: engMarks, matMarks: matMarks, sciMarks: sciMarks)
        log("We're done.")
    }
}
