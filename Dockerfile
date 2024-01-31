FROM kalilinux/kali-rolling

RUN echo "deb http://http.kali.org/kali kali-rolling main contrib non-free non-free-firmware" > /etc/apt/sources.list

RUN apt update -y \
    && apt install -y net-tools \
    && apt-get install -y inetutils-ping \
    && apt-get install -y git \
    && apt-get install -y nodejs \
    && apt install -y npm

RUN git clone https://github.com/juice-shop/juice-shop.git

WORKDIR /juice-shop

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]


EXPOSE 3000

 

