import { ethers } from "hardhat";

async function main() {
  const token = await ethers.deployContract("Adamsbite");
  await token.waitForDeployment();
  console.log(token.target);
}


// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
