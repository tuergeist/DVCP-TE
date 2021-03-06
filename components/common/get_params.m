function params = get_params(obj)
%GET_PARAMS Summary of this function coming soon..
%   Detailed explanation coming soon..
%
%	Copyright � 2014 Alexander Isakov. Contact: <alexander.isakov@tuhh.de>
%	Copyright � 2014 Marina Krotofil. Contact: <marina.krotofil@tuhh.de>
%	Copyright � 2014 TUHH-SVA Security in Distributed Applications.
%	All rights reserved.
%	License: http://opensource.org/licenses/BSD-3-Clause
%	----------------------------------------------------------------------

    oparams = get_param(obj, 'ObjectParameters');
    fcount = fields(oparams);
    %params = cell(length(fcount), 2);
    params = cell(1, 2);
    counter = 1;
    warning('off', 'all');
    for i = 1 : length(fcount)
        try
            params{counter, 1} = fcount{i};
            params{counter, 2} = get_param(bdroot, fcount{i});
            counter = counter + 1;
        catch
           continue 
        end
    end
    warning('on', 'all');
end

