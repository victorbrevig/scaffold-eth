pragma solidity ^0.8.0;
//SPDX-License-Identifier: MIT

import "./ToColor.sol";

contract SVGEyeGenerator {
    using ToColor for bytes3;

    constructor() {}

    function render(uint8 eye, string memory color)
        external
        pure
        returns (string memory)
    {
        if (eye == 0) {
            // default eyes
            return
                string(
                    abi.encodePacked(
                        '<g transform="translate(0 10)">',
                        '<circle cx="451.88" cy="437.25" r="26" fill="#fff" />',
                        '<circle cx="711.88" cy="437.25" r="26" fill="#fff" />',
                        "</g>"
                    )
                );
        } else if (eye == 1) {
            // three eyes
            return
                string(
                    abi.encodePacked(
                        "<g>",
                        '<circle cx="451.88" cy="437.25" r="26" fill="#fff" />',
                        '<circle cx="711.88" cy="437.25" r="26" fill="#fff" />',
                        '<circle cx="582" cy="407" r="26" fill="#fff" />',
                        "</g>"
                    )
                );
        } else if (eye == 2) {
            // shades
            return
                string(
                    abi.encodePacked(
                        '<g fill="#3d3512" fill-opacity="0.8" transform="translate(0 -20)"><path d="M542,412.44c4.2,6.44,5.73,14.11,6.32,21.77h0a30.74,30.74,0,0,1-1,10.51c-6.43,23.16-20,44.66-39.93,58C486,517,456.85,520.61,433.87,508.87a56.53,56.53,0,0,1-21.46-18.77c-6.64-10-9.46-22.1-10.77-34.05-.84-7.72-1.1-15.6.47-23.21s5.07-16,10.85-21.19c6.13-5.53,14.29-9.21,22.33-11.08,24.57-5.72,50.1-4.23,75.32-3.71C510.61,396.86,531.57,396.39,542,412.44Z" />',
                        '<path d="M639.39,412.44c-4.2,6.44-5.73,14.11-6.32,21.77h0a30.49,30.49,0,0,0,1,10.51c6.43,23.16,20,44.66,39.93,58,21.47,14.33,50.61,17.92,73.59,6.18A56.45,56.45,0,0,0,769,490.1c6.64-10,9.46-22.1,10.77-34.05.84-7.72,1.1-15.6-.47-23.21s-5.07-16-10.85-21.19c-6.13-5.53-14.29-9.21-22.33-11.08-24.57-5.72-50.1-4.23-75.32-3.71C670.81,396.86,649.86,396.39,639.39,412.44Z" /><line x1="464.88" y1="396.66" x2="704.88" y2="396.66"/>',
                        '<path d="M547.05,425s31.18-19.51,87.31,0" fill="none"/><path d="M400.5,432.5h-90a29,29,0,0,0-29,29h0" fill="none"/>',
                        "</g>"
                    )
                );
        } else if (eye == 3) {
            // 3d glasses
            return
                string(
                    abi.encodePacked(
                        '<g><path d="M782,401H371v28h16v56H550.39a15.86,15.86,0,0,0,14.13-8.67l8.74-17.23a12.69,12.69,0,0,1,21.48,0l8.74,17.23A15.86,15.86,0,0,0,617.61,485H782V429h16V401Z" fill="#f4f4f4"/>',
                        '<path d="M371,401H302.91A20.91,20.91,0,0,0,282,421.91V450h27V429h62Z" fill="#d6d6d6" /><rect x="415.52" y="423" width="117.96" height="41" fill="#ff3636" />',
                        '<rect x="634.97" y="423" width="117.96" height="41" fill="#3948ff" /></g>'
                    )
                );
        } else if (eye == 4) {
            // joker
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '">',
                        '<polygon points="399.79 450 457 354 514.21 450 457 546 399.79 450" />',
                        '<polygon points="659.79 450 717 354 774.21 450 717 546 659.79 450" />',
                        '<circle cx="457" cy="448" r="26" fill="#fff" />',
                        '<circle cx="717" cy="448" r="26" fill="#fff" />',
                        "</g>"
                    )
                );
        } else if (eye == 5) {
            // IG GLASSES
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '">',
                        '<circle cx="453.88" cy="448.25" r="26" fill="#fff" />',
                        '<circle cx="713.88" cy="448.25" r="26" fill="#fff" />',
                        '<rect x="377" y="448" width="154" height="30" rx="15" opacity="0.5" />',
                        '<rect x="637" y="448" width="154" height="30" rx="15" opacity="0.5" />',
                        '<rect x="377" y="448" width="154" height="30" rx="15" fill="none" />',
                        '<rect x="637" y="448" width="154" height="30" rx="15" fill="none" />',
                        '<line x1="531" y1="463" x2="637" y2="463" />',
                        '<path d="M377,463H292.73A10.72,10.72,0,0,0,282,473.73V489" fill="none" />',
                        "</g>"
                    )
                );
        } else if (eye == 6) {
            // NINJA
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '" transform="translate(0 -6)">',
                        '<rect x="302" y="420" width="479" height="72" />',
                        '<path d="M481,446a26,26,0,0,1-52,0Z" fill="#fff" />',
                        '<path d="M741,446a26,26,0,0,1-52,0Z" fill="#fff" />',
                        '<circle cx="278" cy="456" r="21" />',
                        '<path d="M257,456H229.69A24.68,24.68,0,0,1,205,431.31V404Z" />',
                        '<path d="M257,456v27.31A24.68,24.68,0,0,1,232.31,508H205Z" />',
                        "</g>"
                    )
                );
        } else if (eye == 7) {
            // tired
            return
                string(
                    abi.encodePacked(
                        '<g><path d="M481,446a26,26,0,0,1-52,0Z" fill="#fff" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="10" />',
                        '<path d="M741,446a26,26,0,0,1-52,0Z" fill="#fff" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="10" /></g>'
                    )
                );
        } else if (eye == 8) {
            // TEARY
            return
                string(
                    abi.encodePacked(
                        '<g><circle cx="455" cy="446" r="26" />',
                        '<circle cx="439" cy="448" r="5" fill="#fff" stroke="none" />',
                        '<path d="M475.23,425.54a26,26,0,0,0-37.2,2.82,20.48,20.48,0,0,0,37.2-2.82Z" fill="#fff" stroke="none" />',
                        '<path d="M482.76,452.51a20,20,0,0,0-32.43,21.62A25.73,25.73,0,0,0,457,475,26,26,0,0,0,482.76,452.51Z" fill="#fff" stroke="none" />',
                        '<circle cx="455" cy="446" r="26" fill="none" /><circle cx="715" cy="446" r="26" />',
                        '<circle cx="699" cy="448" r="5" fill="#fff" stroke="none" />',
                        '<path d="M735.23,425.54a26,26,0,0,0-37.2,2.82,20.48,20.48,0,0,0,37.2-2.82Z" fill="#fff" stroke="none" />',
                        '<path d="M742.76,452.51a20,20,0,0,0-32.43,21.62A25.73,25.73,0,0,0,717,475,26,26,0,0,0,742.76,452.51Z" fill="#fff" stroke="none" />',
                        '<circle cx="715" cy="446" r="26" fill="none" /></g>'
                    )
                );
        } else if (eye == 9) {
            // HAPPY
            return
                string(
                    abi.encodePacked(
                        "<g>",
                        '<path d="M739,436a26,26,0,0,0-48,0" fill="none" />',
                        '<path d="M479,436a26,26,0,0,0-48,0" fill="none" />',
                        "</g>"
                    )
                );
        } else if (eye == 10) {
            // sad
            return
                string(
                    abi.encodePacked(
                        "<g>",
                        '<path d="M739,456a26,26,0,0,1-48,0" fill="none" />',
                        '<path d="M479,456a26,26,0,0,1-48,0" fill="none" />',
                        "</g>"
                    )
                );
        } else if (eye == 11) {
            // BOUJEE SHADES
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '" transform="translate(0 -10)">',
                        '<path d="M796.36,391.26H702.85a47.71,47.71,0,0,0-32.41,12.65,393.9,393.9,0,0,0-165.11,1.72,47.72,47.72,0,0,0-34.18-14.37H377.64A11.62,11.62,0,0,0,366.05,402H291a32,32,0,0,0-32,32,10,10,0,0,0,20,0,12,12,0,0,1,12-12h75.22a79.29,79.29,0,0,0,79.09,73.74h25.84A47.84,47.84,0,0,0,519,447.9v-8.8a47.6,47.6,0,0,0-2.55-15.4,373.79,373.79,0,0,1,141.74-1.78A47.84,47.84,0,0,0,655,439.1v8.8a47.84,47.84,0,0,0,47.85,47.84h25.84A79.3,79.3,0,0,0,808,416.44V402.89A11.64,11.64,0,0,0,796.36,391.26Z" fill="#fff" />',
                        '<path d="M403.46,409h61.36a34.5,34.5,0,0,1,34.5,34.5v0a34.5,34.5,0,0,1-34.5,34.5H448.9a57.22,57.22,0,0,1-57.22-57.22v0A11.78,11.78,0,0,1,403.46,409Z" />',
                        '<path d="M732.9,409h15.92a34.5,34.5,0,0,1,34.5,34.5v0a34.5,34.5,0,0,1-34.5,34.5H687.46a11.78,11.78,0,0,1-11.78-11.78v0A57.22,57.22,0,0,1,732.9,409Z" transform="translate(1459 887) rotate(-180)" />',
                        '<path d="M403.46,409h61.36a34.5,34.5,0,0,1,34.5,34.5v0a34.5,34.5,0,0,1-34.5,34.5H448.9a57.22,57.22,0,0,1-57.22-57.22v0A11.78,11.78,0,0,1,403.46,409Z" fill="none" />',
                        '<path d="M732.9,409h15.92a34.5,34.5,0,0,1,34.5,34.5v0a34.5,34.5,0,0,1-34.5,34.5H687.46a11.78,11.78,0,0,1-11.78-11.78v0A57.22,57.22,0,0,1,732.9,409Z" transform="translate(1459 887) rotate(-180)" fill="none" />',
                        "</g>"
                    )
                );
        } else if (eye == 12) {
            // VISOR SHADES
            return
                string(
                    abi.encodePacked(
                        '<g transform="translate(0 -10)">',
                        '<defs><linearGradient id="linear-gradient-visor" x1="585" y1="402" x2="585" y2="490" gradientUnits="userSpaceOnUse">',
                        '<stop offset="0" stop-color="#ff005c" /><stop offset="1" stop-color="#f9ff08" /></linearGradient></defs>',
                        '<rect x="392" y="411" width="18" height="50" rx="9" fill="#3a3a3a" /><rect x="311" y="421" width="81" height="30" fill="#161616" />',
                        '<path d="M605,444h26l26,42H632.28a14.26,14.26,0,0,1-10.52-4.63h0A22.74,22.74,0,0,0,605,474H592a22.74,22.74,0,0,0-16.76,7.37h0A14.26,14.26,0,0,1,564.72,486H540l26-42h39Z" fill="#3a3a3a" />',
                        '<path d="M774.75,397.66c-44.66-14.65-95-17.9-118.08-18.6-.4,0-.79-.06-1.19-.06h-1c-6.8-.17-10.74-.12-10.74-.12V379H551.22v-.12s-70.63-1-131,18.78c-6.24,2-10.25,6.72-10.25,11.86v51.86c0,13.62,15.81,25.07,26,31.87,13.92,9.3,46.3,14.62,74.68,14.9,0,0,26.55,1.38,43.88-22.21A38.67,38.67,0,0,1,585.67,470h23.66a38.67,38.67,0,0,1,31.12,15.94c17.33,23.59,43.88,22.21,43.88,22.21,28.38-.28,60.76-6.6,74.68-15.9,10.18-6.8,26-17.25,26-30.87V409.52C785,404.38,781,399.7,774.75,397.66Z" fill="url(#linear-gradient-visor)" />',
                        '<path d="M662,379.25c-1.9-.08-3.69-.14-5.33-.19-.4,0-.79-.06-1.19-.06h-1c-6.8-.17-10.74-.12-10.74-.12V379H597v91h12.33a38.67,38.67,0,0,1,31.12,15.94A53.37,53.37,0,0,0,662,503.36Z" fill="#fff" opacity="0.3" stroke="none" />',
                        '<path d="M774.75,397.66c-44.66-14.65-95-17.9-118.08-18.6-.4,0-.79-.06-1.19-.06h-1c-6.8-.17-10.74-.12-10.74-.12V379H551.22v-.12s-70.63-1-131,18.78c-6.24,2-10.25,6.72-10.25,11.86v51.86c0,13.62,15.81,25.07,26,31.87,13.92,9.3,46.3,14.62,74.68,14.9,0,0,26.55,1.38,43.88-22.21A38.67,38.67,0,0,1,585.67,470h23.66a38.67,38.67,0,0,1,31.12,15.94c17.33,23.59,43.88,22.21,43.88,22.21,28.38-.28,60.76-6.6,74.68-15.9,10.18-6.8,26-17.25,26-30.87V409.52C785,404.38,781,399.7,774.75,397.66Z" fill="none" />',
                        "</g>"
                    )
                );
        } else if (eye == 13) {
            // DEAD
            return
                string(
                    abi.encodePacked(
                        '<g><line x1="473.38" y1="427.62" x2="436.62" y2="464.38" /><line x1="473.38" y1="464.38" x2="436.62" y2="427.62" />',
                        '<line x1="733.38" y1="427.62" x2="696.62" y2="464.38" /><line x1="733.38" y1="464.38" x2="696.62" y2="427.62" /></g>'
                    )
                );
        } else if (eye == 14) {
            // WINK
            return
                string(
                    abi.encodePacked(
                        '<g><circle cx="455" cy="446" r="26" fill="#fff" /><path d="M739,436a26,26,0,0,0-48,0" fill="none" transform="translate(0 10)"/></g>'
                    )
                );
        } else if (eye == 15) {
            // EYE LINER
            return
                string(
                    abi.encodePacked(
                        "<g>",
                        '<path d="M455,420H413.27a18,18,0,0,0,18,18H455Z" />',
                        '<path d="M715.27,420H757a18,18,0,0,1-18,18H715.27Z" />',
                        '<circle cx="455" cy="446" r="26" fill="#fff" />',
                        '<circle cx="715" cy="446" r="26" fill="#fff" />',
                        "</g>"
                    )
                );
        } else if (eye == 16) {
            // CATEYE SHADES
            return
                string(
                    abi.encodePacked(
                        '<g fill="#8a8fcf" transform="translate(0 -5)"><path d="M386,415H282a17,17,0,0,0-17,17h0v17.5a8.51,8.51,0,0,0,8.5,8.5h0a8.51,8.51,0,0,0,8.5-8.5V432H386Z" />',
                        '<path d="M649.06,430.84l18.46,34.45a14,14,0,0,0,12.72,7.38l42.25-1.21A14,14,0,0,0,734,464.83l27.34-44.27a3.54,3.54,0,0,0-3.36-5.38L651.83,425.65A3.54,3.54,0,0,0,649.06,430.84Z" fill="#191919" opacity="0.7" />',
                        '<path d="M520.58,430.84l-18.46,34.45a14,14,0,0,1-12.73,7.38l-42.25-1.21a14,14,0,0,1-11.5-6.63L408.3,420.56a3.54,3.54,0,0,1,3.36-5.38L517.8,425.65A3.54,3.54,0,0,1,520.58,430.84Z" fill="#191919" opacity="0.7" />',
                        '<path d="M808.13,397.6l-3.89-5.44A10.08,10.08,0,0,0,794.7,388l-166.42,22.6H541.36L374.94,388a10.1,10.1,0,0,0-9.55,4.12l-3.88,5.44a10.13,10.13,0,0,0-1,9.89c19.23,44.7,57.21,73.05,67.54,80.15a10,10,0,0,0,5.69,1.76h73a10.12,10.12,0,0,0,8-4c14.6-18.85,23.64-40,27.12-49.05a7,7,0,0,1,6.53-4.46h72.88a7,7,0,0,1,6.53,4.46c3.48,9,12.52,30.2,27.11,49.05a10.15,10.15,0,0,0,8,4h73a10,10,0,0,0,5.7-1.76c10.33-7.1,48.3-35.45,67.54-80.15A10.15,10.15,0,0,0,808.13,397.6ZM520.58,430.84l-18.46,34.45a14,14,0,0,1-12.73,7.38l-42.25-1.21a14,14,0,0,1-11.5-6.63L408.3,420.56a3.54,3.54,0,0,1,3.36-5.38L517.8,425.65A3.54,3.54,0,0,1,520.58,430.84Zm240.76-10.28L734,464.83a14,14,0,0,1-11.5,6.63l-42.26,1.21a14,14,0,0,1-12.72-7.38l-18.46-34.45a3.54,3.54,0,0,1,2.77-5.19L758,415.18A3.54,3.54,0,0,1,761.34,420.56Z" />',
                        "</g>"
                    )
                );
        } else if (eye == 17) {
            // NERD GLASSES
            return
                string(
                    abi.encodePacked(
                        '<g><circle cx="455" cy="443" r="40" fill="#e0e0e0" fill-opacity="0.9" /><circle cx="715" cy="443" r="40" fill="#e0e0e0" fill-opacity="0.9" />',
                        '<circle cx="455" cy="443" r="20" fill="none" stroke="#565656" opacity="0.4" /><line x1="496.97" y1="432.91" x2="674.03" y2="432.91" />',
                        '<line x1="496.97" y1="442.91" x2="674.03" y2="442.91" /><path d="M414,442.91H303.58A10.61,10.61,0,0,0,293,453.52V469H283V453.87a21,21,0,0,1,20.95-21H414" />',
                        '<polygon points="556 448.3 604 448.3 594 426.7 552 426.7 556 448.3" fill="#b49487" /><polygon points="614 451 566 451 576 424 624 424 614 451" fill="#b49487" stroke="#000"',
                        ' stroke-linecap="round" stroke-linejoin="round" stroke-width="10" /><circle cx="715" cy="443" r="20" fill="none" stroke="#565656" opacity="0.4" />',
                        "</g>"
                    )
                );
        } else if (eye == 18) {
            // VR HEADSET
            return
                string(
                    abi.encodePacked(
                        '<g><rect x="349" y="382" width="400.28" height="95" rx="32.5" fill="#fff" /><rect x="382.36" y="374" width="400.28" height="111" rx="32.5" fill="#3d3d3d" /><rect x="401.72" y="374" width="400.28" height="111" rx="32.5" fill="#1b1b1b" />',
                        '<rect x="304" y="418" width="24" height="23" /><path d="M332.5,411H349a0,0,0,0,1,0,0v37a0,0,0,0,1,0,0H332.5A18.5,18.5,0,0,1,314,429.5v0A18.5,18.5,0,0,1,332.5,411Z" fill="#3d3d3d" /><path d="M417,431h23a13,13,0,0,1,13,13v0a13,13,0,0,1-13,13H417a0,0,0,0,1,0,0V431A0,0,0,0,1,417,431Z" stroke="none" />',
                        '<path d="M417,401h23a13,13,0,0,1,13,13v0a13,13,0,0,1-13,13H417a0,0,0,0,1,0,0V401A0,0,0,0,1,417,401Z" stroke="none" /><path d="M751,431h23a13,13,0,0,1,13,13v0a13,13,0,0,1-13,13H751a0,0,0,0,1,0,0V431A0,0,0,0,1,751,431Z" transform="translate(1538 888) rotate(-180)" stroke="none" />',
                        '<path d="M751,401h23a13,13,0,0,1,13,13v0a13,13,0,0,1-13,13H751a0,0,0,0,1,0,0V401A0,0,0,0,1,751,401Z" transform="translate(1538 828) rotate(-180)" stroke="none" /><rect x="575" y="397" width="54" height="26" rx="13" fill="#3d3d3d" /><circle cx="602" cy="457" r="6" stroke="none" />',
                        '<circle cx="572" cy="457" r="6" stroke="none" /><circle cx="542" cy="457" r="6" stroke="none" /><circle cx="632" cy="457" r="6" stroke="none" /><circle cx="662" cy="457" r="6" stroke="none" /></g>'
                    )
                );
        } else if (eye == 19) {
            // BUTTON EYES
            return
                string(
                    abi.encodePacked(
                        '<g fill="#383838"><circle cx="454.75" cy="446.75" r="39" /><circle cx="443.25" cy="435.25" r="2" />',
                        '<circle cx="466.25" cy="435.25" r="2" /><circle cx="466.25" cy="458.25" r="2" /><circle cx="443.25" cy="458.25" r="2" />',
                        '<circle cx="714.75" cy="446.75" r="39" /><circle cx="703.25" cy="435.25" r="2" /><circle cx="726.25" cy="435.25" r="2" />',
                        '<circle cx="726.25" cy="458.25" r="2" /><circle cx="703.25" cy="458.25" r="2" /></g>'
                    )
                );
        } else if (eye == 20) {
            // HEART EYES
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '"><path d="M455,479l-1.34-1.11C424.82,454.46,417,446.19,417,432.77a20,20,0,0,1,20.12-20.11c9.16,0,14.3,5.14,17.88,9.16,3.58-4,8.72-9.16,17.88-9.16A20,20,0,0,1,493,432.77c0,13.42-7.82,21.69-36.66,45.16Z" />',
                        '<path d="M715,479l-1.34-1.11C684.82,454.46,677,446.19,677,432.77a20,20,0,0,1,20.12-20.11c9.16,0,14.3,5.14,17.88,9.16,3.58-4,8.72-9.16,17.88-9.16A20,20,0,0,1,753,432.77c0,13.42-7.82,21.69-36.66,45.16Z" /></g>'
                    )
                );
        } else if (eye == 21) {
            // DIZZY
            return
                string(
                    abi.encodePacked(
                        '<g fill="none"><path d="M679.65,482.1c-3.69-9.72-3.69-20.84,1.14-32.32,9.06-21.51,31.5-31.49,51.26-23.18,17.2,7.25,25.67,26.14,18.42,43.35a27,27,0,0,1-35.41,14.43,21.63,21.63,0,0,1-11.54-28.33,17.3,17.3,0,0,1,22.66-9.24c7.05,3,10.75,10.16,7.78,17.21-2.38,5.64-8.48,7.36-14.12,5" />',
                        '<path d="M419.65,482.1c-3.69-9.72-3.69-20.84,1.14-32.32,9.06-21.51,31.5-31.49,51.26-23.18,17.2,7.25,25.67,26.14,18.42,43.35a27,27,0,0,1-35.41,14.43,21.63,21.63,0,0,1-11.54-28.33,17.3,17.3,0,0,1,22.66-9.24c7.05,3,10.75,10.16,7.78,17.21-2.38,5.64-8.48,7.36-14.12,5" /></g>'
                    )
                );
        } else if (eye == 22) {
            // PIRATE
            return
                string(
                    abi.encodePacked(
                        '<g><circle cx="715" cy="446" r="26" fill="#fff" /><path d="M401,403H508a0,0,0,0,1,0,0v48.28A27.72,27.72,0,0,1,480.28,479H428.72A27.72,27.72,0,0,1,401,451.28V403A0,0,0,0,1,401,403Z" fill="#222222" />',
                        '<line x1="500" y1="403" x2="777" y2="403" /><line x1="409" y1="403" x2="308" y2="403" /></g>'
                    )
                );
        } else if (eye == 23) {
            // UNIBROW
            return
                string(
                    abi.encodePacked(
                        '<g fill="#000"><circle cx="454.5" cy="446" r="26" fill="#fff" /><circle cx="715" cy="445.5" r="26" fill="#fff" />',
                        '<rect x="406" y="415" width="357" height="16" rx="8" stroke-width="10" /></g>'
                    )
                );
        }

        return "";
    }
}
