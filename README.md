#  Calculator Layout Challenge: SwiftUI 2.0 Edition

I've previously taken [Angela Yu's (London App Brewery) fantastic iOS development bootcamp on Udemy.](https://www.udemy.com/course/ios-13-app-development-bootcamp).

I periodically go back and do projects that are newer or have been revised. In this case, it was a [calculator layout in Storyboards](https://github.com/appbrewery/Calculator-Layout-iOS13) with the challenge to make it work both in portrait and landscape.

## Portrait

![Portrait](Documentation/Portrait.png)

## SwiftUI

Since I've been working more in SwiftUI these days, and since it involved some things I hadn't done in combination, I decided to spend some time working on it.

### Features

* Uses Assets catalog for colors, which I named based on function (e.g., NumberButton) rather than a more traditional SecondaryColor, TertiaryColor scheme. If it were larger than one screen, I'd no doubt head that direction.
* Adds extension to Color for those color names.
* Uses GeometryReader for layout.

### TODO

* Set up actually different color schemes for light and dark.

