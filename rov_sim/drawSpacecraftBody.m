function handle ...
= drawSpacecraftBody(pn, pe, pd, phi, theta, psi, handle, mode)

[V, F, patchcolors] = spacecraftVFC;

XYZ = rotate(V', phi, theta, psi);

XYZ = translate(V, pn, pe, pd);

R = [...
    0, 1, 0;...
    1, 0, 0;...
    0, 0, -1;...
    ];

V = R*XYZ;    
if isempty(handle),
    handle = patch('Vertices', V', 'Faces', F, ...
                   'FaceVertexCData', patchcolors,...
                   'FaceColor', 'flat',...
                   'EraseMode', mode);
else
    set(handle, 'Vertices', V', 'Faces', F, 'CameraPosition', XYZ);
end

function XYZ = rotate(XYZ,  phi, theta, psi)
    R_roll = [...
                1, 0, 0; ...
                0, cos(phi), -sin(phi);...
                0, sin(phi), cos(phi)];
    R_pitch = [...
                cos(theta), 0, sin(theta); ...
                0, 1, 0;...
                -sin(theta), 0, cos(theta)];
            
    R_yaw = [...
                cos(psi), -sin(psi), 0; ...
                sin(psi), cos(psi), 0;...
                0, 0, 1];
            
    R = R_roll * R_pitch * R_yaw;
    
    XYZ = R * XYZ;
    
function XYZ = translate(XYZ, pn, pe, pd)
    XYZ = XYZ + repmat([pn;pe;pd], 1, size(XYZ,2));
        
    
        