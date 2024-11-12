
. kafka.sh

[ -f ${kafka_dir}.tgz ] || wget $kafka_download_url

[ -d ${kafka_dir} ] || tar xf ${kafka_dir}.tgz
