// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract KryptoBirdz {
  string public name;
  string public symbol;

  constructor() public {
      name = "KryptoBirdz";
      symbol = "KBZ";
  }

  struct Bird {
    uint id;
    string name;
    uint dna;
  }

  Bird[] public birds;

  function _createBird(string memory _name, uint _dna) private {
    birds.push(Bird(birds.length, _name, _dna));
  }
}