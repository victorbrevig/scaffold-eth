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

//learn more: https://docs.openzeppelin.com/contracts/3.x/erc721

// GET LISTED ON OPENSEA: https://testnets.opensea.io/get-listed/step-two

contract YourCollectible is ERC721Enumerable, Ownable {

  using Strings for uint256;
  using HexStrings for uint160;
  using ToColor for bytes3;
  using Counters for Counters.Counter;

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

  uint256 public constant limit = 929;
  uint256 public constant curve = 1002; // price increase 0,4% with each purchase
  uint256 public price = 0.001 ether;

  constructor(address bodyGeneratorAddress, address hatGeneratorAddress, address fullFaceGeneratorAddress, address maskGeneratorAddress, address eyeGeneratorAddress, address mouthGeneratorAddress, address detailGeneratorAddress, address extraGeneratorAddress) ERC721("Bloopers", "BLOOP") {
    bodyGenerator = SVGBodyGenerator(bodyGeneratorAddress);
    hatGenerator = SVGHatGenerator(hatGeneratorAddress);
    fullFaceGenerator = SVGFullFaceGenerator(fullFaceGeneratorAddress);
    maskGenerator = SVGMaskGenerator(maskGeneratorAddress);
    eyeGenerator = SVGEyeGenerator(eyeGeneratorAddress);
    mouthGenerator = SVGMouthGenerator(mouthGeneratorAddress);
    detailGenerator = SVGDetailGenerator(detailGeneratorAddress);
    extraGenerator = SVGExtraGenerator(extraGeneratorAddress);
  }

  struct Blooper {
    bytes3 bodyColor;
    bytes3 hatColor;
    bytes3 gradientColor1;
    bytes3 gradientColor2;
    //bytes3 mouthColor;
    //bytes3 detailColor;
    //bytes3 extraColor;
    //bytes3 maskColor;
    //bytes3 eyeColor;
    //bytes3 fullFaceColor;
    uint8 tier;
    uint8 hat;
    uint8 eye;
    uint8 mouth;
    uint8 detail;
    uint8 extra;
    uint8 mask;
    uint8 fullFace;
  }


  mapping (uint256 => Blooper) public idToBlooper;

  mapping (uint256 => uint256) public chubbiness; // Not used
  mapping (uint256 => uint256) public mouthLength; // Not used



  /*
  // NFT id => timestamp of last time BLP collected
  mapping (uint256 => uint256) public lastBlockHarvestedById;

  uint256 issuancePerBlock = 1000;
  // when a mint happens, the issuancePerBlock is split between one more Blooper

  // calculating rewards:
  // 40 blocks * 1000/1 -> (next mint happens) + 69 blocks * 1000/2 -> (next mint happens) + 100 blocks * 1000/3 + ...

  // we need to store triples (supply, start block with that supply, end block with that supply) 

  function harvestBLP(uint256 id) public {
    require(ownerOf(id) == msg.sender);
    require(lastBlockHarvestedById[id] > block.number);


    // want to divide rewards by totalSupply

  }
  */
 

  function mintItem() public payable returns (uint256) {
    require(_tokenIds.current() < limit, "DONE MINTING");
    require(msg.value >= price, "NOT ENOUGH");
    price = (price * curve) / 1000;

    _tokenIds.increment();

    uint256 id = _tokenIds.current();
    _mint(msg.sender, id);

    bytes32 predictableRandom = keccak256(abi.encodePacked( blockhash(block.number-1), msg.sender, address(this), id ));
    idToBlooper[id].bodyColor      = bytes2(predictableRandom[0]) | ( bytes2(predictableRandom[1]) >> 8 ) | ( bytes3(predictableRandom[2]) >> 16 );
    idToBlooper[id].gradientColor1 = bytes2(predictableRandom[3]) | ( bytes2(predictableRandom[4]) >> 8 ) | ( bytes3(predictableRandom[5]) >> 16 );
    idToBlooper[id].gradientColor2 = bytes2(predictableRandom[6]) | ( bytes2(predictableRandom[7]) >> 8 ) | ( bytes3(predictableRandom[8]) >> 16 ); 
    idToBlooper[id].tier          = uint8(predictableRandom[9])%3;
    //idToBlooper[id].tier          = 0;
    idToBlooper[id].fullFace      = uint8(predictableRandom[9])%(6*9); // 11% chance for fullface

    if(idToBlooper[id].fullFace < 6){ 
       // set all others to default
      idToBlooper[id].mouth          = 99;
      idToBlooper[id].eye            = 99;
      idToBlooper[id].hat            = 99;
      idToBlooper[id].extra          = 99;
      idToBlooper[id].detail         = 99;
    } else {
      // else we are not using full face

      // Check if we roll a mask
      idToBlooper[id].mask           = uint8(predictableRandom[10])%(7*5); // 20% chance for mask if not a fullface
      if(idToBlooper[id].mask < 7){
        // we rolled a mask, set eye and mouth to default
        idToBlooper[id].mouth          = 99;
        idToBlooper[id].eye            = 99;
        

      } else {
        // We didnt roll a mask, set mouth and eye
        idToBlooper[id].mouth          = uint8(predictableRandom[10])%14;
        idToBlooper[id].eye            = uint8(predictableRandom[11])%16;
      }
      
      idToBlooper[id].hat            = uint8(predictableRandom[12])%19;
      idToBlooper[id].extra          = uint8(predictableRandom[13])%5;
      idToBlooper[id].detail         = uint8(predictableRandom[14])%8;
    }
    
    // condom (no. 11) must have same color as body
    idToBlooper[id].hatColor       = idToBlooper[id].hat==11 ? idToBlooper[id].bodyColor : bytes2(predictableRandom[15]) | ( bytes2(predictableRandom[16]) >> 8 ) | ( bytes3(predictableRandom[17]) >> 16 );
    //idToBlooper[id].mouthColor     = bytes2(predictableRandom[18]) | ( bytes2(predictableRandom[19]) >> 8 ) | ( bytes3(predictableRandom[6]) >> 16 );
    //idToBlooper[id].extraColor     = bytes2(predictableRandom[21]) | ( bytes2(predictableRandom[3]) >> 8 ) | ( bytes3(predictableRandom[23]) >> 16 );
    //idToBlooper[id].detailColor    = bytes2(predictableRandom[24]) | ( bytes2(predictableRandom[25]) >> 8 ) | ( bytes3(predictableRandom[26]) >> 16 );
    //idToBlooper[id].eyeColor       = bytes2(predictableRandom[0]) | ( bytes2(predictableRandom[28]) >> 8 ) | ( bytes3(predictableRandom[29]) >> 16 );
    //idToBlooper[id].fullFaceColor  = bytes2(predictableRandom[30]) | ( bytes2(predictableRandom[31]) >> 8 ) | ( bytes3(predictableRandom[1]) >> 16 );
    //idToBlooper[id].maskColor      = bytes2(predictableRandom[22]) | ( bytes2(predictableRandom[27]) >> 8 ) | ( bytes3(predictableRandom[20]) >> 16 );

    chubbiness[id] = 35+((55*uint256(uint8(predictableRandom[3])))/255);
    mouthLength[id] = 180+((uint256(chubbiness[id]/4)*uint256(uint8(predictableRandom[4])))/255);
    // Send to recipient address
    (bool success, ) = recipient.call{value: msg.value}("");
    require(success, "could not send");

    //lastBlockHarvestedById[id] = block.number;
    return id;
  }

  
  
  function tokenURI(uint256 id) public view override returns (string memory) {
      require(_exists(id), "not exist");
      string memory name = string(abi.encodePacked('Loogie #',id.toString()));
      string memory description = string(abi.encodePacked('This Loogie is the color #',idToBlooper[id].bodyColor.toColor(),' with a chubbiness of ',uint2str(chubbiness[id]),' and mouth length of ',uint2str(mouthLength[id]),'!!!'));
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
                              idToBlooper[id].bodyColor.toColor(),
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
    
    string memory svgP1 = string(abi.encodePacked(
      '<svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1080 1080"><title>Bloops</title><defs><linearGradient id="linear-gradient" x2="1080" y2="1080" gradientUnits="userSpaceOnUse">',
      '<stop offset="0" stop-color="#',idToBlooper[id].gradientColor1.toColor(),'" />',
      '<stop offset="1" stop-color="#',idToBlooper[id].gradientColor2.toColor(),'" />'
      ));
    

    string memory svgP2 = string(abi.encodePacked(
      '</linearGradient></defs><rect width="1080" height="1080" fill="url(#linear-gradient)" /><g stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="10">',
      extraGenerator.render(idToBlooper[id].extra, idToBlooper[id].hatColor),
      '<g fill="#',idToBlooper[id].bodyColor.toColor(),'">',
      bodyGenerator.render(idToBlooper[id].tier),
      '</g>',
      fullFaceGenerator.render(idToBlooper[id].fullFace, idToBlooper[id].hatColor),
      hatGenerator.render(idToBlooper[id].hat, idToBlooper[id].hatColor),
      eyeGenerator.render(idToBlooper[id].eye, idToBlooper[id].hatColor),
      mouthGenerator.render(idToBlooper[id].mouth, idToBlooper[id].hatColor),
      maskGenerator.render(idToBlooper[id].mask, idToBlooper[id].hatColor),
      detailGenerator.render(idToBlooper[id].detail, idToBlooper[id].hatColor),
      '</g></svg>'
    ));
    
    return string(abi.encodePacked(svgP1,svgP2));
    
    
  }

  function upgrade(uint256 toUpgradeId, uint256 toBurnId) public {
    // Checks
    require(_isApprovedOrOwner(msg.sender, toUpgradeId) && _isApprovedOrOwner(msg.sender, toBurnId), "NOT OWNER/APPROVED");
    require(idToBlooper[toUpgradeId].tier == idToBlooper[toBurnId].tier, "NOT SAME TIER");
    require(idToBlooper[toUpgradeId].tier < 2, "Already tier 3");
    
    // Effects
    burn(toBurnId);
    
    // Interactions
    // At this point we are allowed to merge the two bloops
    idToBlooper[toUpgradeId].tier++; // upgrade the tier;
    
    // Randomly choose a few traits from toBurnId and use in toUpgradeId instead.
    bytes32 predictableRandom = keccak256(abi.encodePacked( blockhash(block.number-1), msg.sender, address(this), toUpgradeId ));
    if((uint8(predictableRandom[1])%2)==0){
      idToBlooper[toUpgradeId].hat = idToBlooper[toBurnId].hat;
      idToBlooper[toBurnId].hat==11 ? idToBlooper[toUpgradeId].hatColor = idToBlooper[toUpgradeId].bodyColor : idToBlooper[toUpgradeId].hatColor = idToBlooper[toBurnId].hatColor;
    } else {
      //idToBlooper[toUpgradeId].face = idToBlooper[toBurnId].face;
    }
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