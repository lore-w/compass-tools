# Make sure you list all the project template files here in the manifest.
stylesheet 'screen.sass', :media => 'screen, projection'

stylesheet 'screen.scss', :media => 'screen, projection'
html 'demo.html'
image 'screenshot.png'
description "compass tools"
help "This will install a demo (HTML and Scss) to show you how to use compass-tools"
welcome_message %Q{
Example usage: div { @include triangle()}
See demo.html and demo.scss for example usage.
}
