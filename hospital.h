#include <string>

#ifndef S_DPA_COURSEPROJECT_HOSPITAL_H
#define S_DPA_COURSEPROJECT_HOSPITAL_H

#endif //S_DPA_COURSEPROJECT_HOSPITAL_H
class Patient {
private:
    int _yearOfBirth;
    std::string _residenceAddress;
    std::string _job;
protected:
    std::string _fullName;
public:

};

class Doctor {
private:
    std::string _workingPosition;
    std::string _officeNumber;
    std::string _admissionSchedule;
protected:
    std::string _fullName[25];
public:

};

class Referral {
private:

protected:

public:

};