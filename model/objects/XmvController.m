classdef XmvController < AttackController
%XMVCONTROLLER Summary of this class coming soon..
%   Detailed explanation coming soon..
%
%	Copyright � 2014 Alexander Isakov. Contact: <alexander.isakov@tuhh.de>
%	Copyright � 2014 Marina Krotofil. Contact: <marina.krotofil@tuhh.de>
%	Copyright � 2014 TUHH-SVA Security in Distributed Applications.
%	All rights reserved.
%	License: http://opensource.org/licenses/BSD-3-Clause
%	----------------------------------------------------------------------
    
    methods
        function this = XmvController(block)
           this = this@AttackController('xmv', block); 
        end
        
        % conversion method
        function obj = AttackController(controller)
              obj = AttackController(controller.Type, controller.Block);
              obj.Attack = controller.Attack;
              obj.Mode = controller.Mode;
              obj.Value = controller.Value;
              obj.Start = controller.Start;
              obj.Duration = controller.Duration;
        end
    end
    
end



