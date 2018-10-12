function Ni = filling_balls(N,m)
    P = [1.0-1.0/N; 1.0/N; 0.0; 0.0; 0.0];
    for current_m=2:m
        P=P+[-1/N,0,0,0; 1/N,-1/N,0,0; 0,1/N,-1/N,0; 0,0,1/N,-1/N; 0,0,0,1/N]*([P(1);P(2);P(3);P(4)]/sum(P(1:4)));
    end
    Ni = N*P