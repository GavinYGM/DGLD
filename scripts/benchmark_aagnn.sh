
seed=4096
for data in Cora Citeseer Pubmed ogbn-arxiv ACM Flickr BlogCatalog
do
  expname=$data'_AAGNN'
  echo
  echo ${expname}'-----START-----'
  dataset=$data
  python main_aagnn.py --dataset $dataset --device 0 --seed $seed --logdir logs/$expname > logs/$expname.log 2>&1
  cat logs/$expname.log
done



