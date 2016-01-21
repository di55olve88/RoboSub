function drawAircraft(u)
    pn = u(1);
    pe = u(2);
    pd = u(3);
	ux = u(4);
	vx = u(5);
	wx = u(6);
    phi = u(7);
    theta = u(8);
    psi = u(9);
	p = u(10);
	q = u(11);
	r = u(12);
	
    t = u(13);
    
    persistent aircraftHandle
    
    field_width = 10;
    
    if t==0
        figure(1), clf
        aircraftHandle = drawSpacecraftBody(pn, pe, pd, ...
            phi, theta, psi, [],'normal');
    else
        aircraftHandle = drawSpacecraftBody(pn, pe, pd, ...
            phi, theta, psi, aircraftHandle,'normal');
    end