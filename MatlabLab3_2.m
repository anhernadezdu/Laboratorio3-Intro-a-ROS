%%
rosinit; %Conexi´on con nodo maestro
%%
pose = rossubscriber('/turtle1/pose', 'turtlesim/Pose');
pause(1)
fprintf('\n pose');
disp(pose);
%%
msg = pose.LatestMessage;
if ~isempty(msg)
    x = msg.X;
    y = msg.Y;
    theta = msg.Theta;
    fprintf('Posicion (x, y): (%f, %f)\n', x, y);
    fprintf('Orientacion (theta): (%f)\n', theta);
else
    x = nan;
    y = nan;
    theta = nan;
    fprintf('Posicion (x, y): (%f, %f)\n', x, y);
    fprintf('Orientacion (theta): (%f)\n', theta);
end
