// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

//The library is imported here
import "./EvenLibrary.sol";

contract Test{

    //using the library
    //THis contract is used to test the library

    //we are using the EvenLibrary here
    //we applied all the arithmetic method in the library to all the uint
    //variable declared here.
    using EvenLibrary for uint[];

    //we  declared an array of uint with some number inside
    uint[] userArrays = [1,2,3,4,5,6,7,8,9,10];

    // We create a function findNumberOfEven that returns the number of even number in the array
    //using the totalEvenNumber method in the library.
    function findNumberOfEven() external view returns(uint){
        return EvenLibrary.totalEvenNumber(userArrays);

    }
}