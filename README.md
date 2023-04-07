# Sample Apps Tutorials
> SwiftUI 기초 공부를 위한 레포 

</br>

## Navigating Apps

### 1) About Me
> NavigatingApps Folder 
</br>

* **TabView** 사용해서 다른 View 띄우기 </br>

```swift
TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "person")
              }
}
```

<img width="794" alt="스크린샷 2023-04-07 오후 2 17 28" src="https://user-images.githubusercontent.com/93391058/230545834-548c6489-4a64-45b9-bad1-41453ecf893f.png">

</br>
</br>

* **Data**한 곳에 모아놓고 끌어다 쓰기 </br>

<img width="753" alt="스크린샷 2023-04-07 오후 2 20 19" src="https://user-images.githubusercontent.com/93391058/230546157-cb9c94ec-e9b8-4e30-9d17-427d5e5c8988.png">

</br>

```swift
 Text(information.name)
 
 // Doris
```

</br>
</br>

* **randomElement()** 로 랜덤하게 요소 띄우기

```swift
funFact = information.funFacts.randomElement()!

// information.funFacts의 요소들이 String형이므로 ! 필요
```
