getgenv().LoadCustomAsset = function(Asset,Url)
    if not isfile(Asset) then
        local Succ,Cont = pcall(function()
            return game:HttpGet(Url,true);
        end)

        if Succ then writefile(Asset,Cont) else return Url end;
    end

    if getcustomasset then
        return getcustomasset(Asset);
    else
        return isfile(Asset) and "rbxasset://"..Asset or Url;
    end
end
-- getgenv().LoadCustomAsset("Image.png","https://raw.githubusercontent.com/XXXX/Assets/home/ACDEFG.png");
