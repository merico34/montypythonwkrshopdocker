FROM rocker/tidyverse
MAINTAINER Steph Locke <steph@itsalocke.com>
RUN installGithub.r lockedata/TextAnalysis
ADD https://gist.githubusercontent.com/stephlocke/0036331e7a3338e965149833e92c1360/raw/6d967c19d9c73cecd1e2d4da0eed2cd646790bd5/mkusers.sh /
ADD https://gist.githubusercontent.com/stephlocke/0036331e7a3338e965149833e92c1360/raw/6d967c19d9c73cecd1e2d4da0eed2cd646790bd5/users.csvv /
RUN chmod 777 /mkusers.sh
RUN /mkusers.sh