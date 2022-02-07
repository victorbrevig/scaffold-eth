pragma solidity ^0.8.0;
//SPDX-License-Identifier: MIT

import "./ToColor.sol";

contract SVGMouthGenerator2 {
    using ToColor for bytes3;

    constructor() {}

    function render(uint8 mouth, string memory color)
        external
        pure
        returns (string memory)
    {
        if (mouth == 14) {
            // HOODIE
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '"><g transform="translate(0 15)"><path d="M479,525,356.47,483.18A157,157,0,0,0,312.85,477H275.21A19.21,19.21,0,0,0,256,496.21V519" />',
                        '<path d="M479,525,356.47,483.18A157,157,0,0,0,312.85,477H275.21A19.21,19.21,0,0,0,256,496.21V519" fill="#fff" opacity="0.5" /><path d="M728,525l54.94-41.82.19-.12a12.67,12.67,0,0,1,19.38,10.78V514" />',
                        '<path d="M728,525l54.94-41.82.19-.12a12.67,12.67,0,0,1,19.38,10.78V514" fill="#fff" opacity="0.5" /><path d="M402.92,525,328.4,503.45A113.33,113.33,0,0,0,297,499H269.84A13.84,13.84,0,0,0,256,512.84V520a36,36,0,0,0,36,36H403Z" />',
                        '<path d="M755.08,556l0-31,33.41-21.55.14-.09a9.14,9.14,0,0,1,14,7.8v30.21A11.63,11.63,0,0,1,791,553h0" /></g>',
                        '<rect x="305" y="614" width="480" height="22" /><rect x="305" y="614" width="480" height="22" fill="#fff" opacity="0.5" /><rect x="292" y="525" width="506" height="89" rx="15.16" /><path d="M687.74,597H702V578H687a19,19,0,0,1-19-19H530a19,19,0,0,1-19,19H495v19h13.86" />',
                        '<line x1="448" y1="543" x2="448" y2="588" /><rect x="445" y="573" width="6" height="10" /><line x1="747" y1="543" x2="747" y2="588" /><rect x="744" y="573" width="6" height="10" />',
                        '<circle cx="448" cy="543" r="3" /><circle cx="747" cy="543" r="3" /><line x1="545" y1="512" x2="624" y2="512" transform="translate(0 -5)" /></g>'
                    )
                );
        } else if (mouth == 15) {
            // FANNY PACK
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '"><polygon points="781 555 305 605 305 585 781 535 781 555" fill="#333" /><path d="M573.06,554.74a5.31,5.31,0,0,0-5.83-4.62l-99.81,10.73-.62.06L367,571.64a5.31,5.31,0,0,0-4.72,5.76l2.44,27.25a5.32,5.32,0,0,0,3.4,4.49l43.79,26.38a5.33,5.33,0,0,0,2.47.32l59.71-6.42.63-.07,59.71-6.41a5.28,5.28,0,0,0,2.34-.84L574.11,587a5.32,5.32,0,0,0,2.36-5.1Z" />',
                        '<path d="M413.59,579.13H532.38a25.6,25.6,0,0,1,25.6,25.6v0A51.27,51.27,0,0,1,506.71,656H439.26A51.27,51.27,0,0,1,388,604.73v0a25.6,25.6,0,0,1,25.6-25.6Z" transform="translate(-63.28 54.07) rotate(-6.13)" /><rect x="408.02" y="595.29" width="128.11" height="19.22" rx="9.61" transform="translate(-61.93 53.9) rotate(-6.13)" /><rect x="408.02" y="595.29" width="128.11" height="19.22" rx="9.61"',
                        ' transform="translate(-61.93 53.9) rotate(-6.13)" fill="#000" opacity="0.5" /><line x1="513.72" y1="610.08" x2="515.36" y2="625.37" /><path d="M722.46,567.89l6.3-.68-3.47-31.9L719,536a13.78,13.78,0,0,1-25.81,2.81l-9,1,3.47,31.91,9-1a13.79,13.79,0,0,1,25.81-2.81Z" fill="#1a1a1a" /><polygon points="717.47 538.11 723.01 537.51 726.06 565.55 720.52 566.15 697.83 568.62 689.88 569.48 686.83 541.44 694.78 540.58 717.47 538.11"',
                        ' fill="#111111" /><line x1="545" y1="511" x2="624" y2="511" /><polygon points="460.85 640.63 491.09 637.27 490.23 628.63 460 631.98 460.85 640.63" fill="none" stroke="#fff" /></g>'
                    )
                );
        } else if (mouth == 16) {
            // MOUSTACHE
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '"><path d="M564.19,492.5h-.49a42.85,42.85,0,0,0-27.32,10.11,62.48,62.48,0,0,1-66.22,8.57A49.51,49.51,0,0,0,516,542h48.75a24.75,24.75,0,0,0,24.75-24.27C589.76,503.86,578.07,492.5,564.19,492.5Z" />',
                        '<path d="M615.46,492.5h.5a42.85,42.85,0,0,1,27.32,10.11,62.48,62.48,0,0,0,66.22,8.57A49.52,49.52,0,0,1,663.66,542H614.91a24.75,24.75,0,0,1-24.75-24.27C589.9,503.86,601.59,492.5,615.46,492.5Z" />',
                        '<path d="M590,560h0a20.9,20.9,0,0,0-19.83,27.51L590,647l19.83-59.49A20.9,20.9,0,0,0,590,560Z" />',
                        "</g>"
                    )
                );
        } else if (mouth == 17) {
            // RICH
            return
                string(
                    abi.encodePacked(
                        '<g fill="#cccced"><line x1="545" y1="511" x2="624" y2="511" /><path d="M501,520s91.56,48,171,0" fill="none" stroke="#ddc047" /><polygon points="647.16 527 587.95 559.89 528.75 527 304 527 304 615 781 615 781 527 647.16 527" />',
                        '<polyline points="587 564 493 504 443 534 587 564" /><rect x="309" y="615" width="467" height="25" stroke-width="10" fill="#b56924" /><polyline points="587 615 587 564 681 504 731 534 587 564" />',
                        '<g fill="#965520" stroke="none"><rect x="314" y="627.5" width="11" height="7.5" /><rect x="325" y="620" width="11" height="7.5" /><rect x="336" y="627.5" width="11" height="7.5" /><rect x="347" y="620" width="11" height="7.5" />',
                        '<rect x="358" y="627.5" width="11" height="7.5" /><rect x="369" y="620" width="11" height="7.5" /><rect x="380" y="627.5" width="11" height="7.5" /><rect x="391" y="620" width="11" height="7.5" /><rect x="402" y="627.5" width="11" height="7.5" /><rect x="413" y="620" width="11" height="7.5" /><rect x="424" y="627.5" width="11" height="7.5" /><rect x="435" y="620" width="11" height="7.5" />',
                        '<rect x="446" y="627.5" width="11" height="7.5" /><rect x="457" y="620" width="11" height="7.5" /><rect x="468" y="627.5" width="11" height="7.5" /><rect x="479" y="620" width="11" height="7.5" /><rect x="490" y="627.5" width="11" height="7.5" /><rect x="501" y="620" width="11" height="7.5" /><rect x="512" y="627.5" width="11" height="7.5" /><rect x="523" y="620" width="11" height="7.5" />',
                        '<rect x="534" y="627.5" width="11" height="7.5" /><rect x="545" y="620" width="11" height="7.5" /><rect x="556" y="627.5" width="11" height="7.5" /><rect x="567" y="620" width="11" height="7.5" /><rect x="578" y="627.5" width="11" height="7.5" /><rect x="589" y="620" width="11" height="7.5" /><rect x="600" y="627.5" width="11" height="7.5" /><rect x="611" y="620" width="11" height="7.5" />',
                        '<rect x="622" y="627.5" width="11" height="7.5" /><rect x="633" y="620" width="11" height="7.5" /><rect x="644" y="627.5" width="11" height="7.5" /><rect x="655" y="620" width="11" height="7.5" /><rect x="666" y="627.5" width="11" height="7.5" /><rect x="677" y="620" width="11" height="7.5" /><rect x="688" y="627.5" width="11" height="7.5" /><rect x="699" y="620" width="11" height="7.5" />',
                        '<rect x="710" y="627.5" width="11" height="7.5" /><rect x="721" y="620" width="11" height="7.5" /><rect x="732" y="627.5" width="11" height="7.5" /><rect x="743" y="620" width="11" height="7.5" /><rect x="754" y="627.5" width="11" height="7.5" /><rect x="765" y="620" width="6" height="7.5" /></g>',
                        '<rect x="560" y="608" width="54" height="40" stroke-width="10" stroke="#ddc047" fill="none" /><line x1="614" y1="628" x2="590" y2="628" fill="none" stroke="#ddc047" /></g>'
                    )
                );
        } else if (mouth == 18) {
            // STRIPED TSHIRT
            return
                string(
                    abi.encodePacked(
                        '<g><rect x="305" y="540" width="474" height="96" stroke-width="10" fill="#efe6c7" /><rect x="305" y="530" width="474" height="10" stroke-width="10" /><g stroke="none"><rect x="357" y="545" width="10" height="86" fill="#2f604c" />',
                        '<rect x="437" y="545" width="10" height="86" fill="#cc4646" /><rect x="457" y="545" width="10" height="86" fill="#765849" /><rect x="377" y="545" width="30" height="86" fill="#315d93" /><rect x="507" y="545" width="10" height="86" fill="#2f604c" />',
                        '<rect x="587" y="545" width="10" height="86" fill="#cc4646" /><rect x="607" y="545" width="10" height="86" fill="#765849" /><rect x="647" y="545" width="10" height="86" fill="#2f604c" /><rect x="727" y="545" width="10" height="86" fill="#cc4646" />',
                        '<rect x="747" y="545" width="10" height="86" fill="#765849" /><rect x="527" y="545" width="30" height="86" fill="#315d93" /><rect x="667" y="545" width="30" height="86" fill="#315d93" /></g>',
                        '<rect x="545" y="572" width="79" height="10" stroke-width="10" stroke="#ffd62c" /><line x1="545" y1="511" x2="624" y2="511" /></g>'
                    )
                );
        } else if (mouth == 19) {
            // BEARD
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '"><path d="M778,548.33V507H641a56,56,0,0,1-112,0H361V470H338v37h0v4h.07A128,128,0,0,0,466,635H761a45,45,0,0,0,45-45h0A45,45,0,0,0,778,548.33Z" />',
                        '<path d="M559.19,490.5h-.49a42.85,42.85,0,0,0-27.32,10.11,62.48,62.48,0,0,1-66.22,8.57A49.51,49.51,0,0,0,511,540h48.75a24.75,24.75,0,0,0,24.75-24.27C584.76,501.86,573.07,490.5,559.19,490.5Z" />',
                        '<path d="M610.46,490.5h.5a42.85,42.85,0,0,1,27.32,10.11,62.48,62.48,0,0,0,66.22,8.57A49.52,49.52,0,0,1,658.66,540H609.91a24.75,24.75,0,0,1-24.75-24.27C584.9,501.86,596.59,490.5,610.46,490.5Z" /><path d="M761,545a45,45,0,0,1,45,45h0" fill="none" />',
                        "</g>"
                    )
                );
        } else if (mouth == 19) {
            // SPIKES
            return
                string(
                    abi.encodePacked(
                        '<g fill="#ddd"><line x1="546" y1="511" x2="625" y2="511" /><rect x="305" y="534" width="467" height="72" fill="#232323" />',
                        '<polygon points="305 590 305 550 245 570 305 590" /><polygon points="772 590 772 550 832 570 772 590" /><path d="M347,550l-31,20,31,20a20,20,0,0,0,0-40Z" />',
                        '<path d="M728,550l31,20-31,20a20,20,0,0,1,0-40Z" /><circle cx="424.2" cy="570" r="20" /><circle cx="500.4" cy="570" r="20" /><circle cx="576.6" cy="570" r="20" />',
                        '<circle cx="652.8" cy="570" r="20" /></g>'
                    )
                );
        } else if (mouth == 20) {
            // HUNTER
            return
                string(
                    abi.encodePacked(
                        '<g><rect x="305" y="553" width="474" height="83" stroke-width="10" fill="#a02525" /><rect x="338" y="553" width="10" height="78" opacity="0.5" stroke="none" fill="#ddd"/><rect x="354" y="553" width="20" height="78" opacity="0.5" stroke="none"/><rect x="451" y="553" width="10" height="78" opacity="0.5" stroke="none"fill="#ddd"/>',
                        '<rect x="467" y="553" width="20" height="78" opacity="0.5" stroke="none"/><rect x="564" y="553" width="10" height="78" opacity="0.5" stroke="none"fill="#ddd"/><rect x="580" y="553" width="20" height="78" opacity="0.5" stroke="none"/><rect x="677" y="553" width="10" height="78" opacity="0.5" stroke="none"fill="#ddd"/>',
                        '<rect x="693" y="553" width="20" height="78" opacity="0.5" stroke="none"/><rect x="310" y="578" width="464" height="10" opacity="0.5" stroke="none"fill="#ddd"/><rect x="310" y="594" width="464" height="20" opacity="0.5" stroke="none"/><path d="M634.69,493.14H542.31A20.31,20.31,0,0,0,522,513.45v11.41h48.73a18.39,18.39,0,0,0,17.66-13.27.75.75,0,0,1,1.44,0,18.39,18.39,0,0,0,17.66,13.27H655V513.45A20.31,20.31,0,0,0,634.69,493.14Z" fill="#7c5b25"/>',
                        '<path d="M460.3,499h-150a18.32,18.32,0,0,0-17.18,24.69L304,553H503l-12.12-32.72A32.6,32.6,0,0,0,460.3,499Z" fill="#d6ba92"/><path d="M710.7,499h63a18.32,18.32,0,0,1,17.18,24.69L780,553H668l12.12-32.72A32.6,32.6,0,0,1,710.7,499Z" fill="#d6ba92"/></g>'
                    )
                );
        } else if (mouth == 21) {
            // GUITAR
            return
                string(
                    abi.encodePacked(
                        '<g fill="#d39337"><path d="M552.17,667.42l1.15-.32a32.28,32.28,0,0,1,21.18,1.49,46.7,46.7,0,0,0,30.84,1.89h0a47,47,0,0,0,32.54-58l-13.53-48.13a47,47,0,0,0-58-32.54h0A46.85,46.85,0,0,0,541,549.53a32.18,32.18,0,0,1-17.3,12.31l-1.15.32a31.79,31.79,0,0,1-29.69-6.79,60.47,60.47,0,0,0-56.5-13h0A60.51,60.51,0,0,0,394.52,617l19.74,70.26a60.51,60.51,0,0,0,74.62,41.89h0a60.48,60.48,0,0,0,41.48-40.49A31.82,31.82,0,0,1,552.17,667.42Z" fill="#d39337" /><path d="M862.79,536.86l-7-25a14,14,0,0,1-17-9l-55,18.81L796.18,566l56.75-12.59A14,14,0,0,1,862.79,536.86Z" />',
                        '<line x1="832.08" y1="523.68" x2="808.02" y2="530.44" /><line x1="836.41" y1="539.08" x2="812.34" y2="545.84" /><circle cx="821.89" cy="498.49" r="5" /><circle cx="799.33" cy="506.91" r="5" /><circle cx="840.83" cy="565.88" r="5" /><circle cx="817.18" cy="570.45" r="5" /><circle cx="556.98" cy="609.28" r="33" fill="none" stroke="#',
                        color,
                        '" /><rect x="662.26" y="460.82" width="36" height="228" transform="translate(1049.63 -235.57) rotate(74.31)" fill="#9b6f34" />',
                        '<rect x="437.61" y="628.41" width="54" height="14" transform="translate(950.65 16.24) rotate(74.31)" fill="#bcbcbc" /><circle cx="556.98" cy="609.28" r="23.83" fill="#515151" /><line x1="751.81" y1="536.02" x2="761.54" y2="570.68" /><line x1="715.7" y1="546.16" x2="725.44" y2="580.82" /><line x1="679.6" y1="556.31" x2="689.34" y2="590.96" />',
                        '<line x1="643.5" y1="566.45" x2="653.24" y2="601.11" /><line x1="607.4" y1="576.6" x2="617.14" y2="611.25" /><line x1="785.14" y1="526.65" x2="466.48" y2="616.19" opacity="0.5" /><line x1="790.01" y1="543.98" x2="471.35" y2="633.52" opacity="0.5" /><line x1="794.88" y1="561.31" x2="476.22" y2="650.85" opacity="0.5" /><line x1="546" y1="511" x2="624" y2="511" />',
                        "</g>"
                    )
                );
        } else if (mouth == 22) {
            // TRUMPET
            return
                string(
                    abi.encodePacked(
                        '<g fill="#ffd62c"><circle cx="570" cy="527" r="6" fill="none" /><path d="M531,511a16,16,0,0,1,0,32" fill="none" /><rect x="591.21" y="522.09" width="26.59" height="11.82" fill="#999" /><polygon points="572 542.77 591.21 536.06 591.21 519.94 572 513.23 572 542.77" fill="#999" /><line x1="707.73" y1="486.38" x2="707.73" y2="512.41" /><line x1="741.06" y1="486.38" x2="741.06" y2="512.41" /><line x1="774.4" y1="486.38" x2="774.4" y2="512.41" />',
                        '<path d="M904.92,499.79h0a186.32,186.32,0,0,1-33.82,3.1H654.18a36,36,0,0,0-36,36h19.94a16.09,16.09,0,0,1,16.07-16.07H871.1a186.32,186.32,0,0,1,33.82,3.1h0a78.62,78.62,0,0,1,49.71,31.62V468.17A78.66,78.66,0,0,1,904.92,499.79Z" /><rect x="699.61" y="502.81" width="16.99" height="86.77" /><rect x="732.94" y="502.81" width="16.99" height="86.77" /><rect x="766.27" y="502.81" width="16.99" height="86.77" /><rect x="699.61" y="483.43" width="16.99" height="6.08" fill="#999" />',
                        '<rect x="732.94" y="483.43" width="16.99" height="6.08" fill="#999" /><rect x="766.27" y="483.43" width="16.99" height="6.08" fill="#999" /><path d="M638.11,538.9A16.09,16.09,0,0,0,654.18,555h197a8.5,8.5,0,0,0,0-17H616.32V518h234.9a28.44,28.44,0,0,1,0,56.88h-197a36.05,36.05,0,0,1-36-36" />',
                        "</g>"
                    )
                );
        } else if (mouth == 23) {
            // ACDC
            return
                string(
                    abi.encodePacked(
                        '<g><rect x="305" y="540" width="474" height="96" stroke-width="10" fill="#282828" /><rect x="305" y="530" width="474" height="10" stroke-width="10" stroke="#000" /><line x1="545" y1="511" x2="624" y2="511" /><g fill="#e0e0e0" stroke="none"><polygon points="544.35 605.29 535.94 605 527.53 605.29 527.53 572.71 535.94 568 544.35 572.71 544.35 605.29" />',
                        '<polygon points="609.6 600.29 601.19 605 592.78 600.29 592.78 572.71 601.19 568 609.6 572.71 609.6 600.29" /><polygon points="586 574 578 574 571 589 577 589 572 605 589 583 582 583 586 574" /><polygon points="558.47 592.89 558.47 580.11 567.22 580.11 567.22 572.71 558.81 568 550.4 572.71 550.4 600.29 558.81 605 567.22 600.29 567.22 592.89 558.47 592.89" />',
                        '<polygon points="624.4 592.89 624.4 580.11 632.47 580.11 632.47 572.71 624.06 568 615.65 572.71 615.65 600.29 624.06 605 632.47 600.29 632.47 592.89 624.4 592.89" /></g></g>'
                    )
                );
        }
        return "";
    }
}
