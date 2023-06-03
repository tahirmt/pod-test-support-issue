This project demonstrates the issue with using `@testable import` of `Main`

To be able to lint `MainTestSupport` I added `Main` to a specs repo https://github.com/tahirmt/pod-issue-specs

`pod lib lint MainTestSupport.podspec --sources=https://github.com/tahirmt/pod-issue-specs.git --allow-warnings` can be used to reproduce the issue
