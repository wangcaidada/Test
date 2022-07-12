-- --1.B
-- for k,v in pairs({1,nil,3,nil,4}) do
--     print(k,v)
-- end

-- --2.C
-- require("beRequire")
-- beRequire.Test()

-- --3.D
-- local sum = 0
-- for i=1,10 do
--     sum = sum +1
-- end
-- print(sum)
-- --循环缺少do

-- --4.B
-- local t = {}
-- for i=1,1000 do
--     t[#t +1 ] = i.."test"
-- end
-- print(table.concat(t, ""))

-- --5.D
-- local t = {5,0,13,7,-1,7,9}
-- local f = function (a,b)
--     return a > b
-- end
-- table.sort(t,f)

-- --6.C
-- local t = {1,2,3,3,5,3,6}
-- t[7] = 10
-- --6->10

-- --7.B
-- local t = {1,2,3,3,5,3,6}
-- table.remove(t,1)
-- for i,v in ipairs(t) do
--     print(v)
-- end
-- --lua数组下标从1开始，t[1]=nil会破坏数组结构变成哈希存储

-- --8.B
-- print(1>2 and 1 or 2)

-- --9.D
-- local a = 1
-- local f = function () 
--     a = a + 1
--     return a
-- end
-- local t = setmetatable({key1 = a}, {__index = f})
-- print(t.key2,t.key1)
-- --找不到则返回__index

-- --10.B
-- local func1 = function(t1)
--     local num = 0
--     for _ in pairs(t1) do
--     num = num + 1
--     end
--     return num 
--     end
    
--     local a = {}
--     local t = {a=a,b=2,c=3}
    
--     setmetatable(t, {__mode = "kv"})
--     a = nil
--     print(func1(t))
--     collectgarbage()
--     print(func1(t))
-- 关键词，弱引用

-- --11.[2]
-- local t = {[1]=2,[2]=3,[3]=34,[26]=5}
-- t[3] = nil
-- print(#t)

-- --12.[table.insert(#t+1,10)]
-- local t = {1,2,3,3,5,3,6}
-- table.insert(#t+1,10)

-- --13.[table.remove(t,1)]
-- local t = {1,2,3,3,5,3,6}
-- table.remove(t,1)

-- --14.[false]
-- local t1 = {a=1}
-- local t2 = {a=1,t1=t1}
-- t1 = nil
-- print(t2.t1==nil)

-- --15.[false]
-- local t1 = {a=1}
-- local t2 = {a=1}
-- print(t1["a"]~=t2.a)

-- --16.["4test"]
-- print(#"Test".."test")
-- --#优先级比..高

-- --17.[1]
-- local a = 1
-- local b = function() a = a + 1 return a  end
-- local c = nil and false == b()
-- print(a)
-- --and运算符如果左边不成立则直接跳过后面的运算

--18.[for,while,repeat-until]
--repeat-until 先执行循环体，后判断条件，条件为false则继续循环

--19.[double]

--20.[nil]
--string.find函数存在子串时返回第一串子串的起始索引和结束索引，否则返回nil

-- --21
-- local f = function()
--     local odd = {}
--     local even = {}
--     for i=1,50 do
--         if i%2 == 0 then 
--             even[#even+1] = i
--         else
--             odd[#odd+1]=i
--         end
--     end
--     return odd,even
-- end

-- --22
-- local t = {nil,nil,nil,nil,nil}
-- local c = function(a,b)
--     return a > b
-- end
-- for i=1,5 do
--     local n = math.random(0,100)
--     t[i]=n
-- end
-- table.sort(t,c)

