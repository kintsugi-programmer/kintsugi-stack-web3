const hre = require("hardhat");
async function main() {
 const HelloWorld = await hre.ethers.deployContract("hello_world");
 const contract = await HelloWorld.waitForDeployment();
 console.log("Contract deployed at:", contract.target);
}
main();