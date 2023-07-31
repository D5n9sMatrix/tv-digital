TV Digital no GNU/Linux! Uêba!
Colaboração: Bruno Buys

Data de Publicação: 26 de junho de 2010

Enfim consegui acesso a um tuner para a tv digital brasileira. Estava muito curioso para ver isso funcionando... Essa dica mostra o procedimento para fazer o tuner funcionar no Ubuntu Karmic. E ainda dá para pegar boa parte da Copa!

Sem mais delongas:

Hardware Usado: PixelView PlayTV USB SBTVD

Lsusb:

  Bus 001 Device 010: ID 1554:5010 Prolink Microsystems Corp.
Dmesg:

Plugando a tv no pc ainda sem nenhum driver instalado, o dmesg não vai acusar nada interessante.

  [ 4633.932517] usb 1-1: new high speed USB device using ehci_hcd and address 8
  [ 4634.064967] usb 1-1: configuration #1 chosen from 1 choice
Essas linhas aqui só aparecem depois de instalado o driver e firmware:

  [ 5627.396016] usb 1-2: new high speed USB device using ehci_hcd and address 9
  [ 5627.529422] usb 1-2: configuration #1 chosen from 1 choice
  [ 5627.529590] dvb-usb: found a 'Prolink Pixelview SBTVD' in cold state, will try to load a firmware
  [ 5627.529595] usb 1-2: firmware: requesting dvb-usb-dib0700-1.20.fw
  [ 5627.536447] dvb-usb: downloading firmware from file 'dvb-usb-dib0700-1.20.fw'
  [ 5627.740579] dib0700: firmware started successfully.
  [ 5628.244709] dvb-usb: found a 'Prolink Pixelview SBTVD' in warm state.
  [ 5628.244755] dvb-usb: will pass the complete MPEG2 transport stream to the software demuxer.
  [ 5628.244832] DVB: registering new adapter (Prolink Pixelview SBTVD)
  [ 5628.475937] DVB: registering adapter 0 frontend 0 (DiBcom 8000 ISDB-T)...
  [ 5628.686803] DiB0070: successfully identified
  [ 5628.686878] input: IR-receiver inside an USB DVB receiver as /devices/pci0000:00/0000:00:1d.7/usb1/1-2/input/input8
  [ 5628.686912] dvb-usb: schedule remote query interval to 50 msecs.
  [ 5628.686916] dvb-usb: Prolink Pixelview SBTVD successfully initialized and connected.
Instale o mercurial - se ainda não tiver, para baixarmos o driver:
  sudo apt-get install mercurial
baixe o driver:
  hg clone http://www.linuxtv.org/hg/v4l-dvb
  cd v4l-dvb
Edite o arquivo v4l-dvb/v4l/.config:
  nano v4l/.config
Use o comando Ctrl+W do nano para encontrar a linha
  CONFIG_DVB_FIREDTV=m
Assim:
  Ctrl+W
e digite FIREDTV na linha preta que aparece embaixo do programa. Dê ENTER.
Encontrada a linha, modifique-a para ficar assim:
  CONFIG_DVB_FIREDTV=n
Salve o arquivo modificado, com Ctrl+O e feche-o com Ctrl+X.
Compile e instale o driver:
  make
  sudo make rmmod
  sudo make install
Baixe o firmware e copie-o para o local certo:
  wget http://www.wi-bw.tfh-wildau.de/~pboettch/home/files/dvb-usb-dib0700-1.20.fw
  sudo cp dvb-usb-dib0700-1.20.fw /lib/firmware
Baixe, compile e instale as ferramentas:
  hg clone http://linuxtv.org/hg/dvb-apps
  cd dvb-apps
  make
  sudo make install
CONFIGURANDO
Crie o arquivo ch_freq.conf que irá conter a frequência dos canais:
  nano ch_freq.conf
Cole este conteúdo dentro dele: (Copie normalmente do navegador com Ctrl+C, depois cole no nano usando o Shift+Insert)
  # UHF channels 14 to 69
  T 473142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 14
  T 479142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 15
  T 485142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 16
  T 491142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 17
  T 497142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 18
  T 503142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 19
  T 509142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 20
  T 515142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 21
  T 521142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 22
  T 527142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 23
  T 533142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 24
  T 539142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 25
  T 545142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 26
  T 551142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 27
  T 557142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 28
  T 563142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 29
  T 569142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 30
  T 575142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 31
  T 581142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 32
  T 587142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 33
  T 593142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 34
  T 599142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 35
  T 605142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 36
  # channel 37 not used
  T 617142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 38
  T 623142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 39
  T 629142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 40
  T 635142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 41
  T 641142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 42
  T 647142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 43
  T 653142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 44
  T 659142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 45
  T 665142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 46
  T 671142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 47
  T 677142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 48
  T 683142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 49
  T 689142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 50
  T 695142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 51
  T 701142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 52
  T 707142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 53
  T 713142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 54
  T 719142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 55
  T 725142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 56
  T 731142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 57
  T 737142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 58
  T 743142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 59
  T 749142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 60
  T 755142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 61
  T 761142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 62
  T 767142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 63
  T 773142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 64
  T 779142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 65
  T 785142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 66
  T 791142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 67
  T 797142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 68
  T 803142857 6MHz 3/4 AUTO AUTO AUTO AUTO NONE # channel 69
Salve com Ctrl+O e feche com Ctrl+X.
Faça um scan para gerar a tabela de canais disponíveis na sua região:
  scan ch_freq.conf > channels.conf
Nessa parte, você verá o scan procurando as frequências disponíveis na sua área. Se aparecer várias linhas terminando em "tuning failed!!! " não há problema. São canais indisponíveis.
Instalando e configurando o VLC:
  sudo apt-get install vlc
Abra o programa, vá em Exibir > Lista de Reprodução
Use o botão "+" e escolha adicionar um arquivo, e forneça ao vlc o arquivo channels.conf.
Finalmente, clique em Play. Quando você fizer isso, na Lista de Reprodução irão aparecer as frequências disponíveis para sintonização, de onde você pode escolher os canais.
E é isso aí!
Observações

As resoluções HD dos canais disponíveis aqui em Brasília funcionam muito mal, com vídeo engasgando. Imagino que isso seja devido ao driver. Processamento não deve ser, pois a máquina é um Core2Duo. Mas as resoluções 1-seg funcionam perfeitamente, e você pode sempre maximizar a tela. Se depois de tentar assistir uma resolução HD, o vídeo ficar todo errado e persistir assim mesmo mudando de canal, tente reiniciar o vlc. Não precisa reiniciar o micro.

Crédito onde é devido crédito: quem carregou o piano foi o Dougsland e seus colaboradores, em http://dougsland.livejournal.com/103169.html

Essa dica só confirma, adiciona Brasília na lista das cidades testadas, e contorna o erro de compilação no Ubuntu, já que o Dougsland usa Fedora. Tudo junto, mastigado.

Boa Copa e feliz hacking!

Google libera ferramenta de linha de comando para acessar seus serviços web
Fonte: Notícias Linux

O Google anunciou a disponibilidade de uma nova ferramenta chamada GoogleCL que permitirá usuários a interagirem com os serviços web da companhia por meio da linha de comando.

O GoogleCL foi desenvolvido em Python utilizando a biblioteca gdata-python-client. Trata-se de um projeto de código aberto que está hospedado no Google Code e distribuído sob licença Apache.

Confira: http://code.google.com/p/googlecl/
Fonte: http://www.linux.com/news/software/applications/320496-google-releases-command-line-tool-for-accessing-web-services
Comente: http://www.noticiaslinux.com.br/nl1277098647.html#comentarios
