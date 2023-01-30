%% Silver 400 End
clc 
close all
clear

load('PrecomputedResults/ResultsEx3/Samples400/SampleNo61.mat')
given_frequency = 400;
lambda_point = physconst('LightSpeed')./given_frequency * 1e-6;

scaling = 1/(2*pi/(lambda_point*1e-6))*1e9;   %wavelength in mu meter

f=figure;
f.Position = [2230 753 334 345];

% hold all
X_stars = pp(:,:,end)*scaling;
X = splinepoints(pp(:,:,end),Var.M)*scaling;
plot3(ones(size(X(1,:)))*(300),X(2,:),X(3,:),'-k', 'LineWidth', 2.5)
hold all
plot3(X(1,:),ones(size(X(2,:)))*(300),X(3,:),'-k', 'LineWidth', 2.5)
plot3(X(1,:),X(2,:),ones(size(X(3,:)))*(-300),'-k', 'LineWidth', 2.5)

GenerateEllipticScattererNew(scaling*pp(:,:,end),Var.M,scaling*Var.aa * .85,scaling*Var.bb * .85,0*alpha,...
    RVec(:,:,end),SVec(:,:,end),TVec(:,:,end),'silver',0,1)



display(['a = ', num2str(scaling*Var.aa * .85)]);
display(['b = ', num2str(scaling*Var.bb * .85)]);

ApproxCond = Var.aa * Var.bb * 0.85^2 <= 0.05^2
ax = gca;


ax.XLim = [-300, 300];
ax.YLim = [-300, 300];
ax.ZLim = [-300, 300];

ax.XTick = -300:100:300;
ax.YTick = -300:100:300;
ax.ZTick = -300:100:300;

fig = gcf;
ax.Box = 'on';
ax.LineWidth = 1.2;
ax.FontSize = 13;
axis on
hold all

axis on
grid off
text(110.9535212142619,-2.955774940652191,440.8252657874456,...%-11.321749505059643,37.301436888059925,435.9649565850114,...
        'units in nm','FontSize',16,'BackGroundColor','w',...
            'Edgecolor','k',...
            'LineStyle','-',...
            'LineWidth',1,...
            'Clipping','off')

text(346.1920056090149,-354.9115221255161,-117.1124947276712, {...
        strcat('$$J_{\rm{2}}=$$',num2str(round(chir(end),2),'%10.2f')),...
        strcat('$$J_{\rm{HS}}=$$',num2str(round(smooth_relax(end),2),'%10.2f'))},...
        'BackGroundColor','w',...
            'FontSize',16,'Interpreter','Latex',...
            'Edgecolor','k',...
            'LineStyle','-',...
            'LineWidth',1,...
            'Clipping','off',...
            'HorizontalAlignment', 'right',...
            'VerticalAlignment', 'top')
        
grid on
filename = "SilverEnd400S";
print(gcf, '-depsc', filename);

%% Silver 500 End
clc 
close all
clear

load('PrecomputedResults/ResultsEx3/Samples500/SampleNo4.mat')
given_frequency = 500;
lambda_point = physconst('LightSpeed')./given_frequency * 1e-6;

scaling = 1/(2*pi/(lambda_point*1e-6))*1e9;   %wavelength in mu meter

f=figure;
f.Position = [2230 753 334 345];

X_stars = pp(:,:,end)*scaling;
X = splinepoints(pp(:,:,end),Var.M)*scaling;
plot3(ones(size(X(1,:)))*(300),X(2,:),X(3,:),'-k', 'LineWidth', 2.5)
hold all
plot3(X(1,:),ones(size(X(2,:)))*(300),X(3,:),'-k', 'LineWidth', 2.5)
plot3(X(1,:),X(2,:),ones(size(X(3,:)))*(-300),'-k', 'LineWidth', 2.5)


GenerateEllipticScattererNew(scaling*pp(:,:,end),Var.M,scaling*Var.aa * .65,scaling*Var.bb * .65,0*alpha,...
    RVec(:,:,end),SVec(:,:,end),TVec(:,:,end),'silver',0,1)

display(['a = ', num2str(scaling*Var.aa * .65)]);
display(['b = ', num2str(scaling*Var.bb * .65)]);
ApproxCond = Var.aa * Var.bb * 0.65^2 <= 0.05^2

ax = gca;

ax.XLim = [-300, 300];
ax.YLim = [-300, 300];
ax.ZLim = [-300, 300];

ax.XTick = -300:100:300;
ax.YTick = -300:100:300;
ax.ZTick = -300:100:300;

fig = gcf;
ax.Box = 'on';
ax.LineWidth = 1.2;
ax.FontSize = 13;
axis on
hold all

axis on
grid off
h = light;
lightangle(h,70,-40)

text(110.9535212142619,-2.955774940652191,440.8252657874456,...%-11.321749505059643,37.301436888059925,435.9649565850114,...
        'units in nm','FontSize',14,'BackGroundColor','w',...
            'Edgecolor','k',...
            'LineStyle','-',...
            'LineWidth',1,...
            'Clipping','off')

text(346.1920056090149,-354.9115221255161,-117.1124947276712, {...
        strcat('$$J_{\rm{2}}=$$',num2str(round(chir(end),2),'%10.2f')),...
        strcat('$$J_{\rm{HS}}=$$',num2str(round(smooth_relax(end),2),'%10.2f'))},...
        'BackGroundColor','w',...
            'FontSize',16,'Interpreter','Latex',...
            'Edgecolor','k',...
            'LineStyle','-',...
            'LineWidth',1,...
            'Clipping','off',...
            'HorizontalAlignment', 'right',...
            'VerticalAlignment', 'top')
grid on
filename = "SilverEnd500S";
print(gcf, '-depsc', filename);

%% Silver 600 End
clc 
close all
clear

load('PrecomputedResults/ResultsEx3/Samples600/SampleNo24.mat')
given_frequency = 600;
lambda_point = physconst('LightSpeed')./given_frequency * 1e-6;

scaling = 1/(2*pi/(lambda_point*1e-6))*1e9;   %wavelength in mu meter

f=figure;
f.Position = [2230 753 334 345];


X_stars = pp(:,:,end)*scaling;
X = splinepoints(pp(:,:,end),Var.M)*scaling;
plot3(ones(size(X(1,:)))*(300),X(2,:),X(3,:),'-k', 'LineWidth', 2.5)
hold all
plot3(X(1,:),ones(size(X(2,:)))*(300),X(3,:),'-k', 'LineWidth', 2.5)
plot3(X(1,:),X(2,:),ones(size(X(3,:)))*(-300),'-k', 'LineWidth', 2.5)
GenerateEllipticScattererNew(scaling*pp(:,:,end),Var.M,scaling*Var.aa * .49,scaling*Var.bb * .49,0*alpha,...
    RVec(:,:,end),SVec(:,:,end),TVec(:,:,end),'silver',0,1)

display(['a = ', num2str(scaling*Var.aa * .49)]);
display(['b = ', num2str(scaling*Var.bb * .49)]);
ApproxCond = Var.aa * Var.bb * 0.49^2 <= 0.05^2
ax = gca;

ax.XLim = [-300, 300];
ax.YLim = [-300, 300];
ax.ZLim = [-300, 300];

ax.XTick = -300:100:300;
ax.YTick = -300:100:300;
ax.ZTick = -300:100:300;

fig = gcf;
ax.Box = 'on';
ax.LineWidth = 1.2;
ax.FontSize = 13;
axis on
hold all

axis on
grid off
h = light;
lightangle(h,70,-40)

text(110.9535212142619,-2.955774940652191,440.8252657874456,...%-11.321749505059643,37.301436888059925,435.9649565850114,...
        'units in nm','FontSize',14,'BackGroundColor','w',...
            'Edgecolor','k',...
            'LineStyle','-',...
            'LineWidth',1,...
            'Clipping','off')

text(346.1920056090149,-354.9115221255161,-117.1124947276712, {...
        strcat('$$J_{\rm{2}}=$$',num2str(round(chir(end),2),'%10.2f')),...
        strcat('$$J_{\rm{HS}}=$$',num2str(round(smooth_relax(end),2),'%10.2f'))},...
        'BackGroundColor','w',...
            'FontSize',16,'Interpreter','Latex',...
            'Edgecolor','k',...
            'LineStyle','-',...
            'LineWidth',1,...
            'Clipping','off',...
            'HorizontalAlignment', 'right',...
            'VerticalAlignment', 'top')
        
grid on
filename = "SilverEnd600S";
print(gcf, '-depsc', filename);

%% Silver 700 End
clc 
close all
clear

load('PrecomputedResults/ResultsEx3/Samples700/SampleNo7.mat')
given_frequency = 700;
lambda_point = physconst('LightSpeed')./given_frequency * 1e-6;

scaling = 1/(2*pi/(lambda_point*1e-6))*1e9;   %wavelength in mu meter

f=figure;
f.Position = [2230 753 334 345];

X_stars = pp(:,:,end)*scaling;
X = splinepoints(pp(:,:,end),Var.M)*scaling;
plot3(ones(size(X(1,:)))*(300),X(2,:),X(3,:),'-k', 'LineWidth', 2.5)
hold all
plot3(X(1,:),ones(size(X(2,:)))*(300),X(3,:),'-k', 'LineWidth', 2.5)
plot3(X(1,:),X(2,:),ones(size(X(3,:)))*(-300),'-k', 'LineWidth', 2.5)
GenerateEllipticScattererNew(scaling*pp(:,:,end),Var.M,scaling*Var.aa * .34,scaling*Var.bb * .34,0*alpha,...
    RVec(:,:,end),SVec(:,:,end),TVec(:,:,end),'silver',0,1)

display(['a = ', num2str(scaling*Var.aa * .34)]);
display(['b = ', num2str(scaling*Var.bb * .34)]);
ApproxCond = Var.aa * Var.bb * 0.34^2 <= 0.05^2
ax = gca;


ax.XLim = [-300, 300];
ax.YLim = [-300, 300];
ax.ZLim = [-300, 300];

ax.XTick = -300:100:300;
ax.YTick = -300:100:300;
ax.ZTick = -300:100:300;

fig = gcf;
ax.Box = 'on';
ax.LineWidth = 1.2;
ax.FontSize = 13;
axis on
hold all

axis on
grid off
h = light;
lightangle(h,70,-40)

text(110.9535212142619,-2.955774940652191,440.8252657874456,...%-11.321749505059643,37.301436888059925,435.9649565850114,...
        'units in nm','FontSize',14,'BackGroundColor','w',...
            'Edgecolor','k',...
            'LineStyle','-',...
            'LineWidth',1,...
            'Clipping','off')

text(346.1920056090149,-354.9115221255161,-117.1124947276712, {...
        strcat('$$J_{\rm{2}}=$$',num2str(round(chir(end),2),'%10.2f')),...
        strcat('$$J_{\rm{HS}}=$$',num2str(round(smooth_relax(end),2),'%10.2f'))},...
        'BackGroundColor','w',...
            'FontSize',16,'Interpreter','Latex',...
            'Edgecolor','k',...
            'LineStyle','-',...
            'LineWidth',1,...
            'Clipping','off',...
            'HorizontalAlignment', 'right',...
            'VerticalAlignment', 'top')
grid on
filename = "SilverEnd700S";
print(gcf, '-depsc', filename);
%% Gold 400 End
clc 
close all
clear

load('PrecomputedResults/ResultsEx3/Samples400Gold/SampleNo27.mat')
given_frequency = 400;
lambda_point = physconst('LightSpeed')./given_frequency * 1e-6;
scaling = 1/(2*pi/(lambda_point*1e-6))*1e9;   %wavelength in mu meter

f=figure;
f.Position = [2230 753 334 345];

X_stars = pp(:,:,end)*scaling;
X = splinepoints(pp(:,:,end),Var.M)*scaling;
plot3(ones(size(X(1,:)))*(300),X(2,:),X(3,:),'-k', 'LineWidth', 2.5)
hold all
plot3(X(1,:),ones(size(X(2,:)))*(300),X(3,:),'-k', 'LineWidth', 2.5)
plot3(X(1,:),X(2,:),ones(size(X(3,:)))*(-300),'-k', 'LineWidth', 2.5)
GenerateEllipticScattererNew(scaling*pp(:,:,end),Var.M,scaling*Var.aa * .75,scaling*Var.bb * .75,0*alpha,...
    RVec(:,:,end),SVec(:,:,end),TVec(:,:,end),'gold',0,1)

display(['a = ', num2str(scaling*Var.aa * .75)]);
display(['b = ', num2str(scaling*Var.bb * .75)]);
ApproxCond = Var.aa * Var.bb * 0.75^2 <= 0.05^2

ax = gca;


ax.XLim = [-300, 300];
ax.YLim = [-300, 300];
ax.ZLim = [-300, 300];

ax.XTick = -300:100:300;
ax.YTick = -300:100:300;
ax.ZTick = -300:100:300;
ax.Box = 'on';
ax.LineWidth = 1.2;
ax.FontSize = 13;
% axis on

text(110.9535212142619,-2.955774940652191,440.8252657874456,...
        'units in nm','FontSize',14,'BackGroundColor','w',...
            'Edgecolor','k',...
            'LineStyle','-',...
            'LineWidth',1,...
            'Clipping','off')
text(346.1920056090149,-354.9115221255161,-117.1124947276712, {...
        strcat('$$J_{\rm{2}}=$$',num2str(round(chir(end),2),'%10.2f')),...
        strcat('$$J_{\rm{HS}}=$$',num2str(round(smooth_relax(end),2),'%10.2f'))},...
        'BackGroundColor','w',...
            'FontSize',16,'Interpreter','Latex',...
            'Edgecolor','k',...
            'LineStyle','-',...
            'LineWidth',1,...
            'Clipping','off',...
            'HorizontalAlignment', 'right',...
            'VerticalAlignment', 'top')
axis on
grid on
filename = "GoldEnd400";
print(gcf, '-depsc', filename);

%% Gold 500 End
clc 
close all
clear

load('PrecomputedResults/ResultsEx3/Samples500Gold/SampleNo61.mat')
given_frequency = 500;
lambda_point = physconst('LightSpeed')./given_frequency * 1e-6;
scaling = 1/(2*pi/(lambda_point*1e-6))*1e9;   %wavelength in mu meter

f=figure;
f.Position = [2230 753 334 345];

X_stars = pp(:,:,end)*scaling;
X = splinepoints(pp(:,:,end),Var.M)*scaling;
plot3(ones(size(X(1,:)))*(300),X(2,:),X(3,:),'-k', 'LineWidth', 2.5)
hold all
plot3(X(1,:),ones(size(X(2,:)))*(300),X(3,:),'-k', 'LineWidth', 2.5)
plot3(X(1,:),X(2,:),ones(size(X(3,:)))*(-300),'-k', 'LineWidth', 2.5)
GenerateEllipticScattererNew(scaling*pp(:,:,end),Var.M,scaling*Var.aa * .48,scaling*Var.bb * .48,0*alpha,...
    RVec(:,:,end),SVec(:,:,end),TVec(:,:,end),'gold',0,1)
display(['a = ', num2str(scaling*Var.aa * .48)]);
display(['b = ', num2str(scaling*Var.bb * .48)]);
ApproxCond = Var.aa * Var.bb * 0.48^2 <= 0.05^2
ax = gca;


ax.XLim = [-300, 300];
ax.YLim = [-300, 300];
ax.ZLim = [-300, 300];

ax.XTick = -300:100:300;
ax.YTick = -300:100:300;
ax.ZTick = -300:100:300;
ax.Box = 'on';
ax.LineWidth = 1.2;
ax.FontSize = 13;

text(110.9535212142619,-2.955774940652191,440.8252657874456,...
        'units in nm','FontSize',14,'BackGroundColor','w',...
            'Edgecolor','k',...
            'LineStyle','-',...
            'LineWidth',1,...
            'Clipping','off')
text(346.1920056090149,-354.9115221255161,-117.1124947276712, {...
        strcat('$$J_{\rm{2}}=$$',num2str(round(chir(end),2),'%10.2f')),...
        strcat('$$J_{\rm{HS}}=$$',num2str(round(smooth_relax(end),2),'%10.2f'))},...
        'BackGroundColor','w',...
            'FontSize',16,'Interpreter','Latex',...
            'Edgecolor','k',...
            'LineStyle','-',...
            'LineWidth',1,...
            'Clipping','off',...
            'HorizontalAlignment', 'right',...
            'VerticalAlignment', 'top')
axis on
grid on
filename = "GoldEnd500";
print(gcf, '-depsc', filename);
