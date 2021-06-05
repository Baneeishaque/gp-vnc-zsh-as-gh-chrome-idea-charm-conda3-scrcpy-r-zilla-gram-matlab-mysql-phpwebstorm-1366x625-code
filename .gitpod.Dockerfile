FROM baneeishaque/gp-vnc-zsh-as-gh-chrome-idea-charm-conda3-hb-scrcpy-r-zilla-gram-matlab-mysql-phpstorm-1366x625-code

ARG webStormDownloadUrl="https://download.jetbrains.com/webstorm/WebStorm-2021.1.2.tar.gz"
ARG webStormInstallationFile="WebStorm-2021.1.2.tar.gz"

RUN cd $HOME \
 && wget $webStormDownloadUrl \
 && sudo tar -xvf $webStormInstallationFile -C /usr/local/ \
 && rm $webStormInstallationFile

RUN mkdir -p ~/.config/JetBrains/WebStorm2021.1 \
 && cp /usr/local/WebStorm-211.7442.26/bin/webstorm64.vmoptions ~/.config/JetBrains/WebStorm2021.1/ \
 && echo "-Dsun.java2d.xrender=false" >> ~/.config/JetBrains/WebStorm2021.1/webstorm64.vmoptions
