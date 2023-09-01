# RaNFT - Smart Contract

RaNFT is a Solidity smart contract designed to facilitate the creation, management, and interaction with ERC721-compliant non-fungible tokens (NFTs). This contract allows you to mint unique NFTs associated with randomly selected URIs, while also providing the capability to set and retrieve prompts for individual tokens.

## Contract Overview

The RaNFT contract is built on top of the popular OpenZeppelin libraries and contracts, making it robust and well-tested. The following key components contribute to the functionality of the contract:

### ERC721 Compatibility

The contract inherits from the `ERC721` and `ERC721URIStorage` contracts from the OpenZeppelin library. This inheritance ensures that RaNFT tokens adhere to the ERC721 standard, which is widely recognized and accepted in the NFT ecosystem.

### Ownership Control

The contract also inherits the `Ownable` contract, which provides a basic ownership control mechanism. This allows the contract owner (the deployer of the contract) to execute specific actions, such as minting new tokens.

## Token Minting

One of the primary features of the RaNFT contract is the ability to mint new NFT tokens. The `mintRNFTToken` function is provided specifically for this purpose. When this function is invoked, a new token is created and assigned to a specified Ethereum address.

Importantly, each newly minted token is associated with a unique URI. These URIs are randomly selected from a predefined list of token URIs stored within the contract. This approach ensures that each token has a distinct visual or informational representation.

## Token Prompts

In addition to the standard features provided by the ERC721 standard, the RaNFT contract introduces a creative twist: the ability to associate prompts with individual tokens. A prompt is a short string of text that can be used to convey additional information, metadata, or context about a particular token.

Using the `_setTokenPrompt` function, the contract owner can set prompts for specific token IDs. Subsequently, the `getTokenPrompt` function enables anyone to retrieve the prompt associated with a given token ID. This feature adds an extra layer of versatility and uniqueness to the tokens minted through this contract.

## Getting Started

To get started with RaNFT, follow these steps:

1. *Install Solidity:* Make sure you have Solidity version 0.8.9 or a compatible version installed on your development environment.

2. *Import OpenZeppelin Contracts:* You'll need to import the required OpenZeppelin contracts. These imports can be found at the top of the provided contract code.

3. *Deploy the Contract:* Deploy the RaNFT contract to an Ethereum network. This can be done using tools like Remix, Truffle, or Hardhat.

## Usage

Once the contract is deployed, you can use it to mint unique NFTs and interact with them:

1. *Minting:* As the contract owner, use the `mintRNFTToken` function to mint new tokens and assign them to specific Ethereum addresses. The function returns the ID of the newly minted token.

2. *Token Prompts:* Use the `_setTokenPrompt` function to associate prompts with specific token IDs. Others can then retrieve these prompts using the `getTokenPrompt` function.

3. *Interacting:* Interact with the contract using Ethereum wallets, decentralized applications (DApps), or other smart contracts. Explore the full capabilities of the ERC721 standard and the features introduced by the RaNFT contract.

## Credits

This project is created by ***[Rajat Verma](https://github.com/thewreckingpanda)***.

## License

This project is licensed under the MIT License. For more details, refer to the [LICENSE](LICENSE) file included in the repository.
