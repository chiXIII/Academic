function moving = timeDilation(stationary, velocity)
    moving = stationary ./ sqrt(1 - (velocity./299792458).^2 );
    moving = round(moving,4);
end
