--Identifiers
local steamid  = false
local license  = false
local discord  = false
local xbl      = false
local liveid   = false
local ip       = false

for k,v in pairs(GetPlayerIdentifiers(source))do
    if string.sub(v, 1, string.len("steam:")) == "steam:" then
        steamid = v
    elseif string.sub(v, 1, string.len("license:")) == "license:" then
        license = v
    elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
        xbl  = v
    elseif string.sub(v, 1, string.len("ip:")) == "ip:" then
        ip = v
    elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
        discord = v
    elseif string.sub(v, 1, string.len("live:")) == "live:" then
        liveid = v
    end
end

--DiscordLog
function DiscordLogS(title, message, color, webhook)
    local embed = {
        {
            ["color"] = color,
            ["title"] = "**".. title .."**",
            ["description"] = message.."\n Discord ID: <@"..discord..">",
            ["footer"] = {
                ["text"] = os.date("%Y/%m/%d %X"),
            },
        }
    }

  PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = "m-simplescripts", embeds = embed}), { ['Content-Type'] = 'application/json' })
end