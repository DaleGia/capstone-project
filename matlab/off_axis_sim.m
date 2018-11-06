close all
hold off
th = 0:pi/50:2*pi;
% Radius of board
r = 65;
% x position of board
x = 0;
% y position of board

zunit = r * cos(th) + x;
xunit = r * sin(th) + y;
yunit = zeros(length(xunit),1); 

trpos = 55;
% transducer radius
tr = 5;
% position of transducers
tx = zeros(7,4);
tx(1,:) = [53 51.671178125 47.75135 41.43706875];
tx(2,:) = [33.044959375 22.9958375 11.793609375 0];
tx(3,:) = [-11.793609375 -22.995840625 -33.044959375 -41.43706875];
tx(4,:) = [-47.75135 -51.67118125 -53 -51.671178125];
tx(5,:) = [-47.75135 -41.437065625 -33.04495625 -22.995834375];
tx(6,:) = [-11.79360625 0.000003125 11.7936125 22.995840625];
tx(7,:) = [33.0449625 41.437071875 47.75135 51.67118125];

tz = zeros(7,4);
tz(1,:) = [0 11.793609375 22.99583375 33.044959375];
tz(2,:) = [41.43706875 47.75135 51.671178125 53];
tz(3,:) = [51.671178125 47.75135 41.43706875 33.044959375];
tz(4,:) = [22.9958375 11.793609375 -0.000003125 -11.7936125];
tz(5,:) = [-22.995840625 -33.0449625 -41.43706875 -47.75135];
tz(6,:) = [-51.67118125 -53 -51.671178125 -47.75135];
tz(7,:) = [-41.437065625 -33.04495625 -22.995834375 -11.79360625];

ty = zeros(7,4);

for k = 1:4
    figure(k);
    plot3(xunit, yunit, zunit,'k');
    hold on 
    plot3([0, 0], [0 1000], [0, 0],'y--');

    % Position of listening position
    %listenOriginDistance = sqrt( ((listenx)^2 + ((listeny)^2) + (listenz)^2));
    listenDegrees = (90/4)*k;
    listeny = 1000;
    listenOriginDistance = listeny/(sin(degtorad(listenDegrees)));
    listenx = sqrt((listenOriginDistance^2) - (listeny^2));
    listenz = 0.0;

    tranducer_counter = 0;
    listenDistance = zeros(7,4);
    listenDelay = zeros(7,4);
    for i = 1:7
        for j = 1:4
            tranducer_counter = tranducer_counter+1;
            plotx = tr*cos(th) + tx(i,j);
            ploty = zeros(length(plotx),1);
            plotz = tr*sin(th) + tz(i,j);

            plot3(plotx,ploty,plotz, 'r');
            hold on

            listenDistance(i,j) = sqrt( ((listenx - tx(i,j))^2) + ((listeny - ty(i,j))^2) + (listenz - tz(i,j))^2);
            listenDelay(i,j) = double(listenDistance(i,j))/double(343.0);
            plot3([tx(i,j) listenx], [ty(i,j) listeny], [tz(i,j) listenz],'b--');
            t = text(-200,900,95-(tranducer_counter*5),"Transducer" + num2str(tranducer_counter) + " delay: " + num2str(listenDelay(i,j)));
            t.FontSize = 5;
        end
       % csvwrite("/home/dg/Desktop/matlab/listenDelay.csv", listenDelay(i,:), tranducer_counter, 1);
    end

    % draw listening position
    plotx = tr*cos(th) + listenx;
    ploty = listeny*ones(length(plotx),1);
    plotz = tr*sin(th) + listenz;
    plot3(plotx,ploty,plotz, 'g');


    grid on
    axis tight
    ylabel("y distance (mm)");
    xlabel("x distance (mm)");
    zlabel("z distance (mm)");
    title(num2str(listenDegrees) + " Degree PDTAL Listening Distance"); 
hold off
end

