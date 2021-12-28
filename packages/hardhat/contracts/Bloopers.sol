pragma solidity >=0.6.0 <0.7.0;
//SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import 'base64-sol/base64.sol';


import './HexStrings.sol';
import './ToColor.sol';
import './BloopToken.sol';
//learn more: https://docs.openzeppelin.com/contracts/3.x/erc721

// GET LISTED ON OPENSEA: https://testnets.opensea.io/get-listed/step-two

contract Bloopers is ERC721, Ownable {

  using Strings for uint256;
  using HexStrings for uint160;
  using ToColor for bytes3;
  using Counters for Counters.Counter;
  Counters.Counter private _tokenIds;

  BloopToken bloopToken;

  constructor() public ERC721("Bloopers", "BLOOP") {
    
  }


  mapping (uint256 => bytes3) public bodyColor;
  mapping (uint256 => bytes3) public gradientColor1;
  mapping (uint256 => bytes3) public gradientColor2;

  mapping (uint256 => uint8) public tiers;
  mapping (uint256 => uint8) public hats;
  mapping (uint256 => uint8) public faces;

  mapping (uint256 => uint256) public chubbiness;

  uint256 fusePrice = 1_000 * 1e18;


  function mintItem() public returns (uint256) {
    _tokenIds.increment();

    uint256 id = _tokenIds.current();
    _mint(msg.sender, id);

    bytes32 predictableRandom = keccak256(abi.encodePacked( blockhash(block.number-1), msg.sender, address(this), id ));
    bodyColor[id]      = bytes2(predictableRandom[0]) | ( bytes2(predictableRandom[1]) >> 8 ) | ( bytes3(predictableRandom[2]) >> 16 );
    gradientColor1[id] = bytes2(predictableRandom[3]) | ( bytes2(predictableRandom[4]) >> 8 ) | ( bytes3(predictableRandom[5]) >> 16 );
    gradientColor2[id] = bytes2(predictableRandom[6]) | ( bytes2(predictableRandom[7]) >> 8 ) | ( bytes3(predictableRandom[8]) >> 16 ); 
    tiers[id]          = uint8(predictableRandom[9])%3;
    hats[id]           = uint8(predictableRandom[10])%10;
    faces[id]          = uint8(predictableRandom[11])%11;
    chubbiness[id] = 35+((55*uint256(uint8(predictableRandom[3])))/255);
    
    return id;
  }

  function fuseBloopers(uint256 _consumerId, uint256 _victimId) public {
    // should transfer to DAO or this function should be in DAO contract (msg.sender is paying the DAO to fuse)
    require(ownerOf(_consumerId) == msg.sender && ownerOf(_victimId) == msg.sender);
    require(tiers[_consumerId] < 3);
    bool paymentSuccess = bloopToken.transferFrom(msg.sender, address(this), fusePrice);
    require(paymentSuccess, "PAYMENT NOT SUCCESSFUL");

    tiers[_consumerId]++;
    hats[_consumerId] = hats[_victimId];


  }




  function tokenURI(uint256 id) public view override returns (string memory) {
        require(_exists(id), "not exist");
        string memory name = string(abi.encodePacked('Loogie #',id.toString()));
        string memory description = string(abi.encodePacked('This Loogie is the color #',bodyColor[id].toColor(),' with a chubbiness of ',uint2str(chubbiness[id]),'!!!'));
        string memory image = Base64.encode(bytes(generateSVGofTokenById(id)));

        return
            string(
                abi.encodePacked(
                  'data:application/json;base64,',
                  Base64.encode(
                      bytes(
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
                                '}], "owner":"',
                                (uint160(ownerOf(id))).toHexString(20),
                                '", "image": "',
                                'data:image/svg+xml;base64,',
                                image,
                                '"}'
                            )
                          )
                      )
                )
            );
  }

  function generateSVGofTokenById(uint256 id) internal view returns (string memory) {

    string memory svg = string(abi.encodePacked(
      '<svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1080 1080">',
      '<title>Bloops</title>',
      '<defs>',
      '<linearGradient id="linear-gradient" x2="1080" y2="1080" gradientUnits="userSpaceOnUse">',
      '<stop offset="0" stop-color="#',gradientColor1[id].toColor(),'" />',
      '<stop offset="1" stop-color="#',gradientColor2[id].toColor(),'" />',
      '</linearGradient>',
      '</defs>'
      '<rect width="1080" height="1080" fill="url(#linear-gradient)" />',
      '<g stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="10">',
      '<g fill="#',bodyColor[id].toColor(),'">',
      renderTokenBodyById(id),
      '</g>',
      renderTokenHatById(id),
      renderTokenFaceById(id),
      '</g>',
      '</svg>'
    ));

    return svg;
  }

  // Visibility is `public` to enable it being called by other contracts for composition.
  function renderTokenBodyById(uint256 id) public view returns (string memory) {

    // Body
    if(tiers[id]==0){
      return string(abi.encodePacked(
      '<path d="M806.25,804.25h-34V434.75c0-126.75-102.75-229.5-229.5-229.5h0c-126.75,0-229.5,102.75-229.5,229.5v369.5h-38a29,29,0,0,0-29,29h0a29,29,0,0,0,29,29h531a29,29,0,0,0,29-29h0A29,29,0,0,0,806.25,804.25Z" />',
      '<rect x="704" y="901" width="77" height="51" rx="25.5" />',
      '<rect x="155" y="854.88" width="50" height="33.12" rx="16.56" />',
      '<rect x="870" y="837.88" width="50" height="33.12" rx="16.56" />',
      '<line x1="320.25" y1="636.08" x2="365" y2="636.08" opacity="0.2" stroke-width="25" stroke-linecap="round" />'
      ));
    } else if(tiers[id]==1){
      return string(abi.encodePacked(
      '<path d="M806.25,804.25H785.52A349,349,0,0,0,895,550c0-193.3-156.7-350-350-350S195,356.7,195,550A349,349,0,0,0,304.48,804.25H275.25a29,29,0,0,0-29,29h0a29,29,0,0,0,29,29h531a29,29,0,0,0,29-29h0A29,29,0,0,0,806.25,804.25Z" transform="translate(0)" />',
      '<rect x="704" y="901" width="77" height="51" rx="25.5" />',
      '<rect x="155" y="854.88" width="50" height="33.12" rx="16.56" />',
      '<rect x="870" y="837.88" width="50" height="33.12" rx="16.56" />',
      '<line x1="215.25" y1="636.08" x2="275" y2="636.08" opacity="0.2" stroke-width="25" stroke-linecap="round" />',
      '<line x1="225.25" y1="676.08" x2="275" y2="676.08" opacity="0.2" stroke-width="25" stroke-linecap="round" />'
      ));
    } else {
      return string(abi.encodePacked(
      '<circle cx="540" cy="473" r="273" stroke-miterlimit="10" />',
      '<rect x="423" y="834" width="237" height="58" rx="29" opacity="0.2" fill="#000000" stroke="none" />',
      '<rect x="704" y="901" width="77" height="51" rx="25.5" />',
      '<rect x="155" y="854.88" width="50" height="33.12" rx="16.56" />',
      '<rect x="870" y="837.88" width="50" height="33.12" rx="16.56" />',
      '<line x1="280.25" y1="526.08" x2="356" y2="526.08" opacity="0.2" stroke-width="25" stroke-linecap="round" />',
      '<line x1="290.25" y1="566.08" x2="356" y2="566.08" opacity="0.2" stroke-width="25" stroke-linecap="round" />',
      '<line x1="310.25" y1="606.08" x2="356" y2="606.08" opacity="0.2" stroke-width="25" stroke-linecap="round" />'
      ));
    }
  }

  function renderTokenHatById(uint256 id) public view returns (string memory) {

    if(hats[id]==0){ // planet
      return string(abi.encodePacked(
      '<g>',
      '<circle cx="543" cy="116" r="38" fill="#ff0000"/>',
      '<path d="M579.05,104h24a12,12,0,0,1,12,12h0a12,12,0,0,1-12,12H483a12,12,0,0,1-12-12h0a12,12,0,0,1,12-12h23.94" fill="none" />',
      '</g>'
      ));
    } else if(hats[id]==1){ // halo
      return string(abi.encodePacked(
      '<g>',
      '<path d="M584.56,85H504.44a35.13,35.13,0,0,0-35.13,35.12h0a35.13,35.13,0,0,0,35.13,35.13h80.12a35.13,35.13,0,0,0,35.13-35.13h0A35.13,35.13,0,0,0,584.56,85ZM593,120.45a9.89,9.89,0,0,1-9.89,9.89H505.89a9.89,9.89,0,0,1-9.89-9.89v-.65a9.89,9.89,0,0,1,9.89-9.89h77.22A9.89,9.89,0,0,1,593,119.8Z" fill="#ffe000" />',
      '</g>'
      ));
    } else if(hats[id]==2){ // diamond
      return string(abi.encodePacked(
      '<g>',
      '<polygon points="515.5 117 545 67.5 574.5 117 545 166.5 515.5 117" fill="#3eff74" />',
      '</g>'
      ));
    } else if(hats[id]==3){ // sweat band
      return string(abi.encodePacked(
      '<g fill="#4a8bff" >',
      '<rect x="326" y="273" width="437" height="53"/>',
      '<rect x="316" y="291" width="457" height="17" fill="#fff" />',
      '</g>'
      ));
    } else if(hats[id]==4){ // mochigan
      return string(abi.encodePacked(
      '<g fill="#4a8bff">',
      '<rect x="552" y="114" width="42" height="132"/>',
      '<path d="M552,246V114h0a99,99,0,0,0-99,99v14.16S519,216,552,246Z"/>',
      '</g>'
      ));
    } else if(hats[id]==5){ // horns
      return string(abi.encodePacked(
      '<g fill="#f1ece4">',
      '<path d="M407.5,242H366a67,67,0,0,1-67-67v50a74,74,0,0,0,74,74H407.5a28.5,28.5,0,0,0,0-57Z" />',
      '<path d="M376.5,242h0A28.5,28.5,0,0,1,405,270.5h0A28.5,28.5,0,0,1,376.5,299h0" fill="none" />',
      '<path d="M725,242H683.5a28.36,28.36,0,0,0-12.61,2.94,230.29,230.29,0,0,1,55.5,53.58A74,74,0,0,0,792,225V175A67,67,0,0,1,725,242Z" />',
      '</g>'
      ));
    } else if(hats[id]==6){ // cap
      return string(abi.encodePacked(
      '<path d="M466,190H632.5A14.5,14.5,0,0,1,647,204.5v0A14.5,14.5,0,0,1,632.5,219H466a0,0,0,0,1,0,0V190A0,0,0,0,1,466,190Z" />',
      '<path d="M583.25,219h-117V180.5a58.5,58.5,0,0,1,58.5-58.5h0a58.5,58.5,0,0,1,58.5,58.5Z" />',
      '<path d="M524.5,122H524v97h59V180.5A58.5,58.5,0,0,0,524.5,122Z" fill="#fff" />',
      '<circle cx="524.75" cy="120" r="11" fill="#fff" />'
      ));
    } else if(hats[id]==7){ // beanie
      return string(abi.encodePacked(
      '<g transform="translate(0 15)" fill="#28345c">',
      '<rect x="358.5" y="246.5" width="367" height="29" />',
      '<path d="M712.76,246.5a229,229,0,0,0-342.52,0Z" />',
      '<line x1="376.91" y1="248" x2="376.91" y2="268" />',
      '<line x1="406.91" y1="248" x2="406.91" y2="268" />',
      '<line x1="436.91" y1="248" x2="436.91" y2="268" />',
      '<line x1="466.91" y1="248" x2="466.91" y2="268" />',
      '<line x1="496.91" y1="248" x2="496.91" y2="268" />',
      '<line x1="526.91" y1="248" x2="526.91" y2="268" />',
      '<line x1="556.91" y1="248" x2="556.91" y2="268" />',
      '<line x1="586.91" y1="248" x2="586.91" y2="268" />',
      '<line x1="616.91" y1="248" x2="616.91" y2="268" />',
      '<line x1="646.91" y1="248" x2="646.91" y2="268" />',
      '<line x1="676.91" y1="248" x2="676.91" y2="268" />',
      '<line x1="706.91" y1="248" x2="706.91" y2="268" />',
      '</g>'
      ));
    } else if(hats[id]==8){ // afro
      return string(abi.encodePacked(
      '<g fill="#ff46c7">',
      '<circle cx="358.5" cy="342.5" r="3.5" />',
      '<circle cx="391.5" cy="362.5" r="3.5" />',
      '<circle cx="351.5" cy="382.5" r="3.5" />',
      '<circle cx="397.5" cy="323.5" r="3.5" />',
      '<path d="M728.44,230.73A35.49,35.49,0,0,0,668.5,199.3a35.49,35.49,0,0,0-50,0,35.49,35.49,0,0,0-50,0,35.49,35.49,0,0,0-50,0,35.49,35.49,0,0,0-50,0,35.49,35.49,0,0,0-50,0,35.49,35.49,0,0,0-60,30.87,35.5,35.5,0,1,0,34,59.53,35.49,35.49,0,0,0,50,0,35.49,35.49,0,0,0,50,0,35.49,35.49,0,0,0,50,0,35.49,35.49,0,0,0,50,0,35.49,35.49,0,0,0,50,0,35.49,35.49,0,0,0,50,0,35.5,35.5,0,1,0,35.94-59Z" />',
      '</g>'
      ));
    }


    return string(abi.encodePacked(''));
  }

    // Face
  function renderTokenFaceById(uint256 id) public view returns (string memory) {
    if(faces[id]==0){ // default
      return string(abi.encodePacked(
      '<g>',
      '<circle cx="454.88" cy="448.25" r="26" fill="#fff" />',
      '<circle cx="714.88" cy="448.25" r="26" fill="#fff" />',
      '<line x1="545.38" y1="513" x2="624.38" y2="513" />',
      '</g>'
      ));
    } else if(faces[id]==1){ // smoker
      return string(abi.encodePacked(
      '<g>',
      '<rect x="863" y="443" width="39" height="137" fill="#fff" transform="translate(351 1394) rotate(-90)" />',
      '<rect x="819" y="487" width="39" height="49" transform="translate(307 1350) rotate(-90)" fill="#d68a25" />',
      '<rect x="922.5" y="502.5" width="39" height="18" transform="translate(410.5 1453.5) rotate(-90)" />',
      '<line x1="913" y1="430" x2="913" y2="462" />',
      '<line x1="931" y1="462" x2="931" y2="398" />',
      '<circle cx="585" cy="511" r="12" />',
      '<circle cx="454.88" cy="447.25" r="26" fill="#fff" />',
      '<circle cx="714.88" cy="447.25" r="26" fill="#fff" />',
      '</g>'
      ));
    } else if(faces[id]==2){ // fast as fuck boi glasses
      return string(abi.encodePacked(
      '<g>',
      '<line x1="545.38" y1="513" x2="624.38" y2="513" fill="#fff" stroke="#000" stroke-linecap="round" stroke-miterlimit="10" stroke-width="10" />',
      '<rect x="378.86" y="404" width="412.29" height="74" rx="37" fill="#fff" stroke="#000" stroke-linecap="round" stroke-miterlimit="10" stroke-width="10" />',
      '<line x1="413.21" y1="441" x2="756.79" y2="441" fill="#fff" stroke="#000" stroke-linecap="round" stroke-miterlimit="10" stroke-width="20" />',
      '</g>'
      ));
    } else if(faces[id]==3){ // hockey mask
      return string(abi.encodePacked(
      '<g>'
      '<rect x="351" y="302" width="462" height="288" rx="144" fill="#fff" />',
      '<circle cx="451.88" cy="437.25" r="26" />',
      '<circle cx="711.88" cy="437.25" r="26" />',
      '<line x1="261" y1="446" x2="351" y2="446" />',
      '<circle cx="585" cy="522" r="5" />',
      '<circle cx="525" cy="522" r="5" />',
      '<circle cx="555" cy="482" r="5" />',
      '<circle cx="615" cy="482" r="5" />',
      '<circle cx="645" cy="522" r="5" />',
      '<path d="M538.68,362h91.64a0,0,0,0,1,0,0v0a42,42,0,0,1-42,42h-7.64a42,42,0,0,1-42-42v0A0,0,0,0,1,538.68,362Z" fill="#ff4848" stroke="#ff4848" stroke-miterlimit="10" />',
      '</g>'
      ));
    } else if(faces[id]==4){ // three eyes
      return string(abi.encodePacked(
      '<g>',
      '<circle cx="451.88" cy="437.25" r="26" fill="#fff" />',
      '<circle cx="711.88" cy="437.25" r="26" fill="#fff" />',
      '<circle cx="582" cy="407" r="26" fill="#fff" />',
      '<line x1="542.38" y1="502" x2="621.38" y2="502" />',
      '</g>'
      ));
    } else if(faces[id]==5){ // shades
      return string(abi.encodePacked(
      '<g>',
      '<line x1="542.38" y1="502" x2="621.38" y2="502" />',
      '<path d="M390,396H279a14,14,0,0,0-14,14h0v19" fill="none" />',
      '<line x1="514" y1="396.45" x2="650" y2="396.45" />',
      '<path d="M530,385.39H374V408h15.1v27.68a62.9,62.9,0,0,0,62.9,62.9h0a62.9,62.9,0,0,0,62.9-62.9V408H530Z" fill="#3d3d3d" />',
      '<path d="M790,385.39H634V408h15.1v27.68a62.9,62.9,0,0,0,62.9,62.9h0a62.9,62.9,0,0,0,62.9-62.9V408H790Z" fill="#3d3d3d" />',
      '</g>'
      ));
    } else if(faces[id]==6){ // glasses
      return string(abi.encodePacked(
      '<g fill="#6a17b8">',
      '<line x1="545.38" y1="512" x2="624.38" y2="512" />',
      '<circle cx="454.88" cy="447.25" r="39.75" />',
      '<circle cx="714.88" cy="447.25" r="39.75" />',
      '<line x1="490.27" y1="429.17" x2="679.48" y2="429.17" />',
      '<path d="M419.48,429.17H298.83A24.83,24.83,0,0,0,274,454h0" fill="none" />',
      '</g>'
      ));
    } else if(faces[id]==7){ // covid mask
      return string(abi.encodePacked(
      '<g>',
      '<circle cx="456.88" cy="448.25" r="26" fill="#fff" />',
      '<circle cx="716.88" cy="448.25" r="26" fill="#fff" />',
      '<line x1="547.38" y1="513" x2="626.38" y2="513" />',
      '<rect x="472" y="487" width="229" height="118" rx="23" fill="#cbe7ff" />',
      '<path d="M472,510a23,23,0,0,1,23-23H678a23,23,0,0,1,23,23Z" fill="#fff" />',
      '<line x1="498" y1="535" x2="675" y2="535" />',
      '<line x1="498" y1="558" x2="675" y2="558" />',
      '<line x1="498" y1="581" x2="675" y2="581" />',
      '<path d="M472.29,565.25H296.71a29.13,29.13,0,0,1-29.12-29.13h0A29.12,29.12,0,0,1,296.71,507H472.29" fill="none" />',
      '<path d="M772.16,507H700.59" fill="none" />',
      '<path d="M700.59,565.25h71.57" fill="none" />',
      '</g>'
      ));
    } else if(faces[id]==8){ //3d glasses
      return string(abi.encodePacked(
      '<g>',
      '<line x1="547" y1="513" x2="626" y2="513" />',
      '<path d="M258,446.69V488h40V469.6a5.6,5.6,0,0,1,5.6-5.6H383V412H292.69A34.69,34.69,0,0,0,258,446.69Z" fill="#fff" />',
      '<path d="M383,389v99H553.77a35,35,0,0,1,66.46,0H791V389Z" fill="#fff" />',
      '<rect x="671" y="413" width="92" height="51" transform="translate(1434 877) rotate(180)" fill="#ff4848" />',
      '<rect x="411" y="413" width="92" height="51" transform="translate(914 877) rotate(180)" fill="#4a8bff" />',
      '</g>'
      ));
    } else if(faces[id]==9){ // joker glasses
      return string(abi.encodePacked(
      '<g fill="#ff4848">',
      '<line x1="547" y1="513" x2="626" y2="513" />',
      '<polygon points="399.79 450 457 354 514.21 450 457 546 399.79 450" />',
      '<polygon points="659.79 450 717 354 774.21 450 717 546 659.79 450" />',
      '<circle cx="457" cy="448" r="26" fill="#fff" />',
      '<circle cx="717" cy="448" r="26" fill="#fff" />',
      '</g>'
      ));
    } else if(faces[id]==10){ // balaclava
      return string(abi.encodePacked(
      '<g fill="#3d3d3d">',
      '<circle cx="454.88" cy="448.25" r="26" fill="#fff" />',
      '<circle cx="714.88" cy="448.25" r="26" fill="#fff" />',
      '<path d="M540.5,207h0C413.75,207,311,309.75,311,436.5V600H770V436.5C770,309.75,667.25,207,540.5,207ZM756,448.5A42.5,42.5,0,0,1,713.5,491h-261A42.5,42.5,0,0,1,410,448.5h0A42.5,42.5,0,0,1,452.5,406h261A42.5,42.5,0,0,1,756,448.5Z" />',
      '<rect x="311" y="569" width="459" height="31" />',
      '<line x1="346.91" y1="569" x2="346.91" y2="600" />',
      '<line x1="376.91" y1="569" x2="376.91" y2="600" />',
      '<line x1="406.91" y1="569" x2="406.91" y2="600" />',
      '<line x1="436.91" y1="569" x2="436.91" y2="600" />',
      '<line x1="466.91" y1="569" x2="466.91" y2="600" />',
      '<line x1="496.91" y1="569" x2="496.91" y2="600" />',
      '<line x1="526.91" y1="569" x2="526.91" y2="600" />',
      '<line x1="556.91" y1="569" x2="556.91" y2="600" />',
      '<line x1="586.91" y1="569" x2="586.91" y2="600" />',
      '<line x1="616.91" y1="569" x2="616.91" y2="600" />',
      '<line x1="646.91" y1="569" x2="646.91" y2="600" />',
      '<line x1="676.91" y1="569" x2="676.91" y2="600" />',
      '<line x1="706.91" y1="569" x2="706.91" y2="600" />',
      '<line x1="736.91" y1="569" x2="736.91" y2="600" />',
      '</g>'
      ));
    }
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
