-- =============================================================
-- Copyright Roaming Gamer, LLC. 2009-2014 
-- =============================================================
-- 
-- =============================================================
local public = {}

----------------------------------------------------------------------
--								REQUIRES							--
----------------------------------------------------------------------
-- none

----------------------------------------------------------------------
--								DECLARATIONS						--
----------------------------------------------------------------------
-- Variables
local layers

-- Forward Declarations

-- Localizations
local mRand             = math.random
local getTimer          = system.getTimer
local pairs             = pairs

----------------------------------------------------------------------
--								DEFINITIONS							--
----------------------------------------------------------------------
-- Initialize module
function public.init( parent, params )	
	layers = parent
	params = params or {}
	print("Initializing one-touch module.")
end

-- Start
function public.start( params )	
	params = params or {}
	print("Starting one-touch module.")
end


-- Clean up the module (and optionally unload it from memory)
function public.cleanup( path )	
	print("Cleaning up oneTouch module.")
	layers = nil

	-- If path is supplied, completely unload the module
	if( path ) then
		print("Unloading oneTouch module.")
		package.loaded[path] = nil
    	_G[path] = nil	    	
    end
end

return public