classdef Piezo < Device
    
    properties (Constant)
    end
    
    properties (Hidden, SetAccess = protected)
    end
    
    properties 
        deviceName = 'Piezo';
    end
    
    properties (SetAccess = protected)
        gaincorrection
    end
    
    events
        %InsufficientFunds, notify(BA,'InsufficientFunds')
    end
    
    methods
        function obj = Piezo(varargin)
            % This and the transformInputs function are hard coded
            
            obj.inputLabels = {'sgsmonitor'};
            obj.inputUnits = {'V'};
            obj.inputPorts = 20;
            obj.outputLabels = {'piezocommand'};
            obj.outputUnits = {'V'};
            obj.outputPorts = [3];
        end
        
        function in = transformInputs(obj,in,varargin)
            %multiply Inputs by micron/volts
        end
        
        function out = transformOutputs(obj,out,varargin)
            %multiply outputs by volts/micron
        end
    
    end
    
    methods (Access = protected)
        function setupDevice(obj)
        end
                
        function defineParameters(obj)
            obj.params.voltsPerMicron = 10/30;
        end
    end
end
