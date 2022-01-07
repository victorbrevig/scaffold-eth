pragma solidity ^0.8.0;
//SPDX-License-Identifier: MIT

import './ToColor.sol';

contract SVGDetailGenerator {

  using ToColor for bytes3;

  constructor() {}

  function render(uint8 detail, string memory color) external pure returns (string memory) {
      if(detail==0){ // LIGHTNING
        return string(abi.encodePacked(
        '<g transform="translate(200 -19)" opacity="0.5"><polyline points="488 392 488 369 501.5 382.5 501.5 359" /></g>'
        ));
      }else if(detail==1){ // TATTOO
        return string(abi.encodePacked(
        '<g transform="translate(-20 -19)" opacity="0.3"><path d="M621.33,392.67c12.93-5,25.09-14.73,28.33-28.81.68-3-1.44-6.53-4.82-6.33-6.73.41-11.79,4.45-14.45,10.55-2.27,5.22-3.71,12.16-.34,17.25,4.56,6.89,14,6.16,20.1,2s11-10.6,14.79-16.9c3.32-5.55-5.19-10.47-8.63-5.05a24.37,24.37,0,0,0-4,15.49c.66,6,5.09,10,11.22,9.51,5.5-.42,9.26-3.69,12.29-8,3.45-4.94,6.78-10,10.17-14.95l-8.64-5c-3.63,6-8.41,22.69,3.3,23.18,4.53.19,8.15-2.66,11.47-5.35a61.4,61.4,0,0,0,9-9c2-2.41,3.33-4,6.2-4-.63-1.06-.75-1.07-.37,0q.13,1,.12.51a12.48,12.48,0,0,1,.1,1.83,12.21,12.21,0,0,1-.7,4.14c-1.85,5.84-7.34,10.38-12.94,12.61l4.87,1.29c-1.37-1.09-.09-.16-.37.24s.33-.58.31-.56a35.4,35.4,0,0,1,3.15-2.71c2.5-1.85,5.1-3.81,8.06-4.84,2.2-.76,5.5-1.31,7.67-.06,1.53.89,1.77,4.1,2.63,5.82a10.57,10.57,0,0,0,17.4,2.37,33.33,33.33,0,0,0,8.13-20.14c.39-6.43-9.62-6.41-10,0a22.33,22.33,0,0,1-2.7,9.25,42.88,42.88,0,0,1-2.94,4.3c-.56.78-.67.1-.18.31-.07,0-.24,0-.31-.07a7,7,0,0,1-1.29-3,13.72,13.72,0,0,0-2.79-5.16c-2.37-2.61-5.87-3.78-9.28-4.18-7.48-.88-14,2.67-19.77,7-3,2.28-6.32,4.7-7.57,8.47a9.17,9.17,0,0,0,2.78,10c1.31,1.05,3.12,2,4.86,1.29,6.84-2.74,12.87-6.95,16.93-13.2,3.56-5.48,5.35-13.05,3.11-19.36-3.24-9.11-15.19-6.92-20.48-1.23-2.62,2.82-4.87,5.85-7.72,8.47a47.46,47.46,0,0,1-4.44,3.69c-.53.37-1.07.7-1.61,1-1.26.81-.67.06-.42.25l1.8,1.79q-.06,1.32-.09-.24c0-.56,0-1.12,0-1.67a12.51,12.51,0,0,1,.36-2.43,19.06,19.06,0,0,1,2.36-5.58c3.36-5.56-5-10.31-8.64-5l-6.78,10c-1.57,2.31-3.15,5.72-5.54,7.35a3.81,3.81,0,0,1-2.93.72c.32.09.19.35.11-.69a15,15,0,0,1,2.7-9.28l-8.63-5.05A55.32,55.32,0,0,1,647.07,377,13.54,13.54,0,0,1,642,380.3a4.53,4.53,0,0,1-2.44.2c-.21-.05-1.33-.58-.86-.21-.38-.3-.42-.64-.56-1.36.1.51,0-.55,0-.68a11.43,11.43,0,0,1,0-1.17,14,14,0,0,1,.33-1.83,20.22,20.22,0,0,1,.76-2.48c.92-2.42,2.62-5.06,5.63-5.24L640,361.2c-2.42,10.53-11.6,18.08-21.34,21.82-2.52,1-4.26,3.37-3.49,6.15.66,2.41,3.61,4.47,6.15,3.5Z" stroke-width="0" /></g>'
        )); 
      }else if(detail==2){ // Scar
        return string(abi.encodePacked(
        '<g transform="translate(-40 -19)" opacity="0.5"><line x1="706" y1="372.5" x2="753" y2="372.5" />',
        '<line x1="714" y1="364.83" x2="714" y2="380.17" /><line x1="730" y1="364.83" x2="730" y2="380.17" />',
        '<line x1="746" y1="364.83" x2="746" y2="380.17" /></g>'
        ));
      }else if(detail==3){ // STUD EARRING
        return string(abi.encodePacked(
        '<g fill="#',color,'" transform="translate(-20 -10)"><circle cx="338.5" cy="483.5" r="18.5" /></g>'
        ));
      }else if(detail==4){ // RING EARRING
        return string(abi.encodePacked(
        '<g fill="#',color,'"><path d="M355.45,476.7l-11.23,16.54a11,11,0,1,1-12.44,0L320.55,476.7a31,31,0,1,0,34.9,0Z" /></g>'
        ));
      }else if(detail==5){ // DIAMOND EARRING
        return string(abi.encodePacked(
        '<g transform="translate(10 -20)">',
        '<rect x="319" y="486" width="38" height="38" transform="translate(934.09 623.09) rotate(135)" fill="#c0c0c0" />',
        '<line x1="347.9" y1="514.9" x2="328.1" y2="495.1" fill="none" stroke="#fff" stroke-linecap="butt" />',
        '<line x1="328.1" y1="514.9" x2="347.9" y2="495.1" fill="none" stroke="#fff" stroke-linecap="butt" />',
        '<rect x="333" y="500" width="10" height="10" transform="translate(934.09 623.09) rotate(135)" fill="#e0e0e0" stroke="none" />',
        '</g>'
        ));
      }else if(detail==6){ //  PRECIOUS STONE
        return string(abi.encodePacked(
        '<g fill="#',color,'">',
        '<path d="M729.67,901H755.5A25.5,25.5,0,0,1,781,926.5h0A25.5,25.5,0,0,1,755.5,952h-26A25.5,25.5,0,0,1,704,926.5h0A25.5,25.5,0,0,1,729.5,901Z" />',
        '<circle cx="725" cy="915" r="5" fill="#fff" stroke="none" opacity="0.6" /><circle cx="739" cy="920" r="5" fill="#000" stroke="none" opacity="0.3" />',
        '<circle cx="757" cy="914" r="5" fill="#fff" stroke="none" opacity="0.6" /><circle cx="754" cy="926" r="5" fill="#fff" stroke="none" opacity="0.6" />',
        '<circle cx="768" cy="925" r="5" fill="#fff" stroke="none" opacity="0.6" /><circle cx="759" cy="939" r="5" fill="#000" stroke="none" opacity="0.3" />',
        '<circle cx="743" cy="934" r="5" fill="#fff" stroke="none" opacity="0.6" /><circle cx="730" cy="938" r="5" fill="#000" stroke="none" opacity="0.3" />',
        '<circle cx="721" cy="929" r="5" fill="#000" stroke="none" opacity="0.3" /></g>'
        ));
      }else if(detail==7){ // BARCODE
        return string(abi.encodePacked(
        '<g transform="translate(0 -19)" opacity="0.6">',
        '<line x1="530" y1="360" x2="530" y2="376.26" />',
        '<rect x="546" y="360" width="7" height="16.26" />',
        '<line x1="567" y1="360" x2="567" y2="376.26" />',
        '<line x1="580" y1="360" x2="580" y2="376.26" /><line x1="617" y1="360" x2="617" y2="376.26" />',
        '<line x1="629" y1="360" x2="629" y2="376.26" />',
        '<line x1="642" y1="360" x2="642" y2="376.26" />',
        '<rect x="594" y="360" width="10" height="16.26" />',
        '<line x1="530" y1="390" x2="642" y2="390" opacity="0.4" /></g>'
        ));
      } 

      return '';
  }
}