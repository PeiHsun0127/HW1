//
//  ContentView.swift
//  HW1
//
//  Created by PeiHsun on 2020/3/18.
//  Copyright © 2020 ntoucs. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("背景")
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0,maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
            Group { //塗色
                Path{(path) in  //腳
                    path.move(to: CGPoint(x:116,y:560))
                    path.addQuadCurve(to: CGPoint(x:132,y:610), control: CGPoint(x:127,y:600))
                    path.addQuadCurve(to: CGPoint(x:170,y:627), control: CGPoint(x:120,y:640))
                    path.addQuadCurve(to: CGPoint(x:212,y:624), control: CGPoint(x:200,y:640))
                    path.addQuadCurve(to: CGPoint(x:254,y:610), control: CGPoint(x:261,y:634))
                    path.addQuadCurve(to: CGPoint(x:273,y:520), control: CGPoint(x:278,y:570))
                }
                .fill(Color(red: 211/255, green: 140/255, blue: 0/255))
                Path{(path) in  //尾巴
                    path.move(to: CGPoint(x:257,y:605))
                    path.addQuadCurve(to: CGPoint(x:380,y:525), control: CGPoint(x:350,y:620))
                    path.addQuadCurve(to: CGPoint(x:340,y:370), control: CGPoint(x:400,y:430))
                    path.addQuadCurve(to: CGPoint(x:296,y:433), control: CGPoint(x:335,y:419))
                    path.addQuadCurve(to: CGPoint(x:273,y:455), control: CGPoint(x:280,y:442))
                }
                .fill(Color(red: 211/255, green: 140/255, blue: 0/255))
                ＮeckColorView()
                Path { (path) in    //頭
                    path.move(to: CGPoint(x:18,y:190))
                    path.addQuadCurve(to: CGPoint(x:105,y:353), control: CGPoint(x:12,y:300))
                    path.addQuadCurve(to: CGPoint(x:104,y:398), control: CGPoint(x:102,y:395))
                    path.addQuadCurve(to: CGPoint(x:160,y:464), control: CGPoint(x:75,y:441))
                    path.addQuadCurve(to: CGPoint(x:274,y:365), control: CGPoint(x:278,y:476))
                    path.addQuadCurve(to: CGPoint(x:403,y:235), control: CGPoint(x:375,y:324))
                    path.addQuadCurve(to: CGPoint(x:256,y:318), control: CGPoint(x:270,y:289))
                    path.addQuadCurve(to: CGPoint(x:225,y:274), control: CGPoint(x:223,y:288))
                    path.addQuadCurve(to: CGPoint(x:216,y:291), control: CGPoint(x:215,y:286))
                    path.addQuadCurve(to: CGPoint(x:180,y:268), control: CGPoint(x:185,y:265))
                    path.addQuadCurve(to: CGPoint(x:186,y:287), control: CGPoint(x:185,y:270))
                    path.addQuadCurve(to: CGPoint(x:148,y:272), control: CGPoint(x:158,y:269))
                    path.addQuadCurve(to: CGPoint(x:158,y:291), control: CGPoint(x:159,y:285))
                    path.addQuadCurve(to: CGPoint(x:126,y:291), control: CGPoint(x:129,y:288))
                    path.addQuadCurve(to: CGPoint(x:137,y:305), control: CGPoint(x:140,y:300))
                    path.addQuadCurve(to: CGPoint(x:122,y:317), control: CGPoint(x:130,y:305))
                    path.addQuadCurve(to: CGPoint(x:70,y:240), control: CGPoint(x:120,y:290))
                    path.addQuadCurve(to: CGPoint(x:18,y:190), control: CGPoint(x:25,y:204))
                    path.closeSubpath()
                }
                .fill(Color(red: 211/255, green: 140/255, blue: 0/255))
             Ear()  //右耳朵
                .fill(Color(red: 54/255, green: 32/255, blue: 11/255))
             Ear()  //左耳朵
                .fill(Color(red: 54/255, green: 32/255, blue: 11/255))
                .rotation3DEffect(.degrees(180),axis:(x:0,y:1,z:0))
                .rotationEffect(.degrees(16))
                .offset(x:-50,y:-20)
                Path{(path) in  //尾巴尖端
                    path.move(to: CGPoint(x:340,y:370))
                    path.addQuadCurve(to: CGPoint(x:296,y:435), control: CGPoint(x:335,y:419))
                    path.addLine(to: CGPoint(x:309,y:434))
                    path.addLine(to: CGPoint(x:306,y:457))
                    path.addLine(to: CGPoint(x:317,y:451))
                    path.addLine(to: CGPoint(x:317,y:475))
                    path.addLine(to: CGPoint(x:330,y:465))
                    path.addLine(to: CGPoint(x:338,y:485))
                    path.addLine(to: CGPoint(x:350,y:471))
                    path.addLine(to: CGPoint(x:362,y:483))
                    path.addLine(to: CGPoint(x:370,y:465))
                    path.addLine(to: CGPoint(x:385,y:474))
                    path.addQuadCurve(to: CGPoint(x:340,y:370), control: CGPoint(x:387,y:420))
                }
                .fill(Color(red: 255/255, green: 242/255, blue: 174/255))
                Group {
                    Ellipse() //左眼
                    .fill(Color(red: 96/255, green: 43/255, blue: 11/255))
                    .frame(width: 33, height: 58)
                    .rotationEffect(.degrees(4))
                    .offset(x:13,y:-23)
                    Ellipse() //左眼黑色
                    .fill(Color(red: 12/255, green: 19/255, blue: 27/255))
                    .frame(width: 20, height: 48)
                    .rotationEffect(.degrees(4))
                    .offset(x:13,y:-28)
                    Ellipse() //左眼白色
                    .fill(Color(red: 255/255, green: 255/255, blue: 255/255))
                    .frame(width: 13, height: 24)
                    .rotationEffect(.degrees(4))
                    .offset(x:12,y:-38)
                    Ellipse() //右眼
                    .fill(Color(red: 96/255, green: 43/255, blue: 11/255))
                    .frame(width: 25, height: 55)
                    .rotationEffect(.degrees(4))
                    .offset(x:-78,y:-29)
                    Ellipse() //右眼黑色
                    .fill(Color(red: 12/255, green: 19/255, blue: 27/255))
                    .frame(width: 15, height: 45)
                    .rotationEffect(.degrees(4))
                    .offset(x:-78,y:-34)
                    Ellipse() //右眼白色
                    .fill(Color(red: 255/255, green: 255/255, blue: 255/255))
                    .frame(width: 11, height: 24)
                    .rotationEffect(.degrees(4))
                    .offset(x:-77,y:-44)
                }
            }
            Group { //描邊
                Path { (path) in    //頭
                    path.move(to: CGPoint(x:18,y:190))
                    path.addQuadCurve(to: CGPoint(x:105,y:353), control: CGPoint(x:12,y:300))
                    path.addQuadCurve(to: CGPoint(x:104,y:398), control: CGPoint(x:102,y:395))
                    path.addQuadCurve(to: CGPoint(x:160,y:464), control: CGPoint(x:75,y:441))
                    path.addQuadCurve(to: CGPoint(x:274,y:365), control: CGPoint(x:278,y:476))
                    path.addQuadCurve(to: CGPoint(x:403,y:235), control: CGPoint(x:375,y:324))
                    path.addQuadCurve(to: CGPoint(x:256,y:318), control: CGPoint(x:270,y:289))
                    path.addQuadCurve(to: CGPoint(x:225,y:274), control: CGPoint(x:223,y:288))
                    path.addQuadCurve(to: CGPoint(x:216,y:291), control: CGPoint(x:215,y:286))
                    path.addQuadCurve(to: CGPoint(x:180,y:268), control: CGPoint(x:185,y:265))
                    path.addQuadCurve(to: CGPoint(x:186,y:287), control: CGPoint(x:185,y:270))
                    path.addQuadCurve(to: CGPoint(x:148,y:272), control: CGPoint(x:158,y:269))
                    path.addQuadCurve(to: CGPoint(x:158,y:291), control: CGPoint(x:159,y:285))
                    path.addQuadCurve(to: CGPoint(x:126,y:291), control: CGPoint(x:129,y:288))
                    path.addQuadCurve(to: CGPoint(x:137,y:305), control: CGPoint(x:140,y:300))
                    path.addQuadCurve(to: CGPoint(x:122,y:317), control: CGPoint(x:130,y:305))
                    path.addQuadCurve(to: CGPoint(x:70,y:240), control: CGPoint(x:120,y:290))
                    path.addQuadCurve(to: CGPoint(x:18,y:190), control: CGPoint(x:25,y:204))
                    path.closeSubpath()
                }
                .stroke(lineWidth:3)
                Ear() //右耳朵
                .stroke(lineWidth:3)
                Ear() //左耳朵
                .stroke(lineWidth:3)
                .rotation3DEffect(.degrees(180),axis:(x:0,y:1,z:0))
                .rotationEffect(.degrees(16))
                .offset(x:-50,y:-20)
                NeckView() //頸部
                Path{(path) in  //腳
                    path.move(to: CGPoint(x:116,y:560))
                    path.addQuadCurve(to: CGPoint(x:132,y:610), control: CGPoint(x:127,y:600))
                    path.addQuadCurve(to: CGPoint(x:170,y:627), control: CGPoint(x:120,y:640))
                    path.addQuadCurve(to: CGPoint(x:212,y:624), control: CGPoint(x:200,y:640))
                    path.addQuadCurve(to: CGPoint(x:254,y:610), control: CGPoint(x:261,y:634))
                    path.addQuadCurve(to: CGPoint(x:273,y:520), control: CGPoint(x:278,y:570))
                    path.move(to: CGPoint(x:139,y:630))
                    path.addQuadCurve(to:CGPoint(x:141,y:616), control: CGPoint(x:137,y:619))
                    path.move(to: CGPoint(x:151,y:630))
                    path.addQuadCurve(to:CGPoint(x:153,y:618), control: CGPoint(x:149,y:620))
                    path.move(to: CGPoint(x:168,y:627))
                    path.addLine(to:CGPoint(x:168,y:572))
                    path.move(to: CGPoint(x:179,y:630))
                    path.addQuadCurve(to:CGPoint(x:182,y:618), control: CGPoint(x:178,y:621))
                    path.move(to: CGPoint(x:196,y:633))
                    path.addQuadCurve(to:CGPoint(x:198,y:619), control: CGPoint(x:194,y:621))
                    path.move(to: CGPoint(x:212,y:624))
                    path.addQuadCurve(to:CGPoint(x:210,y:613), control: CGPoint(x:212,y:619))
                    path.addQuadCurve(to:CGPoint(x:225,y:565), control: CGPoint(x:213,y:600))
                    path.move(to: CGPoint(x:221,y:625))
                    path.addLine(to:CGPoint(x:221,y:613))
                    path.move(to: CGPoint(x:237,y:627))
                    path.addQuadCurve(to:CGPoint(x:235,y:613), control: CGPoint(x:234,y:620))
                }
                .stroke(lineWidth:3)
                Path{(path) in  //尾巴
                    path.move(to: CGPoint(x:257,y:605))
                    path.addQuadCurve(to: CGPoint(x:380,y:525), control: CGPoint(x:350,y:620))
                    path.addQuadCurve(to: CGPoint(x:340,y:370), control: CGPoint(x:400,y:430))
                    path.addQuadCurve(to: CGPoint(x:296,y:433), control: CGPoint(x:335,y:419))
                    path.addQuadCurve(to: CGPoint(x:273,y:455), control: CGPoint(x:280,y:442))
                }
                .stroke(lineWidth:3)
                Path{(path) in  //眉毛 鼻子 嘴巴
                    path.move(to: CGPoint(x:134,y:343))
                    path.addQuadCurve(to: CGPoint(x:144,y:360), control: CGPoint(x:145,y:350))
                    path.move(to: CGPoint(x:200,y:365))
                    path.addQuadCurve(to: CGPoint(x:214,y:350), control: CGPoint(x:205,y:353))
                    path.move(to: CGPoint(x:157,y:408))
                    path.addLine(to: CGPoint(x:164,y:408))
                    path.addQuadCurve(to: CGPoint(x:158,y:408), control: CGPoint(x:162,y:413))
                    path.move(to: CGPoint(x:137,y:420))
                    path.addQuadCurve(to: CGPoint(x:164,y:422), control: CGPoint(x:140,y:430))
                    path.addQuadCurve(to: CGPoint(x:192,y:426), control: CGPoint(x:188,y:438))
                }
                .stroke(lineWidth:3)
                Ellipse() //右眼
                .stroke(lineWidth:3)
                .frame(width: 25, height: 55)
                .rotationEffect(.degrees(4))
                .offset(x:-78,y:-29)
                Ellipse() //左眼
                .stroke(lineWidth:3)
                .frame(width: 33, height: 58)
                .rotationEffect(.degrees(4))
                .offset(x:13,y:-23)
            }
            Text("好想進化啊～～～")
                .font(.largeTitle)
            .offset(x: 20, y: -250)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Ear: Shape{
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x:25,y:213))
            path.addQuadCurve(to: CGPoint(x:110,y:342), control: CGPoint(x:50,y:320))
            path.addQuadCurve(to: CGPoint(x:105,y:330), control: CGPoint(x:102,y:325))
            path.addQuadCurve(to: CGPoint(x:116,y:336), control: CGPoint(x:114,y:340))
            path.addQuadCurve(to: CGPoint(x:110,y:318), control: CGPoint(x:113,y:319))
            path.addQuadCurve(to: CGPoint(x:119,y:324), control: CGPoint(x:121,y:324))
            path.addQuadCurve(to: CGPoint(x:85,y:271), control: CGPoint(x:110,y:295))
            path.addQuadCurve(to: CGPoint(x:26,y:213), control: CGPoint(x:24,y:215))
        }
    }
}

struct NeckView: View {
    var body: some View {
        Path { (path) in    //頸部
            path.move(to: CGPoint(x:124,y:452))
            path.addQuadCurve(to: CGPoint(x:78,y:478), control: CGPoint(x:90,y:460))
            path.addQuadCurve(to: CGPoint(x:88,y:479), control: CGPoint(x:90,y:476))
            path.addQuadCurve(to: CGPoint(x:73,y:518), control: CGPoint(x:73,y:490))
            path.addQuadCurve(to: CGPoint(x:83,y:508), control: CGPoint(x:78,y:507))
            path.addQuadCurve(to: CGPoint(x:81,y:538), control: CGPoint(x:78,y:520))
            path.addQuadCurve(to: CGPoint(x:87,y:526), control: CGPoint(x:85,y:523))
            path.addQuadCurve(to: CGPoint(x:134,y:571), control: CGPoint(x:98,y:553))
            path.addQuadCurve(to: CGPoint(x:133,y:560), control: CGPoint(x:130,y:565))
            path.addQuadCurve(to: CGPoint(x:165,y:590), control: CGPoint(x:160,y:580))
            path.addQuadCurve(to: CGPoint(x:169,y:572), control: CGPoint(x:167,y:570))
            path.addQuadCurve(to: CGPoint(x:174,y:586), control: CGPoint(x:170,y:580))
            path.addQuadCurve(to: CGPoint(x:184,y:567), control: CGPoint(x:186,y:569))
            path.addQuadCurve(to: CGPoint(x:186,y:578), control: CGPoint(x:188,y:573))
            path.addQuadCurve(to: CGPoint(x:205,y:555), control: CGPoint(x:206,y:561))
            path.addQuadCurve(to: CGPoint(x:205,y:569), control: CGPoint(x:208,y:565))
            path.addQuadCurve(to: CGPoint(x:235,y:558), control: CGPoint(x:230,y:565))
            path.addQuadCurve(to: CGPoint(x:235,y:569), control: CGPoint(x:236,y:565))
            path.addQuadCurve(to: CGPoint(x:245,y:555), control: CGPoint(x:246,y:560))
            path.addQuadCurve(to: CGPoint(x:246,y:565), control: CGPoint(x:247,y:560))
            path.addQuadCurve(to: CGPoint(x:273,y:520), control: CGPoint(x:263,y:557))
            path.addQuadCurve(to: CGPoint(x:279,y:530), control: CGPoint(x:280,y:525))
            path.addQuadCurve(to: CGPoint(x:279,y:505), control: CGPoint(x:282,y:508))
            path.addQuadCurve(to: CGPoint(x:285,y:513), control: CGPoint(x:283,y:508))
            path.addQuadCurve(to: CGPoint(x:268,y:462), control: CGPoint(x:286,y:480))
            path.addQuadCurve(to: CGPoint(x:279,y:465), control: CGPoint(x:276,y:462))
            path.addQuadCurve(to: CGPoint(x:248,y:445), control: CGPoint(x:265,y:445))
            path.move(to: CGPoint(x:134,y:571))
            path.addQuadCurve(to: CGPoint(x:115,y:534), control: CGPoint(x:110,y:555))
            path.addQuadCurve(to: CGPoint(x:102,y:549), control: CGPoint(x:100,y:544))
            path.addQuadCurve(to: CGPoint(x:136,y:455), control: CGPoint(x:85,y:495))
            path.move(to: CGPoint(x:205,y:569))
            path.addQuadCurve(to: CGPoint(x:220,y:460), control: CGPoint(x:278,y:520))
        }
        .stroke(lineWidth:3)
    }
}

struct ＮeckColorView: View {
    var body: some View {
        Path { (path) in    //頸部
            path.move(to: CGPoint(x:124,y:452))
            path.addQuadCurve(to: CGPoint(x:78,y:478), control: CGPoint(x:90,y:460))
            path.addQuadCurve(to: CGPoint(x:88,y:479), control: CGPoint(x:90,y:476))
            path.addQuadCurve(to: CGPoint(x:73,y:518), control: CGPoint(x:73,y:490))
            path.addQuadCurve(to: CGPoint(x:83,y:508), control: CGPoint(x:78,y:507))
            path.addQuadCurve(to: CGPoint(x:81,y:538), control: CGPoint(x:78,y:520))
            path.addQuadCurve(to: CGPoint(x:87,y:526), control: CGPoint(x:85,y:523))
            path.addQuadCurve(to: CGPoint(x:134,y:571), control: CGPoint(x:98,y:553))
            path.addQuadCurve(to: CGPoint(x:133,y:560), control: CGPoint(x:130,y:565))
            path.addQuadCurve(to: CGPoint(x:165,y:590), control: CGPoint(x:160,y:580))
            path.addQuadCurve(to: CGPoint(x:169,y:572), control: CGPoint(x:167,y:570))
            path.addQuadCurve(to: CGPoint(x:174,y:586), control: CGPoint(x:170,y:580))
            path.addQuadCurve(to: CGPoint(x:184,y:567), control: CGPoint(x:186,y:569))
            path.addQuadCurve(to: CGPoint(x:186,y:578), control: CGPoint(x:188,y:573))
            path.addQuadCurve(to: CGPoint(x:205,y:555), control: CGPoint(x:206,y:561))
            path.addQuadCurve(to: CGPoint(x:205,y:569), control: CGPoint(x:208,y:565))
            path.addQuadCurve(to: CGPoint(x:235,y:558), control: CGPoint(x:230,y:565))
            path.addQuadCurve(to: CGPoint(x:235,y:569), control: CGPoint(x:236,y:565))
            path.addQuadCurve(to: CGPoint(x:245,y:555), control: CGPoint(x:246,y:560))
            path.addQuadCurve(to: CGPoint(x:246,y:565), control: CGPoint(x:247,y:560))
            path.addQuadCurve(to: CGPoint(x:273,y:520), control: CGPoint(x:263,y:557))
            path.addQuadCurve(to: CGPoint(x:279,y:530), control: CGPoint(x:280,y:525))
            path.addQuadCurve(to: CGPoint(x:279,y:505), control: CGPoint(x:282,y:508))
            path.addQuadCurve(to: CGPoint(x:285,y:513), control: CGPoint(x:283,y:508))
            path.addQuadCurve(to: CGPoint(x:268,y:462), control: CGPoint(x:286,y:480))
            path.addQuadCurve(to: CGPoint(x:279,y:465), control: CGPoint(x:276,y:462))
            path.addQuadCurve(to: CGPoint(x:250,y:445), control: CGPoint(x:265,y:445))
        }
        .fill(Color(red: 255/255, green: 242/255, blue: 174/255))
    }
}
