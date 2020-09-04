sclang -l $1/sclang_conf.yaml $1/scdump.scd > $1/tmp.json;
awk 'BEGIN{f=0} /^{/{f=1} f' $1/tmp.json > $1/tmp2.json;
awk 'BEGIN{f=1} /^cleaning up OSC/{f=0} f' $1/tmp2.json > $1/scdump.json;
rm $1/tmp.json
rm $1/tmp2.json
