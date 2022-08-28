//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
library EvenLibrary {
    //this checks if the number passed in is an even number
    function evenNumber(uint _number) internal pure returns(bool){
        if(_number % 2 == 0){
            return true;
        } else{
            return false;
        }
    }

    
    //this accept list/arrays of even numbers
    //it checks if even number exist in the array passed into it
    //it gives the total number of even number in the array passed into it
    function totalEvenNumber(uint[] memory numbers) public pure returns(uint){
        uint countOfEvenNumber = 0;       
            for(uint i = 0; i < numbers.length; i++){
                if(evenNumber(numbers[i])){
                    countOfEvenNumber++;
                }  
            }
            return countOfEvenNumber;
    }
        
}