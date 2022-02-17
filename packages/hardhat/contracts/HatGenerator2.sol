pragma solidity ^0.8.0;
//SPDX-License-Identifier: MIT

import "./ToColor.sol";

contract SVGHatGenerator2 {
    using ToColor for bytes3;

    constructor() {}

    function render(uint8 hat, string memory color)
        external
        pure
        returns (string memory)
    {
        if (hat == 19) {
            // bun
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '"><polyline points="479 159 504.37 177.48 479 177" fill="none" /><circle cx="540" cy="150" r="45" /><path d="M546,161a29,29,0,0,1-29,29" fill="none" />',
                        '<path d="M566,161a29,29,0,0,1-29,29" fill="none" /><circle cx="503" cy="195" r="11" fill="#fff" /><circle cx="521.75" cy="195" r="11" fill="#fff" />',
                        '<circle cx="540.5" cy="195" r="11" fill="#fff" /><circle cx="559.25" cy="195" r="11" fill="#fff" /><circle cx="578" cy="195" r="11" fill="#fff" /><path d="M542.5,205h0a228.85,228.85,0,0,0-168.78,74l25,25h.85l28.39-28.39L456.33,304H457v-.08l28.31-28.31L513.7,304h.85l28.39-28.39L571.33,304H572v-.08l28.31-28.31L628.7,304h.85l28.39-28.39L686.33,304H687v-.08l24.59-24.58A228.89,228.89,0,0,0,542.5,205Z"/>',
                        "</g>"
                    )
                );
        } else if (hat == 20) {
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
        } else if (hat == 21) {
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
        } else if (hat == 22) {
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
        } else if (hat == 23) {
            // CHICKEN
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '"><line x1="531.26" y1="210.47" x2="551.18" y2="261.67" /><polyline points="560.14 250.19 544.78 245.49 537.08 259.21" fill="none" />',
                        '<line x1="576.36" y1="205.18" x2="611.35" y2="247.54" /><polyline points="616.25 233.83 600.19 234.18 597.18 249.62" fill="none" />',
                        '<path d="M499,88.12a7,7,0,0,0-7,7,7,7,0,0,0-14,0,7,7,0,0,0-14,0V136h42V95.12A7,7,0,0,0,499,88.12Z" /><path d="M595,68a27,27,0,0,0-27,27v25H480a16,16,0,0,0-16,16h0a78.78,78.78,0,0,0,25.38,58H487.5a10.5,10.5,0,0,0,0,21h113a10.5,10.5,0,0,0,0-21h-3.88A78.78,78.78,0,0,0,622,136h0V95A27,27,0,0,0,595,68Z" />',
                        '<circle cx="585" cy="91" r="1" fill="#000" /><circle cx="603" cy="91" r="1" fill="#000" /><polygon points="621 99.12 650 116 621 124.49 621 99.12" fill="#ff2e2e" />',
                        '<path d="M477,204.5h0A10.5,10.5,0,0,1,487.5,194h23" fill="none" /><path d="M547,176H514.5A17.51,17.51,0,0,1,497,158.5h0A17.51,17.51,0,0,1,514.5,141H547" />',
                        '<rect x="445.04" y="244" width="28.93" height="15" rx="7.5" transform="translate(207 718) rotate(-90)" fill="#fff" stroke="none" />',
                        '<rect x="472.52" y="237.52" width="15.96" height="15" rx="7.5" transform="translate(234.48 725.52) rotate(-90)" fill="#fff" stroke="none" />',
                        "</g>"
                    )
                );
        } else if (hat == 24) {
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
                        "</g>"
                    )
                );
        } else if (hat == 25) {
            // BOWL HAIR
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '">',
                        '<path d="M656.06,161H455.45V121a7,7,0,0,0-14,0v30.6L424,134.1a7,7,0,0,0-9.9,9.9l17,17h-2.11C359.94,161,304,214.83,304,281.23V309h94.05l19.22-37,7.42,37h123l25.66-48,6,48h9.36l13.78-37,5.41,37H781V281.23C781,214.83,725.06,161,656.06,161Z" />',
                        "</g>"
                    )
                );
        } else if (hat == 26) {
            // BD HAT
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '"><polygon points="590.47 175 496.53 175 543.5 62.1 590.47 175" fill="#eaeaea" /><polygon points="505.53 153.37 577.76 175 590.47 175 581.08 152.42 514.25 132.41 505.53 153.37" />',
                        '<polygon points="522.97 111.45 569.88 125.5 558.67 98.57 531.69 90.49 522.97 111.45" /><circle cx="543.95" cy="51.26" r="14.45" fill="#ff3131" /><line x1="533.11" y1="40.42" x2="526.79" y2="35" />',
                        '<line x1="528.6" y1="49.45" x2="522.27" y2="48.55" /></g>'
                    )
                );
        } else if (hat == 27) {
            // UNDERWEAR
            return
                string(
                    abi.encodePacked(
                        '<g><rect x="321" y="306" width="445" height="17" rx="2.65" fill="#e2e2e2" /><path d="M737,275H661c-35.35,0-64-38.65-64-74H491c0,35.35-28.65,74-64,74H351l-23,31H760Z" fill="#f2f2f2" />',
                        '<line x1="484.88" y1="306" x2="452.87" y2="269" /><path d="M476.6,201a2.28,2.28,0,0,0-2.25,2.06c-3,26.8-25.42,54.94-52.65,54.94H353.28a2.28,2.28,0,0,0-2.28,2.28v12.44a2.28,2.28,0,0,0,2.28,2.28H427c35.35,0,64-38.65,64-74H476.6Z" fill="#e2e2e2" />',
                        '<line x1="603.13" y1="306" x2="635.13" y2="269" /><path d="M610.92,201a2.8,2.8,0,0,1,2.78,2.45c3.17,26.68,25.5,54.55,52.6,54.55h67.89a2.81,2.81,0,0,1,2.81,2.81v11.38a2.81,2.81,0,0,1-2.81,2.81H661c-35.35,0-64-38.65-64-74h13.92Z" fill="#e2e2e2" />',
                        '<path d="M473.87,287.5l19.78-17.9a25.3,25.3,0,0,0,2.16-35.32l-8.69-10.05" fill="none" /></g>'
                    )
                );
        } else if (hat == 28) {
            // CAT
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '"><path d="M538,206h9c1.77,0,3.54,0,5.31.07L557,200l-16-30s-65.93-2-80.65,49.76A224.58,224.58,0,0,1,538,206Z" /><path d="M378.5,201h19.08A13.42,13.42,0,0,1,411,214.42v30.84a224.86,224.86,0,0,1,25-14.86V211.28A35.29,35.29,0,0,0,400.72,176H378.5a12.5,12.5,0,0,0,0,25Z" />',
                        '<path d="M535,207h26a0,0,0,0,1,0,0v65a13,13,0,0,1-13,13h0a13,13,0,0,1-13-13V207A0,0,0,0,1,535,207Z" /><path d="M595,207h26a0,0,0,0,1,0,0v65a13,13,0,0,1-13,13h0a13,13,0,0,1-13-13V207A0,0,0,0,1,595,207Z" /><path d="M630,166l-5.73-32.64a4.62,4.62,0,0,0-8.73-1.17L604.38,156H571.12L560,132.22a4.62,4.62,0,0,0-8.73,1.17L545.5,166a31.87,31.87,0,0,0-8.75,22h0a32,32,0,0,0,32,32h38a32,32,0,0,0,32-32h0A31.87,31.87,0,0,0,630,166Z" />',
                        '<path d="M588,189v6a9,9,0,0,1-9,9h-3" /><path d="M588,189v6a9,9,0,0,0,9,9h3" /><circle cx="560" cy="185" r="6" fill="#000" stroke="none"/><circle cx="616" cy="185" r="6" fill="#000" stroke="none"/><polygon points="588 193 584.67 189 591.33 189 588 193" /></g>'
                    )
                );
        } else if (hat == 29) {
            // DREADLOCKS
            return
                string(
                    abi.encodePacked(
                        '<g fill="#2d1e0f"><path d="M417.92,265.92c14.26-13.87,28.71-27.59,44.08-40.25,14.8-12.19,30.53-23.19,46.48-33.84,5.22-3.48,12-7,12-14.23,0-6.76-5.32-11.75-9.42-16.57a249.63,249.63,0,0,0-22.67-23.44c-17.07-15.42-36.26-28.29-57.51-37.19-24.24-10.15-50.88-14.92-77.09-12-5.64.63-10.5,4.37-10.5,10.5,0,5.18,4.83,11.14,10.5,10.5,29.46-3.34,58.89,3.51,84.73,17.84a186.7,186.7,0,0,1,33.15,23.48q8.15,7.2,15.61,15.14c4.61,4.89,9.75,10,13.45,15.58l-1.43-5.3.18,1.41,1.43-5.29-.6,1,3.76-3.77c-9,6.85-18.89,12.69-28.12,19.28q-12.81,9.16-25.11,19c-16.74,13.5-32.37,28.28-47.76,43.27-9.71,9.44,5.15,24.28,14.84,14.84Z" /><path d="M462.82,272.84Q478.47,246.29,496,221q9.06-13,18.64-25.7,4.26-5.64,8.64-11.18c3.38-4.28,7.33-8.43,7.49-14.23.15-5.45-2.8-10.24-5.28-14.88q-3.84-7.19-7.95-14.21-7.56-12.89-16-25.19c-11-15.94-22.78-32.3-37.58-44.95-17.79-15.2-39.34-24-62.92-20.72-5.62.79-8.69,8-7.33,12.92,1.66,6,7.28,8.13,12.92,7.33C422,68,437.76,75.76,449.11,85.46c12.83,11,23.13,24.71,32.75,38.46q7.78,11.13,14.81,22.76,3.27,5.41,6.38,10.94c.82,1.46,5.92,12.79,6.87,12.75-1.51.06,2.38-6-2-.41-1.35,1.71-2.69,3.42-4,5.15q-4.53,5.85-9,11.78-8.4,11.19-16.42,22.69-17.9,25.66-33.75,52.66c-6.87,11.68,11.27,22.26,18.13,10.6Z" />',
                        '<path d="M454.44,60.34c.88.45,1.61,1.21,2.48,1.64-2.69-1.34-1-.81,0,.09.85.74,1.71,1.47,2.56,2.22,3.68,3.29,7.21,6.75,10.67,10.27A366.83,366.83,0,0,1,497,104.93c3.14,4,8,10.64,11.36,16,1.55,2.42,3,4.88,4.41,7.4.68,1.24,1.35,2.49,2,3.76.34.68,2,4.57,1.12,2.3a44.57,44.57,0,0,1,2.15,6.66c.1.45.16.93.29,1.37.59,2.19-.07-1.9-.08-.49,0,1.65,0,3.26-.09,4.93-.73,11.25-3.64,22.27-6.12,33.23l-18.42,81.46c-3,13.16,17.26,18.78,20.25,5.58L531,191.47c2.86-12.65,6-25.27,7.57-38.16.86-7.09,1.12-13.85-1-20.73-4-12.77-11.85-24.31-19.79-34.92a373.68,373.68,0,0,0-29.27-34.43c-4.39-4.58-8.88-9.08-13.6-13.33-3-2.71-6.19-5.84-9.82-7.69C460,39.64,453.65,40.88,450.67,46c-2.74,4.69-1.3,11.79,3.77,14.37Z" /><path d="M562.72,255.93c-4-20.05-7.94-40.24-15.21-59.4-3.73-9.84-8-19.73-14.2-28.25-5.78-7.89-13-14.37-20.29-20.78-28.55-25-59.82-47.22-93.77-64.3a365.78,365.78,0,0,0-59.89-23.92c-13-3.87-18.52,16.39-5.58,20.25C387.67,89.64,419.5,105.3,449,124.74a442,442,0,0,1,42.08,31.51c7,5.94,14.21,11.93,20.55,18.63,6.19,6.54,10.45,14.58,13.91,22.85,8.5,20.34,12.68,42.26,16.93,63.78,1.1,5.57,7.73,8.76,12.91,7.34,5.81-1.6,8.44-7.34,7.34-12.92Z" /><path d="M684.7,247.39a583.27,583.27,0,0,0-64.37-51.45q-16.79-11.58-34.4-21.9-8.4-4.93-17-9.56c-5.89-3.19-12.85-5.73-18.19-9.75l3.76,3.77c.85,1.2-.36,5.32.54,1.46a43.51,43.51,0,0,0,.64-4.7c.3-2.51.46-5,.53-7.56.13-5.29-.18-10.57-.17-15.86,0-10.46,3.05-20.42,4.38-30.76,2.64-20.69,1.16-41.54-1.14-62.18-.63-5.64-4.38-10.5-10.5-10.5-5.19,0-11.14,4.83-10.5,10.5,2.19,19.66,3.79,39.65,1.48,59.38-1.18,10-4.29,19.67-4.66,29.83-.34,9.41.75,18.83-.65,28.19-.83,5.52-.67,10.69,3.56,14.92,3.35,3.35,8.35,5.09,12.49,7.24q12.19,6.33,24.06,13.27a557.74,557.74,0,0,1,46.74,30.53,544.59,544.59,0,0,1,48.54,40c9.92,9.15,24.81-5.66,14.85-14.85Z" />',
                        '<path d="M609.77,255.37c-9.84-35-36.72-60.81-65.32-83.29-7.68-6-15.67-11.75-24.58-15.82-9.95-4.56-20.43-7.86-30.76-11.43-20.76-7.17-41.48-14.44-62.28-21.48-23.32-7.9-47.18-14.67-72-15.16-13.52-.27-13.52,20.73,0,21,20,.4,39.33,5.55,58.26,11.71,19.83,6.44,39.47,13.5,59.18,20.3,18.32,6.33,37.1,11.43,53.12,22.7,13,9.13,28.69,20.73,38,33.57,10.9,15,21.07,25.63,26.09,43.48,3.65,13,23.92,7.47,20.25-5.58Z" /><path d="M519.69,35.29a11.19,11.19,0,0,0-10-8.5,9.59,9.59,0,0,0-9.77,6.3c-1.22,3-.91,5.52-.27,8.65.94,4.67,2.39,9.27,3.68,13.85,4.71,16.65,9.69,33.23,14.66,49.8,4.39,14.64,8.84,29.27,13.19,43.93.49,1.65.94,3.33,1.46,5a8.54,8.54,0,0,0,.35,1.25c.11.2.74,3.15-.12-1.1-.62-3.06-.23-.1-.25.84,0,1.24,0,2.49,0,3.73.24,8.08,2.26,16.19,8.25,22,5.7,5.54,13.69,9.05,20.33,13.35,30.2,19.58,57.47,44.26,78.73,73.39,3.34,4.58,9.12,6.84,14.37,3.77,4.51-2.64,7.13-9.76,3.76-14.37h0a320.26,320.26,0,0,0-64.92-65.89q-9-6.9-18.53-13.18-4.56-3-9.22-5.9c-3-1.87-6.85-3.46-9.51-5.83-4.37-3.87-1.59-12.44-3-17.76-7.3-27.43-16.41-54.46-24.4-81.7-2.16-7.36-4.31-14.72-6.34-22.12Z" /><rect x="464.96" y="149.02" width="107.58" height="14" rx="7" transform="translate(-22.85 145.33) rotate(-15.61)" fill="#206b19" />',
                        '<rect x="468.73" y="162.5" width="107.58" height="14" rx="7" transform="translate(-26.34 146.84) rotate(-15.61)" fill="#991717" /></g>'
                    )
                );
        } else if (hat == 30) {
            // CACTUS
            return
                string(
                    abi.encodePacked(
                        '<g fill="#345b37" transform="translate(0 -40)"><polygon points="509.39 214.5 575.39 214.5 585.39 148.5 499.39 148.5 509.39 214.5" fill="#c66d52" /><polygon points="498.77 171 494.83 145 589.95 145 586.01 171 498.77 171" fill="#c66d52" /><path d="M488.89,96V79a9,9,0,0,1,9-9h0a9,9,0,0,1,9,9V93.2a5.8,5.8,0,0,0,5.8,5.8h13.2V40a15,15,0,0,1,15-15h0a15,15,0,0,1,15,15V77h15.6a3.4,3.4,0,0,0,3.4-3.4V60a10,10,0,0,1,10-10h0a10,10,0,0,1,10,10V77h0a21,21,0,0,1-21,21h-18v47h-30V120H512.94A24.05,24.05,0,0,1,488.89,96Z" /><line x1="532.89" y1="38" x2="520.89" y2="29" />',
                        '<line x1="531.89" y1="55" x2="517.89" y2="53" /><line x1="556.89" y1="118" x2="566.89" y2="119" /><line x1="594.89" y1="65.64" x2="600.89" y2="65.64" /><line x1="490.3" y1="74.19" x2="482" y2="65.89" /><line x1="542.89" y1="38" x2="542.89" y2="130" fill="none" stroke="#457f45" /><path d="M542.89,87H573a11.9,11.9,0,0,0,11.9-11.91V60" fill="none" stroke="#457f45" /></g>'
                    )
                );
        } else if (hat == 31) {
            // BERET
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '"><rect x="546" y="45.47" width="14.85" height="45.84" rx="7.42" transform="translate(49.84 -171.11) rotate(18.39)" />',
                        '<path d="M447.75,142l-6.13-16.33a56.53,56.53,0,0,1,2.86-46.07h0a32.46,32.46,0,0,1,32.27-17.2l140,15.24a28.28,28.28,0,0,1,22.35,40.53L635.75,125l-20,30-168-11" /><rect x="438.75" y="142" width="199" height="18" rx="8.96" stroke-width="10" />',
                        "</g>"
                    )
                );
        } else if (hat == 32) {
            // FRIES
            return
                string(
                    abi.encodePacked(
                        '<g fill="#ffd62c" transform="translate(0 -10)"><rect x="491.67" y="31" width="17" height="100" transform="translate(-5.89 55.84) rotate(-6.35)" /><rect x="512.67" y="31" width="17" height="100" />',
                        '<rect x="518.67" y="51" width="17" height="100" transform="translate(1.99 211.88) rotate(-22.77)" /><rect x="570.67" y="31" width="17" height="100" transform="translate(18.95 -86.78) rotate(8.71)" />',
                        '<rect x="544.67" y="31" width="17" height="100" transform="translate(18.65 -82.84) rotate(8.71)" /><rect x="547.67" y="51" width="17" height="100" /><rect x="530.67" y="21" width="17" height="100" /><path d="M598.67,77q-7.41-1.16-14.84-2a48,48,0,0,1-86.33,0q-7.44.85-14.83,2h0l10,106,6,6s6-9,42-9,42,9,42,9l6-6,10-106Z" fill="#ff3636" />',
                        '<rect x="527.17" y="135" width="27" height="10" stroke="#fff" fill="#fff" /></g>'
                    )
                );
        }
        return "";
    }
}
