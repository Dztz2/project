classdef Node < handle
    properties
        Name
        Parent
        Location
        Value
        Lambda
        Monitor
    end
    
    methods
        % 构造函数
        function obj = Node(a,b)
            obj.Name = [a,b];
            obj.Parent = [];
            obj.Location = [];
            obj.Value = [];
            obj.Lambda = [];
            obj.Monitor = [];
        end
    end
end
