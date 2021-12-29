pragma solidity ^0.8.0;
//SPDX-License-Identifier: MIT

import './ToColor.sol';

contract SVGHatGenerator {

  using ToColor for bytes3;

  constructor() {}

  function renderTokenHatById(uint8 hat, bytes3 color) external pure returns (string memory) {

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
      '<g fill="#',color.toColor(),'" >',
      '<rect x="326" y="273" width="437" height="53"/>',
      '<rect x="316" y="291" width="457" height="17" fill="#fff" />',
      '</g>'
      ));
    } else if(hat==4){ // mochigan
      return string(abi.encodePacked(
      '<g fill="#',color.toColor(),'" >',
      '<rect x="552" y="114" width="42" height="132"/>',
      '<path d="M552,246V114h0a99,99,0,0,0-99,99v14.16S519,216,552,246Z"/>',
      '</g>'
      ));
    } else if(hat==5){ // horns
      return string(abi.encodePacked(
      '<g fill="#',color.toColor(),'" >',
      '<path d="M407.5,242H366a67,67,0,0,1-67-67v50a74,74,0,0,0,74,74H407.5a28.5,28.5,0,0,0,0-57Z" />',
      '<path d="M376.5,242h0A28.5,28.5,0,0,1,405,270.5h0A28.5,28.5,0,0,1,376.5,299h0" fill="none" />',
      '<path d="M725,242H683.5a28.36,28.36,0,0,0-12.61,2.94,230.29,230.29,0,0,1,55.5,53.58A74,74,0,0,0,792,225V175A67,67,0,0,1,725,242Z" />',
      '</g>'
      ));
    } else if(hat==6){ // cap
      return string(abi.encodePacked(
      '<g fill="#',color.toColor(),'" transform="translate(20 -10)">',
      '<path d="M504.08,84h37.83A46.09,46.09,0,0,1,588,130.09V183a0,0,0,0,1,0,0H441a0,0,0,0,1,0,0V147.08A63.08,63.08,0,0,1,504.08,84Z" />',
      '<path d="M588,167h77a8,8,0,0,1,8,8v0a8,8,0,0,1-8,8H588a0,0,0,0,1,0,0V167A0,0,0,0,1,588,167Z" />',
      '<path d="M443,136h15a14,14,0,0,1,14,14h0a14,14,0,0,1-14,14H441" fill="#000" />',
      '<rect x="506" y="68" width="20" height="16" rx="8" />',
      '<polygon points="559 150 588 150 588 138.45 588 130 559 130 559 150" fill="#ffd000" />',
      '<line x1="441" y1="164" x2="426" y2="164" /></g>'
      ));
    } else if(hat==7){ // beanie
      return string(abi.encodePacked(
      '<g transform="translate(0 15)" fill="#',color.toColor(),'">',
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
      '<g fill="#',color.toColor(),'" >',
      '<circle cx="358.5" cy="342.5" r="3.5" />',
      '<circle cx="391.5" cy="362.5" r="3.5" />',
      '<circle cx="351.5" cy="382.5" r="3.5" />',
      '<circle cx="397.5" cy="323.5" r="3.5" />',
      '<path d="M728.44,230.73A35.49,35.49,0,0,0,668.5,199.3a35.49,35.49,0,0,0-50,0,35.49,35.49,0,0,0-50,0,35.49,35.49,0,0,0-50,0,35.49,35.49,0,0,0-50,0,35.49,35.49,0,0,0-50,0,35.49,35.49,0,0,0-60,30.87,35.5,35.5,0,1,0,34,59.53,35.49,35.49,0,0,0,50,0,35.49,35.49,0,0,0,50,0,35.49,35.49,0,0,0,50,0,35.49,35.49,0,0,0,50,0,35.49,35.49,0,0,0,50,0,35.49,35.49,0,0,0,50,0,35.5,35.5,0,1,0,35.94-59Z" />',
      '</g>'
      ));
    } else if(hat==9){ // crown
      return string(abi.encodePacked(
      '<g transform="translate(0 -10)">',
      '<defs><linearGradient id="linear-gradient-crown" x1="459" y1="126" x2="621" y2="126" gradientUnits="userSpaceOnUse">',
      '<stop offset="0" stop-color="#ffe000" />',
      '<stop offset="1" stop-color="#ff00a4" />',
      '</linearGradient></defs>',
      '<polygon points="621 182 621 70 580.5 110.5 540 70 499.5 110.5 459 70 459 182 621 182" fill="url(#linear-gradient-crown)" />',
      '<circle cx="494" cy="143" r="9" fill="#fff" /><circle cx="584" cy="143" r="9" fill="#fff" /><circle cx="540" cy="143" r="9" fill="#fff" /></g>'
      ));
    } else if(hat==10){ // toupe
      return string(abi.encodePacked(
      '<g fill="#',color.toColor(),'" >',
      '<path d="M742.94,145a37.07,37.07,0,0,0-37.07,36.94l0,13.06H383.6A103.6,103.6,0,0,0,280,298.6V468a28,28,0,0,0-28,28v17a28,28,0,0,0,28,28h32V409.45A57.45,57.45,0,0,1,369.45,352H434V275H719.11A60.89,60.89,0,0,0,780,214.11V182.06A37.06,37.06,0,0,0,742.94,145Z" />',
      '</g>'
      ));
    } else if(hat==11) { // condom
      return string(abi.encodePacked(
      '<g fill="#',color.toColor(),'" >',
      '<path d="M504,222V169a37,37,0,0,1,37-37h0a37,37,0,0,1,37,37v53" />',
      '<path d="M541,150h0a19,19,0,0,1,19,19" stroke="#ffffff" />',
      '</g>'
    ));
    } else if(hat==12) { // mic
      return string(abi.encodePacked(
      '<g><path d="M971.49,228.13c14.74-10.43,19.5-28.26,16.71-45.52a67,67,0,0,0-29.1-45.56C927,115.9,885.92,120.52,850,126c-24.57,3.73-49.58,8-74.45,4.7-5.67-.76-8.12,7.91-2.4,8.68,37.49,5,73.8-6,111-8.48,32.35-2.18,73.86,2.93,89.63,35.78,8.14,16.94,10.57,41.44-6.77,53.71-4.69,3.32-.2,11.13,4.54,7.78Z" stroke-width="3" transform="translate(-2 0)" /> transform="translate(736.5 -453.5) rotate(90)" />',
      '<path d="M542.75,205.25h0c2.76,0,5.51.07,8.25.16V154H530v51.61C534.22,205.38,538.47,205.25,542.75,205.25Z" fill="#545454" />',
      '<rect x="645.5" y="39.5" width="21" height="204" fill="#545454" transform="translate(797.5 -514.5) rotate(90)" />',
      '<circle cx="541" cy="142" r="20" fill="#545454" /><rect x="793" y="119" width="21" height="135" fill="#545454" transform="translate(103.46 622.78) rotate(-45)" />',
      '<path d="M902.28,234.54h0a26,26,0,0,1,26,26v88a0,0,0,0,1,0,0h-52a0,0,0,0,1,0,0v-88a26,26,0,0,1,26-26Z" transform="translate(1334.13 1135.7) rotate(-135)" fill="#545454" />',
      '<path d="M871.17,285.88l-20.51-20.5a21,21,0,0,1,0-29.7h0a21,21,0,0,1,29.7,0L937.63,293" fill="none" stroke-width="16" />',
      '<rect x="840.17" y="288.65" width="62" height="68" rx="15.46" transform="translate(1259.02 1166.81) rotate(-135)" />',
      '<rect x="936.97" y="227.68" width="38.34" height="20" transform="translate(111.98 745.71) rotate(-45)" fill="#fff" />',
      '<circle cx="758" cy="142" r="20" fill="#545454" /></g>'
      ));
    } else if(hat==12) { // cowboy
      return string(abi.encodePacked(
      '<g fill="#',color.toColor(),'" >',
      '<path d="M639,115.76v30.68a15.39,15.39,0,0,1-15.39,15.39H455.77a15.39,15.39,0,0,1-15.39-15.39V115.76a21,21,0,0,0-21-21h0a21,21,0,0,0-21,21v30h0a29.52,29.52,0,0,0,29.52,29.52H651.48A29.52,29.52,0,0,0,681,145.73h0v-30a21,21,0,0,0-21-21h0A21,21,0,0,0,639,115.76Z" />',
      '<path d="M639,115.76v30.68a15.39,15.39,0,0,1-15.39,15.39H455.77a15.39,15.39,0,0,1-15.39-15.39V115.76a21,21,0,0,0-21-21h0a21,21,0,0,0-21,21v30h0a29.52,29.52,0,0,0,29.52,29.52H651.48A29.52,29.52,0,0,0,681,145.73h0v-30a21,21,0,0,0-21-21h0A21,21,0,0,0,639,115.76Z" fill="#000" opacity="0.3" />',
      '<path d="M549.73,71.15v1.28a9.85,9.85,0,0,1-9.84,9.84h0a9.85,9.85,0,0,1-9.84-9.84V71.15a27.39,27.39,0,0,0-27.39-27.4h-.45a27.4,27.4,0,0,0-27.4,27.4v90.68H604.52V71.15a27.4,27.4,0,0,0-27.4-27.4h0A27.39,27.39,0,0,0,549.73,71.15Z" />',
      '<rect x="474.81" y="110.84" width="129.7" height="29.52" fill="#ead9a0" />',
      '<circle cx="540" cy="126" r="22" fill="#ead9a0" />',
      '</g>'
      ));
    } else if(hat==13){ // KFC
      return string(abi.encodePacked(
      '<g>',
      '<path d="M594.51,41.81a11.24,11.24,0,0,0,3,2.15L572.78,68.67l10.6,10.61,24.84-24.84a11.37,11.37,0,1,0,2.37-12.63l-.17.18h0l.18-.17a11.37,11.37,0,1,0-16.08,0Z" fill="#fff" />',
      '<circle cx="567.65" cy="84.75" r="31.45" fill="#d68330" />',
      '<circle cx="538.48" cy="71.85" r="31.45" fill="#d68330" />',
      '<circle cx="509.38" cy="93.4" r="31.45" fill="#d68330" />',
      '<polygon points="601.55 98 481.55 98 489.55 178 593.55 178 601.55 98" fill="#fff" />',
      '<rect x="472.35" y="78" width="138.4" height="20" fill="#fff" />',
      '<polygon points="503.8 103 510.07 173 529.92 173 529.92 103 503.8 103" fill="#ff3636" stroke="none" />',
      '<polygon points="579 103 572.73 173 552.88 173 552.88 103 579 103" fill="#ff3636" stroke="none" />',
      '<rect x="525" y="131" width="32" height="5" fill="#fff" />',
      '</g>'
      ));
    }



    return '';
  }



}