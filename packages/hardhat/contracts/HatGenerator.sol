pragma solidity ^0.8.0;
//SPDX-License-Identifier: MIT

import "./ToColor.sol";

contract SVGHatGenerator {
    using ToColor for bytes3;

    constructor() {}

    function render(uint8 hat, string memory color)
        external
        pure
        returns (string memory)
    {
        if (hat == 0) {
            // planet
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',color,'" transform="translate(0 -20)"><circle cx="540" cy="131.75" r="64.75" /><circle cx="508.21" cy="137.29" r="7.62" fill="#fff" opacity="0.3" stroke="none" />',
                        '<circle cx="530.85" cy="131.76" r="7.62" fill="#000" opacity="0.2" stroke="none" /><circle cx="540.13" cy="171.01" r="4.57" fill="#000" opacity="0.2" stroke="none" /><circle cx="511.43" cy="111.94" r="4.57" fill="#fff" opacity="0.3" stroke="none" />',
                        '<g opacity="0.2"><path d="M579.54,182.86a64.64,64.64,0,0,0,25-52.83c-26.5-32.3-54.45-46.4-92.92-54.84-.89.8-16.65,9.87-17.5,10.71a195.19,195.19,0,0,1,35.69,20.29c8.11,5.68,16,11.83,22.45,19.37,11,13,17.11,29.29,23,45.26C576.69,174.82,578.16,178.83,579.54,182.86Z" transform="translate(0.19)" fill="#fff" stroke="none" />',
                        '</g><g opacity="0.4"><path d="M497.6,83.66A308.63,308.63,0,0,1,604.52,130c-26.5-32.3-54.45-46.4-92.92-54.84C511,75.77,502.54,80.67,497.6,83.66Z" transform="translate(0.19)" fill="#fff" stroke="none" /></g>',
                        '<circle cx="540" cy="131.75" r="64.75" fill="none" /><path d="M601.47,111.94h32a19.8,19.8,0,0,1,19.8,19.81h0a19.8,19.8,0,0,1-19.8,19.81H446.12a19.81,19.81,0,0,1-19.81-19.81h0a19.81,19.81,0,0,1,19.81-19.81h32" transform="translate(0.19)" fill="none" />',
                        '</g>'
                    )
                );
        } else if (hat == 1) {
            // halo
            return
                string(
                    abi.encodePacked(
                        "<g>",
                        '<path d="M584.56,85H504.44a35.13,35.13,0,0,0-35.13,35.12h0a35.13,35.13,0,0,0,35.13,35.13h80.12a35.13,35.13,0,0,0,35.13-35.13h0A35.13,35.13,0,0,0,584.56,85ZM593,120.45a9.89,9.89,0,0,1-9.89,9.89H505.89a9.89,9.89,0,0,1-9.89-9.89v-.65a9.89,9.89,0,0,1,9.89-9.89h77.22A9.89,9.89,0,0,1,593,119.8Z" fill="#ffe000" />',
                        "</g>"
                    )
                );
        } else if (hat == 2) {
            // ether
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '" transform="translate(0 -5)"><polygon points="519.54 134.91 540 147.09 560.46 134.91 580.93 122.72 540 181.19 499.07 122.72 519.54 134.91" stroke="#000" />',
                        '<polygon points="540 31 580.93 101.16 540 125.52 499.07 101.16 540 31" stroke="#000" /><polygon points="580.93 122.72 560.46 134.91 540 147.09 540 181.19 580.93 122.72" fill="#fff" opacity="0.4" stroke="none" />',
                        '<polygon points="540 81.53 540 125.52 499.07 101.16 540 81.53" opacity="0.2" stroke="none" fill="#000" /><polygon points="580.93 101.16 540 81.53 540 31 580.93 101.16" stroke="none" fill="#fff" opacity="0.4" /><polygon points="519.54 134.91 540 147.09 560.46 134.91 580.93 122.72 540 181.19 499.07 122.72 519.54 134.91"',
                        ' fill="none" stroke="#000" /><polygon points="540 31 580.93 101.16 540 125.52 499.07 101.16 540 31" fill="none" stroke="#000" />',
                        "</g>"
                    )
                );
        } else if (hat == 3) {
            // sweat band
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '" >',
                        '<rect x="326" y="273" width="437" height="53"/>',
                        '<rect x="316" y="291" width="457" height="17" fill="#fff" />',
                        "</g>"
                    )
                );
        } else if (hat == 4) {
            // mohawk
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '" >',
                        '<rect x="552" y="114" width="42" height="132"/>',
                        '<path d="M552,246V114h0a99,99,0,0,0-99,99v14.16S519,216,552,246Z"/>',
                        '<path d="M552,246V114h0a99,99,0,0,0-99,99v14.16S519,216,552,246Z" fill="#000" opacity="0.2" />',
                        '<g transform="translate(-15 -10)"><circle cx="440" cy="275" r="1"/><circle cx="512" cy="256" r="1"/>',
                        '<circle cx="473" cy="257" r="1"/><circle cx="493" cy="276" r="1"/>',
                        "</g>"
                    )
                );
        } else if (hat == 5) {
            // horns
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '" >',
                        '<path d="M407.5,242H366a67,67,0,0,1-67-67v50a74,74,0,0,0,74,74H407.5a28.5,28.5,0,0,0,0-57Z" />',
                        '<path d="M376.5,242h0A28.5,28.5,0,0,1,405,270.5h0A28.5,28.5,0,0,1,376.5,299h0" fill="none" />',
                        '<path d="M725,242H683.5a28.36,28.36,0,0,0-12.61,2.94,230.29,230.29,0,0,1,55.5,53.58A74,74,0,0,0,792,225V175A67,67,0,0,1,725,242Z" />',
                        "</g>"
                    )
                );
        } else if (hat == 6) {
            // cap
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '" transform="translate(20 -10)">',
                        '<path d="M504.08,84h37.83A46.09,46.09,0,0,1,588,130.09V183a0,0,0,0,1,0,0H441a0,0,0,0,1,0,0V147.08A63.08,63.08,0,0,1,504.08,84Z" />',
                        '<path d="M588,167h77a8,8,0,0,1,8,8v0a8,8,0,0,1-8,8H588a0,0,0,0,1,0,0V167A0,0,0,0,1,588,167Z" /><path d="M443,136h15a14,14,0,0,1,14,14h0a14,14,0,0,1-14,14H441" fill="#000" />',
                        '<rect x="506" y="68" width="20" height="16" rx="8" /><polygon points="559 150 588 150 588 138.45 588 130 559 130 559 150" fill="#ffffff" stroke="#fff" />',
                        '<line x1="441" y1="164" x2="426" y2="164" /><path d="M504.08,84h37.83A46.09,46.09,0,0,1,588,130.09V183a0,0,0,0,1,0,0H441a0,0,0,0,1,0,0V147.08A63.08,63.08,0,0,1,504.08,84Z"',
                        ' fill="none" /></g>'
                    )
                );
        } else if (hat == 7) {
            // beanie
            return
                string(
                    abi.encodePacked(
                        '<g transform="translate(0 15)" fill="#',
                        color,
                        '">',
                        '<rect x="358.5" y="246.5" width="367" height="29" /><path d="M712.76,246.5a229,229,0,0,0-342.52,0Z" />',
                        '<line x1="376.91" y1="248" x2="376.91" y2="268" /><line x1="406.91" y1="248" x2="406.91" y2="268" />',
                        '<line x1="436.91" y1="248" x2="436.91" y2="268" /><line x1="466.91" y1="248" x2="466.91" y2="268" />',
                        '<line x1="496.91" y1="248" x2="496.91" y2="268" /><line x1="526.91" y1="248" x2="526.91" y2="268" />',
                        '<line x1="556.91" y1="248" x2="556.91" y2="268" /><line x1="586.91" y1="248" x2="586.91" y2="268" />',
                        '<line x1="616.91" y1="248" x2="616.91" y2="268" /><line x1="646.91" y1="248" x2="646.91" y2="268" />',
                        '<line x1="676.91" y1="248" x2="676.91" y2="268" /><line x1="706.91" y1="248" x2="706.91" y2="268" /></g>'
                    )
                );
        } else if (hat == 8) {
            // afro
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '" >',
                        '<circle cx="358.5" cy="342.5" r="3.5" />',
                        '<circle cx="391.5" cy="362.5" r="3.5" />',
                        '<circle cx="351.5" cy="382.5" r="3.5" />',
                        '<circle cx="397.5" cy="323.5" r="3.5" />',
                        '<path d="M728.44,230.73A35.49,35.49,0,0,0,668.5,199.3a35.49,35.49,0,0,0-50,0,35.49,35.49,0,0,0-50,0,35.49,35.49,0,0,0-50,0,35.49,35.49,0,0,0-50,0,35.49,35.49,0,0,0-50,0,35.49,35.49,0,0,0-60,30.87,35.5,35.5,0,1,0,34,59.53,35.49,35.49,0,0,0,50,0,35.49,35.49,0,0,0,50,0,35.49,35.49,0,0,0,50,0,35.49,35.49,0,0,0,50,0,35.49,35.49,0,0,0,50,0,35.49,35.49,0,0,0,50,0,35.5,35.5,0,1,0,35.94-59Z" /></g>'
                    )
                );
        } else if (hat == 9) {
            // crown
            return
                string(
                    abi.encodePacked(
                        '<g transform="translate(0 -10)">',
                        '<defs><linearGradient id="linear-gradient-crown" x1="459" y1="126" x2="621" y2="126" gradientUnits="userSpaceOnUse">',
                        '<stop offset="0" stop-color="#ffe000" />',
                        '<stop offset="1" stop-color="#ff00a4" />',
                        "</linearGradient></defs>",
                        '<polygon points="621 182 621 70 580.5 110.5 540 70 499.5 110.5 459 70 459 182 621 182" fill="url(#linear-gradient-crown)" />',
                        '<circle cx="494" cy="143" r="9" fill="#fff" /><circle cx="584" cy="143" r="9" fill="#fff" /><circle cx="540" cy="143" r="9" fill="#fff" /></g>'
                    )
                );
        } else if (hat == 10) {
            // toupe
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '" >',
                        '<path d="M742.94,145a37.07,37.07,0,0,0-37.07,36.94l0,13.06H383.6A103.6,103.6,0,0,0,280,298.6V468a28,28,0,0,0-28,28v17a28,28,0,0,0,28,28h32V409.45A57.45,57.45,0,0,1,369.45,352H434V275H719.11A60.89,60.89,0,0,0,780,214.11V182.06A37.06,37.06,0,0,0,742.94,145Z" />',
                        '<g transform="translate(0 9)"><line x1="436.25" y1="282.61" x2="374.94" y2="282.61" fill="none" /><line x1="436.25" y1="301.71" x2="394.03" y2="301.71" fill="none" />',
                        '<polyline points="290.51 188.13 308.6 220.29 276.44 208.23" fill="none" /><line x1="704.61" y1="186.12" x2="723.7" y2="186.12" fill="none" /></g>',
                        "</g>"
                    )
                );
        } else if (hat == 11) {
            // condom
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '" >',
                        '<path d="M504,222V169a37,37,0,0,1,37-37h0a37,37,0,0,1,37,37v53" />',
                        '<path d="M541,150h0a19,19,0,0,1,19,19" stroke="#ffffff" />',
                        "</g>"
                    )
                );
        } else if (hat == 12) {
            // mic
            return
                string(
                    abi.encodePacked(
                        '<g><path d="M971.49,228.13c14.74-10.43,19.5-28.26,16.71-45.52a67,67,0,0,0-29.1-45.56C927,115.9,885.92,120.52,850,126c-24.57,3.73-49.58,8-74.45,4.7-5.67-.76-8.12,7.91-2.4,8.68,37.49,5,73.8-6,111-8.48,32.35-2.18,73.86,2.93,89.63,35.78,8.14,16.94,10.57,41.44-6.77,53.71-4.69,3.32-.2,11.13,4.54,7.78Z" stroke-width="3" transform="translate(-2 0)" /> transform="translate(736.5 -453.5) rotate(90)" />',
                        '<path d="M542.75,205.25h0c2.76,0,5.51.07,8.25.16V154H530v51.61C534.22,205.38,538.47,205.25,542.75,205.25Z" fill="#545454" />',
                        '<rect x="645.5" y="39.5" width="21" height="204" fill="#545454" transform="translate(797.5 -514.5) rotate(90)" />',
                        '<circle cx="541" cy="142" r="20" fill="#545454" /><rect x="793" y="119" width="21" height="135" fill="#545454" transform="translate(103.46 622.78) rotate(-45)" />',
                        '<path d="M902.28,234.54h0a26,26,0,0,1,26,26v88a0,0,0,0,1,0,0h-52a0,0,0,0,1,0,0v-88a26,26,0,0,1,26-26Z" transform="translate(1334.13 1135.7) rotate(-135)" fill="#545454" />',
                        '<path d="M871.17,285.88l-20.51-20.5a21,21,0,0,1,0-29.7h0a21,21,0,0,1,29.7,0L937.63,293" fill="none" stroke-width="16" />',
                        '<rect x="840.17" y="288.65" width="62" height="68" rx="15.46" transform="translate(1259.02 1166.81) rotate(-135)" />',
                        '<rect x="936.97" y="227.68" width="38.34" height="20" transform="translate(111.98 745.71) rotate(-45)" fill="#fff" />',
                        '<circle cx="758" cy="142" r="20" fill="#545454" /></g>'
                    )
                );
        } else if (hat == 12) {
            // cowboy
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '" >',
                        '<path d="M639,115.76v30.68a15.39,15.39,0,0,1-15.39,15.39H455.77a15.39,15.39,0,0,1-15.39-15.39V115.76a21,21,0,0,0-21-21h0a21,21,0,0,0-21,21v30h0a29.52,29.52,0,0,0,29.52,29.52H651.48A29.52,29.52,0,0,0,681,145.73h0v-30a21,21,0,0,0-21-21h0A21,21,0,0,0,639,115.76Z" />',
                        '<path d="M639,115.76v30.68a15.39,15.39,0,0,1-15.39,15.39H455.77a15.39,15.39,0,0,1-15.39-15.39V115.76a21,21,0,0,0-21-21h0a21,21,0,0,0-21,21v30h0a29.52,29.52,0,0,0,29.52,29.52H651.48A29.52,29.52,0,0,0,681,145.73h0v-30a21,21,0,0,0-21-21h0A21,21,0,0,0,639,115.76Z" fill="#000" opacity="0.3" />',
                        '<path d="M549.73,71.15v1.28a9.85,9.85,0,0,1-9.84,9.84h0a9.85,9.85,0,0,1-9.84-9.84V71.15a27.39,27.39,0,0,0-27.39-27.4h-.45a27.4,27.4,0,0,0-27.4,27.4v90.68H604.52V71.15a27.4,27.4,0,0,0-27.4-27.4h0A27.39,27.39,0,0,0,549.73,71.15Z" />',
                        '<rect x="474.81" y="110.84" width="129.7" height="29.52" fill="#ead9a0" />',
                        '<circle cx="540" cy="126" r="22" fill="#ead9a0" />',
                        "</g>"
                    )
                );
        } else if (hat == 13) {
            // KFC
            return
                string(
                    abi.encodePacked(
                        "<g>",
                        '<path d="M594.51,41.81a11.24,11.24,0,0,0,3,2.15L572.78,68.67l10.6,10.61,24.84-24.84a11.37,11.37,0,1,0,2.37-12.63l-.17.18h0l.18-.17a11.37,11.37,0,1,0-16.08,0Z" fill="#fff" />',
                        '<circle cx="567.65" cy="84.75" r="31.45" fill="#d68330" />',
                        '<circle cx="538.48" cy="71.85" r="31.45" fill="#d68330" />',
                        '<circle cx="509.38" cy="93.4" r="31.45" fill="#d68330" />',
                        '<polygon points="601.55 98 481.55 98 489.55 178 593.55 178 601.55 98" fill="#fff" />',
                        '<rect x="472.35" y="78" width="138.4" height="20" fill="#fff" />',
                        '<polygon points="503.8 103 510.07 173 529.92 173 529.92 103 503.8 103" fill="#ff3636" stroke="none" />',
                        '<polygon points="579 103 572.73 173 552.88 173 552.88 103 579 103" fill="#ff3636" stroke="none" />',
                        '<rect x="525" y="131" width="32" height="5" fill="#fff" />',
                        "</g>"
                    )
                );
        } else if (hat == 14) {
            // sombrero
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '"><path d="M339,120.5H740a0,0,0,0,1,0,0v0a56,56,0,0,1-56,56H395a56,56,0,0,1-56-56v0A0,0,0,0,1,339,120.5Z"',
                        ' fill="#fff6b3" /><path d="M538.3,30.5h0a54.15,54.15,0,0,1,54.15,54.15V120.5a0,0,0,0,1,0,0H484.15a0,0,0,0,1,0,0V84.65A54.15,54.15,0,0,1,538.3,30.5Z"',
                        ' fill="#fff6b3" /><path d="M617.33,157.54a31.77,31.77,0,0,1-20.3-7.1L578.57,135.1,560.1,150.44c-11.38,9.46-29.21,9.46-40.59,0l-18.3-15.2-18.29,15.2c-11.38,9.46-29.21,9.46-40.59,0L423.86,135.1,405.4,150.44c-11.39,9.46-29.22,9.46-40.6,0l-20.91-17.38a7.45,7.45,0,0,1-5.39-7.16,7.57,7.57,0,0,1,7.5-7.58h.91a7.49,7.49,0,0,1,4.79,1.73l22.69,18.86c5.81,4.82,15.61,4.82,21.42,0l22.69-18.86a7.47,7.47,0,0,1,4.79-1.73h1.14a7.47,7.47,0,0,1,4.79,1.73l22.69,18.86c5.81,4.82,15.61,4.82,21.42,0l22.07-18.34a7.38,7.38,0,0,1,5.31-2.25h.9a7.5,7.5,0,0,1,4.8,1.73l22.69,18.86c5.8,4.82,15.61,4.82,21.42,0l22.69-18.85a7.47,7.47,0,0,1,4.79-1.73h1.14a7.49,7.49,0,0,1,4.79,1.73l22.69,18.86c5.8,4.82,15.61,4.82,21.42,0l22.06-18.34a7.42,7.42,0,0,1,5.32-2.25h.9a7.47,7.47,0,0,1,4.79,1.73l22.69,18.86c5.81,4.82,15.62,4.82,21.42,0l22.69-18.86a7.5,7.5,0,0,1,4.8-1.73h1.13a7.5,7.5,0,0,1,1.85,14.77l-20.88,17.35c-11.38,9.46-29.21,9.46-40.59,0l-18.3-15.2-18.3,15.2A31.82,31.82,0,0,1,617.33,157.54Z"',
                        ' fill="#ff3636" stroke="none" /><path d="M617.33,172.07A31.77,31.77,0,0,1,597,165l-18.46-15.34L560.1,165c-11.38,9.46-29.21,9.46-40.59,0l-18.3-15.2L482.92,165c-11.38,9.46-29.21,9.46-40.59,0l-18.47-15.34L405.4,165c-11.39,9.46-29.22,9.46-40.6,0L343.89,147.6a7.45,7.45,0,0,1-5.39-7.16,7.58,7.58,0,0,1,7.5-7.59h.91a7.47,7.47,0,0,1,4.79,1.73l22.69,18.86c5.81,4.82,15.61,4.82,21.42,0l22.69-18.86a7.47,7.47,0,0,1,4.79-1.73h1.14a7.47,7.47,0,0,1,4.79,1.73l22.69,18.86c5.81,4.82,15.62,4.82,21.42,0l22.06-18.34a7.46,7.46,0,0,1,5.32-2.25h.9a7.5,7.5,0,0,1,4.8,1.73l22.69,18.86c5.8,4.82,15.61,4.82,21.42,0l22.69-18.86a7.47,7.47,0,0,1,4.79-1.73h1.14a7.49,7.49,0,0,1,4.79,1.73l22.69,18.86c5.8,4.82,15.61,4.82,21.42,0L650.1,135.1a7.46,7.46,0,0,1,5.32-2.25h.9a7.47,7.47,0,0,1,4.79,1.73l22.69,18.86c5.81,4.82,15.62,4.82,21.42,0l22.69-18.86a7.5,7.5,0,0,1,4.8-1.73h1.13a7.5,7.5,0,0,1,1.85,14.77L714.81,165c-11.38,9.46-29.21,9.46-40.59,0l-18.3-15.2L637.62,165A31.77,31.77,0,0,1,617.33,172.07Z"',
                        ' stroke="none" /><path d="M339,120.5H740a0,0,0,0,1,0,0v0a56,56,0,0,1-56,56H395a56,56,0,0,1-56-56v0A0,0,0,0,1,339,120.5Z" fill="none" />',
                        '<rect x="488.59" y="79.5" width="99.41" height="12" fill="#ff3636" stroke="none" /><rect x="488.59" y="90.5" width="99.41" height="12" stroke="none" /></g>'
                    )
                );
        } else if (hat == 15) {
            // bun
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '"><polyline points="479 159 504.37 177.48 479 177" fill="none" /><circle cx="540" cy="150" r="45" /><path d="M546,161a29,29,0,0,1-29,29" fill="none" />',
                        '<path d="M566,161a29,29,0,0,1-29,29" fill="none" /><circle cx="503" cy="195" r="11" fill="#fff" /><circle cx="521.75" cy="195" r="11" fill="#fff" />',
                        '<circle cx="540.5" cy="195" r="11" fill="#fff" /><circle cx="559.25" cy="195" r="11" fill="#fff" /><circle cx="578" cy="195" r="11" fill="#fff" />',
                        "</g>"
                    )
                );
        } else if (hat == 16) {
            // bunny ears
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '" >',
                        '<rect x="324" y="266" width="432" height="40" rx="13" />',
                        '<rect x="396.99" y="200" width="33.02" height="66.18" fill="#ffa6f5" stroke="#000" stroke-linecap="round" stroke-miterlimit="10" stroke-width="10" transform="translate(-20 0)" />',
                        '<path d="M430,200H361.79a25,25,0,0,0-25,25V337.27A34.73,34.73,0,0,0,371.5,372h0a34.73,34.73,0,0,0,34.73-34.73V215H430v51h18V218A18,18,0,0,0,430,200Z" transform="translate(-20 0)" />',
                        '<path d="M698.27,266h20V62.73A34.73,34.73,0,0,0,683.5,28h0a34.73,34.73,0,0,0-34.73,34.73V231.05A230.29,230.29,0,0,1,698.27,266Z" />',
                        '<path d="M698.49,266.18H700V129.91a16.51,16.51,0,1,0-33,0V241.68A230.3,230.3,0,0,1,698.49,266.18Z" fill="#ffa6f5" />',
                        "</g>"
                    )
                );
        } else if (hat == 17) {
            // airmax 1s
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '" transform="translate(0 -30)">',
                        '<path d="M710,143.86l-74.41-19.79a6.23,6.23,0,0,0,.07-2.69,6.38,6.38,0,0,0-3.33-4.45L544.1,71.48a6.24,6.24,0,0,0-2-.63c-8.45-5.41-15.73-9.1-19.85-9.1,0,0-14.48,17.16-15.49,40.66a57,57,0,0,1-19.58,4.38c-24.35,1.23-36.58-12-41.36-19.16a9.34,9.34,0,0,0-8.19-4.09l-6.49.3a9.42,9.42,0,0,0-7.76,4.81c-14.12,25.08-12.54,57.52-12.54,57.52l144.84,7.37,52.66,16.62Z" fill="#fff" /><path d="M487.16,106.79c-24.35,1.23-36.58-12-41.36-19.16a9.34,9.34,0,0,0-8.19-4.09l-6.49.3a9.42,9.42,0,0,0-7.76,4.81c-14.12,25.08-12.54,57.52-12.54,57.52l146.39,7.45h0a38.45,38.45,0,0,1,45.33-30l25.56,5.2a6.36,6.36,0,0,0,7.51-7.43h0a6.38,6.38,0,0,0-3.33-4.45L544.1,71.48a6.19,6.19,0,0,0-8.38,2.73C530.59,84.56,516.68,105.3,487.16,106.79Z"',
                        ' fill="#b8b8b8" stroke="none" /><path d="M715.93,176.14s12.35-20.73-6-32.28l-58.27,3.66a34.37,34.37,0,0,0-17.88,6.28c-7.51,5.37-19.66,10.25-25.41-8.4a7.62,7.62,0,0,0-9.2-5.15L569.88,148a52.48,52.48,0,0,1-20.61,1.21L429.76,132.48a16.45,16.45,0,0,0-17.53,10.17l-2.39,6s-.75,12.75,8.39,16.94,160.59,23.71,160.59,23.71l95.26-1.19Z" />',
                        '<path d="M715.93,176.14s-33.48,25.11-83.7,25.11H473.09c-5.5,0-11-.25-16.47-.74l-27.26-2.45L414.78,188a5,5,0,0,1-2.15-4.11V170.75a5,5,0,0,1,4.27-4.95c4.21-.63,10.54-2.29,14.41-6.74a5.07,5.07,0,0,1,3.63-1.75c12.85-.45,75.45-1.72,135.51,12.85C637.81,186.5,715.93,176.14,715.93,176.14Z"',
                        ' fill="#fff" /><path d="M470,120c93.26,24.31,74.15-8,74.15-8l-6.4-10" /><line x1="621.1" y1="114.68" x2="616.71" y2="121.86" />',
                        '<line x1="605.15" y1="106.71" x2="600.77" y2="113.89" /><line x1="589.21" y1="98.74" x2="584.83" y2="105.92" /><line x1="573.27" y1="90.77" x2="568.89" y2="97.94" /><rect x="468.02" y="176.54" width="55.4" height="12.75" rx="6.38"',
                        ' transform="translate(991.45 365.83) rotate(-180)" fill="#515151" /><path d="M423.36,88.65a9.42,9.42,0,0,1,7.76-4.81l6.49-.3a9.34,9.34,0,0,1,8.19,4.09c4.78,7.13,17,20.39,41.36,19.16,29.52-1.49,43.43-22.23,48.56-32.58a6.19,6.19,0,0,1,8.38-2.73l21.29,10.89h0s-43.19,40.43-95.28,38h0c-11.21-6.41-31.94-15-52.72-18.32A83.57,83.57,0,0,1,423.36,88.65Z"',
                        ' fill="#fff" stroke="none" /><line x1="546.47" y1="86.57" x2="546.59" y2="86.54" /><path d="M710,143.86l-74.41-19.79a6.23,6.23,0,0,0,.07-2.69,6.38,6.38,0,0,0-3.33-4.45L544.1,71.48a6.24,6.24,0,0,0-2-.63c-8.45-5.41-15.73-9.1-19.85-9.1,0,0-14.48,17.16-15.49,40.66a57,57,0,0,1-19.58,4.38c-24.35,1.23-36.58-12-41.36-19.16a9.34,9.34,0,0,0-8.19-4.09l-6.49.3a9.42,9.42,0,0,0-7.76,4.81c-14.12,25.08-12.54,57.52-12.54,57.52h0l-1,2.47s-.75,12.75,8.39,16.94l-1.33.22a5,5,0,0,0-4.27,4.95v13.13a5,5,0,0,0,2.15,4.11l14.58,10.07,27.26,2.45c5.47.49,11,.74,16.47.74H632.23c50.22,0,83.7-25.11,83.7-25.11S728.28,155.41,710,143.86Z"',
                        ' fill="none" /><path d="M487.16,106.79c29.52-1.49,43.43-22.23,48.56-32.58a6.19,6.19,0,0,1,8.38-2.73" fill="none" /><path d="M470,120c93.26,24.31,74.15-8,74.15-8l-6.4-10" fill="none" stroke="#000" stroke-linecap="round"',
                        ' stroke-linejoin="round" stroke-width="10" /></g>'
                    )
                );
        } else if (hat == 18) {
            //bucket hat
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '" transform="translate(-3 10)">',
                        '<path d="M628.94,121.21H464.06l7.25-53.45a16.62,16.62,0,0,1,16.62-16.62H605.07a16.62,16.62,0,0,1,16.62,16.62Z" transform="translate(0)" />',
                        '<polygon points="645 159.68 448 159.68 464.06 121.21 628.94 121.21 645 159.68" /><line x1="477" y1="143" x2="477" y2="159.67" />',
                        '<line x1="490" y1="143" x2="490" y2="159.67" /><line x1="503" y1="143" x2="503" y2="159.67" />',
                        '<line x1="586" y1="78" x2="586" y2="88" stroke="#fff" /><line x1="599" y1="83" x2="599" y2="88" stroke="#fff" />',
                        '<line x1="573" y1="83" x2="573" y2="88" stroke="#fff" /><line x1="575" y1="101" x2="597" y2="101" opacity="0.3" stroke="#fff" /></g>'
                    )
                );
        } else if (hat == 19) {
            // chicken
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '"><line x1="531.26" y1="210.47" x2="551.18" y2="261.67" /><polyline points="560.14 250.19 544.78 245.49 537.08 259.21" fill="none" />',
                        '<line x1="576.36" y1="205.18" x2="611.35" y2="247.54" /><polyline points="616.25 233.83 600.19 234.18 597.18 249.62" fill="none" />',
                        '<path d="M499,88.12a7,7,0,0,0-7,7,7,7,0,0,0-14,0,7,7,0,0,0-14,0V136h42V95.12A7,7,0,0,0,499,88.12Z" /><path d="M595,68a27,27,0,0,0-27,27v25H480a16,16,0,0,0-16,16h0a78.78,78.78,0,0,0,25.38,58H487.5a10.5,10.5,0,0,0,0,21h113a10.5,10.5,0,0,0,0-21h-3.88A78.78,78.78,0,0,0,622,136h0V95A27,27,0,0,0,595,68Z" />',
                        '<circle cx="585" cy="91" r="1" /><circle cx="603" cy="91" r="1" /><polygon points="621 99.12 650 116 621 124.49 621 99.12" fill="#ff2e2e" />',
                        '<path d="M477,204.5h0A10.5,10.5,0,0,1,487.5,194h23" fill="none" /><path d="M547,176H514.5A17.51,17.51,0,0,1,497,158.5h0A17.51,17.51,0,0,1,514.5,141H547" />'.
                        '<rect x="445.04" y="244" width="28.93" height="15" rx="7.5" transform="translate(207 718) rotate(-90)" fill="#fff" stroke="none" />',
                        '<rect x="472.52" y="237.52" width="15.96" height="15" rx="7.5" transform="translate(234.48 725.52) rotate(-90)" fill="#fff" stroke="none" />',
                        '</g>'
                    )
                );
        } else if (hat == 20) {
            // chameleon
            return
                string(
                    abi.encodePacked(
                        '<g fill="#48804d"><path d="M842.53,135.22a12.73,12.73,0,0,0-4.2.23c-23.66,5.29-48,6.92-72.23,7.13L638,143.71l125.65,6.12c25,1.22,50,3.95,74.08,10.57a12.86,12.86,0,1,0,4.8-25.18Z" fill="#ff83bb" /><path d="M472,197l34.55.62a12.9,12.9,0,0,1,11.06,19.15L502,245" />',
                        '<path d="M620.91,210.91l.18-.2-3.17-2.79-2-2-.13.13-21.87-19.27a10.78,10.78,0,0,1-3.54-6.66l-5.46-41.88-14.15,14.71,4.6,35.29a8.86,8.86,0,0,0,2.94,5.52L604.72,217l-4.08,4.08a6.55,6.55,0,0,0,9.26,9.26l15.24-15.24Z" /><path d="M465.81,229.79S470.19,173,606.6,158.5" fill="none" />',
                        '<path d="M583.6,123s-109.52-17.76-138.79,66.5A108.64,108.64,0,0,0,439,224.12L439,229a41.44,41.44,0,0,0,41.44,41.44,33.15,33.15,0,0,0,33.15-33.15A26.52,26.52,0,0,0,487,210.77,21.22,21.22,0,0,0,465.8,232l.12-2.19S470.29,173,606.7,158.5Z" /><path d="M588.17,95.5h11.09a50.24,50.24,0,0,1,50.24,50.24v0a12.76,12.76,0,0,1-12.76,12.76H596.26a12.76,12.76,0,0,1-12.76-12.76V100.17A4.67,4.67,0,0,1,588.17,95.5Z" />',
                        '<circle cx="612" cy="126" r="13" fill="#fff" fill-opacity="0.5" /><circle cx="612" cy="126" r="3" fill="#000" stroke-width="3" /><path d="M583.5,123S474,105.24,444.71,189.5a108.64,108.64,0,0,0-5.81,34.62l0,4.88a41.44,41.44,0,0,0,41.44,41.44,33.15,33.15,0,0,0,33.15-33.15,26.52,26.52,0,0,0-26.52-26.52A21.22,21.22,0,0,0,465.7,232a17,17,0,0,0,17,17,13.58,13.58,0,0,0,13.58-13.58,10.86,10.86,0,0,0-10.86-10.86" fill="none" />',
                        '<path d="M536.92,160.29l-7.43,34.81a8.86,8.86,0,0,0,.93,6.18l21.11,37.88.21-.12-5.6,19.72a8.5,8.5,0,0,0,16.35,4.65l6.19-21.77,9.33,2.65a6.54,6.54,0,1,0,3.58-12.59l-18.9-5.37-.16.57-15.06-27a10.73,10.73,0,0,1-1.12-7.45l8.81-41.31" /><circle cx="485" cy="162" r="6" opacity="0.2" stroke="none" fill="#000" /><circle cx="503" cy="150" r="6" opacity="0.2" stroke="none" fill="#000" />',
                        '<circle cx="524" cy="142" r="6" opacity="0.2" stroke="none" fill="#000" /><circle cx="547" cy="138" r="6" opacity="0.2" stroke="none" fill="#000" /><circle cx="470" cy="178" r="6" opacity="0.2" stroke="none" fill="#000" /><circle cx="460" cy="198" r="6" opacity="0.2" stroke="none" fill="#000" />',
                        '</g>'
                    )
                );
        } else if (hat == 21) {
            // BOWL HAIR
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',color,'">',
                        '<path d="M656.06,161H455.45V121a7,7,0,0,0-14,0v30.6L424,134.1a7,7,0,0,0-9.9,9.9l17,17h-2.11C359.94,161,304,214.83,304,281.23V309h94.05l19.22-37,7.42,37h123l25.66-48,6,48h9.36l13.78-37,5.41,37H781V281.23C781,214.83,725.06,161,656.06,161Z" />',
                        '</g>'
                    )
                );
        }

        return "";
    }
}
