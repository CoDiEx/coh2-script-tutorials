import("ScarUtil.scar"); -- This is requred in order for some functions to work properly. Basically makes more functions available to us.

function OnGameSetup() -- This function is called when the map is being loaded, this is where you set up players.
  player1 = World_GetPlayerAt(1); -- Get the player with ID 1. It's a good idea to have player1 as the local player.
  player2 = World_GetPlayerAt(2); -- Get the player with ID 2. Usually your ally
  player3 = World_GetPlayerAt(3); -- Get the player with ID 3. First enemy player
  player4 = World_GetPlayerAt(4); -- Get the player with ID 4. This player is redundant, but you can remove if (only if it's a singleplayer map though)
end

function OnInit() -- Called once the map has been loaded

  _InitObjectives(); -- Load our objectives
  mission_start();
  
end

function _InitObjectives() -- Initialize our objectives

  OBJ_MOVE_HERE = { -- Declare a new objective (table)
    
      OnUI = function() -- Insert UI related functions  here
      end,
    
      OnStart = function() -- Function to call once the objective starts
      end,
    
      OnComplete = function() -- Function to call once the objective is completed
      end,
    
      title="", -- the title of the objective (must be either a localised string or a locale string/id)
    
  };
  
  Objective_Register(OBJ_MOVE_HERE); -- Register the objective. This must be called before you can use the objective
  
end

Scar_AddInit(OnInit); -- Register the OnInit function (unlike the OnGameSetup, the OnInit function is not called automatically)

function mission_start() -- The function to call to trigger the mission
  Objective_Start(OBJ_MOVE_HERE, true); -- Start our "move here" objective. The second parameter sets a boolean to also show the "new objective" UI. Try and set it to false, and see what happens.
end
