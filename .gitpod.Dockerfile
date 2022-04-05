FROM baneeishaque/gp-vnc-zsh-as-gh-chrome-idea-charm-conda3-hb-scrcpy-r-zilla-gram-matlab-mysql-phpstorm-1366x625-code

ARG webStormDownloadUrl="https://download.jetbrains.com/webstorm/WebStorm-2021.1.2.tar.gz"
ARG webStormInstallationFile="WebStorm-2021.1.2.tar.gz"

WORKDIR $HOME
RUN sudo wget $webStormDownloadUrl \
 && sudo tar -xvf $webStormInstallationFile -C /usr/local/ \
 && sudo rm $webStormInstallationFile

RUN sudo cat /usr/local/WebStorm-211.7442.26/bin/webstorm64.vmoptions
RUN sudo mkdir -p ~/.config/JetBrains/WebStorm2021.1 \
 && sudo cp /usr/local/WebStorm-211.7442.26/bin/webstorm64.vmoptions ~/.config/JetBrains/WebStorm2021.1/ \
 && echo "-Dsun.java2d.xrender=false" | sudo tee -a ~/.config/JetBrains/WebStorm2021.1/webstorm64.vmoptions
RUN sudo cat ~/.config/JetBrains/WebStorm2021.1/webstorm64.vmoptions
