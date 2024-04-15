mkdir -p $PREFIX/bin
ls $PREFIX/bin/
cp -r * $PREFIX/bin/
cd $PREFIX/bin/
mkdir -p $PREFIX/bin/DeepMEI_model/weights/val_best_model/variables
mkdir -p $PREFIX/bin/data_cluster/candidate_locus
mkdir -p $PREFIX/bin/DeepMEI_model/batch_cdgc
mkdir -p $PREFIX/bin/DeepMEI_model/reference
mv variables.data-00000-of-00001aa $PREFIX/bin/DeepMEI_model/weights/val_best_model/variables
mv variables.data-00000-of-00001ab $PREFIX/bin/DeepMEI_model/weights/val_best_model/variables
mv variables.data-00000-of-00001ac $PREFIX/bin/DeepMEI_model/weights/val_best_model/variables
mv variables.data-00000-of-00001ad $PREFIX/bin/DeepMEI_model/weights/val_best_model/variables
mv variables.data-00000-of-00001ae $PREFIX/bin/DeepMEI_model/weights/val_best_model/variables
mv variables.data-00000-of-00001af $PREFIX/bin/DeepMEI_model/weights/val_best_model/variables
mv variables.index $PREFIX/bin/DeepMEI_model/weights/val_best_model/variables
mv keras_metadata.pb $PREFIX/bin/DeepMEI_model/weights/val_best_model/
mv saved_model.pb $PREFIX/bin/DeepMEI_model/weights/val_best_model/
unzip candidate_locus.zip
mv candidate_locus/* $PREFIX/bin/data_cluster/candidate_locus
unzip batch_cdgc.zip
mv batch_cdgc/* $PREFIX/bin/data_cluster/batch_cdgc
cat reference.0* > reference.tar.gz
tar -zxvf reference.tar.gz
mv reference/* $PREFIX/bin/DeepMEI_model/reference
rm -rf reference.tar.gz reference.0*
chmod +x $PREFIX/bin/*
