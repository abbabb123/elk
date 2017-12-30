FROM sebp/elk

RUN set -x \
&& apt-get install net-tools tzdata \
&& set +x

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
