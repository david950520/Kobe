import SwiftUI

struct ContentView: View {
    
    @State private var ballUp = false
    
    private let lakersPurple = Color("LakersPurple")
    private let lakersGold = Color("LakersGold")
    
    var body: some View {
        
        ZStack {
            
            // 背景
            Color.purple
                .ignoresSafeArea()
            
            
            ZStack {
                
                // 地面陰影
                Ellipse()
                    .fill(Color.black.opacity(0.2))
                    .frame(width: 220, height: 35)
                    .offset(y: 280)
                
                
                // 左腳
                Capsule()
                    .fill(Color.brown)
                    .frame(width: 45, height: 130)
                    .offset(x: -45, y: 210)
                
                
                // 右腳
                Capsule()
                    .fill(Color.brown)
                    .frame(width: 45, height: 130)
                    .offset(x: 45, y: 210)
                
                
                // 左腳白襪
                RoundedRectangle(cornerRadius: 6)
                    .fill(Color.white)
                    .frame(width: 47, height: 32)
                    .offset(x: -45, y: 242)
                
                
                // 右腳白襪
                RoundedRectangle(cornerRadius: 6)
                    .fill(Color.white)
                    .frame(width: 47, height: 32)
                    .offset(x: 45, y: 242)
                
                
                // 左鞋（白、黃、紫三層疊加）
                ZStack {
                    // 白色大底
                    RoundedRectangle(cornerRadius: 6)
                        .fill(Color.white)
                        .frame(width: 64, height: 14)
                        .offset(y: 8)
                    
                    // 黃色鞋身（Assets LakersGold）
                    RoundedRectangle(cornerRadius: 8)
                        .fill(lakersGold)
                        .frame(width: 56, height: 16)
                        .offset(y: -1)
                    
                    // 紫色鞋面（Assets LakersPurple）
                    RoundedRectangle(cornerRadius: 6)
                        .fill(lakersPurple)
                        .frame(width: 32, height: 12)
                        .offset(x: -8, y: -9)
                }
                .offset(x: -48, y: 270)
                
                
                // 右鞋（白、黃、紫三層疊加）
                ZStack {
                    // 白色大底
                    RoundedRectangle(cornerRadius: 6)
                        .fill(Color.white)
                        .frame(width: 64, height: 14)
                        .offset(y: 8)
                    
                    // 黃色鞋身（Assets LakersGold）
                    RoundedRectangle(cornerRadius: 8)
                        .fill(lakersGold)
                        .frame(width: 56, height: 16)
                        .offset(y: -1)
                    
                    // 紫色鞋面（Assets LakersPurple）
                    RoundedRectangle(cornerRadius: 6)
                        .fill(lakersPurple)
                        .frame(width: 32, height: 12)
                        .offset(x: 8, y: -9)
                }
                .offset(x: 48, y: 270)
                
                
                // 左手
                Capsule()
                    .fill(Color.brown)
                    .frame(width: 45, height: 160)
                    .rotationEffect(.degrees(20))
                    .offset(x: -110, y: 65)
                
                
                // 右手
                Capsule()
                    .fill(Color.brown)
                    .frame(width: 45, height: 160)
                    .rotationEffect(.degrees(-20))
                    .offset(x: 110, y: 65)
                
                
                // 棕色身體底層（從無袖開口透出自然的肩膀與手臂）
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.brown)
                    .frame(width: 145, height: 180)
                    .offset(y: 65)
                
                
                // MARK: - 紫金連身球衣（衣服與褲子連在一起，配色不斷）
                ZStack {
                    // 1. 底是紫色（Assets LakersPurple，無袖袖孔挖半圓、下擺開衩、全套連通）
                    BasketballUniformShape()
                        .fill(lakersPurple)
                        .frame(width: 175, height: 210)
                    
                    // 2. 上面疊黃金（Assets LakersGold，衣褲一體連貫，兩側露出紫色滾邊）
                    BasketballUniformShape()
                        .fill(lakersGold)
                        .frame(width: 157, height: 196)
                    
                    // 3. 衣服與褲子中間的紫色分界線
                    Capsule()
                        .fill(lakersPurple)
                        .frame(width: 157, height: 5)
                        .offset(y: 15)
                    
                    // 4. 24號
                    Text("24")
                        .font(.system(size: 52))
                        .fontWeight(.bold)
                        .foregroundColor(lakersPurple)
                        .offset(y: -32)
                }
                .offset(y: 75)
                
                
                // 頭
                Circle()
                    .fill(Color.brown)
                    .frame(width: 180, height: 180)
                    .offset(y: -115)
                
                
                // 左耳
                Circle()
                    .fill(Color.brown)
                    .frame(width: 45, height: 45)
                    .offset(x: -90, y: -110)
                
                
                // 右耳
                Circle()
                    .fill(Color.brown)
                    .frame(width: 45, height: 45)
                    .offset(x: 90, y: -110)
                
                
                // 左眼
                Circle()
                    .fill(Color.black)
                    .frame(width: 20, height: 28)
                    .offset(x: -35, y: -120)
                
                
                // 右眼
                Circle()
                    .fill(Color.black)
                    .frame(width: 20, height: 28)
                    .offset(x: 35, y: -120)
                
                
                // 嘴巴
                Capsule()
                    .fill(Color.black)
                    .frame(width: 45, height: 6)
                    .offset(y: -80)
                
                
                // 籃球
                ZStack {
                    
                    Circle()
                        .fill(Color.orange)
                        .frame(width: 80, height: 80)
                    
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: 70, height: 3)
                    
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: 3, height: 70)
                }
                .offset(
                    x: -125,
                    y: ballUp ? 130 : 190
                )
            }
        }
        
        // 籃球上下動畫
        .onAppear {
            withAnimation(
                .easeInOut(duration: 0.6)
                .repeatForever(autoreverses: true)
            ) {
                ballUp = true
            }
        }
    }
}

//籃球球衣版型
struct BasketballUniformShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let w = rect.width
        let h = rect.height
        
        let r: CGFloat = 22 // 兩側挖半圓形袖孔半徑
        let armholeCenterY: CGFloat = h * 0.20 // 袖孔中心位置
        let slitW: CGFloat = 10 // 短褲側邊開衩寬度
        let slitH: CGFloat = 14 // 短褲側邊開衩高度
        let crotchW: CGFloat = 18 // 褲襠分岔寬度
        let crotchH: CGFloat = 24 // 褲襠分岔高度
        
        // 1. 頂部肩膀（左上角開始）
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: w, y: 0))
        path.addLine(to: CGPoint(x: w, y: armholeCenterY - r))
        
        // 2. 右側袖孔：挖半圓形
        path.addArc(
            center: CGPoint(x: w, y: armholeCenterY),
            radius: r,
            startAngle: .degrees(270),
            endAngle: .degrees(90),
            clockwise: true
        )
        
        // 3. 衣服順暢連到褲子側邊（連在一起，配色不斷）
        path.addLine(to: CGPoint(x: w, y: h - slitH))
        
        // 4. 右褲管外側開衩（倒 V 缺口）
        path.addLine(to: CGPoint(x: w - slitW, y: h))
        
        // 5. 右褲管下擺延伸到襠部
        path.addLine(to: CGPoint(x: w * 0.5 + crotchW * 0.5, y: h))
        
        // 6. 褲襠中間分岔（向上凹進形成褲管）
        path.addLine(to: CGPoint(x: w * 0.5, y: h - crotchH))
        path.addLine(to: CGPoint(x: w * 0.5 - crotchW * 0.5, y: h))
        
        // 7. 左褲管下擺延伸到左側開衩
        path.addLine(to: CGPoint(x: slitW, y: h))
        
        // 8. 左褲管外側開衩（倒 V 缺口）
        path.addLine(to: CGPoint(x: 0, y: h - slitH))
        
        // 9. 褲子側邊順暢連回衣服左側
        path.addLine(to: CGPoint(x: 0, y: armholeCenterY + r))
        
        // 10. 左側袖孔：挖半圓形
        path.addArc(
            center: CGPoint(x: 0, y: armholeCenterY),
            radius: r,
            startAngle: .degrees(90),
            endAngle: .degrees(270),
            clockwise: true
        )
        
        path.closeSubpath()
        return path
    }
}

#Preview {
    ContentView()
}
