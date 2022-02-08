pragma solidity ^0.8.0;
//SPDX-License-Identifier: MIT

import "./ToColor.sol";

contract SVGMaskGenerator {
    using ToColor for bytes3;

    constructor() {}

    function render(uint8 mask, string memory color)
        external
        pure
        returns (string memory)
    {
        if (mask == 0) {
            // munchies
            return
                string(
                    abi.encodePacked(
                        '<g><path d="M481,446a26,26,0,0,1-52,0Z" fill="#e58080" /><path d="M741,446a26,26,0,0,1-52,0Z" fill="#e58080" /><path d="M645.39,531a10.39,10.39,0,0,1,0-20.78,11.85,11.85,0,0,0,11.83-11.83,10.39,10.39,0,0,1,20.78,0A32.65,32.65,0,0,1,645.39,531Z" fill="#ffa329" />',
                        '<path d="M594,541H581.5A29.5,29.5,0,0,1,552,511.5h0A29.5,29.5,0,0,1,581.5,482H594" fill="none" /><path d="M557.5,496c-.37,0-.75,0-1.12,0a29.5,29.5,0,0,0,25.12,45h2.84a30.51,30.51,0,0,0-26.84-45Z" fill="#a82e2e" />',
                        '<polygon points="964 449 937 452 831 452 806 449 806 570 831 567 937 567 964 570 964 449" fill="#ffa329" /><polygon points="937 567 827.79 567 876.91 452 937 452 964 449 964 570 937 567" fill="#ff5e33" />',
                        '<path d="M899.71,526.3A6,6,0,0,0,889,531.61a6.78,6.78,0,0,1-3,9.09,6,6,0,1,0,5.3,10.68A18.73,18.73,0,0,0,899.71,526.3Z" fill="#ffa329" stroke="none" /><path d="M909.62,530.3a6,6,0,0,1,10.68,5.31,6.78,6.78,0,0,0,3.05,9.09,6,6,0,1,1-5.3,10.68A18.73,18.73,0,0,1,909.62,530.3Z" fill="#ffa329" stroke="none" />',
                        '<path d="M912.94,500.86a6,6,0,1,0,1.18,11.86,6.79,6.79,0,0,1,7.42,6.08,6,6,0,0,0,11.86-1.18A18.72,18.72,0,0,0,912.94,500.86Z" fill="#ffa329" stroke="none" /><path d="M935.11,541.53a6,6,0,0,1,.17-11.93,6.79,6.79,0,0,0,6.88-6.69,6,6,0,0,1,11.92.17A18.74,18.74,0,0,1,935.11,541.53Z" fill="#ffa329" stroke="none" />',
                        '<path d="M874.94,493.86a6,6,0,1,0,1.18,11.86,6.79,6.79,0,0,1,7.42,6.08,6,6,0,0,0,11.86-1.18A18.72,18.72,0,0,0,874.94,493.86Z" fill="#ffa329" stroke="none" />',
                        '<path d="M894.75,484.44A6,6,0,0,0,906,488.38a6.78,6.78,0,0,1,8.64-4.16A6,6,0,0,0,918.59,473,18.74,18.74,0,0,0,894.75,484.44Z" fill="#ffa329" stroke="none" />',
                        '<rect x="838" y="467" width="23" height="85" rx="11.5" fill="#ffd62c" /></g>'
                    )
                );
        } else if (mask == 1) {
            // sassy
            return
                string(
                    abi.encodePacked(
                        '<g><path d="M330,504a69,69,0,1,0,69,69A69,69,0,0,0,330,504Zm0,118a49,49,0,1,1,49-49A49,49,0,0,1,330,622Z" fill="#ffe02c" />',
                        '<path d="M772,505.06v20.43a49,49,0,0,1,0,95v20.43a69,69,0,0,0,0-135.88Z" fill="#ffe02c" />',
                        '<path d="M458,405a29,29,0,0,1-29,29" fill="none" /><path d="M478,405a29,29,0,0,1-29,29" fill="none" /><path d="M498,405a29,29,0,0,1-29,29" fill="none" />',
                        '<path d="M429,446a26,26,0,1,0,49.06-12H431.94A25.78,25.78,0,0,0,429,446Z" fill="#fff" />',
                        '<path d="M718,405a29,29,0,0,1-29,29" fill="none" /><path d="M738,405a29,29,0,0,1-29,29" fill="none" /><path d="M758,405a29,29,0,0,1-29,29" fill="none" />',
                        '<path d="M689,446a26,26,0,1,0,49.06-12H691.94A25.78,25.78,0,0,0,689,446Z" fill="#fff" />',
                        '<circle cx="585" cy="511" r="9" /><circle cx="616" cy="511" r="54" fill="#ffa6f5" opacity="0.5" /><circle cx="616" cy="511" r="54" fill="none" />',
                        '<path d="M616,473a38,38,0,0,1,38,38" fill="none" stroke="#fff" /></g>'
                    )
                );
        } else if (mask == 2) {
            // gas mask
            return
                string(
                    abi.encodePacked(
                        '<g><rect x="304" y="467" width="91" height="22" /><rect x="304" y="400" width="91" height="22" />',
                        '<path d="M741.66,363H415.34C389.75,363,369,382.9,369,407.45v83.1C369,515.1,389.75,535,415.34,535H531.46A16.53,16.53,0,0,1,548,551.54V589h73V551.54A16.53,16.53,0,0,1,637.54,535H741.66c25.59,0,46.34-19.9,46.34-44.45v-83.1C788,382.9,767.25,363,741.66,363Z" fill="#444" />',
                        '<rect x="555" y="542" width="59" height="29" fill="#444" /><circle cx="455" cy="446" r="58" fill="#939393" /><circle cx="455" cy="446" r="35.07" fill="#a6ff27" />',
                        '<circle cx="715" cy="446" r="58" fill="#939393" /><circle cx="715" cy="446" r="35.07" fill="#a6ff27" /><rect x="555" y="571" width="59" height="18" /><rect x="522" y="641" width="125" height="18" fill="#939393" />',
                        '<path d="M522,582H647a0,0,0,0,1,0,0v38.57A20.43,20.43,0,0,1,626.57,641H542.43A20.43,20.43,0,0,1,522,620.57V582A0,0,0,0,1,522,582Z" transform="translate(1169 1223) rotate(180)" fill="#2a492a" />',
                        '<line x1="584" y1="659" x2="584" y2="653" /><line x1="604" y1="659" x2="604" y2="653" /><line x1="624" y1="659" x2="624" y2="653" /><line x1="564" y1="659" x2="564" y2="653" />',
                        '<line x1="544" y1="659" x2="544" y2="653" /><rect x="576" y="570" width="17" height="125" transform="translate(1217 48) rotate(90)" />',
                        '<path d="M555,553V519a18,18,0,0,0-18-18h0" fill="none" /><path d="M614,553V519a18,18,0,0,1,18-18h0" fill="none" /><line x1="546" y1="408" x2="624" y2="408" />',
                        '<line x1="546" y1="428" x2="624" y2="428" /><line x1="546" y1="448" x2="624" y2="448" /><line x1="546" y1="468" x2="624" y2="468" /></g>'
                    )
                );
        } else if (mask == 3) {
            // googles
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '"><rect x="533.5" y="466.5" width="101" height="46" fill="#000" />',
                        '<rect x="739.5" y="196.5" width="38" height="196" fill="#fff" /><rect x="299.5" y="422.5" width="71" height="44" /><rect x="739.5" y="216.5" width="38" height="17" />',
                        '<path d="M584,433a53,53,0,0,1,37.57,15.53l31.11,31.12a51.81,51.81,0,0,0,36.88,15.27H714a46.93,46.93,0,1,0,0-93.86H453a46.93,46.93,0,1,0,0,93.86h25.46a51.81,51.81,0,0,0,36.88-15.27l31.11-31.12A53,53,0,0,1,584,433Z" fill="#fff" fill-opacity="0.5" />',
                        '<polygon points="446.5 395.5 540 489 601.55 462.44 654 515 727.5 515.5 581.5 369.5 446.5 395.5" fill="#ffffff" stroke="none" />',
                        '<path d="M714,360H453a88,88,0,0,0,0,176h25.46a92.65,92.65,0,0,0,65.92-27.3l31.11-31.12a12.07,12.07,0,0,1,17.06,0l31.11,31.12A92.65,92.65,0,0,0,689.55,536H714a88,88,0,0,0,0-176Zm0,134.93H689.55a51.81,51.81,0,0,1-36.88-15.27l-31.11-31.12a53.21,53.21,0,0,0-75.14,0l-31.11,31.12a51.81,51.81,0,0,1-36.88,15.27H453a46.93,46.93,0,1,1,0-93.86H714a46.93,46.93,0,1,1,0,93.86Z" />',
                        '<circle cx="734" cy="146" r="13.5" fill="#fff" fill-opacity="0.5" /><circle cx="781.5" cy="120.5" r="21" fill="#fff" fill-opacity="0.5" />',
                        '<line x1="327.5" y1="448.5" x2="327.5" y2="466.5" /><line x1="340.5" y1="448.5" x2="340.5" y2="466.5" /></g>'
                    )
                );
        } else if (mask == 4) {
            // Lazer eye
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '">',
                        '<path d="M634.86,448.5h0a132.18,132.18,0,0,0,70.5-83.09l9.14-31.91,9.14,31.91a132.18,132.18,0,0,0,70.5,83.09h0a132.18,132.18,0,0,0-70.5,83.09L714.5,563.5l-9.14-31.91a132.18,132.18,0,0,0-70.5-83.09Z" fill="#fff" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="11.79" />',
                        '<circle cx="714.88" cy="448.25" r="26" /><line x1="545" y1="513" x2="624" y2="513" />',
                        '<circle cx="454.87" cy="448.25" r="26" fill="#fff" />',
                        '<rect x="713" y="441" width="367" height="16" stroke="none" /></g>'
                    )
                );
        } else if (mask == 5) {
            // hockey mask
            return
                string(
                    abi.encodePacked(
                        '<g><path d="M297,427h77a0,0,0,0,1,0,0v36a0,0,0,0,1,0,0H297a18,18,0,0,1-18-18v0A18,18,0,0,1,297,427Z" />',
                        '<line x1="548.38" y1="509" x2="627.38" y2="509" /><rect x="354" y="310" width="462" height="288" rx="144" fill="#fff" />',
                        '<circle cx="454.88" cy="445.25" r="26" /><circle cx="714.88" cy="445.25" r="26" /><circle cx="588" cy="530" r="5" /><circle cx="528" cy="530" r="5" />',
                        '<circle cx="558" cy="490" r="5" /><circle cx="618" cy="490" r="5" /><circle cx="648" cy="530" r="5" /><path d="M541.68,380h91.64a0,0,0,0,1,0,0v0a42,42,0,0,1-42,42h-7.64a42,42,0,0,1-42-42v0a0,0,0,0,1,0,0Z" fill="#ff4848" stroke="none" />',
                        '<circle cx="762" cy="519" r="13" fill="#ff4848" stroke="none" /><path d="M711,535h0a20,20,0,0,0-20,20v41.75a142.67,142.67,0,0,0,40-11.36V555A20,20,0,0,0,711,535Z" fill="#ff4848" stroke="none" />',
                        '<path d="M749.5,538A12.5,12.5,0,0,0,737,550.5v32a143.21,143.21,0,0,0,25-16.12V550.5A12.5,12.5,0,0,0,749.5,538Z" fill="#ff4848" stroke="none" />',
                        '<rect x="354" y="310" width="462" height="288" rx="144" fill="none" />',
                        '<circle cx="439" cy="548" r="16" fill="#ff4848" stroke="none" />',
                        '<line x1="498" y1="310" x2="498" y2="344" /><line x1="478" y1="313" x2="478" y2="367" /></g>'
                    )
                );
        } else if (mask == 6) {
            // ray googles
            return
                string(
                    abi.encodePacked(
                        '<g fill="#',
                        color,
                        '">',
                        '<line x1="545.38" y1="511" x2="624.38" y2="511" /><rect x="377" y="403" width="416" height="86" rx="43" fill="#fff" />',
                        '<path d="M753.26,434H419.84a12,12,0,1,0,0,24H753.26a12,12,0,0,0,0-24Z" stroke="none" /></g>'
                    )
                );
        } else if (mask == 7) {
            // purge
            return
                string(
                    abi.encodePacked(
                        '<g fill="#000000"><path d="M686.51,635.66l-46.37,17.18a164.58,164.58,0,0,1-114.28,0l-46.37-17.18A131,131,0,0,1,394,512.84V413.66A19.66,19.66,0,0,1,413.66,394H752.34A19.66,19.66,0,0,1,772,413.66v99.18A131,131,0,0,1,686.51,635.66Z" />',
                        '<rect x="305" y="475" width="89" height="36" /><g stroke="#ffffff"><rect width="1080" height="1080" opacity="0" /><path d="M431,549s154,32,311,0" fill="none" /><path d="M431,568s159,87,311,0" fill="none" /><line x1="475" y1="540" x2="465" y2="594" />',
                        '<line x1="519" y1="540" x2="525" y2="613" /><line x1="537" y1="613" x2="540" y2="540" /><line x1="586" y1="549" x2="594" y2="619" /><line x1="633" y1="543" x2="637" y2="613" /><line x1="618" y1="549" x2="658" y2="607" /><line x1="693" y1="543" x2="697" y2="600" />',
                        '<line x1="441.42" y1="508" x2="508.84" y2="428" /><line x1="450.26" y1="514" x2="521" y2="436" /><line x1="445.84" y1="430" x2="521" y2="493" /><line x1="437" y1="441" x2="515.47" y2="508" /><line x1="734" y1="505" x2="654" y2="443" />',
                        '<line x1="738" y1="494" x2="663" y2="432" /><line x1="658" y1="498" x2="726" y2="429" /><line x1="671" y1="513" x2="736" y2="440" /></g>'
                        "</g>"
                    )
                );
        } else if (mask == 8) {
            // rolex
            return
                string(
                    abi.encodePacked(
                        '<g><circle cx="451.88" cy="437.25" r="26" fill="#fff" /><circle cx="711.88" cy="437.25" r="26" fill="#fff"/>',
                        '<g transform="translate(0 -50)"><path d="M567.85,714.07h18.58a9.47,9.47,0,0,1,9.47,9.47v22a9.47,9.47,0,0,1-9.47,9.47H567.85a0,0,0,0,1,0,0V714.07A0,0,0,0,1,567.85,714.07Z" transform="translate(1316.38 152.64) rotate(90)" fill="#b7a456" /><path d="M711.56,685.83c-49.47,37.46-129.18,45.8-129.18,45.8h3.06s-79.7-8.34-129.18-45.8V539.46c49.48-37.46,129.18-45.8,129.18-45.8h-3.06s79.71,8.34,129.18,45.8Z" fill="#d1c386" />',
                        '<rect x="624.81" y="594.53" width="137.28" height="36.22" rx="9.45" transform="translate(1306.1 -80.81) rotate(90)" fill="#b7a456" /><rect x="659.87" y="594.53" width="137.28" height="36.22" rx="9.45" transform="translate(1341.15 -115.86) rotate(90)" fill="#b7a456" /><rect x="694.92" y="594.53" width="137.28" height="36.22" rx="9.45" transform="translate(1376.2 -150.91) rotate(90)" fill="#b7a456" /><rect x="722.08" y="603.37" width="137.28" height="18.55" rx="6.77" ',
                        'transform="translate(1403.37 -178.08) rotate(90)" fill="#b7a456" /><rect x="629.17" y="594.53" width="88.84" height="36.22" rx="7.6" transform="translate(1286.23 -60.94) rotate(90)" fill="#b7a456" /><rect x="295.32" y="594.53" width="137.28" height="36.22" rx="9.45" transform="translate(976.6 248.69) rotate(90)" fill="#b7a456" /><rect x="330.37" y="594.53" width="137.28" height="36.22" rx="9.45" transform="translate(1011.66 213.64) rotate(90)" fill="#b7a456" />',
                        '<rect x="365.42" y="594.53" width="137.28" height="36.22" rx="9.45" transform="translate(1046.71 178.58) rotate(90)" fill="#b7a456" /><rect x="401.64" y="594.53" width="137.28" height="36.22" rx="9.45" transform="translate(1082.93 142.36) rotate(90)" fill="#b7a456" /><rect x="443.97" y="594.53" width="88.84" height="36.22" rx="7.6" transform="translate(1101.04 124.25) rotate(90)" fill="#b7a456" /><rect x="737.25" y="594.53" width="88.84" height="36.22" rx="7.6" transform="translate(1394.31 -169.02) rotate(90)" fill="#bcad6f" />',
                        '<rect x="702.19" y="594.53" width="88.84" height="36.22" rx="7.6" transform="translate(1359.26 -133.97) rotate(90)" fill="#bcad6f" /><rect x="665.97" y="594.53" width="88.84" height="36.22" rx="7.6" transform="translate(1323.04 -97.75) rotate(90)" fill="#bcad6f" /><rect x="408.92" y="594.53" width="88.84" height="36.22" rx="7.6" transform="translate(1065.99 159.3) rotate(90)" fill="#bcad6f" /><rect x="372.7" y="594.53" width="88.84" height="36.22" rx="7.6" transform="translate(1029.77 195.53) rotate(90)" fill="#bcad6f" />',
                        '<rect x="335.89" y="594.53" width="88.84" height="36.22" rx="7.6" transform="translate(992.96 232.33) rotate(90)" fill="#bcad6f" /><rect x="259.32" y="594.53" width="137.28" height="36.22" rx="9.45" transform="translate(940.6 284.69) rotate(90)" fill="#b7a456" /><rect x="230.89" y="602.11" width="137.28" height="21.07" rx="7.21" transform="translate(912.18 313.11) rotate(90)" fill="#b7a456" /><rect x="263.09" y="594.53" width="88.84" height="36.22" rx="7.6" transform="translate(920.16 305.14) rotate(90)" fill="#bcad6f" /><circle cx="581.87" cy="612.65" r="119.18" fill="#b7a456" />',
                        '<circle cx="581.87" cy="612.65" r="94.64" fill="#136319" /><circle cx="581.87" cy="612.65" r="74.78" fill="none" stroke="#f4efd9" stroke-width="14.61" stroke-dasharray="19.58 19.58" stroke-linecap="butt" /><circle cx="581.87" cy="612.65" r="107.55" fill="none" stroke="#a08d3d" stroke-linecap="butt" stroke-width="14.61" stroke-dasharray="5.83 5.83" /><line x1="611.08" y1="568.83" x2="572.23" y2="627.54" fill="none" stroke="#b7a456" /><line x1="617.21" y1="681.29" x2="573.98" y2="598.92" fill="none" stroke="#b7a456" /><circle cx="580.99" cy="612.94" r="4.67" />',
                        '<line x1="637.37" y1="613" x2="625.1" y2="613" stroke="#b7a456" stroke-width="5" /><line x1="636.2" y1="620.59" x2="625.1" y2="617.67" stroke="#b7a456" stroke-width="5" /><line x1="636.2" y1="605.4" x2="625.1" y2="608.32" stroke="#b7a456" stroke-width="5" /><rect x="617.5" y="610.66" width="9.35" height="4.67" rx="2.34" transform="translate(1235.18 -9.18) rotate(90)" stroke-width="5" stroke="#b7a456" /><line x1="608.08" y1="598.39" x2="608.08" y2="627.6" opacity="0.4" stroke="#b7a456" /><line x1="546.56" y1="590.8" x2="546.56" y2="634.03" opacity="0.4" stroke="#b7a456" />',
                        '<line x1="533.38" y1="587.88" x2="533.38" y2="636.95" opacity="0.4" stroke="#b7a456" /><rect x="299.09" y="594.53" width="88.84" height="36.22" rx="7.6" transform="translate(956.16 269.14) rotate(90)" fill="#bcad6f" /></g></g>'
                    )
                );
        } else if (mask == 9) {
            // skull
            return
                string(
                    abi.encodePacked(
                        '<g><path d="M542.5,205.46h0C415.75,205.46,313,308.21,313,435V454.9A18.14,18.14,0,0,0,331.15,473H383v21.43a71,71,0,0,0,71,71h70v35.44c0,11.8,9.17,21.86,21,22.28a21.77,21.77,0,0,0,22.56-21.76,21.77,21.77,0,1,0,43.53,0,21.77,21.77,0,0,0,43.54,0,21.77,21.77,0,0,0,22.56,21.76c11.79-.42,21-10.48,21-22.28V565.44h49.93A23.9,23.9,0,0,0,772,541.55V435C772,308.21,669.25,205.46,542.5,205.46Z" fill="#fff7d4" /><path d="M611.11,565.44h43.53a0,0,0,0,1,0,0v36a21.77,21.77,0,0,1-21.77,21.77h0a21.77,21.77,0,0,1-21.77-21.77v-36a0,0,0,0,1,0,0Z" fill="#ccab23" />',
                        '<path d="M378.34,473h32.49a31.83,31.83,0,0,1,31.83,31.83h0" fill="none" /><line x1="567.58" y1="565.44" x2="567.58" y2="601.4" fill="none" /><line x1="611.11" y1="565.44" x2="611.11" y2="601.4" fill="none" /><line x1="654.65" y1="565.44" x2="654.65" y2="601.4" fill="none" /><path d="M601.5,450.22l-23.82,33.9a13.18,13.18,0,0,0,10.78,20.75h0a13.19,13.19,0,0,0,13.11-11.81,13.17,13.17,0,1,0,23.88-8.94l-23.81-33.9Z" fill="#2d2d2d" /><circle cx="489.03" cy="418.75" r="41.64" fill="#2d2d2d" /><circle cx="705.75" cy="418.75" r="41.64" fill="#2d2d2d" />',
                        '<polyline points="317.73 388.38 329.09 404.55 346.12 383.73 362.21 383.73 372.62 390.36 382.09 377.11 397.23 377.11" fill="none" /><polyline points="701.22 269.19 697.24 281.52 684.93 281.52 675.47 296.66 681.15 304.24 683.04 314.65 673.58 317.49" fill="none" /></g>'
                    )
                );
        }

        return "";
    }
}
