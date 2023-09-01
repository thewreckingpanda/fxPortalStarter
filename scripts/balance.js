const hre = require("hardhat");
const ranftContractJSON = require("../artifacts/contracts/RajatNFT.sol/RaNFT.json");


const contract_address = "0xD2f205742e6a1f5192fc2a0bB1868bED61F45614"; 
const ranftABI = ranftContractJSON.abi;
const walletAddress = "0x6B43fB1Dbd13C0763C4BC9062a2047C48eC56e65";

async function main() {
	const ranftContract = await hre.ethers.getContractAt(ranftABI, contract_address);

    console.log("You now have: " + (await ranftContract.balanceOf(walletAddress)).toString() + " Polygon tokens");
}


main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
