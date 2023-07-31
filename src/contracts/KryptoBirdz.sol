// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import './ERC721Connector.sol';

contract KryptoBirdz is ERC721Connector {

  // initialize this contract to inherit
  // name and symbol from ERC721Metadata so that
  // the name is KryptoBirdz and the symbol is KBZ

  constructor() ERC721Connector("KryptoBirdz", "KBZ") public {
  }

  /* string public name;
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
  } */
}