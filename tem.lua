-- 定义一个外层的表
local data = {
    -- 表中包含一个名为 "盘龙飞舟" 的子表
    ["盘龙飞舟"] = {
        key = "55D;5D;225D::9",  -- 这里使用 = 而不是 :，并且去掉了逗号
    },
    ["磐石靴"] = {
        key = "59D;17D;174D::9",  -- 这里使用 = 而不是 :，并且去掉了逗号
    },
    ["九霄配环"] = {
        key = "0D;17D;1,644D::9",  -- 这里使用 = 而不是 :，并且去掉了逗号
    },
    
}

-- 定义一个函数来从字符串中提取指定位置的数字
-- 定义一个函数来从字符串中提取指定位置的数字
local function extractNumberFromKey(key)

    local parts = {}
    -- 按 ; 分割字符串
    for part in string.gmatch(key, "[^;]+") do
        table.insert(parts, part)
    end
    --print(parts)
    if parts[3] then
        -- 去掉 ::9
        local processedPart = string.gsub(parts[3], "D::9", "")
        return processedPart
    end
    return nil
end

-- 检查这个值的范围
local func checkNumber(value)
    if value >=10 && value <= 433333 then
        return true
    end
return false
end

-- 定义一个函数来处理搜索和偏移量操作
local function processItem(itemKey)

    local itemData = data[itemKey]
    if itemData then
        -- 进行搜索操作
        gg.clearResults()
        gg.searchNumber(itemData.key, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        -- 从 key 中提取要精炼的数字
        local refineNumber = extractNumberFromKey(itemData.key)
        if refineNumber then
        
            gg.refineNumber(refineNumber, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        else
            print("无法从 key 中提取精炼数字: ", itemData.key)
            return
        end
        local t = gg.getResults(10)
        if #t <= 0 then
            gg.toast(itemKey.."修改失败")
            print(itemKey.."修改失败")
            return
        end

        -- 遍历搜索结果并处理偏移量
        for _, item in ipairs(t) do
            if checkNumber(item.value) then
                item.name=itemKey
                item.value=9999999
                gg.setValues(t)
                gg.addListItems(t)
                local offset = 0x00
                for i = 1, 10 do
                    offset = offset + 0x40
                    gg.clearResults()
                    gg.searchAddress(item.address + offset, 0xFFFFFFFF)
                    local r = gg.getResults(1)
                    if checkNumber(r[1].value) then
                        r[1].value = 9999999
                        r[1].name = itemKey.._
                        gg.setValues(r)
                        gg.addListItems(r)
                    end
                end
            end
        end
        gg.toast(itemKey.."修改成功")
    else
        print("未找到对应的 item 数据: ", itemKey)
    end
end

-- 遍历 data 中的每个 item 并调用处理函数
for itemKey, _ in pairs(data) do
   processItem(itemKey)
end

