
import SwiftUI

struct ContentView: View {


    @State private var countries = [
        "Estonia", "France", "Germany",
        "Ireland", "Italy", "Nigeria",
        "Poland", "Spain", "UK",
        "Ukraine", "US"
    ].shuffled()

    let flags: [String: String] = [
        "Estonia": "🇪🇪",
        "France": "🇫🇷",
        "Germany": "🇩🇪",
        "Ireland": "🇮🇪",
        "Italy": "🇮🇹",
        "Nigeria": "🇳🇬",
        "Poland": "🇵🇱",
        "Spain": "🇪🇸",
        "UK": "🇬🇧",
        "Ukraine": "🇺🇦",
        "US": "🇺🇸"
    ]


    @State private var correctAnswer = Int.random(in: 0...2)

    @State private var score = 0
    @State private var questionNumber = 1

    @State private var showingResult = false
    @State private var resultTitle = ""
    @State private var resultMessage = ""
    @State private var isGameOver = false

    var finalJudgment: String {
        if score >= 6 {
            return "Excellent work! 🎉"
        } else if score >= 2 {
            return "Good job! 👍"
        } else {
            return "Keep practicing! 💪"
        }
    }

    var body: some View {
        ZStack {

            RadialGradient(
                stops: [
                    .init(
                        color: Color(
                            red: 0.1,
                            green: 0.2,
                            blue: 0.45
                        ),
                        location: 0.3
                    ),
                    .init(
                        color: Color(
                            red: 0.76,
                            green: 0.15,
                            blue: 0.26
                        ),
                        location: 0.3
                    )
                ],
                center: .top,
                startRadius: 200,
                endRadius: 400
            )
            .ignoresSafeArea()

            VStack(spacing: 15) {

                Spacer()

                HStack(spacing: 10) {
                    Image(systemName: "flag.fill")

                    Text("Guess the Flag")
                }
                .font(.largeTitle.bold())
                .foregroundStyle(.white)

                Spacer()

                VStack(spacing: 15) {

                    Text("Tap the flag of")
                        .font(.headline)
                        .foregroundStyle(.secondary)

                    Text(countries[correctAnswer])
                        .font(.largeTitle.bold())

                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        } label: {
                            Text(flags[countries[number]] ?? "🏳️")
                                .font(.system(size: 75))
                                .frame(width: 200, height: 100)
                                .background(.white)
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 12)
                                )
                                .shadow(radius: 5)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(
                    RoundedRectangle(cornerRadius: 20)
                )

                Spacer()

                Text("Score: \(score)")
                    .font(.title.bold())
                    .foregroundStyle(.white)

                Text("Question \(questionNumber) of 8")
                    .font(.headline)
                    .foregroundStyle(.white)

                Spacer()
            }
            .padding()
        }
        .alert(
            isGameOver ? "Game Over!" : resultTitle,
            isPresented: $showingResult
        ) {
            if isGameOver {
                Button("Play Again", action: resetGame)
            } else {
                Button("Continue", action: askQuestion)
            }
        } message: {
            if isGameOver {
                Text("""
                \(resultTitle)
                \(resultMessage)

                Final score: \(score) / 8
                \(finalJudgment)
                """)
            } else {
                Text("""
                \(resultMessage)
                Score: \(score)
                """)
            }
        }
    }

    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            score += 1

            resultTitle = "Correct!"
            resultMessage = "Well done!"
        } else {
            score -= 1

            resultTitle = "Wrong!"
            resultMessage = "That's the flag of \(countries[number])."
        }

        isGameOver = questionNumber == 8
        showingResult = true
    }


    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        questionNumber += 1
    }

    func resetGame() {
        score = 0
        questionNumber = 1
        isGameOver = false

        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)

        resultTitle = ""
        resultMessage = ""
    }
}

#Preview {
    ContentView()
}
