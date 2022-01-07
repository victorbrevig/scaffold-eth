pragma solidity ^0.8.0;
//SPDX-License-Identifier: MIT

import './ToColor.sol';

contract SVGMaskGenerator {

    using ToColor for bytes3;

    constructor() {}

    function render(uint8 mask, string memory color) external pure returns (string memory) {
        if(mask==0){ // munchies
            return string(abi.encodePacked(
            '<g><path d="M481,446a26,26,0,0,1-52,0Z" fill="#e58080" /><path d="M741,446a26,26,0,0,1-52,0Z" fill="#e58080" /><path d="M645.39,531a10.39,10.39,0,0,1,0-20.78,11.85,11.85,0,0,0,11.83-11.83,10.39,10.39,0,0,1,20.78,0A32.65,32.65,0,0,1,645.39,531Z" fill="#ffa329" />',
            '<path d="M594,541H581.5A29.5,29.5,0,0,1,552,511.5h0A29.5,29.5,0,0,1,581.5,482H594" fill="none" /><path d="M557.5,496c-.37,0-.75,0-1.12,0a29.5,29.5,0,0,0,25.12,45h2.84a30.51,30.51,0,0,0-26.84-45Z" fill="#a82e2e" />',
            '<polygon points="964 449 937 452 831 452 806 449 806 570 831 567 937 567 964 570 964 449" fill="#ffa329" /><polygon points="937 567 827.79 567 876.91 452 937 452 964 449 964 570 937 567" fill="#ff5e33" />',
            '<path d="M899.71,526.3A6,6,0,0,0,889,531.61a6.78,6.78,0,0,1-3,9.09,6,6,0,1,0,5.3,10.68A18.73,18.73,0,0,0,899.71,526.3Z" fill="#ffa329" stroke="none" /><path d="M909.62,530.3a6,6,0,0,1,10.68,5.31,6.78,6.78,0,0,0,3.05,9.09,6,6,0,1,1-5.3,10.68A18.73,18.73,0,0,1,909.62,530.3Z" fill="#ffa329" stroke="none" />',
            '<path d="M912.94,500.86a6,6,0,1,0,1.18,11.86,6.79,6.79,0,0,1,7.42,6.08,6,6,0,0,0,11.86-1.18A18.72,18.72,0,0,0,912.94,500.86Z" fill="#ffa329" stroke="none" /><path d="M935.11,541.53a6,6,0,0,1,.17-11.93,6.79,6.79,0,0,0,6.88-6.69,6,6,0,0,1,11.92.17A18.74,18.74,0,0,1,935.11,541.53Z" fill="#ffa329" stroke="none" />',
            '<path d="M874.94,493.86a6,6,0,1,0,1.18,11.86,6.79,6.79,0,0,1,7.42,6.08,6,6,0,0,0,11.86-1.18A18.72,18.72,0,0,0,874.94,493.86Z" fill="#ffa329" stroke="none" />',
            '<path d="M894.75,484.44A6,6,0,0,0,906,488.38a6.78,6.78,0,0,1,8.64-4.16A6,6,0,0,0,918.59,473,18.74,18.74,0,0,0,894.75,484.44Z" fill="#ffa329" stroke="none" />',
            '<rect x="838" y="467" width="23" height="85" rx="11.5" fill="#ffd62c" /></g>'
            ));
        } else if(mask==1){// sassy
            return string(abi.encodePacked(
            '<g><path d="M330,504a69,69,0,1,0,69,69A69,69,0,0,0,330,504Zm0,118a49,49,0,1,1,49-49A49,49,0,0,1,330,622Z" fill="#ffe02c" />',
            '<path d="M772,505.06v20.43a49,49,0,0,1,0,95v20.43a69,69,0,0,0,0-135.88Z" fill="#ffe02c" />',
            '<path d="M458,405a29,29,0,0,1-29,29" fill="none" /><path d="M478,405a29,29,0,0,1-29,29" fill="none" /><path d="M498,405a29,29,0,0,1-29,29" fill="none" />',
            '<path d="M429,446a26,26,0,1,0,49.06-12H431.94A25.78,25.78,0,0,0,429,446Z" fill="#fff" />',
            '<path d="M718,405a29,29,0,0,1-29,29" fill="none" /><path d="M738,405a29,29,0,0,1-29,29" fill="none" /><path d="M758,405a29,29,0,0,1-29,29" fill="none" />',
            '<path d="M689,446a26,26,0,1,0,49.06-12H691.94A25.78,25.78,0,0,0,689,446Z" fill="#fff" />',
            '<circle cx="585" cy="511" r="9" /><circle cx="616" cy="511" r="54" fill="#ffa6f5" opacity="0.5" /><circle cx="616" cy="511" r="54" fill="none" />',
            '<path d="M616,473a38,38,0,0,1,38,38" fill="none" stroke="#fff" /></g>'
            ));
        } else if(mask==2){// gas mask
            return string(abi.encodePacked(
            '<g><rect x="304" y="467" width="91" height="22" /><rect x="304" y="400" width="91" height="22" />',
            '<path d="M741.66,363H415.34C389.75,363,369,382.9,369,407.45v83.1C369,515.1,389.75,535,415.34,535H531.46A16.53,16.53,0,0,1,548,551.54V589h73V551.54A16.53,16.53,0,0,1,637.54,535H741.66c25.59,0,46.34-19.9,46.34-44.45v-83.1C788,382.9,767.25,363,741.66,363Z" fill="#444" />',
            '<rect x="555" y="542" width="59" height="29" fill="#444" /><circle cx="455" cy="446" r="58" fill="#939393" /><circle cx="455" cy="446" r="35.07" fill="#a6ff27" />',
            '<circle cx="715" cy="446" r="58" fill="#939393" /><circle cx="715" cy="446" r="35.07" fill="#a6ff27" /><rect x="555" y="571" width="59" height="18" /><rect x="522" y="641" width="125" height="18" fill="#939393" />',
            '<path d="M522,582H647a0,0,0,0,1,0,0v38.57A20.43,20.43,0,0,1,626.57,641H542.43A20.43,20.43,0,0,1,522,620.57V582A0,0,0,0,1,522,582Z" transform="translate(1169 1223) rotate(180)" fill="#2a492a" />',
            '<line x1="584" y1="659" x2="584" y2="653" /><line x1="604" y1="659" x2="604" y2="653" /><line x1="624" y1="659" x2="624" y2="653" /><line x1="564" y1="659" x2="564" y2="653" />',
            '<line x1="544" y1="659" x2="544" y2="653" /><rect x="576" y="570" width="17" height="125" transform="translate(1217 48) rotate(90)" />',
            '<path d="M555,553V519a18,18,0,0,0-18-18h0" fill="none" /><path d="M614,553V519a18,18,0,0,1,18-18h0" fill="none" /><line x1="546" y1="408" x2="624" y2="408" />',
            '<line x1="546" y1="428" x2="624" y2="428" /><line x1="546" y1="448" x2="624" y2="448" /><line x1="546" y1="468" x2="624" y2="468" /></g>'
            ));
        } else if(mask==3){ // googles
            return string(abi.encodePacked(
            '<g fill="#',color,'"><rect x="533.5" y="466.5" width="101" height="46" fill="#000" />',
            '<rect x="739.5" y="196.5" width="38" height="196" fill="#fff" /><rect x="299.5" y="422.5" width="71" height="44" /><rect x="739.5" y="216.5" width="38" height="17" />',
            '<path d="M584,433a53,53,0,0,1,37.57,15.53l31.11,31.12a51.81,51.81,0,0,0,36.88,15.27H714a46.93,46.93,0,1,0,0-93.86H453a46.93,46.93,0,1,0,0,93.86h25.46a51.81,51.81,0,0,0,36.88-15.27l31.11-31.12A53,53,0,0,1,584,433Z" fill="#fff" fill-opacity="0.5" />',
            '<polygon points="446.5 395.5 540 489 601.55 462.44 654 515 727.5 515.5 581.5 369.5 446.5 395.5" fill="#ffffff" stroke="none" />',
            '<path d="M714,360H453a88,88,0,0,0,0,176h25.46a92.65,92.65,0,0,0,65.92-27.3l31.11-31.12a12.07,12.07,0,0,1,17.06,0l31.11,31.12A92.65,92.65,0,0,0,689.55,536H714a88,88,0,0,0,0-176Zm0,134.93H689.55a51.81,51.81,0,0,1-36.88-15.27l-31.11-31.12a53.21,53.21,0,0,0-75.14,0l-31.11,31.12a51.81,51.81,0,0,1-36.88,15.27H453a46.93,46.93,0,1,1,0-93.86H714a46.93,46.93,0,1,1,0,93.86Z" />',
            '<circle cx="734" cy="146" r="13.5" fill="#fff" fill-opacity="0.5" /><circle cx="781.5" cy="120.5" r="21" fill="#fff" fill-opacity="0.5" />',
            '<line x1="327.5" y1="448.5" x2="327.5" y2="466.5" /><line x1="340.5" y1="448.5" x2="340.5" y2="466.5" /></g>'
            ));
        } else if(mask==4) { // Lazer eye
            return string(abi.encodePacked(
            '<g fill="#',color,'">',
            '<path d="M634.86,448.5h0a132.18,132.18,0,0,0,70.5-83.09l9.14-31.91,9.14,31.91a132.18,132.18,0,0,0,70.5,83.09h0a132.18,132.18,0,0,0-70.5,83.09L714.5,563.5l-9.14-31.91a132.18,132.18,0,0,0-70.5-83.09Z" fill="#fff" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="11.79" />',
            '<circle cx="714.88" cy="448.25" r="26" /><line x1="545" y1="513" x2="624" y2="513" />',
            '<circle cx="454.87" cy="448.25" r="26" fill="#fff" />',
            '<rect x="713" y="441" width="367" height="16" stroke="none" /></g>'
            ));
        } else if(mask==5){ // hockey mask
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
        } else if(mask==6) { // ray googles
            return string(abi.encodePacked(
            '<g fill="#',color,'"><line x1="545.38" y1="511" x2="624.38" y2="511" /><rect x="377" y="403" width="416" height="86" rx="43" fill="#fff" />',
            '<path d="M753.26,434H419.84a12,12,0,1,0,0,24H753.26a12,12,0,0,0,0-24Z" stroke="none" /></g>'
            ));
        }
        
        return '';
    }
}