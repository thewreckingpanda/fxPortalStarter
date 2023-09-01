// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract RaNFT is ERC721, ERC721URIStorage, Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    string[] private tokenURIs = [
        "ipfs://QmVzQ56wPTh4hZTXGEmZBNGaoxU8fozLMfk1U7P6xK3rSt",
        "ipfs://Qmb1ttHuBnVoQvkAyqAke6pQ2QKPvgmhzYJxcrCRg7fH1E",
        "ipfs://QmfZ7NoXaGnWkFotoMUDwHcqWGytqfkMnDMuMTHcrBJVbB",
        "ipfs://QmTvVFiNAKzfUpb7m87aCP8HHaqkZKBLwYVGzbB2d1zxRy",
        "ipfs://QmYBnRQSDLGc5DgVTomQhxTvoAmkLN8qCuN2FwUQRjEj8G"
    ];

    constructor() ERC721("RaNFT", "RNFT") {
        tokenURIs.push("uri1");
        tokenURIs.push("uri2");
        tokenURIs.push("uri3");
        tokenURIs.push("uri4");
        tokenURIs.push("uri5");
    }
    

    function mintRNFTToken(address to) public onlyOwner returns (uint256) {
        _tokenIds.increment();
        uint256 tokenId = _tokenIds.current();
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, tokenURIs[tokenId % tokenURIs.length]);
        return tokenId;
    }

    mapping(uint256 => string) private _tokenPrompts;

    function _setTokenPrompt(uint256 tokenId, string memory prompt) internal {
        _tokenPrompts[tokenId] = prompt;
    }

    function getTokenPrompt(uint256 tokenId) public view returns (string memory) {
        return _tokenPrompts[tokenId];
    }

    // The following functions are overrides required by Solidity.

    function _burn(uint256 tokenId) internal override(ERC721, ERC721URIStorage) {
        super._burn(tokenId);
        delete _tokenPrompts[tokenId];
    }

    function tokenURI(uint256 tokenId)
        public
        view
        override(ERC721, ERC721URIStorage)
        returns (string memory)
    {
        return super.tokenURI(tokenId);
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721, ERC721URIStorage)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }    
}