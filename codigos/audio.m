clear all
close all 
clc

%teste para plotar onda de audio
[y,Fs] = audioread('teste.m4a');

t=[1/Fs:1/Fs:length(y)/Fs];

sound(y,Fs);
plot(y,t);
