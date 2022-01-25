pragma solidity ^0.8.0;
//SPDX-License-Identifier: MIT
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import 'base64-sol/base64.sol';


import './HexStrings.sol';
import './ToColor.sol';
import './BodyGenerator.sol';
import './EyeGenerator.sol';
import './MouthGenerator.sol';
import './DetailGenerator.sol';
import './ExtraGenerator.sol';
import './FullFaceGenerator.sol';
import './HatGenerator.sol';
import './MaskGenerator.sol';

import './BloopToken.sol';

// GET LISTED ON OPENSEA: https://testnets.opensea.io/get-listed/step-two

contract YourCollectible is ERC721Enumerable, Ownable {
  using Strings for uint256;
  using HexStrings for uint160;
  using ToColor for bytes3;
  using Counters for Counters.Counter;

  BloopToken bloopToken;

  SVGBodyGenerator bodyGenerator;
  SVGHatGenerator hatGenerator;
  SVGFullFaceGenerator fullFaceGenerator;
  SVGMaskGenerator maskGenerator;
  SVGEyeGenerator eyeGenerator;
  SVGMouthGenerator mouthGenerator;
  SVGDetailGenerator detailGenerator;
  SVGExtraGenerator extraGenerator;

  Counters.Counter private _tokenIds;

  address payable public constant recipient =
    payable(0x6946EC240f5C64D6AF2b3a210394a9D24737d1E6);

  uint256 public constant limit = 1000;
  uint256 public constant curve = 1002; // price increase 0,2% with each purchase
  uint256 public price = 0.001 ether;

  uint256 issuancePerBlock = 1000 * 1e18;

  constructor(address bodyGeneratorAddress, address hatGeneratorAddress, address fullFaceGeneratorAddress, address maskGeneratorAddress, address eyeGeneratorAddress, address mouthGeneratorAddress, address detailGeneratorAddress, address extraGeneratorAddress, address bloopTokenAddress) ERC721("Bloopers", "BLOOP") {
    bodyGenerator = SVGBodyGenerator(bodyGeneratorAddress);
    hatGenerator = SVGHatGenerator(hatGeneratorAddress);
    fullFaceGenerator = SVGFullFaceGenerator(fullFaceGeneratorAddress);
    maskGenerator = SVGMaskGenerator(maskGeneratorAddress);
    eyeGenerator = SVGEyeGenerator(eyeGeneratorAddress);
    mouthGenerator = SVGMouthGenerator(mouthGeneratorAddress);
    detailGenerator = SVGDetailGenerator(detailGeneratorAddress);
    extraGenerator = SVGExtraGenerator(extraGeneratorAddress);
    bloopToken = BloopToken(bloopTokenAddress);
  }

  struct Blooper {
    uint8 bodyColor;
    uint8 hatColor;
    uint8 gradientColor1;
    uint8 gradientColor2;
    uint8 mouthColor;
    uint8 detailColor;
    uint8 extraColor;
    uint8 maskColor;
    uint8 eyeColor;
    uint8 fullFaceColor;
    uint8 tier;
    uint8 hat;
    uint8 eye;
    uint8 mouth;
    uint8 detail;
    uint8 extra;
    uint8 mask;
    uint8 fullFace;
    uint8 mode;
    bool upgraded;
  }


  mapping (uint256 => Blooper) private idToBlooper;

  mapping (uint256 => uint256) public chubbiness; // Not used
  mapping (uint256 => uint256) public mouthLength; // Not used

  uint8 constant colsLength = 74;
  string[colsLength] cols = ["252525","ffffff","849e85","c9ae90","cfcfcf","9b9b9b","686868","363636","ffaeae","ffc7b0","ffe0b3","fff5b9","e9ffb5","c7ffb9","b9ffdc","64ffea","b7e5ff","becdff","bcbbff","d6bfff","e5bfff","fdb8ff","ffc1e3","ffbcd0","ff6464","ff9064","ffaa64","ffc164","ffe864","d0ff64","83ff64","64ffb1","64ffea","64c6ff","6488ff","6764ff","9a64ff","c164ff","fa64ff","ff64b9","ff6492","ff2929","ff6022","ff831e","ffa318","ffde20","bdff23","4fff23","22ff90","26ffe2","25afff","2850d3","3330c9","7226ff","ab2dff","f82fff","ff2fa2","ff1d61","9c2525","a84b26","a05f29","3e7e2e","3d8f66","33857a","357296","334788","2e2c81","482d7a","542474","8c308f","8b2e61","8f2b49","da9760","484872"];

  uint8 constant noOfHats = 19;
  uint8 constant noOfEyes = 16;
  uint8 constant noOfMouths = 15;
  uint8 constant noOfFullFaces = 6;
  uint8 constant noOfMasks = 7;
  uint8 constant noOfExtras = 5;
  uint8 constant noOfDetails = 8;

  /*
  // NFT id => timestamp of last time BLP collected
  mapping (uint256 => uint256) public lastBlockHarvestedById;
  uint256 issuancePerBlock = 1000;
  // when a mint happens, the issuancePerBlock is split between one more Blooper
  // calculating rewards:
  // 40 blocks * 1000/1 -> (next mint happens) + 69 blocks * 1000/2 -> (next mint happens) + 100 blocks * 1000/3 + ...
  // 22, 23, 26
  // 20 blocks * 1000/1 -> (20-22)
  // 2*(issuance #block 20)
  // we need to store triples (supply, start block with that supply, end block with that supply) 
  
  */
  function viewBlockNumber() public view returns(uint256) {
    return block.number;
  }
  uint256 lastFarmBlockNumber = 5000;
  
  mapping (uint256 => uint256) public idToLastBlockClaimed;
  uint256[limit] mintBlockNumbersArray;


  function claimBLP(uint256 id) public {
    require(ownerOf(id) == msg.sender, "NOT OWNER");
    require(idToLastBlockClaimed[id] < block.number, "NOTHING TO CLAIM");
    uint256 amountToClaim = amountAvailableToClaim(id);
    require(amountToClaim > 0);
    
    idToLastBlockClaimed[id] = block.number;
    bloopToken.transfer(msg.sender, amountToClaim);
  }

  function getMintBlockNumberById(uint256 id) public view returns(uint256) {
    return mintBlockNumbersArray[id];
  }

  // blooper id 55 last claim in block 140
  // want to claim in block 200
  // from block 140 to 150 there were X amounts of bloopers 
  // from block 150 to 175 there were Y amounts of bloopers 
  // from block 175 to 200 there were Z amounts of bloopers
  
  function amountAvailableToClaim(uint256 id) public view returns(uint256) {
    // only necessary while debugging
    require(id < totalMinted(), "this id has not been minted");
    
    uint256 amountAvailable = 0;
    uint256 lastBlock = idToLastBlockClaimed[id];

    // lastBlock is current block
    // mintBlockNumbersArray = [12,14,16]
    // enter at i=2

    for(uint256 i = 0; i < totalMinted(); i++){
      if(mintBlockNumbersArray[i] >= lastBlock && mintBlockNumbersArray[i] < lastFarmBlockNumber){
        amountAvailable += (1+(mintBlockNumbersArray[i]-lastBlock))*issuancePerBlock/(i+1);
        lastBlock = mintBlockNumbersArray[i];
      }
    }
    if(block.number < lastFarmBlockNumber) {
      amountAvailable += (1+block.number-mintBlockNumbersArray[totalMinted()-1])*issuancePerBlock/(totalMinted());
    }
    else {
      amountAvailable += (lastFarmBlockNumber-mintBlockNumbersArray[totalMinted()-1])*issuancePerBlock/(totalMinted());
    }
  
    return amountAvailable;
  }

  function getBlooper(uint _id) public view returns(Blooper memory) {
    return idToBlooper[_id];
  }

  function mintItem() public payable returns (uint256) {
    require(_tokenIds.current() < limit, "DONE MINTING");
    require(msg.value >= price, "NOT ENOUGH");
    price = (price * curve) / 1000;
    uint256 id = _tokenIds.current();
    _tokenIds.increment();
    _mint(msg.sender, id);
    bytes32 predictableRandom = keccak256(abi.encodePacked( blockhash(block.number-1), msg.sender, address(this), id ));
    idToBlooper[id].bodyColor      = uint8(predictableRandom[0])%(colsLength);
    idToBlooper[id].gradientColor1 = uint8(predictableRandom[1])%(colsLength);
    idToBlooper[id].gradientColor2 = uint8(predictableRandom[2])%(colsLength); 
    idToBlooper[id].tier          = uint8(predictableRandom[3])%3;
    //idToBlooper[id].tier          = 0;
    idToBlooper[id].fullFace      = uint8(predictableRandom[4])%(noOfFullFaces*10); // 10% chance for fullface

    if(idToBlooper[id].fullFace < noOfFullFaces){ 
       // set all others to default
      idToBlooper[id].mouth          = 99;
      idToBlooper[id].eye            = 99;
      idToBlooper[id].hat            = 99;
      idToBlooper[id].extra          = uint8(predictableRandom[5])%(noOfExtras*2); // 50% chance of extra when full face
      idToBlooper[id].detail         = 99;
      idToBlooper[id].mask           = 99;
    } 
    else {
      // else we are not using full face
      // Check if we roll a mask
      idToBlooper[id].mask             = uint8(predictableRandom[5])%(noOfMasks*5); // 20% chance for mask if not a fullface
      if(idToBlooper[id].mask < noOfMasks){
        // we rolled a mask, set eye and mouth to default
        idToBlooper[id].mouth          = 99;
        idToBlooper[id].eye            = 99;
      } else {
        // We didnt roll a mask, set mouth and eye
        idToBlooper[id].mouth          = uint8(predictableRandom[6])%noOfMouths;
        idToBlooper[id].eye            = uint8(predictableRandom[7])%noOfEyes;
      }
      
      idToBlooper[id].hat            = uint8(predictableRandom[8])%noOfHats;
      idToBlooper[id].extra          = uint8(predictableRandom[9])%(noOfExtras*10);
      idToBlooper[id].detail         = uint8(predictableRandom[10])%(noOfDetails*3);
    }

    // condom (no. 11) must have same color as body
    idToBlooper[id].hatColor       = idToBlooper[id].hat==11 ? idToBlooper[id].bodyColor : uint8(predictableRandom[11])%(colsLength);
    idToBlooper[id].mouthColor     = uint8(predictableRandom[12])%(colsLength);
    idToBlooper[id].extraColor     = uint8(predictableRandom[13])%(colsLength);
    idToBlooper[id].detailColor    = uint8(predictableRandom[14])%(colsLength);
    idToBlooper[id].eyeColor       = uint8(predictableRandom[15])%(colsLength);
    idToBlooper[id].fullFaceColor  = uint8(predictableRandom[16])%(colsLength);
    idToBlooper[id].maskColor      = uint8(predictableRandom[17])%(colsLength);
    // 3 modes (set rarity)
    idToBlooper[id].mode           = uint8(predictableRandom[18])%3;

    idToBlooper[id].upgraded       = false;

    chubbiness[id] = 35+((55*uint256(uint8(predictableRandom[3])))/255);
    mouthLength[id] = 180+((uint256(chubbiness[id]/4)*uint256(uint8(predictableRandom[4])))/255);
    // Send to recipient address
    (bool success, ) = recipient.call{value: msg.value}("");
    require(success, "could not send");

    idToLastBlockClaimed[id] = block.number;
    mintBlockNumbersArray[id] = block.number;
    return id;
  }

  function tokenURI(uint256 id) public view override returns (string memory) {
      require(_exists(id), "not exist");
      string memory name = string(abi.encodePacked('Blooper #',id.toString()));
      string memory description = string(abi.encodePacked('This Blooper is the color #',cols[idToBlooper[id].bodyColor]));
      string memory image = Base64.encode(bytes(generateSVGofTokenById(id)));

      string memory firstPart = string(
              abi.encodePacked(
                              '{"name":"',
                              name,
                              '", "description":"',
                              description,
                              '", "external_url":"https://burnyboys.com/token/',
                              id.toString(),
                              '", "attributes": [{"trait_type": "color", "value": "#',
                              cols[idToBlooper[id].bodyColor],
                              '"},{"trait_type": "chubbiness", "value": ',
                              uint2str(chubbiness[id]),
                              '},{"trait_type": "mouthLength", "value": ',
                              uint2str(mouthLength[id]),
                              '}], "owner":"'
              ));

      string memory secondPart = string(
              abi.encodePacked(
                              (uint160(ownerOf(id))).toHexString(20),
                              '", "image": "',
                              'data:image/svg+xml;base64,',
                              image,
                              '"}'
              ));

      return
          string(
              abi.encodePacked(
                'data:application/json;base64,',
                Base64.encode(
                    bytes(string(abi.encodePacked(firstPart,secondPart)))
                    )
              )
          );


  }

  function generateSVGofTokenById(uint256 id) public view returns (string memory) {

    string memory svgMode = '';
    if(idToBlooper[id].mode == 1) { //transparent
      svgMode = ' fill-opacity="0.3" ';
    } 
    else if(idToBlooper[id].mode ==2 ) { //glow
      svgMode =  ' stroke="none" style="filter:url(#glow)" ';
    }

    string memory svgP1 = string(abi.encodePacked(
      '<svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1080 1080"><title>Bloops</title><defs><linearGradient id="linear-gradient" x2="1080" y2="1080" gradientUnits="userSpaceOnUse">',
      '<stop offset="0" stop-color="#',cols[idToBlooper[id].gradientColor1],'" />',
      '<stop offset="1" stop-color="#',cols[idToBlooper[id].gradientColor2],'" /></linearGradient>'
      ));

    string memory svgP2 = string(abi.encodePacked(
      '<filter id="glow"><feGaussianBlur stdDeviation="20" result="coloredBlur" /><feMerge><feMergeNode in="coloredBlur" /><feMergeNode in="SourceGraphic" /></feMerge>',
      '</filter></defs><rect width="1080" height="1080" fill="url(#linear-gradient)" /><g stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="10">',
      extraGenerator.render(idToBlooper[id].extra, cols[idToBlooper[id].extraColor]),
      '<g fill="#',cols[idToBlooper[id].bodyColor],'"', svgMode, '>',
      bodyGenerator.render(idToBlooper[id].tier),
      '</g>'
    ));

    string memory svgP3 = string(abi.encodePacked(
      fullFaceGenerator.render(idToBlooper[id].fullFace, cols[idToBlooper[id].fullFaceColor]),
      hatGenerator.render(idToBlooper[id].hat, cols[idToBlooper[id].hatColor]),
      eyeGenerator.render(idToBlooper[id].eye, cols[idToBlooper[id].eyeColor])
    ));

    string memory svgP4 = string(abi.encodePacked(
      mouthGenerator.render(idToBlooper[id].mouth, cols[idToBlooper[id].mouthColor]),
      maskGenerator.render(idToBlooper[id].mask, cols[idToBlooper[id].maskColor]),
      detailGenerator.render(idToBlooper[id].detail, cols[idToBlooper[id].detailColor]),
      '</g></svg>'
    ));

    return string(abi.encodePacked(svgP1,svgP2,svgP3,svgP4));


  }

  function upgrade(uint256 id) public {
    require(_isApprovedOrOwner(msg.sender, id), "NOT OWNER/APPROVED");
    require(!idToBlooper[id].upgraded, "Already upgraded");

    uint256 tokenAmount = 4000;

    bool toContractTransfer = bloopToken.transferFrom(msg.sender, address(this), tokenAmount);
    require(toContractTransfer, "NOT SUCCESSFUL INGOING TRANSFER");


    idToBlooper[id].upgraded = true; // upgrade the tier;

    // Randomly choose a few traits from toBurnId and use in toUpgradeId instead.
    bytes32 predictableRandom = keccak256(abi.encodePacked( blockhash(block.number-1), msg.sender, address(this), id ));
    idToBlooper[id].eye = uint8(predictableRandom[7])%noOfEyes;

  }


  function burn(uint256 tokenId) internal {
      require(_isApprovedOrOwner(_msgSender(), tokenId), "ERC721Burnable: caller is not owner nor approved");
      _burn(tokenId);
  }

  function totalMinted() public view returns (uint256) {
    return _tokenIds.current();
  }

  function uint2str(uint _i) internal pure returns (string memory _uintAsString) {
      if (_i == 0) {
          return "0";
      }
      uint j = _i;
      uint len;
      while (j != 0) {
          len++;
          j /= 10;
      }
      bytes memory bstr = new bytes(len);
      uint k = len;
      while (_i != 0) {
          k = k-1;
          uint8 temp = (48 + uint8(_i - _i / 10 * 10));
          bytes1 b1 = bytes1(temp);
          bstr[k] = b1;
          _i /= 10;
      }
      return string(bstr);
  }

}

