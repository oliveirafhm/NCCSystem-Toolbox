% The list of programs below is part of the research project 
% Decomposition and Analysis of Electromyographic Signals
% By Adriano O. Andrade, aoandrade@yahoo.com.br
% The University of Reading, Cybernetics
% November 2005
%
% Note 1: for optimal visualization and use of this content table type:
% helpwin '\Programs\matlab\' in the MatLab workspace
%
% Empirical Mode Decomposition Toolbox:
%
%     sig_to_imf      - It decomposes an input time-series x into
%                       its intrinsic mode functions 
%     imf_est         - Estimation of a single intrinsic mode function (IMF)
%     meanEnv         - Estimation of the average envelope of a time-series
%     zero_crossing   - Estimation of the number of zero-crossings of an input sequence y
%     sng             - Signal function
%     extrema         - Estimation of local maxima (peaks) and minima (valleys) of time-series
%
%
% Hilbert Spectrum Toolbox:
%
%     convScale       - Convert a scalar or a vector to a different scale
%     DS              - Estimation of the degree of stationarity
%     plotHS1         - Hilbert Spectrum generation 
%     instantAtrib    - Instantaneous atributes of a time series
%     MHSpec          - Marginal Hilbert Spectrum estimation
%
% Signal filtering toolbox:
%
%     ss_filtWavelet  - Signal filtering based on the stationary wavelet and soft-threshold
%     ss_filtWavelet2 - Signal filtering based on reconstructed approximation and detail coefficients and soft-threshold
%     ss_filtEMD      - Signal filtering based on the Empirical Mode Decomposition method
%
% Gaussian Mixture Model toolbox:
%
%     gmm_activ       - This function computes the component likelihoods (or ativations), p(x|j) for a Gaussian mixture model
%     gmm_create      - This function creates a Gaussian mixture model
%     gmm_EM          - This function implements the EM algorithm for GMM models
%     gmm_dist        - This function estimates the squared Euclidian distance between 2 matrices 
%     gmm_kmeans      - This function implements k-means algorithm
%     gmm_post        - This function computes the component posterior probabilities p(j|x)
%     gmm_prob        - This function computes the data probability p(x)
%
%
% Graphical User Interface:
%
%     guidsp          - type guidsp in the MatLab command window to have access to a GUI for digital signal processing. 
%
% EMG simulation toolbox:
%
% exp_GenerateEMG     - Generation of EMG signals based on experimental data
% exp_GenerateMUAPT   - Generation of MUAPTs based on experimental data
% getPatternFromMUAPs - Generation of Patterns of MUAPs based on the Point Distribution Model 
%
% General functions: 
%
%     histogram               - Estimation of the histogram of a time series
%     mainPeaks               - This function estimates the principal peaks of an input time-series
%     rmsEst                  - root-mean square estimation of a time-series
%     AR_LMS                  - AR model estimation (based on the LMS algorithm - old version)
%     arlms                   - AR model estimation (based on the LMS algorithm) 
%     spectro                 - power spectrum estimation based on the AR model 
%     ss_bootstrapPartition   - measure of partition variability based on bootstraping
%     ss_FindNumberOfClusters - This function estimates the number of clusters based on the notion of scale-space distance
%     ss_gap                  - Implementation of Gap statistics to estimate the number of clusters in a data set
%     ss_jumpMethod           - Implementation of Jump method for estimating the number of clusters in a data set
%     ss_compareGTMgrids      - comparison between two GTM grids
%     mgd                     - This function generates N samples from a d-dimension Gaussian distribution. 
%
% Demos (refer to the PhD thesis for further information):
%
%     Chapter 3 of thesis:
%
%     EMGsimDemo3     - Call 'EMGsimDemo3(1)' for displaying Figure 3.2 of thesis
%                     - Call 'EMGsimDemo3(2)' for displaying Figure 3.3 of thesis  
%                     - Call 'EMGsimDemo3(4)' for displaying similar examples to Figures 3.5 and 3.6 of thesis
%                     - Call 'EMGsimDemo3(5)' for displaying Figure 3.7 of thesis
%
%     AnalysisOfexperimentalEMGs - Call this script for displaying figures 3.8 and 3.10  of thesis
%     AnalysisOfArtificialEMGs   - Call this script for displaying figure 3.9 of thesis
%
%     Chapter 4 of thesis:
%
%     filtLPD_demo1              - Call this script for displaying figure 4.1 of thesis
%     wavelet_demo2              - Call this script for displaying figures 4.5 and 4.6 of thesis
%     wavelet_demo4              - Call this script for displaying figures 4.7 and 4.8 of thesis
%     wavelet_demo5              - Call this script for displaying figures 4.9 and 4.10 of thesis
%     EMDdemo                    - Call this script for displaying figure 4.12 of thesis
%     EMD_demo1                  - Call this script for displaying figures 4.13 and 4.14 of thesis
%     filtEMD_demo1              - Call this script for displaying figures 4.17 and 4.18 of thesis
%     EMDdemo2                   - Call 'EMDdemo2(1)' for displaying figures 4.19 and 4.20 of thesis
%     filtEMD_demo9              - Call this script for displying figure 4.21 of thesis
%     filtEMD_demo2              - Call this script for generation of figures 4.22a and 4.22b of thesis
%     filtEMD_demo3              - Call this script for generation of figures 4.22c and 4.22d of thesis
%     filtEMD_demo4              - Call this script for generation of figures 4.22e and 4.22f of thesis
%     filtEMD_demo5              - Call this script for generation of figures 4.23a and 4.23b of thesis
%     filtEMD_demo6              - Call this script for generation of figures 4.23c and 4.23d of thesis
%     filtEMD_demo7              - Call this script for generation of figures 4.23e and 4.23f of thesis
%     filtEMD_demo8              - Call this script for displaying figures 4.24 and 4.25 of thesis
%
%     Chapter 5 of thesis:
%
%     HScalibration1             - Call this script for displaying figure 5.2 of thesis
%     HSsyntheticSigs1           - Call this script for generation of figure 5.3 of thesis
%     HScalibration2             - Call this script for generation of figure 5.4 of thesis
%     MUAPactvHSdemo1            - Call this script with selected analysis=1,...,5 for displaying figures 5.5, 5.7, 5.9, 5.11 and 5.13 of thesis
%     MUAPactvHSdemo2            - Call this script with selected analysis=1,...,5 for displaying figures 5.6, 5.8, 5.10, 5.12 and 5.14 of thesis
%     TimeScaleAnalysisDemo1     - Call TimeScaleAnalysisDemo1(SelectedAnalysis), SelectedAnalysis=1,...,5 to generate figures 5.17 to 5.20 of thesis
%
%     Chapter 7 of thesis:
%
%     GTMcalibDemo1              - GTMcalibDemo1(2) and GTMcalibDemo1(4) display respectively figures 7.1 and 7.2 of thesis
%
%     demoPaperVisClust          - demoPaperVisClust(1) displays figure 7.4 of thesis
%                                - demoPaperVisClust(2) displays figure 7.6 of thesis
%     ClustVarStudy              - Call this script for estimate of partition variability (similar to results presented in figure 7.7 of thesis)
%     ss_demo1                   - This script shows that GTM is capable of clustering MUAPs from different subjects. it is possible to compare up to 10 different sets of MUAPs (see Figures 7.11 to 7.13 of thesis)
%
%
%     Chapter 8 of thesis:
%  
%     ss_demo2                   - example showing detection of region of activities
%     ss_demo5                   - example showing the visualization of experimental EMG signal on the GTM grid
