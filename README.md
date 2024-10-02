# StudentPortal Contract

## Overview
The **StudentPortal** smart contract allows the registration, retrieval, and removal of student records on the blockchain. It provides functionality to store essential details such as name, email, birthday, and location data for each student. The contract is managed by an owner who has exclusive rights to remove records.

## Features
- **Register Student:** Registers a student with details like name, email, birthday, and location.
- **Retrieve Student Record:** Allows fetching a student record using their ID.
- **Retrieve All Students:** Retrieves all registered student records.
- **Remove Student Record:** Allows the contract owner to remove a student record.

## Events
- `StudentRegisterd(uint256 indexed id, string indexed _name, string indexed _country)`: Emitted when a student is registered.
- `ReturnedStudentId(string indexed _name)`: Emitted when a student record is queried by name.

## Functions

### 1. `registerStudent`
Registers a student with the provided details:
```solidity
function registerStudent(
    string memory _name, 
    string memory _email, 
    string memory _birthday, 
    string memory _lga, 
    string memory _country, 
    string memory _state
) external;
```

### 2. `getStudent`
Fetches a student's record by their ID:
```solidity
function getStudent(uint256 _id) external view returns (StudentRecord memory);
```

### 3. `getAllStudents`
Retrieves all student records:
```solidity
function getAllStudents() external view returns (StudentRecord[] memory);
```

### 4. `removeStudent`
Allows the contract owner to remove a student record by their ID:
```solidity
function removeStudent(uint256 _id) external onlyOwner;
```

## Owner Privileges
Only the owner (the address that deployed the contract) can perform the action - Remove a student record.

## Deployment Details
- **Contract Address:** `0x5577D09D24f173fd38bC2ECf9A56234e4EaA897C`
- **Explorer Link:** [View on Sepolia Blockscout](https://sepolia-blockscout.lisk.com/address/0x5577D09D24f173fd38bC2ECf9A56234e4EaA897C#code)

## License
This project is licensed under the MIT License.