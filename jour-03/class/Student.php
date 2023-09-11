<?php

class Student
{
    private $id;         
    private $grade_id;   
    private $email;      
    private $fullname;   
    private $birthdate;  
    private $gender;    

    public function __construct($id, $grade_id, $email, $fullname, $birthdate, $gender)
    {
        $this->id = $id;
        $this->grade_id = $grade_id;
        $this->email = $email;
        $this->fullname = $fullname;
        $this->birthdate = $birthdate;
        $this->gender = $gender;
    }

   
    public function getId()
    {
        return $this->id;
    }

    public function getGradeId()
    {
        return $this->grade_id;
    }

    public function getEmail()
    {
        return $this->email;
    }

    public function getFullname()
    {
        return $this->fullname;
    }

    public function getBirthdate()
    {
        return $this->birthdate;
    }

    public function getGender()
    {
        return $this->gender;
    }
}

?>
