-- --是否可以考虑改变它的数据表示，减少数据和内存消耗
-- polyline = {
-- 	{ x = 10.3, y = 98.5 },
-- 	{ x = 10.3, y = 18.3 },
-- 	{ x = 15.0, y = 98.5 },
-- 	...
--   }

--第一种
polyline = {
    x={10.3,10.3,15.0},
    y={98.5,18.3,98.5}
}
local len = #polyline.x
for i=1,len  do
    print(polyline.x[i],polyline.y[i])
end

-- 第二种
polyline = {10.3,98.5,10.3,18.3,15.0,98.5}
polyline.len = #polyline/2
polyline.get = function(index)
    return {x=polyline[index*2-1],y=polyline[index*2]}
end
for i=1,polyline.len do
    local point = polyline.get(i)
    print(point.x,point.y)
end

--感觉两种都需要在遍历上做一点处理

-- -- 优化以下代码 
-- local t = {}
-- for i = 1970, 2000 do
--   t[i] = os.time({year = i, month = 6, day = 14})
-- end

local t = {}
local data = {month=6,day=14}
for i=1970,2000 do
    data.year = i
    t[i] = os.time(data)
    print(t[i])
end

-- -- 优化以下代码
-- for i = 1, 1000000 do
-- 	local x = math.sin(i)
-- end

local f = math.sin
for i=1,1000000 do
    local x = f(i)
end

-- -- 优化以下代码
-- for i = 1, 1000000 do
-- 	local a = {}
-- 	a[1] = 1; a[2] = 2; a[3] = 3
-- end

for i = 1, 1000000 do
	local a = {nil,nil,nil}
	a[1] = 1; a[2] = 2; a[3] = 3
end