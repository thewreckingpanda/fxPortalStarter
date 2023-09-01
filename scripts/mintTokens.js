const hre = require("hardhat");
const ranftContractJSON = require("../artifacts/contracts/RajatNFT.sol/RaNFT.json");

const contract_address = "0x4b01537F80dfb423068caFB5973FeD425B49f438"; // Replace with your RaNFT contract address
const ranftABI = ranftContractJSON.abi;
const walletAddress = "0x6B43fB1Dbd13C0763C4BC9062a2047C48eC56e65"; // Replace with your wallet address

async function main() {
    const ranftContract = await hre.ethers.getContractAt(ranftABI, contract_address);

    let mintedtoken = 0

    for (let i = 0; i < 5; i++) {
        try {
            const tx = await ranftContract.mintRNFTToken(walletAddress);
            await tx.wait();

            mintedtoken++;
            
        } catch (error) {
            console.error("Error minting token:", error.message);
        }
    }

    console.log("Token Minted:", mintedtoken);
    console.log("You now have: " + (await ranftContract.balanceOf(walletAddress)).toString() + " tokens");
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});