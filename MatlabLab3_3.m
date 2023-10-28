%%
rosinit; %Conexi´on con nodo maestro
%%
% Especifica la posición y orientación deseadas
x = 0.0;
y = 0.0;
theta = 1.0;
%%
velPub = rospublisher('/turtle1/cmd_vel','geometry_msgs/Twist'); %Creaci´on publicador
velMsg = rosmessage(velPub); %Creaci´on de mensaje
%%
velMsg.Linear.X = x; %Valor del mensaje
velMsg.Linear.Y = y; %Valor del mensaje
velMsg.Angular.Z = theta; %Valor del mensaje
send(velPub,velMsg); %Envio
pause(1)
