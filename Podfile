platform :ios, '11.0'

target 'CurveProjectDemo' do
  use_frameworks!

  #RxSwift used for FRP bindings (useful for VM <-> V in MVVM)
  pod 'RxSwift'

  #RxCocoa adds UIKit / Foundation specific helpers on top of RxSwift (e.g. binding to a UILabel text, or creating an observable from URLSession request)
  pod 'RxCocoa'

  #Not an app dependency in the framework sense, but pulling in the linter tool via pods gives us an easier update path and allows pinning versions if required
  #linting is run via a run script build phase
  pod 'SwiftLint'

  target 'CurveProjectDemoTests' do
    inherit! :search_paths
  end

end
