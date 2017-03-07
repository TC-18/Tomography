%--------------------------------------------------------------------------
% This file is part of the ASTRA Toolbox
%
% Copyright: 2010-2016, iMinds-Vision Lab, University of Antwerp
%            2014-2016, CWI, Amsterdam
% License: Open Source under GPLv3
% Contact: astra@uantwerpen.be
% Website: http://www.astra-toolbox.com/
%--------------------------------------------------------------------------

classdef ProjDiffOptimFunc < handle

	%----------------------------------------------------------------------
	properties (SetAccess=private, GetAccess=public)

	end	
	
	%----------------------------------------------------------------------
	methods (Access=public)	
		
		function proj_diff = calculate(~, D, ~)
			projection = D.tomography.createForwardProjection(D, D.S);
			proj_diff = sum((projection(:) - D.base.sinogram(:)).^2);
		end
		
	end
	%----------------------------------------------------------------------
	
end
