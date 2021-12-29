pragma solidity ^0.8.0;
//SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import 'base64-sol/base64.sol';


import './HexStrings.sol';
import './ToColor.sol';
import './BodyGenerator.sol';
import './FaceGenerator.sol';
import './HatGenerator.sol';

//learn more: https://docs.openzeppelin.com/contracts/3.x/erc721

// GET LISTED ON OPENSEA: https://testnets.opensea.io/get-listed/step-two

contract YourCollectible is ERC721Enumerable, Ownable {

  using Strings for uint256;
  using HexStrings for uint160;
  using ToColor for bytes3;
  using Counters for Counters.Counter;

  SVGBodyGenerator bodyGenerator;
  SVGFaceGenerator faceGenerator;
  SVGHatGenerator hatGenerator;
  

  Counters.Counter private _tokenIds;
  
  address payable public constant recipient =
    payable(0x6946EC240f5C64D6AF2b3a210394a9D24737d1E6);

  uint256 public constant limit = 3728;
  uint256 public constant curve = 1002; // price increase 0,4% with each purchase
  uint256 public price = 0.001 ether;

  constructor(address bodyGeneratorAddress, address faceGeneratorAddress, address hatGeneratorAddress) ERC721("Bloopers", "BLOOP") {
    bodyGenerator = SVGBodyGenerator(bodyGeneratorAddress);
    faceGenerator = SVGFaceGenerator(faceGeneratorAddress);
    hatGenerator = SVGHatGenerator(hatGeneratorAddress);
  }

  mapping (uint256 => bytes3) public bodyColor;
  mapping (uint256 => bytes3) public hatColor;
  mapping (uint256 => bytes3) public gradientColor1;
  mapping (uint256 => bytes3) public gradientColor2;

  mapping (uint256 => uint8) public tiers;
  mapping (uint256 => uint8) public hats;
  mapping (uint256 => uint8) public faces;

  mapping (uint256 => uint256) public chubbiness;
  mapping (uint256 => uint256) public mouthLength;

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

  


  function mintItem() public payable returns (uint256) {
    require(_tokenIds.current() < limit, "DONE MINTING");
    require(msg.value >= price, "NOT ENOUGH");
    price = (price * curve) / 1000;

    _tokenIds.increment();

    uint256 id = _tokenIds.current();
    _mint(msg.sender, id);

    bytes32 predictableRandom = keccak256(abi.encodePacked( blockhash(block.number-1), msg.sender, address(this), id ));
    bodyColor[id]      = bytes2(predictableRandom[0]) | ( bytes2(predictableRandom[1]) >> 8 ) | ( bytes3(predictableRandom[2]) >> 16 );
    gradientColor1[id] = bytes2(predictableRandom[3]) | ( bytes2(predictableRandom[4]) >> 8 ) | ( bytes3(predictableRandom[5]) >> 16 );
    gradientColor2[id] = bytes2(predictableRandom[6]) | ( bytes2(predictableRandom[7]) >> 8 ) | ( bytes3(predictableRandom[8]) >> 16 ); 
    tiers[id]          = uint8(predictableRandom[9])%3;
    hats[id]           = uint8(predictableRandom[10])%15;
    faces[id]          = uint8(predictableRandom[11])%19;
    // condom (no. 11) must have same color as body
    hatColor[id]       = hats[id]==11 ? bodyColor[id] : bytes2(predictableRandom[12]) | ( bytes2(predictableRandom[13]) >> 8 ) | ( bytes3(predictableRandom[14]) >> 16 );
    
    chubbiness[id] = 35+((55*uint256(uint8(predictableRandom[3])))/255);
    mouthLength[id] = 180+((uint256(chubbiness[id]/4)*uint256(uint8(predictableRandom[4])))/255);
    // Send to recipient address
    (bool success, ) = recipient.call{value: msg.value}("");
    require(success, "could not send");

    lastBlockHarvestedById[id] = block.number;
    return id;
  }

  
  
  function tokenURI(uint256 id) public view override returns (string memory) {
      require(_exists(id), "not exist");
      string memory name = string(abi.encodePacked('Loogie #',id.toString()));
      string memory description = string(abi.encodePacked('This Loogie is the color #',bodyColor[id].toColor(),' with a chubbiness of ',uint2str(chubbiness[id]),' and mouth length of ',uint2str(mouthLength[id]),'!!!'));
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
                              bodyColor[id].toColor(),
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
      '<stop offset="0" stop-color="#',gradientColor1[id].toColor(),'" />',
      '<stop offset="1" stop-color="#',gradientColor2[id].toColor(),'" />'
      ));
    

    string memory svgP2 = string(abi.encodePacked(
      '</linearGradient></defs><rect width="1080" height="1080" fill="url(#linear-gradient)" /><g stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="10"><g fill="#',
      bodyColor[id].toColor(),'">',
      bodyGenerator.renderTokenBodyById(tiers[id]),
      '</g>',
      hatGenerator.renderTokenHatById(hats[id], hatColor[id]),
      faceGenerator.renderTokenFaceById(faces[id]),
      '</g></svg>'
    ));
    
    return string(abi.encodePacked(svgP1,svgP2));
    
    
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