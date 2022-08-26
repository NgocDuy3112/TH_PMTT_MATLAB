function is_square = check_square(n)
    square_root = sqrt(n);
    if (square_root * square_root == n)
        is_square = true;
    else
        is_square = false;
    end
end