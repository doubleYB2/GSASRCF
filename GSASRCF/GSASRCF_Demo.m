
clear;
clc;
close all;
setup_path();

base_path  = './seq';
video_path = [base_path '/' 'FaceOcc1'];
[seq, ground_truth] = load_video_info(video_path,'FaceOcc1');
seq.startFrame = 1;
seq.endFrame = seq.len;
seq.ground_truth=ground_truth;

results = run_GSASRCF(seq, video_path);
