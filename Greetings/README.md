# this is note about GreetingApp

# SwiftUI 강의 노트

---

## 1. SwiftUI 프로젝트 생성

- Xcode에서 **Multiplatform App**을 선택해 프로젝트 생성.
- 프로젝트 이름: `Greetings`.
- **Core Data** 및 **Swift Data**는 사용하지 않음.

---

## 2. 레이아웃 구성 실습

### 구성요소

- **`ZStack`**: 배경 레이아웃을 설정.
- **`VStack`**: 텍스트와 이미지를 세로로 정렬.
- 다양한 **Modifier** 실험:
  - `padding`: 여백 설정.
  - `cornerRadius`: 둥근 모서리 설정.
  - `shadow`: 그림자 효과 추가.

---

## 3. 반복 코드 문제

- 텍스트와 스타일을 수동으로 작성하여 코드가 길고 반복됨.
- 중복된 코드는 유지보수에 어려움을 초래함.

---

## 4. 해결 방안

### 4.1 Custom View 생성

- `Textview`: 텍스트와 스타일을 캡슐화.

### 4.2 데이터 모델화

- `DataItemModel`: `text`와 `color` 정보를 관리하는 구조체로 데이터를 배열로 관리.

### 4.3 ForEach 사용

- 배열을 순회하며 동적으로 뷰를 생성.

---

## 5. 최종 코드

### ContentView.swift

```swift
import SwiftUI

struct ContentView: View {
    // DataItemModel 배열로 메시지 데이터 관리
    let message: [DataItemModel] = [
        .init(text: "hello there!", color: .green),
        .init(text: "welcome to swiftui", color: .gray),
        .init(text: "are u ready", color: .yellow),
        .init(text: "Booooom", color: .red),
        .init(text: "Just do it~", color: .purple)
    ]

    var body: some View {
        ZStack {
            // LinearGradient로 배경 색상 설정
            LinearGradient(gradient: Gradient(colors: [Color.cyan, Color.purple]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea(.all) // 화면 전체를 배경으로 사용
                .opacity(0.5)          // 투명도 적용

            VStack(alignment: .leading) {
                // 상단 이미지
                Image(systemName: "globe")
                    .imageScale(.large)    // 이미지 크기 설정
                    .foregroundStyle(.tint) // 기본 스타일

                // ForEach로 반복되는 Textview 생성
                ForEach(message, id: \.text) { item in
                    Textview(text: item.text, color: item.color)
                }
            }
            .padding() // VStack 전체 여백 설정
        }
    }
}

#Preview {
    ContentView()
}
```

### DataItemModel.swift

```swift
import SwiftUI

// 메시지와 색상을 관리하는 데이터 모델
struct DataItemModel {
    let text: String // 텍스트 내용
    let color: Color // 텍스트의 배경 색상
}
```

### Textview.swift

```swift
import SwiftUI

// 텍스트 스타일을 정의하는 커스텀 뷰
struct Textview: View {
    let text: String
    let color: Color

    var body: some View {
        Text(text)
            .font(.largeTitle) // 텍스트 크기
            .fontWeight(.bold) // 텍스트 굵기
            .foregroundColor(Color.white) // 텍스트 색상
            .multilineTextAlignment(.center) // 중앙 정렬
            .lineLimit(nil) // 줄바꿈 제한 없음
            .padding() // 내부 여백
            .background(color.opacity(0.4)) // 배경 색상 및 투명도
            .cornerRadius(10) // 둥근 모서리
            .shadow(color: color.opacity(0.5), radius: 5, x: 0, y: 3) // 그림자 효과
    }
}

#Preview {
    VStack {
        Textview(text: "hello there!", color: .green)
        Textview(text: "welcome to swiftui", color: .blue)
        Textview(text: "are u ready", color: .purple)
    }
}
```

## 6. 학습한 SwiftUI 문법

### 6.1 주요 레이아웃

    •	ZStack: 뷰를 겹쳐 쌓는 레이아웃.
    •	VStack: 뷰를 세로로 정렬.
    •	LinearGradient: 색상 그라데이션 배경.

### 6.2 주요 Modifier

    •	.font(): 텍스트 크기 설정.
    •	.foregroundColor(): 텍스트 색상 설정.
    •	.background(): 배경 색상 및 투명도 설정.
    •	.cornerRadius(): 둥근 모서리 설정.
    •	.shadow(): 그림자 효과 추가.
    •	.padding(): 여백 설정.

### 7. 학습 결과

    •	SwiftUI의 데이터 관리 및 반복된 코드를 효율적으로 작성하는 방법 학습.
    •	ForEach와 배열 데이터를 활용해 동적 뷰 생성.
    •	Custom View와 DataItemModel를 통해 가독성과 유지보수성을 향상.

### 8. Identifiable 프로토콜 적용

#### Identifiable 프로토콜

- **`Identifiable`**: 각 데이터 모델이 고유하게 식별될 수 있도록 하기 위해 사용.
- `ForEach`와 같은 반복문에서 필요.
- 데이터 모델(`DataItemModel`)에 `id` 속성을 추가해 고유성을 부여.

```swift
struct DataItemModel: Identifiable {
    let id = UUID()  // 고유 식별자
    let text: String
    let color: Color
}
```

### 9. ForEach와 데이터 순회

개선된 ForEach 구문
• ForEach는 배열의 각 항목을 자동으로 순회하며 뷰를 생성.
• 데이터 모델이 Identifiable을 준수하기 때문에 id를 수동으로 지정할 필요 없음.

코드 예시

```swift
VStack(alignment: .leading) {
ForEach(message) { dataItem in
Textview(text: dataItem.text, color: dataItem.color)
}
}
```

#### 장점 1. 유지보수 용이:

• 데이터 항목 추가/제거 시 ForEach가 자동으로 업데이트됨.
• 배열의 크기를 변경해도 코드를 수정할 필요가 없음. 2. 코드 간결화:
• ForEach를 활용해 기존 반복되는 코드를 제거.

### 10. 인덱스 기반 순회 (비추천)

코드 예시

```swift
ForEach(0..<message.count, id: \.self) { index in
let dataItem = message[index]
Textview(text: dataItem.text, color: dataItem.color)
}
```

#### 단점

• 가독성 저하: 인덱스를 수동으로 관리해야 함.
• 오류 발생 가능성: 배열 크기를 잘못 계산하거나 수정 시 충돌 가능.

대안
• 인덱스 대신 Identifiable을 사용해 코드 단순화.

### 11. 데이터 관리와 확장성

데이터 추가 및 수정
• 새로운 메시지를 추가하거나 기존 데이터를 수정할 때, 뷰 코드를 변경할 필요가 없음.
• 데이터는 모델(DataItemModel)에만 추가하면 자동으로 반영.

데이터 추가 예시

```swift
let message: [DataItemModel] = [
.init(text: "hello there!", color: .green),
.init(text: "welcome to swiftui", color: .gray),
.init(text: "are u ready", color: .yellow),
.init(text: "Booooom", color: .red),
.init(text: "Just do it~", color: .purple),
.init(text: "I love Swift", color: .cyan)
]
```

### 12. 개발 과정에서 주의할 점

    1.  콤마(,) 누락:
        • 배열 내 콤마를 빠뜨릴 경우, 에러 메시지가 명확하지 않음.
        • 데이터 추가/수정 시 항상 콤마를 확인.
    2.  Identifiable 누락:
        • ForEach 사용 시 데이터 모델이 Identifiable을 준수하지 않으면 에러 발생.
    3.  데이터 크기 변화:
        • 이전에는 데이터 크기 변경 시 뷰를 수동으로 수정해야 했으나, 이제 ForEach로 자동 관리 가능.
