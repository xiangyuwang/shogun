init_shogun

addpath('tools');
label_train_multiclass=load_matrix('../data/label_train_multiclass.dat');
fm_train_real=load_matrix('../data/fm_train_real.dat');
fm_test_real=load_matrix('../data/fm_test_real.dat');


disp('Octave_modular')
% combined
disp('Combined')

kernel=CombinedKernel();
feats_train=CombinedFeatures();
feats_test=CombinedFeatures();

subkfeats_train=RealFeatures(fm_train_real);
subkfeats_test=RealFeatures(fm_test_real);
subkernel=GaussianKernel(10, 1.2);
feats_train.append_feature_obj(subkfeats_train);
feats_test.append_feature_obj(subkfeats_test);
kernel.append_kernel(subkernel);


subkfeats_train=RealFeatures(fm_train_real);
subkfeats_test=RealFeatures(fm_test_real);
subkernel=LinearKernel();
feats_train.append_feature_obj(subkfeats_train);
feats_test.append_feature_obj(subkfeats_test);
kernel.append_kernel(subkernel);


subkfeats_train=RealFeatures(fm_train_real);
subkfeats_test=RealFeatures(fm_test_real);
subkernel=Chi2Kernel(10,1.2);
feats_train.append_feature_obj(subkfeats_train);
feats_test.append_feature_obj(subkfeats_test);
kernel.append_kernel(subkernel);
kernel.init(feats_train, feats_train);

C=1.2;
epsilon=1e-5;
num_threads=1;
labels=Labels(label_train_multiclass);

% MKL_MULTICLASS
disp('MKL_MULTICLASS')
svm=MKLMultiClass(C, kernel, labels);
svm.set_epsilon(epsilon);
svm.parallel.set_num_threads(num_threads);

mkl_eps=0.01;
mkl_norm=1; % only L1 by now 
svm.set_mkl_parameters(mkl_eps,0,mkl_norm);

svm.train();

kernel.init(feats_train, feats_test);
svm.classify().get_labels();