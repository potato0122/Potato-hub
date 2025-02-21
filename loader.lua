-- Loader script
print("Loader script executed")

-- Define some functions or variables
local function initialize()
    print("Initialization complete")
end

local function startWave(waveNumber)
    print("Starting wave " .. waveNumber)
end

local function applyCardEffects(card)
    print("Applying effect of card: " .. card)
end

-- Example usage of the above functions
initialize()
startWave(getgenv().FocusWave)

-- Apply priority card effects
for _, card in ipairs(getgenv().PriorityCards) do
    applyCardEffects(card)
end

-- Apply all other card effects after the focus wave ends
for _, card in ipairs(getgenv().Cards) do
    applyCardEffects(card)
end

print("Loader script execution finished")
