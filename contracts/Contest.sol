pragma solidity 0.4.24;

contract Contest {
  //creating structure to model the contestant
  struct Contestant {
    uint id;
    string name;
    uint voteCount;
  }

  //use mapping to get or fetch the contestant details
  mapping(uint => Contestant) public contestants;

  //add a public state variable to keep track of contestant count
  uint public contestantsCount;

  constructor () public {
    addContestant("Tom");
    addContestant("Jerry");
  }

  function addContestant(string _name) private{
    contestantsCount ++;
    contestants[contestantsCount] = Contestant(contestantsCount, _name, 0);
  }
}