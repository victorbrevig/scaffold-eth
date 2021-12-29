pragma solidity ^0.8.0;
//SPDX-License-Identifier: MIT

contract SVGgenerator {


    constructor() {
        
    }

    function renderTokenBodyById(uint8 tier) external pure returns (string memory) { 
        // Body
        if(tier==0){
        return string(abi.encodePacked(
        '<path d="M806.25,804.25h-34V434.75c0-126.75-102.75-229.5-229.5-229.5h0c-126.75,0-229.5,102.75-229.5,229.5v369.5h-38a29,29,0,0,0-29,29h0a29,29,0,0,0,29,29h531a29,29,0,0,0,29-29h0A29,29,0,0,0,806.25,804.25Z" />',
        '<rect x="704" y="901" width="77" height="51" rx="25.5" />',
        '<rect x="155" y="854.88" width="50" height="33.12" rx="16.56" />',
        '<rect x="870" y="837.88" width="50" height="33.12" rx="16.56" />',
        '<line x1="320.25" y1="636.08" x2="365" y2="636.08" opacity="0.2" stroke-width="25" stroke-linecap="round" />'
        ));
        } else if(tier==1){
        return string(abi.encodePacked(
        '<rect x="157" y="854.88" width="50" height="33.12" rx="16.56" />',
        '<rect x="872" y="837.88" width="50" height="33.12" rx="16.56" />',
        '<rect x="704" y="901" width="77" height="51" rx="25.5" />',
        '<rect x="395" y="834" width="305" height="58" rx="29" opacity="0.2" stroke="none" fill="#000" />',
        '<path d="M774,630V434.61c0-126.75-102.75-229.5-229.5-229.5S315,307.86,315,434.61V630l-.12,3.38A94.24,94.24,0,1,0,421.26,787.11a141.39,141.39,0,0,0,245.89-.53A94.24,94.24,0,1,0,774.22,633.43Z" />',
        '<path d="M403,717a140.88,140.88,0,0,0,13,59.19c1.63,3.53,3.41,7,5.31,10.35a141.41,141.41,0,0,0,245.91.53q3.13-5.48,5.78-11.25" fill="none" />'
        ));
        } else {
        return string(abi.encodePacked(
        '<rect x="704" y="901" width="77" height="51" rx="25.5" />',
        '<rect x="155" y="854.88" width="50" height="33.12" rx="16.56" />',
        '<rect x="870" y="837.88" width="50" height="33.12" rx="16.56" />',
        '<rect x="313" y="205" width="459" height="595" rx="229.5" />',
        '<rect x="389" y="834" width="305" height="58" rx="29" fill="#000" opacity="0.2" stroke="none" />'
        ));
        }
    }

    function renderTokenFaceById(uint8 face) external pure returns (string memory) {
    if(face==0){ // default
      return string(abi.encodePacked(
      '<g>',
      '<circle cx="454.88" cy="448.25" r="26" fill="#fff" />',
      '<circle cx="714.88" cy="448.25" r="26" fill="#fff" />',
      '<line x1="545.38" y1="513" x2="624.38" y2="513" />',
      '</g>'
      ));
    } else if(face==1){ // smoker
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
    } else if(face==2){ // fast as fuck boi glasses
      return string(abi.encodePacked(
      '<g>',
      '<line x1="545.38" y1="513" x2="624.38" y2="513" fill="#fff" stroke="#000" stroke-linecap="round" stroke-miterlimit="10" stroke-width="10" />',
      '<rect x="378.86" y="404" width="412.29" height="74" rx="37" fill="#fff" stroke="#000" stroke-linecap="round" stroke-miterlimit="10" stroke-width="10" />',
      '<line x1="413.21" y1="441" x2="756.79" y2="441" fill="#fff" stroke="#000" stroke-linecap="round" stroke-miterlimit="10" stroke-width="20" />',
      '</g>'
      ));
    } else if(face==3){ // hockey mask
      return string(abi.encodePacked(
      '<g>',
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
    } else if(face==4){ // three eyes
      return string(abi.encodePacked(
      '<g>',
      '<circle cx="451.88" cy="437.25" r="26" fill="#fff" />',
      '<circle cx="711.88" cy="437.25" r="26" fill="#fff" />',
      '<circle cx="582" cy="407" r="26" fill="#fff" />',
      '<line x1="542.38" y1="502" x2="621.38" y2="502" />',
      '</g>'
      ));
    } else if(face==5){ // shades
      return string(abi.encodePacked(
      '<g>',
      '<line x1="542.38" y1="502" x2="621.38" y2="502" />',
      '<path d="M390,396H279a14,14,0,0,0-14,14h0v19" fill="none" />',
      '<line x1="514" y1="396.45" x2="650" y2="396.45" />',
      '<path d="M530,385.39H374V408h15.1v27.68a62.9,62.9,0,0,0,62.9,62.9h0a62.9,62.9,0,0,0,62.9-62.9V408H530Z" fill="#3d3d3d" />',
      '<path d="M790,385.39H634V408h15.1v27.68a62.9,62.9,0,0,0,62.9,62.9h0a62.9,62.9,0,0,0,62.9-62.9V408H790Z" fill="#3d3d3d" />',
      '</g>'
      ));
    } else if(face==6){ // glasses
      return string(abi.encodePacked(
      '<g fill="#6a17b8">',
      '<line x1="545.38" y1="512" x2="624.38" y2="512" />',
      '<circle cx="454.88" cy="447.25" r="39.75" />',
      '<circle cx="714.88" cy="447.25" r="39.75" />',
      '<line x1="490.27" y1="429.17" x2="679.48" y2="429.17" />',
      '<path d="M419.48,429.17H298.83A24.83,24.83,0,0,0,274,454h0" fill="none" />',
      '</g>'
      ));
    } else if(face==7){ // covid mask
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
    } else if(face==8){ //3d glasses
      return string(abi.encodePacked(
      '<g>',
      '<line x1="547" y1="513" x2="626" y2="513" />',
      '<path d="M258,446.69V488h40V469.6a5.6,5.6,0,0,1,5.6-5.6H383V412H292.69A34.69,34.69,0,0,0,258,446.69Z" fill="#fff" />',
      '<path d="M383,389v99H553.77a35,35,0,0,1,66.46,0H791V389Z" fill="#fff" />',
      '<rect x="671" y="413" width="92" height="51" transform="translate(1434 877) rotate(180)" fill="#ff4848" />',
      '<rect x="411" y="413" width="92" height="51" transform="translate(914 877) rotate(180)" fill="#4a8bff" />',
      '</g>'
      ));
    } else if(face==9){ // joker glasses
      return string(abi.encodePacked(
      '<g fill="#ff4848">',
      '<line x1="547" y1="513" x2="626" y2="513" />',
      '<polygon points="399.79 450 457 354 514.21 450 457 546 399.79 450" />',
      '<polygon points="659.79 450 717 354 774.21 450 717 546 659.79 450" />',
      '<circle cx="457" cy="448" r="26" fill="#fff" />',
      '<circle cx="717" cy="448" r="26" fill="#fff" />',
      '</g>'
      ));
    } else if(face==10){ // mobster
      return string(abi.encodePacked(
      '<g><g fill="#ffdf22">',
      '<rect x="594.5" y="592.5" width="19" height="50" /><rect x="325" y="572.56" width="440" height="20" />',
      '<rect x="562" y="618" width="79.5" height="55.5" rx="13.11" /><rect x="302" y="563.06" width="39" height="39" rx="13.22" />',
      '<rect x="364.86" y="563.06" width="39" height="39" rx="13.22" /><rect x="427.71" y="563.06" width="39" height="39" rx="13.22" />',
      '<rect x="490.57" y="563.06" width="39" height="39" rx="13.22" /><rect x="679.14" y="563.06" width="39" height="39" rx="13.22" />',
      '<rect x="742" y="563.06" width="39" height="39" rx="13.22" /><rect x="616.29" y="563.06" width="39" height="39" rx="13.22" />',
      '<rect x="553.43" y="563.06" width="39" height="39" rx="13.22" /></g>',
      '<circle cx="453.88" cy="448.25" r="26" fill="#fff" /><circle cx="713.88" cy="448.25" r="26" fill="#fff" />',
      '<line x1="544.38" y1="513" x2="623.38" y2="513" /><rect x="518" y="491" width="55" height="6" />',
      '<rect x="594" y="491" width="55" height="6" /><rect x="580" y="528" width="8" height="16" /></g>'
      ));
    } else if(face==11) { // IG glasses
      return string(abi.encodePacked(
      
      ));
    } else if(face==12) { // Lazer eye
      return string(abi.encodePacked(
      
      ));
    } else if(face==13) { // Goggles
      return string(abi.encodePacked(
      
      ));
    } else if(face==14) { // bandana
      return string(abi.encodePacked(
      
      ));
    }






    return '';
  }



  function renderTokenHatById(uint8 hat) external pure returns (string memory) {

    if(hat==0){ // planet
      return string(abi.encodePacked(
      '<g>',
      '<circle cx="543" cy="116" r="38" fill="#ff0000"/>',
      '<path d="M579.05,104h24a12,12,0,0,1,12,12h0a12,12,0,0,1-12,12H483a12,12,0,0,1-12-12h0a12,12,0,0,1,12-12h23.94" fill="none" />',
      '</g>'
      ));
    } else if(hat==1){ // halo
      return string(abi.encodePacked(
      '<g>',
      '<path d="M584.56,85H504.44a35.13,35.13,0,0,0-35.13,35.12h0a35.13,35.13,0,0,0,35.13,35.13h80.12a35.13,35.13,0,0,0,35.13-35.13h0A35.13,35.13,0,0,0,584.56,85ZM593,120.45a9.89,9.89,0,0,1-9.89,9.89H505.89a9.89,9.89,0,0,1-9.89-9.89v-.65a9.89,9.89,0,0,1,9.89-9.89h77.22A9.89,9.89,0,0,1,593,119.8Z" fill="#ffe000" />',
      '</g>'
      ));
    } else if(hat==2){ // diamond
      return string(abi.encodePacked(
      '<g>',
      '<polygon points="515.5 117 545 67.5 574.5 117 545 166.5 515.5 117" fill="#3eff74" />',
      '</g>'
      ));
    } else if(hat==3){ // sweat band
      return string(abi.encodePacked(
      '<g fill="#4a8bff" >',
      '<rect x="326" y="273" width="437" height="53"/>',
      '<rect x="316" y="291" width="457" height="17" fill="#fff" />',
      '</g>'
      ));
    } else if(hat==4){ // mochigan
      return string(abi.encodePacked(
      '<g fill="#4a8bff">',
      '<rect x="552" y="114" width="42" height="132"/>',
      '<path d="M552,246V114h0a99,99,0,0,0-99,99v14.16S519,216,552,246Z"/>',
      '</g>'
      ));
    } else if(hat==5){ // horns
      return string(abi.encodePacked(
      '<g fill="#f1ece4">',
      '<path d="M407.5,242H366a67,67,0,0,1-67-67v50a74,74,0,0,0,74,74H407.5a28.5,28.5,0,0,0,0-57Z" />',
      '<path d="M376.5,242h0A28.5,28.5,0,0,1,405,270.5h0A28.5,28.5,0,0,1,376.5,299h0" fill="none" />',
      '<path d="M725,242H683.5a28.36,28.36,0,0,0-12.61,2.94,230.29,230.29,0,0,1,55.5,53.58A74,74,0,0,0,792,225V175A67,67,0,0,1,725,242Z" />',
      '</g>'
      ));
    } else if(hat==6){ // cap
      return string(abi.encodePacked(
      '<path d="M466,190H632.5A14.5,14.5,0,0,1,647,204.5v0A14.5,14.5,0,0,1,632.5,219H466a0,0,0,0,1,0,0V190A0,0,0,0,1,466,190Z" />',
      '<path d="M583.25,219h-117V180.5a58.5,58.5,0,0,1,58.5-58.5h0a58.5,58.5,0,0,1,58.5,58.5Z" />',
      '<path d="M524.5,122H524v97h59V180.5A58.5,58.5,0,0,0,524.5,122Z" fill="#fff" />',
      '<circle cx="524.75" cy="120" r="11" fill="#fff" />'
      ));
    } else if(hat==7){ // beanie
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
      '<line x1="706.91" y1="248" x2="706.91" y2="268" /></g>'
      ));
    } else if(hat==8){ // afro
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

    return '';
  }



}