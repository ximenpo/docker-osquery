FROM    centos:7

LABEL   author="ximenpo <ximenpo@jiandan.ren>"

RUN     yum -y install https://osquery-packages.s3.amazonaws.com/centos7/noarch/osquery-s3-centos7-repo-1-0.0.noarch.rpm    \
        &&  yum -y install osquery      \
        &&  yum clean all               \
        &&  rm -rf  /var/cache/yum

CMD     ["osqueryi"]
