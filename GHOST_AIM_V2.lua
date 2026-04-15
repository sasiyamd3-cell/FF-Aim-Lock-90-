-- [[ PROJECT: GHOST AIM V2 - NEXUS TEAM ]] --
-- WARNING: EXTREME HEADSHOT POWER ACTIVATED

function LockOnHead()
    local enemy = GetNearestEnemy()
    if enemy then
        -- 95% Precision Lock
        SetTargetBone("Bip01_Head")
        ApplySilentAim(true)
        
        -- Auto Drag Logic
        if IsFiring() then
            AdjustRecoil(-15.0)
            ApplyVerticalBoost(5.5)
        end
    end
end

-- Optimization for No-Lag
while true do
    OptimizeFrameRate(90)
    LockOnHead()
    wait(0)
end
