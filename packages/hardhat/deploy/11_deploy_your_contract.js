// deploy/00_deploy_your_contract.js

const { ethers } = require("hardhat");

const localChainId = "31337";

module.exports = async ({ getNamedAccounts, deployments, getChainId }) => {
  const { deploy } = deployments;
  const { deployer } = await getNamedAccounts();
  const chainId = await getChainId();

  const svgBody = await ethers.getContract("SVGBodyGenerator", deployer);
  const svgHat = await ethers.getContract("SVGHatGenerator", deployer);
  const svgHat2 = await ethers.getContract("SVGHatGenerator2", deployer);
  const svgFullFace = await ethers.getContract("SVGFullFaceGenerator", deployer);
  const svgMask = await ethers.getContract("SVGMaskGenerator", deployer);
  const svgEye = await ethers.getContract("SVGEyeGenerator", deployer);
  const svgMouth = await ethers.getContract("SVGMouthGenerator", deployer);
  const svgMouth2 = await ethers.getContract("SVGMouthGenerator2", deployer);
  const svgDetail = await ethers.getContract("SVGDetailGenerator", deployer);
  const svgExtra = await ethers.getContract("SVGExtraGenerator", deployer);
  

  const blobToken = await ethers.getContract("BlobToken", deployer);
  

  await deploy("YourCollectible", {
    // Learn more about args here: https://www.npmjs.com/package/hardhat-deploy#deploymentsdeploy
    from: deployer,
    // args: [ "Hello", ethers.utils.parseEther("1.5") ],
    args: [svgBody.address, svgHat.address, svgHat2.address, svgFullFace.address, svgMask.address, svgEye.address, svgMouth.address, svgMouth2.address, svgDetail.address, svgExtra.address, blobToken.address],
    log: true,
  });

  // Getting a previously deployed contract
  const blobbers = await ethers.getContract("YourCollectible", deployer);

  
  // transfer all BLB to this contract
  const result = await blobToken.transfer(
    blobbers.address,
    ethers.utils.parseEther("1000000000")
  );
    

  // MINT 100
  for (let i = 0; i < 1; i++) {
    const id = await blobbers.mintItem({value: ethers.utils.parseEther("0.02")});
    //console.log(await blobbers.ownerOf("1"));
    await blobbers.transferFrom("0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266", "0x6946EC240f5C64D6AF2b3a210394a9D24737d1E6", i.toString()); 
  }
  
  


  /*  await YourContract.setPurpose("Hello");
  
    To take ownership of yourContract using the ownable library uncomment next line and add the 
    address you want to be the owner. 
    // yourContract.transferOwnership(YOUR_ADDRESS_HERE);

    //const yourContract = await ethers.getContractAt('YourContract', "0xaAC799eC2d00C013f1F11c37E654e59B0429DF6A") //<-- if you want to instantiate a version of a contract at a specific address!
  */

  /*
  //If you want to send value to an address from the deployer
  const deployerWallet = ethers.provider.getSigner()
  await deployerWallet.sendTransaction({
    to: "0x34aA3F359A9D614239015126635CE7732c18fDF3",
    value: ethers.utils.parseEther("0.001")
  })
  */

  /*
  //If you want to send some ETH to a contract on deploy (make your constructor payable!)
  const yourContract = await deploy("YourContract", [], {
  value: ethers.utils.parseEther("0.05")
  });
  */

  /*
  //If you want to link a library into your contract:
  // reference: https://github.com/austintgriffith/scaffold-eth/blob/using-libraries-example/packages/hardhat/scripts/deploy.js#L19
  const yourContract = await deploy("YourContract", [], {}, {
   LibraryName: **LibraryAddress**
  });
  */

  // Verify your contracts with Etherscan
  // You don't want to verify on localhost
  if (chainId !== localChainId) {
    await run("verify:verify", {
      address: blobbers.address,
      contract: "contracts/YourCollectible.sol:YourCollectible",
      contractArguments: [],
    });
  }
};
module.exports.tags = ["YourCollectible"];
