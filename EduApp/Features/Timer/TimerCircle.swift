import SwiftUI

struct TimerCircle: View {
    @State var breakTime = false
    @State private var timeRemainingNumber = 6
    @State private var timeRemaining = ""
    @State var gradientColor : Color = .purple
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    

    var body: some View {
        ZStack {
            Circle()
                .fill(
                    EllipticalGradient(
                        stops: [
                            Gradient.Stop(color: .black, location: 0.70),
                            Gradient.Stop(color:gradientColor, location: 1.00)
                        ],
                        center: UnitPoint(x: 0.5, y: 0.5)
                    )
                )
                .frame(width: 350, height: 350)

            Circle()
                .fill(.black)
                .frame(width: 300, height: 300)

            Text("\(timeRemaining)")
                .onReceive(timer) { _ in
                    minus1second()
                }
                .foregroundStyle(.white)
                .fontWeight(.bold)
                .font(.system(size: 72))
        }
    }

    func minus1second() {
        gradientColor = breakTime
        ?Color.green
        :Color.purple
            timeRemainingNumber -= 1
            let minutes = timeRemainingNumber / 60
            let seconds = timeRemainingNumber % 60
            if(minutes == 0 && seconds == 0){
                breakTime.toggle()
                timeRemainingNumber = breakTime
                                            ?5
                                            :10
            }
            timeRemaining = String(format: "%02d:%02d", minutes, seconds)
    }
}

#Preview{
    TimerView()
}
