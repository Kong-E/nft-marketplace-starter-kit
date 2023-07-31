// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import './ERC721.sol';

contract ERC721Enumerable is ERC721{

  uint256[] private _allTokens;

  // mapping from tokenId to position in the allTokens array
  mapping(uint256 => uint256) private _allTokensIndex;

  // mapping of owner to list of all owner token ids
  mapping(address => uint256[]) private _ownedTokens;

  // mapping from token ID index of the owner token ids
  mapping(uint256 => uint256) private _ownedTokensIndex;
  
  function _mint(address to, uint256 tokenId) internal override(ERC721) {
    super._mint(to, tokenId);
    _addTokenToTotalSupply(tokenId);
  } // 민트된 토큰은 토탈서플라이에 추가

  function _addTokenToTotalSupply(uint256 tokenId) private {
    _allTokens.push(tokenId);
  } // 토탈서플라이에 토큰 추가

  function totalSupply() public view returns (uint256) {
    return _allTokens.length;
  } // 토탈서플라이 길이 반환
}