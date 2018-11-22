function H = estimate_Homography(inputArg1,inputArg2, npoint)
    for i = 1: npoint
        M_A(2*i-1,:) =  [-inputArg1(i,1), -inputArg1(i,2),-1,0,0,0, inputArg1(i,1)*inputArg2(i,1), inputArg2(i,1)*inputArg1(i,2),inputArg2(i,1)];
        M_A(2*i, :) = [0,0,0,-inputArg1(i,1),-inputArg1(i,2),-1,inputArg1(i,1)*inputArg2(i,2),inputArg1(i,2)*inputArg1(i,2),inputArg2(i,2)];
    end
    [U,S,V] = svd(M_A);
    h = V(:,9);

    H = reshape(h,3,3);
end



