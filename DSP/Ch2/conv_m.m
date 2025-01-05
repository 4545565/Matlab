function [y,ny]=conv_m(x,nx,h,nh)
    % Modified convolution routine for signal processing
    % ------------------------------
    % [y,ny]=conv_m(x,nx,h,nh)
    % y=convolution result
    % ny=support of y
    % x=first signal on support nx
    % nx=support of x
    % h=second signal on support nh
    % nh=support of h
    nyb=nx(1)+nh(1);
    nye=nx(length(nx))+nh(length(nh));
    ny=nyb:nye;
    y=conv(x,h);
end