function w = hamming(varargin)
%HAMMING   Hamming window.
%   HAMMING(N) returns the N-point symmetric Hamming window in a column vector.
%
%   HAMMING(N,SFLAG) generates the N-point Hamming window using SFLAG window
%   sampling. SFLAG may be either 'symmetric' or 'periodic'. By default, a
%   symmetric window is returned.
%
%   % Example:
%   %   Create a 64-point Hamming window and display the result in WVTool.
%
%   L=64;
%   wvtool(hamming(L))
%
%   See also BLACKMAN, HANN, WINDOW.

%   Copyright 1988-2018 The MathWorks, Inc.

%#codegen

% Check number of inputs
narginchk(1,2);

if coder.target('MATLAB')
    w = gencoswin('hamming',varargin{:});
else
    % check for constant inputs
    allConst = true;
    coder.unroll();
    for k = 1:nargin
        allConst = allConst && coder.internal.isConst(varargin{k});
    end
    if allConst && coder.internal.isCompiled
        % codegen for constant input arguments
        w = coder.const(@feval,'hamming',varargin{:});
    else
        % codegen for variable input argument
        w = gencoswin('hamming',varargin{:});
    end
    
end

% [EOF] hamming.m

% LocalWords:  SFLAG
