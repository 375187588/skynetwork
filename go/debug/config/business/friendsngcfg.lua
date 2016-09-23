--报名费
-- SignupCost = {200, 300, 500, 600, 1000, 2000, 5000, 10000}
add_time_cost={
}
--升盲时间，单位秒
PromotionBlindsTime = {120, 180, 240, 300, 360, 420, 480, 540, 600, 720, 900, 1080, 1200, 1500, 1800, 2100, 2400, 2700, 3000, 3600}

--初始筹码
InitialChips = {3000, 4000, 5000, 6000, 7000, 8000, 9000, 10000, 11000, 12000, 13000, 14000, 15000, 16000, 17000, 18000, 19000, 20000, 25000, 30000}

--比赛奖励，key为开桌人数（1不是）
MatchRewards = 
{
	[1] = {1.0},
	[2] = {1.0},
	[3] = {1.0},
	[4] = {0.6, 0.4},
	[5] = {0.6, 0.4},
	[6] = {0.6, 0.4},
	[7] = {0.5, 0.3, 0.2},
	[8] = {0.5, 0.3, 0.2},
	[9] = {0.5, 0.3, 0.2},
}

--升盲表
PromotionBlinds = 
{
	{50, 100},
	{75, 150},
	{100, 200},
	{150, 300},
	{200, 400},
	{250, 500},
	{300, 600},
	{400, 800},
	{500, 1000},
	{600, 1200},
	{800, 1600},
	{1000, 2000},
	{1200, 2400},
	{1500, 3000},
	{2000, 4000},
	{2500, 5000},
	{3000, 6000},
	{4000, 8000},
	{5000, 10000},
	{6000, 12000},
	{8000, 16000},
	{10000, 20000},
	{12000, 24000},
	{15000, 30000},
	{20000, 40000},
	{25000, 50000},
	{30000, 60000},
	{40000, 80000},
	{50000, 100000},
	{60000, 120000},
	{75000, 150000},
	{100000, 200000},
	{125000, 250000},
	{150000, 300000},
	{200000, 400000},
	{250000, 500000},
	{300000, 600000},
}

--转换表结构
local function Invert(t)
	local ret = {}
	for i=1, #t do
		ret[t[i]] = true
	end
	return ret
end

-- SignupCostI = Invert(SignupCost)
PromotionBlindsTimeI = Invert(PromotionBlindsTime)
InitialChipsI = Invert(InitialChips)

return cfg