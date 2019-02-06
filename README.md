# latex-docker-arachne-export


This employs the dai-latex-bundle of LCB for converting tex-files to pdf and puts
all the Latex-shit in a container.

## how to setup
    
    git clone https://github.com/dainst/latex-docker-arachne-export.git latex_convert
    cd latex_convert
    git submodule --init
    git submodule update
    mkdir /files
    docker-compose build
    (wait for ages)
    (wait even longer)
    (and a little bit of waiting)
    (and more waiting.. yes texlive is fucking huge)
    
## how to use    
    (put any number of tex-files to /files)
    docker-compose up
    (if everything worked out find pdf's in /files and enjoy)
    