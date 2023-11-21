import SwiftUI

struct TimerCircle: View {
    @State private var timeRemainingNumber = 30
    @State private var timeRemaining = ""
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        ZStack {
            Circle()
                .fill(
                    EllipticalGradient(
                        stops: [
                            Gradient.Stop(color: .black, location: 0.70),
                            Gradient.Stop(color: Color(red: 0, green: 1, blue: 0), location: 1.00),
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
        if timeRemainingNumber > 0 {
            timeRemainingNumber -= 1
            let minutes = timeRemainingNumber / 60
            let seconds = timeRemainingNumber % 60
            timeRemaining = String(format: "%02d:%02d", minutes, seconds)
        }
    }
}

#Preview{
    TimerView()
}
