[t,z]=ode45(@MRAelectrico,[0 0.01], [0, 0]);

figure(1)
subplot(2,1,1);
plot(t, z(:,1));
title('Corriente');
grid on;

% Segunda gráfica: z(:,2) (Segunda variable de estado)
subplot(2,1,2);
plot(t, z(:,2));
title('Voltaje');
grid on;
