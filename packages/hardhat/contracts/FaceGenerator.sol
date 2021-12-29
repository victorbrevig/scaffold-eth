pragma solidity ^0.8.0;
//SPDX-License-Identifier: MIT

contract SVGFaceGenerator {


    constructor() {
        
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
      '<g><path d="M297,427h77a0,0,0,0,1,0,0v36a0,0,0,0,1,0,0H297a18,18,0,0,1-18-18v0A18,18,0,0,1,297,427Z" />',
      '<line x1="548.38" y1="509" x2="627.38" y2="509" /><rect x="354" y="310" width="462" height="288" rx="144" fill="#fff" />',
      '<circle cx="454.88" cy="445.25" r="26" /><circle cx="714.88" cy="445.25" r="26" /><circle cx="588" cy="530" r="5" /><circle cx="528" cy="530" r="5" />',
      '<circle cx="558" cy="490" r="5" /><circle cx="618" cy="490" r="5" /><circle cx="648" cy="530" r="5" /><path d="M541.68,380h91.64a0,0,0,0,1,0,0v0a42,42,0,0,1-42,42h-7.64a42,42,0,0,1-42-42v0a0,0,0,0,1,0,0Z" fill="#ff4848" stroke="none" />',
      '<circle cx="762" cy="519" r="13" fill="#ff4848" stroke="none" /><path d="M711,535h0a20,20,0,0,0-20,20v41.75a142.67,142.67,0,0,0,40-11.36V555A20,20,0,0,0,711,535Z" fill="#ff4848" stroke="none" />',
      '<path d="M749.5,538A12.5,12.5,0,0,0,737,550.5v32a143.21,143.21,0,0,0,25-16.12V550.5A12.5,12.5,0,0,0,749.5,538Z" fill="#ff4848" stroke="none" />',
      '<rect x="354" y="310" width="462" height="288" rx="144" fill="none" />',
      '<circle cx="439" cy="548" r="16" fill="#ff4848" stroke="none" />',
      '<line x1="498" y1="310" x2="498" y2="344" /><line x1="478" y1="313" x2="478" y2="367" /></g>'
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
        '<g fill="#ff1b1b" transform="translate(0 )">',
        '<circle cx="453.88" cy="448.25" r="26" fill="#fff" /><circle cx="713.88" cy="448.25" r="26" fill="#fff" />',
        '<line x1="544.38" y1="513" x2="623.38" y2="513" /><rect x="377" y="448" width="154" height="30" rx="15" opacity="0.5" />',
        '<rect x="637" y="448" width="154" height="30" rx="15" opacity="0.5" /><rect x="377" y="448" width="154" height="30" rx="15" fill="none" />',
        '<rect x="637" y="448" width="154" height="30" rx="15" fill="none" /><line x1="531" y1="463" x2="637" y2="463" />',
        '<path d="M377,463H292.73A10.72,10.72,0,0,0,282,473.73V489" fill="none" /></g>'
      ));
    } else if(face==12) { // Lazer eye
      return string(abi.encodePacked(
        '<g fill="#ff00d4">',
        '<path d="M634.86,448.5h0a132.18,132.18,0,0,0,70.5-83.09l9.14-31.91,9.14,31.91a132.18,132.18,0,0,0,70.5,83.09h0a132.18,132.18,0,0,0-70.5,83.09L714.5,563.5l-9.14-31.91a132.18,132.18,0,0,0-70.5-83.09Z" fill="#fff" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="11.79" />',
        '<circle cx="714.88" cy="448.25" r="26" /><line x1="545" y1="513" x2="624" y2="513" />',
        '<circle cx="454.87" cy="448.25" r="26" fill="#fff" />',
        '<rect x="713" y="441" width="367" height="16" stroke="none" /></g>'
      ));
    } else if(face==13) { // Goggles
      return string(abi.encodePacked(
      '<g fill="#2aff4d"><rect x="533.5" y="466.5" width="101" height="46" fill="#000" />',
      '<rect x="739.5" y="196.5" width="38" height="196" fill="#fff" /><rect x="299.5" y="422.5" width="71" height="44" /><rect x="739.5" y="216.5" width="38" height="17" />',
      '<path d="M584,433a53,53,0,0,1,37.57,15.53l31.11,31.12a51.81,51.81,0,0,0,36.88,15.27H714a46.93,46.93,0,1,0,0-93.86H453a46.93,46.93,0,1,0,0,93.86h25.46a51.81,51.81,0,0,0,36.88-15.27l31.11-31.12A53,53,0,0,1,584,433Z" fill="#fff" fill-opacity="0.5" />',
      '<polygon points="446.5 395.5 540 489 601.55 462.44 654 515 727.5 515.5 581.5 369.5 446.5 395.5" fill="#ffffff" stroke="none" />',
      '<path d="M714,360H453a88,88,0,0,0,0,176h25.46a92.65,92.65,0,0,0,65.92-27.3l31.11-31.12a12.07,12.07,0,0,1,17.06,0l31.11,31.12A92.65,92.65,0,0,0,689.55,536H714a88,88,0,0,0,0-176Zm0,134.93H689.55a51.81,51.81,0,0,1-36.88-15.27l-31.11-31.12a53.21,53.21,0,0,0-75.14,0l-31.11,31.12a51.81,51.81,0,0,1-36.88,15.27H453a46.93,46.93,0,1,1,0-93.86H714a46.93,46.93,0,1,1,0,93.86Z" />',
      '<circle cx="734" cy="146" r="13.5" fill="#fff" fill-opacity="0.5" /><circle cx="781.5" cy="120.5" r="21" fill="#fff" fill-opacity="0.5" />',
      '<line x1="327.5" y1="448.5" x2="327.5" y2="466.5" /><line x1="340.5" y1="448.5" x2="340.5" y2="466.5" /></g>'
      ));
    } else if(face==14) { // bandana
      return string(abi.encodePacked(
      '<g fill="#5b745b"><polygon points="303 503 585 648 654.64 598.71 780 510 780 490 303 490 303 503" /><circle cx="288" cy="498" r="21" />',
      '<path d="M267,498H239.69A24.68,24.68,0,0,1,215,473.31V446Z" /><path d="M267,498v27.31A24.68,24.68,0,0,1,242.31,550H215Z" /><path d="M615,495a39,39,0,0,1-78,0" />',
      '<path d="M595,495a19,19,0,0,1-38,0" fill="none" stroke="#fff" stroke-linecap="butt" /><circle cx="455" cy="446" r="26" fill="#fff" /><circle cx="715" cy="446" r="26" fill="#fff" />',
      '<polyline points="738.93 498.94 642.56 567.14 588.52 605.38" fill="none" stroke="#000" stroke-dasharray="1 14.98" /><polyline points="582.41 609.71 582 610 582 610.32 581.55 610.09" />',
      '<line x1="567.84" y1="603.04" x2="355.3" y2="493.75" fill="none" stroke-dasharray="1.03 15.42" stroke-linecap="round" stroke-linejoin="round" /><line x1="712" y1="501.72" x2="711.59" y2="502.01" fill="none" stroke="#fff" />',
      '<polyline points="699.4 510.64 628.43 560.87 588.5 589.12" fill="none" stroke="#fff" stroke-dasharray="1 14.93" /><polyline points="582 594.39 582 594.89 581.55 594.66" fill="none" stroke="#fff" />',
      '<line x1="568.53" y1="587.97" x2="408.3" y2="505.58" fill="none" stroke-dasharray="0.98 14.65" stroke="#fff" /><line x1="401.78" y1="502.23" x2="401.34" y2="502" fill="none" stroke="#fff" /><line x1="666.14" y1="506" x2="665.73" y2="506.29" fill="none" stroke="#fff" stroke-width="20" />',
      '<polyline points="638.56 525.52 612.05 544.28 595.99 555.64" fill="none" stroke="#fff" stroke-width="20" stroke-dasharray="1.11 33.29" /><polyline points="581.76 567.5 581.7 568 581.25 567.77" fill="none" stroke="#fff" stroke-width="20" />',
      '<line x1="552.06" y1="552.76" x2="476.16" y2="513.73" fill="none" stroke-dasharray="1.09 32.83" stroke-width="20" stroke="#fff" /><line x1="461.56" y1="506.23" x2="461.12" y2="506" fill="none" stroke="#fff" stroke-width="20" /></g>'
      ));
    } else if(face==15){ // animal skull
      return string(abi.encodePacked(
      '<g fill="#ff4848"><path d="M505.5,110h0A27.5,27.5,0,0,0,478,137.5V193l27.5,40L533,193V137.5A27.5,27.5,0,0,0,505.5,110Z" fill="#f0f0f0" />',
      '<path d="M663.5,110h0A27.5,27.5,0,0,0,636,137.5V193l27.5,40L691,193V137.5A27.5,27.5,0,0,0,663.5,110Z" fill="#f0f0f0" />',
      '<path d="M584.5,60h0A27.5,27.5,0,0,0,557,87.5V193l27.5,40L612,193V87.5A27.5,27.5,0,0,0,584.5,60Z" fill="#f0f0f0" /><line x1="506" y1="233" x2="506" y2="291" /><line x1="585" y1="233" x2="585" y2="291" />',
      '<line x1="664" y1="233" x2="664" y2="291" /><line x1="585" y1="180" x2="611.89" y2="153.11" /><line x1="584" y1="146" x2="611.91" y2="118.09" /><line x1="506" y1="192" x2="531.96" y2="166.04" /><line x1="664" y1="190" x2="636.5" y2="162.5" />',
      '<path d="M478,137.5A27.5,27.5,0,0,1,505.5,110h0A27.5,27.5,0,0,1,533,137.5l-27.75,27.75Z" /><path d="M557,86.5A27.5,27.5,0,0,1,584.5,59h0A27.5,27.5,0,0,1,612,86.5l-27.75,27.75Z" /><path d="M636.5,137A27.5,27.5,0,0,1,664,109.5h0A27.5,27.5,0,0,1,691.5,137l-27.75,27.75Z" />',
      '<path d="M533,150.58V137.5A27.5,27.5,0,0,0,505.5,110h0A27.5,27.5,0,0,0,478,137.5V154" fill="none" /><path d="M612,99.58V86.5A27.5,27.5,0,0,0,584.5,59h0A27.5,27.5,0,0,0,557,86.5V103" fill="none" />',
      '<path d="M691,149.58V136.5A27.5,27.5,0,0,0,663.5,109h0A27.5,27.5,0,0,0,636,136.5V153" fill="none" /><line x1="585" y1="114" x2="557.5" y2="86.5" />',
      '<path d="M728,383.05H715.73V362.72a27.56,27.56,0,0,0-27.56-27.56H651.08V267.92H518.19v67.24H481.1a27.56,27.56,0,0,0-27.56,27.56v20.33H441.27a63.15,63.15,0,0,0-63.15,63.15h0a63.15,63.15,0,0,0,63.15,63.15h12.27v46.87a64.66,64.66,0,0,0,64.65,64.65h0v98a66.45,66.45,0,0,0,66.44,66.45h0a66.45,66.45,0,0,0,66.45-66.45v-98h0a64.66,64.66,0,0,0,64.65-64.65V509.35H728a63.15,63.15,0,0,0,63.15-63.15h0A63.15,63.15,0,0,0,728,383.05Z" fill="#f4f1df" /><rect x="593.33" y="679.99" width="25.56" height="70.55" rx="12.78" fill="#000" /><rect x="550.38" y="679.99" width="25.56" height="70.55" rx="12.78" fill="#000" />',
      '<circle cx="453.47" cy="446.86" r="38.86" fill="#000" /><circle cx="715.23" cy="446.86" r="38.86" fill="#000" /><path d="M610.4,642V392.4a25.3,25.3,0,0,1,25.3-25.29h0" fill="none" />',
      '<path d="M558.56,642.16V392.52a25.29,25.29,0,0,0-25.29-25.29h0" fill="none" /><path d="M518.19,312.16h-227A86.16,86.16,0,0,1,205,226h0a50.1,50.1,0,0,0,50.1,50.1H518.19Z" fill="#d6d1ab" />',
      '<path d="M650.81,312.16h227A86.16,86.16,0,0,0,964,226h0a50.1,50.1,0,0,1-50.1,50.1H650.81Z" fill="#d6d1ab" /><line x1="549" y1="322" x2="620" y2="322" />',
      '<line x1="489.43" y1="276.1" x2="489.43" y2="312.16" /><line x1="679" y1="276.1" x2="679" y2="312.16" /><g transform="translate(-60 0)"><path d="M354.44,273A19.56,19.56,0,0,1,374,292.56V350a49,49,0,0,1-49,49h0V309.16" fill="none" /><line x1="325" y1="399" x2="325" y2="461" />',
      '<path d="M355.2,273A18.8,18.8,0,0,1,374,291.8V350a49,49,0,0,1-49,49h0V309.16" fill="none" stroke-width="18" stroke-dasharray="0.1 40" /><line x1="325" y1="399" x2="325" y2="461" /><circle cx="325" cy="461" r="18" /></g></g>'
      ));
    } else if(face==16) { // SKI MASK
      return string(abi.encodePacked(
      '<g fill="#3d3d3d"><circle cx="454.88" cy="448.25" r="26" fill="#fff" /><circle cx="714.88" cy="448.25" r="26" fill="#fff" />',
      '<path d="M540.5,207h0C413.75,207,311,309.75,311,436.5V600H770V436.5C770,309.75,667.25,207,540.5,207ZM756,448.5A42.5,42.5,0,0,1,713.5,491h-261A42.5,42.5,0,0,1,410,448.5h0A42.5,42.5,0,0,1,452.5,406h261A42.5,42.5,0,0,1,756,448.5Z" />',
      '<rect x="311" y="569" width="459" height="31" /><line x1="346.91" y1="569" x2="346.91" y2="600" />',
      '<line x1="376.91" y1="569" x2="376.91" y2="600" /><line x1="406.91" y1="569" x2="406.91" y2="600" />',
      '<line x1="436.91" y1="569" x2="436.91" y2="600" /><line x1="466.91" y1="569" x2="466.91" y2="600" />',
      '<line x1="496.91" y1="569" x2="496.91" y2="600" /><line x1="526.91" y1="569" x2="526.91" y2="600" />',
      '<line x1="556.91" y1="569" x2="556.91" y2="600" /><line x1="586.91" y1="569" x2="586.91" y2="600" />',
      '<line x1="616.91" y1="569" x2="616.91" y2="600" /><line x1="646.91" y1="569" x2="646.91" y2="600" />',
      '<line x1="676.91" y1="569" x2="676.91" y2="600" />',
      '<line x1="706.91" y1="569" x2="706.91" y2="600" /><line x1="736.91" y1="569" x2="736.91" y2="600" /></g>'
      ));
    } else if(face==17) { // ape
      return string(abi.encodePacked(
      '<g fill="#ede0a9">',
      '<path d="M714,390H456a58,58,0,0,0-58,58h0a58,58,0,0,0,58,58h71v31a58,58,0,0,0,58,58h0a58,58,0,0,0,58-58V506h71a58,58,0,0,0,58-58h0A58,58,0,0,0,714,390Z" fill="#ede0a9" />',
      '<path d="M650.63,264.75a28.42,28.42,0,0,0,20-8.2,28.5,28.5,0,1,0,0-40.6,28.49,28.49,0,0,0-40,0,28.48,28.48,0,0,0-48.5,20.3" />',
      '<path d="M772,528a53,53,0,0,0,0-106Z" fill="#ede0a9" /><circle cx="454.88" cy="448.25" r="26" fill="#fff" />',
      '<circle cx="714.88" cy="448.25" r="26" fill="#fff" /><circle cx="315" cy="475" r="53" fill="#ede0a9" />',
      '<path d="M315,500a25,25,0,0,1,0-50" fill="none" /><circle cx="583" cy="485" r="19" fill="#000" />',
      '<line x1="583.5" y1="487.5" x2="583.5" y2="543.5" /></g>'
      ));
    } else if(face==18){ // pc
      return string(abi.encodePacked(
      '<g fill="#227cff"><rect x="304" y="540" width="68" height="24" fill="#000"/><rect x="341" y="173" width="465" height="410" rx="52.21" fill="#fff7d4" />',
      '<rect x="387.5" y="214" width="372" height="297" rx="33.3"/><path d="M341,230.5l-53.44,53.43a19.89,19.89,0,0,0-5.81,14V520.14A19.86,19.86,0,0,0,301.61,540h41.65Z" fill="#d3c89c"/>',
      '<line x1="397" y1="545" x2="507" y2="545"/><circle cx="610" cy="545" r="10" fill="#000"/><circle cx="650" cy="545" r="10" fill="#000"/>',
      '<circle cx="690" cy="545" r="10" fill="#000"/><circle cx="730" cy="545" r="10" fill="#ff3636"/><line x1="301" y1="511" x2="325" y2="511"/>',
      '<line x1="301" y1="491" x2="325" y2="491"/><line x1="301" y1="471" x2="325" y2="471"/><line x1="301" y1="451" x2="325" y2="451"/>',
      '<line x1="422" y1="252" x2="624" y2="252" stroke="#fff"/><line x1="649" y1="252" x2="721" y2="252" stroke="#fff"/><line x1="422" y1="292" x2="594" y2="292" stroke="#fff"/><line x1="422" y1="272" x2="445" y2="272" stroke="#fff"/>',
      '<line x1="471" y1="272" x2="573" y2="272" stroke="#fff"/><line x1="614" y1="292" x2="660" y2="292" stroke="#fff"/><line x1="422" y1="332" x2="544" y2="332" stroke="#fff"/><line x1="422" y1="372" x2="534" y2="372" stroke="#fff"/>',
      '<line x1="422" y1="352" x2="485" y2="352" stroke="#fff"/><line x1="511" y1="352" x2="573" y2="352" stroke="#fff"/><line x1="554" y1="372" x2="660" y2="372" stroke="#fff"/><line x1="574" y1="332" x2="600" y2="332" stroke="#fff"/>',
      '<line x1="630" y1="332" x2="650" y2="332" stroke="#fff"/><line x1="594" y1="352" x2="700" y2="352" stroke="#fff"/><line x1="422" y1="447" x2="544" y2="447" stroke="#fff"/><line x1="422" y1="467" x2="485" y2="467" stroke="#fff"/>',
      '<line x1="511" y1="467" x2="573" y2="467" stroke="#fff"/><line x1="574" y1="447" x2="600" y2="447" stroke="#fff"/>',
      '<line x1="594" y1="467" x2="700" y2="467" stroke="#fff"/><line x1="684" y1="372" x2="730" y2="372" stroke="#fff"/></g>'
      ));
    } 

    
    return '';
  }
}