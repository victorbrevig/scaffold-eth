pragma solidity ^0.8.0;
//SPDX-License-Identifier: MIT

import './ToColor.sol';

contract SVGEyeGenerator {

    using ToColor for bytes3;

    constructor() {}

    function render(uint8 eye, bytes3 color) external pure returns (string memory) {

        if(eye==0){ // default eyes
            return string(abi.encodePacked(
            '<g transform="translate(0 10)">',
            '<circle cx="451.88" cy="437.25" r="26" fill="#fff" />',
            '<circle cx="711.88" cy="437.25" r="26" fill="#fff" />',
            '</g>'));
        }else if(eye==1){ // three eyes
            return string(abi.encodePacked(
            '<g>',
            '<circle cx="451.88" cy="437.25" r="26" fill="#fff" />',
            '<circle cx="711.88" cy="437.25" r="26" fill="#fff" />',
            '<circle cx="582" cy="407" r="26" fill="#fff" />',
            '</g>'
            ));
        }else if(eye==2){ // shades
            return string(abi.encodePacked(
            '<g transform="translate(30 25) scale(0.95 0.95)">',
            '<path d="M390,396H279a14,14,0,0,0-14,14h0v19" fill="none" />',
            '<line x1="514" y1="396.45" x2="650" y2="396.45" />',
            '<path d="M530,385.39H374V408h15.1v27.68a62.9,62.9,0,0,0,62.9,62.9h0a62.9,62.9,0,0,0,62.9-62.9V408H530Z" fill="#000000" opacity="0.9" />',
            '<path d="M790,385.39H634V408h15.1v27.68a62.9,62.9,0,0,0,62.9,62.9h0a62.9,62.9,0,0,0,62.9-62.9V408H790Z" fill="#000000" opacity="0.9" />',
            '<path d="M530,385.39H374V408h15.1v27.68a62.9,62.9,0,0,0,62.9,62.9h0a62.9,62.9,0,0,0,62.9-62.9V408H530Z" fill="none" />',
            '<path d="M790,385.39H634V408h15.1v27.68a62.9,62.9,0,0,0,62.9,62.9h0a62.9,62.9,0,0,0,62.9-62.9V408H790Z" fill="none" />',
            '</g>'
            ));
        }else if(eye==3){ // 3d glasses 
            return string(abi.encodePacked(
            '<g>',
            '<path d="M258,446.69V488h40V469.6a5.6,5.6,0,0,1,5.6-5.6H383V412H292.69A34.69,34.69,0,0,0,258,446.69Z" fill="#fff" />',
            '<path d="M383,389v99H553.77a35,35,0,0,1,66.46,0H791V389Z" fill="#fff" />',
            '<rect x="671" y="413" width="100" height="51" transform="translate(1424 877) rotate(180)" fill="#ff4848" />',
            '<rect x="411" y="413" width="100" height="51" transform="translate(924 877) rotate(180)" fill="#4a8bff" />',
            '</g>'
            ));
        }else if(eye==4){ // joker
            return string(abi.encodePacked(
            '<g fill="#',color.toColor(),'">',
            '<polygon points="399.79 450 457 354 514.21 450 457 546 399.79 450" />',
            '<polygon points="659.79 450 717 354 774.21 450 717 546 659.79 450" />',
            '<circle cx="457" cy="448" r="26" fill="#fff" />',
            '<circle cx="717" cy="448" r="26" fill="#fff" />',
            '</g>'
            ));
        }else if(eye==5){ // IG GLASSES
            return string(abi.encodePacked(
            '<g fill="#',color.toColor(),'">',
            '<circle cx="453.88" cy="448.25" r="26" fill="#fff" />',
            '<circle cx="713.88" cy="448.25" r="26" fill="#fff" />',
            '<rect x="377" y="448" width="154" height="30" rx="15" opacity="0.5" />',
            '<rect x="637" y="448" width="154" height="30" rx="15" opacity="0.5" />',
            '<rect x="377" y="448" width="154" height="30" rx="15" fill="none" />',
            '<rect x="637" y="448" width="154" height="30" rx="15" fill="none" />',
            '<line x1="531" y1="463" x2="637" y2="463" />',
            '<path d="M377,463H292.73A10.72,10.72,0,0,0,282,473.73V489" fill="none" />',
            '</g>'
            ));
        }else if(eye==6){ // NINJA
            return string(abi.encodePacked(
            '<g fill="#',color.toColor(),'" transform="translate(0 -6)">',
            '<rect x="302" y="420" width="479" height="72" />',
            '<path d="M481,446a26,26,0,0,1-52,0Z" fill="#fff" />',
            '<path d="M741,446a26,26,0,0,1-52,0Z" fill="#fff" />',
            '<circle cx="278" cy="456" r="21" />',
            '<path d="M257,456H229.69A24.68,24.68,0,0,1,205,431.31V404Z" />',
            '<path d="M257,456v27.31A24.68,24.68,0,0,1,232.31,508H205Z" />',
            '</g>'
            ));
        }else if(eye==7){ // tired
            return string(abi.encodePacked(
            '<g><path d="M481,446a26,26,0,0,1-52,0Z" fill="#fff" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="10" />',
            '<path d="M741,446a26,26,0,0,1-52,0Z" fill="#fff" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="10" /></g>'
            ));
        }else if(eye==8){ // TEARY
            return string(abi.encodePacked(
            '<g><circle cx="455" cy="446" r="26" />',
            '<circle cx="439" cy="448" r="5" fill="#fff" stroke="none" />',
            '<path d="M475.23,425.54a26,26,0,0,0-37.2,2.82,20.48,20.48,0,0,0,37.2-2.82Z" fill="#fff" stroke="none" />',
            '<path d="M482.76,452.51a20,20,0,0,0-32.43,21.62A25.73,25.73,0,0,0,457,475,26,26,0,0,0,482.76,452.51Z" fill="#fff" stroke="none" />',
            '<circle cx="455" cy="446" r="26" fill="none" /><circle cx="715" cy="446" r="26" />',
            '<circle cx="699" cy="448" r="5" fill="#fff" stroke="none" />',
            '<path d="M735.23,425.54a26,26,0,0,0-37.2,2.82,20.48,20.48,0,0,0,37.2-2.82Z" fill="#fff" stroke="none" />',
            '<path d="M742.76,452.51a20,20,0,0,0-32.43,21.62A25.73,25.73,0,0,0,717,475,26,26,0,0,0,742.76,452.51Z" fill="#fff" stroke="none" />',
            '<circle cx="715" cy="446" r="26" fill="none" /></g>'
            ));
        }else if(eye==9){ // HAPPY
            return string(abi.encodePacked(
            '<g>',
            '<path d="M739,436a26,26,0,0,0-48,0" fill="none" />',
            '<path d="M479,436a26,26,0,0,0-48,0" fill="none" />',
            '</g>'
            ));
        }else if(eye==10){ // sad
            return string(abi.encodePacked(
            '<g>',
            '<path d="M739,456a26,26,0,0,1-48,0" fill="none" />',
            '<path d="M479,456a26,26,0,0,1-48,0" fill="none" />',
            '</g>'
            ));
        }else if(eye==11){ // BOUJEE SHADES
            return string(abi.encodePacked(
            '<g fill="#',color.toColor(),'" transform="translate(0 -10)">',
            '<path d="M796.36,391.26H702.85a47.71,47.71,0,0,0-32.41,12.65,393.9,393.9,0,0,0-165.11,1.72,47.72,47.72,0,0,0-34.18-14.37H377.64A11.62,11.62,0,0,0,366.05,402H291a32,32,0,0,0-32,32,10,10,0,0,0,20,0,12,12,0,0,1,12-12h75.22a79.29,79.29,0,0,0,79.09,73.74h25.84A47.84,47.84,0,0,0,519,447.9v-8.8a47.6,47.6,0,0,0-2.55-15.4,373.79,373.79,0,0,1,141.74-1.78A47.84,47.84,0,0,0,655,439.1v8.8a47.84,47.84,0,0,0,47.85,47.84h25.84A79.3,79.3,0,0,0,808,416.44V402.89A11.64,11.64,0,0,0,796.36,391.26Z" fill="#fff" />',
            '<path d="M403.46,409h61.36a34.5,34.5,0,0,1,34.5,34.5v0a34.5,34.5,0,0,1-34.5,34.5H448.9a57.22,57.22,0,0,1-57.22-57.22v0A11.78,11.78,0,0,1,403.46,409Z" />',
            '<path d="M732.9,409h15.92a34.5,34.5,0,0,1,34.5,34.5v0a34.5,34.5,0,0,1-34.5,34.5H687.46a11.78,11.78,0,0,1-11.78-11.78v0A57.22,57.22,0,0,1,732.9,409Z" transform="translate(1459 887) rotate(-180)" />',
            '<path d="M403.46,409h61.36a34.5,34.5,0,0,1,34.5,34.5v0a34.5,34.5,0,0,1-34.5,34.5H448.9a57.22,57.22,0,0,1-57.22-57.22v0A11.78,11.78,0,0,1,403.46,409Z" fill="none" />',
            '<path d="M732.9,409h15.92a34.5,34.5,0,0,1,34.5,34.5v0a34.5,34.5,0,0,1-34.5,34.5H687.46a11.78,11.78,0,0,1-11.78-11.78v0A57.22,57.22,0,0,1,732.9,409Z" transform="translate(1459 887) rotate(-180)" fill="none" />',
            '</g>'
            ));
        }else if(eye==12){ // VISOR SHADES
            return string(abi.encodePacked(
            '<g transform="translate(0 -15)">',
            '<defs><linearGradient id="linear-gradient-visor" x1="585" y1="402" x2="585" y2="490" gradientUnits="userSpaceOnUse">',
            '<stop offset="0" stop-color="#ff005c" /><stop offset="1" stop-color="#f9ff08" /></linearGradient></defs>',
            '<path d="M791,402H298a15,15,0,0,0-15,15v49h15V434.87A14.87,14.87,0,0,1,312.87,420h0a22,22,0,0,1,13.66,4.75L418,490l-9.73-70H791Z" />',
            '<path d="M388,402l7.47,65.72a25.12,25.12,0,0,0,25,22.28h119a27.37,27.37,0,0,0,23.3-13.48,26,26,0,0,1,44.48,0A27.37,27.37,0,0,0,630.54,490h119a25.12,25.12,0,0,0,25-22.28L782,402Z" fill="url(#linear-gradient-visor)" />',
            '</g>'
            ));
        }else if(eye==13){ // DEAD
            return string(abi.encodePacked(
            '<g><line x1="473.38" y1="427.62" x2="436.62" y2="464.38" /><line x1="473.38" y1="464.38" x2="436.62" y2="427.62" />',
            '<line x1="733.38" y1="427.62" x2="696.62" y2="464.38" /><line x1="733.38" y1="464.38" x2="696.62" y2="427.62" /></g>'
            ));
        }else if(eye==14){ // WINK
            return string(abi.encodePacked(
            '<g><circle cx="455" cy="446" r="26" fill="#fff" /><polyline points="715 472 689 446 715 420" fill="none" />',
            '<line x1="689" y1="446" x2="741" y2="446" /></g>'
            ));
        }else if(eye==15){ // EYE LINER
            return string(abi.encodePacked(
            '<g>',
            '<path d="M455,420H413.27a18,18,0,0,0,18,18H455Z" />',
            '<path d="M715.27,420H757a18,18,0,0,1-18,18H715.27Z" />',
            '<circle cx="455" cy="446" r="26" fill="#fff" />',
            '<circle cx="715" cy="446" r="26" fill="#fff" />',
            '</g>'
            ));
        }

        return '';
    }
}