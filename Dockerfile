#install git
RUN yum -y install git

# install vim-enhanced
RUN yum -y install vim-enhanced
# 古いviをリネームして退避
RUN mv /bin/vi /bin/vim-tiny
# 拡張版vimをviとして使えるようにリンク
RUN ln -s /usr/bin/vim /bin/vi

# install neobundle
RUN mkdir -p ~/.vim/bundle
RUN git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

# install molokai
RUN cd /tmp
RUN git clone https://github.com/tomasr/molokai 
RUN mkdir -p ~/.vim/colors/
RUN mv molokai/colors/molokai.vim ~/.vim/colors/