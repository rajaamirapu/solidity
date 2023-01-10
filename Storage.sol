// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.22 <0.8.0;

contract Storage {

    struct  Student 
    {
        // Declaring different 
        // structure elements
        uint id;
        string _name;
        string _subject;
        uint8 _marks;
    }
    Student[] Students;

    /**
     * @dev Store value in variable
     * @param id value to store
     * @param name to store
     * @param subject to store
     * @param marks to store
     */
    function store(uint  id,string memory name,string  memory subject,uint8  marks) public {
        Student memory stu=Student(id,name,subject,marks);
        
        Students.push(stu);

    }

    /**
     * @dev Return value 
     * @return value of 'number'
     */
    function value(uint8 index) external view returns (string memory name,string memory subject,uint  marks) {
      
        return (
        Students[index]._name,
        Students[index]._subject,
        Students[index]._marks
        );
    }


}