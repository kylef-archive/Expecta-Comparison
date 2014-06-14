Pod::Spec.new do |spec|
  spec.name = "Expecta+Comparison"
  spec.version = "0.1.0"
  spec.summary = "The missing comparators for Expecta."
  spec.homepage = "https://github.com/kylef/Expecta-Comparison"
  spec.license = { :type => "BSD", :file => "LICENSE" }
  spec.author = { "Kyle Fuller" => "inbox@kylefuller.co.uk" }
  spec.social_media_url = "https://twitter.com/kylefuller"
  spec.source = { :git => "https://github.com/kylef/Expecta-Comparison.git", :tag => spec.version }
  spec.source_files  = "ExpectaComparison/*.{h,m}"
  spec.requires_arc = true
  spec.dependency 'Expecta'

  spec.ios.deployment_target = '5.0'
  spec.osx.deployment_target = '10.7'
end

