// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract StudentPortal{

   event StudentRegisterd(uint256 indexed id, string indexed _name, string indexed _country);
   event ReturnedStudentId(string indexed _name);

   
    address owner;
    uint256 numberOfStudents;
    
     struct StudentRecord{
        uint256 id;
        string name;
        string email;
        string birthday;
        string lga;
        string country;
        string state;
        bool isRegistered;
     }

      StudentRecord[] allRecords;


    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(owner == msg.sender, "You don't have the priviledge right for this operation");
        _;
    }

     
     function registerStudent(
        string memory _name, 
        string memory _email, 
        string memory _birthday, 
        string memory _lga, 
        string memory _country, 
        string memory _state) external{

            uint256 id = allRecords.length + 1;
            StudentRecord memory newRecord = StudentRecord(id, _name, _email, _birthday,_lga, _country, _state, false);
            allRecords.push(newRecord);
         
         emit StudentRegisterd(id, _name, _country);

     }

     function getStudent(uint256 _id) external view returns(StudentRecord memory){
      require(_id <= allRecords.length,"Id not available");
        return allRecords[_id];

     }

     function getAllStudents() external view returns(StudentRecord[] memory){
        return allRecords;
     }

     function removeStudent(uint256 _id) external onlyOwner{
      require(_id <= allRecords.length,"Id not available");
        delete allRecords[_id];
        numberOfStudents = allRecords.length - 1;

     }

    //  function updateStudentRecord(uint _id, string memory _name, string memory, string memory _lga,string memory _country, 
    //     string memory _state ) external {
    //         require(_id == allRecords[]._id)

    //  }




}