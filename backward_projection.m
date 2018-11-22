function [t_points] = backward_projection(img1_points,h)
%     p_point = [x_point(1) ;y_point(2); 1];
%     transformed_point = p_point'*H;
    for i = 1: size(img1_points,1)
        p_point = [img1_points(i,1); img1_points(i,2); 1];
        tmp = p_point'*inv(h);
        x= tmp(1)/tmp(3);
        y= tmp(2)/tmp(3);
        t_points(i,:) = [x , y , 1];
    end
end

