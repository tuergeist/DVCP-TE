function value = get_xmv_ctrl_param(block, param)
%GET_XMV_CTRL_PARAM Summary of this function coming soon..
%   Detailed explanation coming soon..
%
%	Copyright � 2014 Alexander Isakov. Contact: <alexander.isakov@tuhh.de>
%	Copyright � 2014 Marina Krotofil. Contact: <marina.krotofil@tuhh.de>
%	Copyright � 2014 TUHH-SVA Security in Distributed Applications.
%	All rights reserved.
%	License: http://opensource.org/licenses/BSD-3-Clause
%	----------------------------------------------------------------------

    %% version
    version = isnumeric(block);

    %% check input parameters    
    if ~ischar(param)
        error('param argument must be a string value containing name of a property');
    end
    
    %% set objects parameter
    if version
        block = [gcr '/TE Plant/xmv atk block/xmv' num2str(block) ' attack controller'];
    else
        block = [gcr '/TE Plant/xmv atk block/' block];
    end
    value = get_param(block, param);
end

