/*Spin-off of "Project: Data dig"*/
/*We’ve curated a set of interesting data sets for you: NASA astronauts, Superbowl results, Pokemon stats, NBA players, Top movies, Top countries by population, Solar system objects by size, Marvel characters, Furniture store sales, Earned KA badges, Winston's donut logs, Card game results, and NFL draft picks.

Pick one of those data sets or create a data set like that, and use advanced SELECT queries to discover things about the data. What sort of questions might one have about that data, like if they were using it for an app or a business idea? Here are some ideas:

1.What are average, max, and min values in the data?
2.What about those numbers per category in the data (using HAVING)?
3.What ways are there to group the data values that don’t exist yet (using CASE)?
4.What interesting ways are there to filter the data (using AND/OR)? */

/* Put your data in here and query it! */

/*
 Top 100 Countres By Population, 2014
 Collected by https://www.khanacademy.org/profile/darrylyeo/
 Data adapted from
 http://www.worldometers.info/world-population/population-by-country/
 */

CREATE TABLE countries_by_population (
    rank INTEGER PRIMARY KEY AUTOINCREMENT,
    country TEXT,
    population INTEGER,
    percent_one_year_change NUMERIC,
    population_change INTEGER,
    net_migrants INTEGER,
    median_age NUMERIC,
    percent_aged_over_60 INTEGER,
    fertility_rate NUMERIC,
    area_sq_km INTEGER,
    density_per_sq_km INTEGER,
    urban_pop_percent INTEGER,
    urban_pop INTEGER,
    percent_of_world_pop NUMERIC
);
    
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "China", 1393783836, 0.59, 8217299, -313996, 35.7, 14, 1.66, 9596947, 145, 54, 756300115, 19.24
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "India", 1267401849, 1.22, 15262253, -483402, 26.6, 9, 2.53, 3287265, 386, 32, 410404773, 17.50
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "U.S.A.", 322583006, 0.79, 2532290, 1008835, 37.5, 20, 1.99, 9629056, 34, 83, 268084524, 4.45
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Indonesia", 252812245, 1.18, 2946614, -141488, 28.1, 8, 2.38, 1904567, 133, 53, 133860626, 3.49
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Brazil", 202033670, 0.83, 1671745, -46113, 30.7, 12, 1.83, 8514209, 24, 85, 172549088, 2.79
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Pakistan", 185132926, 1.64, 2990332, -334980, 22.8, 7, 3.30, 796096, 233, 37, 68888535, 2.56
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Nigeria", 178516904, 2.82, 4901559, -60000, 17.8, 4, 6.01, 923766, 193, 51, 91834051, 2.46
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Bangladesh", 158512570, 1.22, 1917608, -456443, 25.4, 7, 2.24, 143998, 1101, 30, 47334620, 2.19
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Russia", 142467651, -0.26, -366038, 254018, 38.4, 19, 1.51, 17076310, 8, 74, 105911587, 1.97
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Japan", 126999808, -0.11, -143769, 73466, 46.2, 33, 1.40, 377873, 336, 93, 117995650, 1.75
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Mexico", 123799215, 1.20, 1466816, -267202, 27.3, 10, 2.23, 1958198, 63, 79, 97734761, 1.71
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Philippines", 100096496, 1.73, 1702922, -156793, 23.2, 7, 3.11, 300000, 334, 50, 49643960, 1.38
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Ethiopia", 96506031, 2.56, 2405275, -11577, 18.4, 5, 4.72, 1104302, 87, 18, 17172948, 1.33
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Vietnam", 92547959, 0.95, 868226, -53768, 30.3, 10, 1.78, 331689, 279, 33, 30482811, 1.28
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Egypt", 83386739, 1.62, 1330361, -47438, 25.5, 9, 2.82, 1001450, 83, 44, 36713659, 1.15
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Germany", 82652256, -0.09, -74370, 42856, 45.9, 28, 1.40, 357021, 232, 74, 61437197, 1.14
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Iran", 78470222, 1.32, 1023054, -67715, 29.0, 8, 1.92, 1648188, 48, 70, 54547946, 1.08
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Turkey", 75837020, 1.21, 904379, -47433, 29.8, 11, 2.07, 783562, 97, 74, 56235478, 1.05
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Congo", 69360118, 2.73, 1846441, -11941, 17.4, 5, 6.08, 2344832, 30, 36, 24912419, 0.96
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Thailand", 67222972, 0.32, 212470, -29600, 37.4, 15, 1.42, 513113, 131, 35, 23691532, 0.93
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "France", 64641279, 0.54, 349999, 124252, 40.8, 24, 1.98, 551500, 117, 87, 56419209, 0.89
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "U.K.", 63489234, 0.56, 352969, 177549, 40.4, 23, 1.88, 242900, 261, 80, 50802810, 0.88
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Italy", 61070224, 0.13, 79947, 209262, 44.7, 27, 1.46, 301318, 203, 69, 42101235, 0.84
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Burma", 53718958, 0.86, 459940, -30314, 29.4, 9, 1.97, 676578, 79, 34, 18447667, 0.74
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "South Africa", 53139528, 0.69, 363398, 33917, 26.2, 9, 2.43, 1221037, 44, 63, 33638902, 0.73
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Tanzania", 50757459, 3.05, 1504333, -34461, 17.5, 5, 5.31, 945081, 54, 28, 14271377, 0.70
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "South Korea", 49512026, 0.51, 249328, 61441, 39.9, 18, 1.30, 99538, 497, 84, 41591331, 0.68
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Colombia", 48929706, 1.26, 608301, -24000, 28.0, 10, 2.33, 1138907, 43, 76, 37240023, 0.68
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Spain", 47066402, 0.30, 139439, 156310, 41.8, 23, 1.48, 505992, 93, 78, 36646776, 0.65
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Kenya", 45545980, 2.69, 1192289, -13051, 18.9, 4, 4.49, 580366, 78, 25, 11482050, 0.63
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Ukraine", 44941303, -0.66, -297502, 11403, 39.8, 22, 1.44, 603701, 74, 69, 31225151, 0.62
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Argentina", 41803125, 0.86, 356879, -22974, 31.3, 15, 2.20, 2780387, 15, 93, 38848372, 0.58
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Algeria", 39928947, 1.84, 720753, -9960, 27.2, 8, 2.80, 2381685, 17, 75, 30093970, 0.55
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Uganda", 38844624, 3.37, 1265748, -29374, 15.8, 4, 6.00, 241037, 161, 17, 6533597, 0.54
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Sudan", 38764090, 2.11, 799784, -145645, 19.3, 5, 4.53, 1861510, 21, 34, 13058626, 0.54
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Poland", 38220543, 0.01, 3908, -8613, 39.1, 22, 1.39, 323251, 118, 61, 23216731, 0.53
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Canada", 35524732, 0.98, 343028, 225751, 40.3, 22, 1.66, 9970455, 4, 81, 28769673, 0.49
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Iraq", 34768761, 2.97, 1003529, -90291, 19.9, 5, 4.12, 438319, 79, 66, 23088950, 0.48
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Morocco", 33492909, 1.47, 484759, -96109, 27.2, 8, 2.69, 446548, 75, 58, 19469883, 0.46
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Afghanistan", 31280518, 2.39, 728844, -90458, 16.8, 4, 5.24, 652085, 48, 24, 7652414, 0.43
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Venezuela", 30851343, 1.47, 446136, 8000, 27.4, 10, 2.43, 912060, 34, 94, 29023840, 0.43
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Peru", 30769077, 1.30, 393474, -71581, 26.8, 10, 2.47, 1285204, 24, 78, 24073769, 0.42
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Malaysia", 30187896, 1.58, 470931, 96816, 27.8, 9, 2.00, 329847, 92, 75, 22552009, 0.42
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Saudi Arabia", 29369428, 1.88, 540558, 52720, 27.9, 5, 2.74, 2149717, 14, 83, 24349303, 0.41
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Uzbekistan", 29324920, 1.35, 390818, -46905, 25.6, 7, 2.35, 447401, 66, 36, 10668375, 0.40
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Nepal", 28120740, 1.16, 323283, -92841, 22.7, 8, 2.44, 147181, 191, 18, 5062259, 0.39
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Mozambique", 26472977, 2.47, 639225, -4782, 17.3, 5, 5.29, 801580, 33, 32, 8467165, 0.37
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Ghana", 26442178, 2.08, 537580, 22722, 20.8, 5, 3.95, 238534, 111, 54, 14229154, 0.37
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "North Korea", 25026588, 0.53, 131108, 0, 33.7, 13, 2.00, 120538, 208, 61, 15200505, 0.35
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Yemen", 24968508, 2.30, 561127, -27000, 19.4, 5, 4.29, 527965, 47, 34, 8502413, 0.34
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Australia", 23630169, 1.23, 287616, 163179, 37.3, 20, 1.88, 7739983, 3, 90, 21179230, 0.33
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Madagascar", 23571962, 2.82, 647111, -1000, 18.6, 5, 4.57, 587039, 40, 34, 8122672, 0.33
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Cameroon", 22818632, 2.54, 564673, -10696, 18.4, 5, 4.89, 475438, 48, 54, 12274491, 0.32
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Angola", 22137261, 3.10, 665643, 13709, 16.3, 4, 6.02, 1246678, 18, 61, 13595362, 0.31
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Syria", 21986615, 0.40, 88554, 284013, 22.6, 7, 3.04, 185180, 119, 57, 12587305, 0.30
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Romania", 21640168, -0.27, -58417, -9353, 39.7, 21, 1.40, 238391, 91, 53, 11449200, 0.30
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Sri Lanka", 21445775, 0.81, 172547, -65828, 31.7, 13, 2.34, 65610, 327, 15, 3298712, 0.30
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Côte d'Ivoire", 20804774, 2.41, 488688, -14213, 19.1, 5, 4.91, 322465, 65, 53, 11115596, 0.29
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Niger", 18534802, 3.95, 703532, -5699, 15.0, 4, 7.58, 1266990, 15, 19, 3450914, 0.26
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Chile", 17772871, 0.87, 153163, 6000, 33.4, 15, 1.84, 756614, 23, 90, 15952124, 0.25
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Burkina Faso", 17419615, 2.86, 484776, -25000, 17.2, 4, 5.73, 274001, 64, 29, 5048742, 0.24
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Malawi", 16829144, 2.85, 466577, 0, 17.3, 5, 5.50, 118484, 142, 16, 2717984, 0.23
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Netherlands", 16802463, 0.26, 43234, 10218, 42.1, 24, 1.77, 41528, 405, 84, 14161696, 0.23
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Kazakhstan", 16606878, 1.01, 166292, 0, 29.5, 10, 2.46, 2725119, 6, 53, 8859912, 0.23
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Ecuador", 15982551, 1.55, 244673, -6549, 26.4, 10, 2.61, 283560, 56, 69, 11043074, 0.22
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Guatemala", 15859714, 2.53, 391511, -18251, 19.5, 7, 3.88, 108889, 146, 51, 8110242, 0.22
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Mali", 15768227, 3.05, 466577, -48558, 16.2, 4, 6.85, 1240225, 13, 37, 5810359, 0.22
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Cambodia", 15408270, 1.80, 273101, -40717, 24.7, 8, 2.92, 181035, 85, 21, 3168936, 0.21
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Zambia", 15021002, 3.32, 482362, -9302, 16.6, 4, 5.74, 752631, 20, 40, 6080022, 0.21
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Zimbabwe", 14599325, 3.18, 449677, -91896, 19.8, 6, 3.59, 390753, 37, 40, 5851422, 0.20
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Senegal", 14548171, 2.94, 414891, -22134, 18.1, 5, 5.00, 196722, 74, 43, 6325367, 0.20
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Chad", 13211146, 3.01, 385832, -20145, 15.9, 4, 6.42, 1284007, 10, 22, 2919644, 0.18
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Rwanda", 12100049, 2.75, 323527, -9643, 18.3, 4, 4.66, 26338, 459, 20, 2424481, 0.17
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Guinea", 12043898, 2.54, 298709, -2818, 18.7, 5, 5.04, 245859, 49, 37, 4445011, 0.17
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "South Sudan", 11738718, 3.92, 442545, 169675, 18.8, 5, 5.06, 644312, 18, 19, 2187930, 0.16
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Cuba", 11258597, -0.06, -7032, -29767, 40.7, 19, 1.46, 110861, 102, 75, 8458245, 0.16
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Belgium", 11144420, 0.36, 39944, 35305, 41.7, 24, 1.84, 30528, 365, 98, 10874010, 0.15
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Greece", 11128404, 0.00, 414, 10163, 43.2, 26, 1.51, 131956, 84, 62, 6921007, 0.15
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Tunisia", 11116899, 1.09, 120384, -6588, 30.7, 11, 2.02, 163609, 68, 67, 7444031, 0.15
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Bolivia", 10847664, 1.65, 176464, -26433, 22.6, 7, 3.30, 1098609, 10, 68, 7381135, 0.15
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Somalia", 10805651, 2.95, 310068, -34461, 16.4, 4, 6.71, 637652, 17, 39, 4231814, 0.15
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Czech Republic", 10740468, 0.36, 38271, 43390, 40.6, 24, 1.53, 78866, 136, 73, 7881096, 0.15
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Portugal", 10610304, 0.02, 2148, 19999, 42.6, 25, 1.33, 91982, 115, 63, 6646197, 0.15
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Benin", 10599510, 2.67, 276036, 2759, 18.5, 5, 4.97, 112622, 94, 47, 4965003, 0.15
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Dominican Republic", 10528954, 1.20, 125193, -28000, 26.1, 9, 2.53, 48511, 217, 71, 7510330, 0.15
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Burundi", 10482752, 3.15, 320220, 6091, 17.6, 4, 6.16, 27834, 377, 12, 1233966, 0.14
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Haiti", 10461409, 1.40, 143948, -37282, 22.5, 7, 3.25, 27750, 377, 57, 5985632, 0.14
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Hungary", 9933173, -0.22, -21768, 15752, 40.8, 24, 1.39, 93032, 107, 71, 7036844, 0.14
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Sweden", 9631261, 0.63, 60156, 42234, 41.1, 26, 1.91, 449954, 21, 86, 8249625, 0.13
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Azerbaijan", 9514887, 1.08, 101467, 0, 30.1, 9, 1.94, 86600, 110, 54, 5173624, 0.13
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Serbia", 9468378, -0.44, -42128, -23840, 39.0, 22, 1.38, 88361, 107, 57, 5436059, 0.13
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "United Arab Emirates", 9445624, 1.06, 99495, 153484, 30.7, 1, 1.85, 83600, 113, 85, 8047522, 0.13
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Belarus", 9307609, -0.52, -49069, 2650, 39.4, 20, 1.47, 207602, 45, 76, 7095843, 0.13
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Austria", 8526429, 0.37, 31284, 30371, 43.0, 24, 1.45, 83858, 102, 68, 5824085, 0.12
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Tajikistan", 8408947, 2.45, 201113, -18197, 21.9, 5, 3.82, 143099, 59, 27, 2246516, 0.12
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Honduras", 8260749, 2.01, 163061, -11487, 22.2, 7, 3.08, 112088, 74, 54, 4449281, 0.11
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Switzerland", 8157896, 0.99, 80063, 64965, 42.1, 24, 1.52, 41284, 198, 74, 6030730, 0.11
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Israel", 7822107, 1.15, 88963, 19636, 30.1, 15, 2.91, 22145, 353, 92, 7201448, 0.11
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Jordan", 7504812, 3.18, 231013, 81911, 23.7, 5, 3.34, 89342, 84, 83, 6261026, 0.10
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants,median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Papua New Guinea", 7476108, 2.12, 154846, 0, 21.0, 5, 3.86, 462831, 16, 13, 950364, 0.10
);

SELECT MAX(population) 
FROM countries_by_population;

SELECT AVG(urban_pop) 
FROM countries_by_population;

SELECT MIN(fertility_rate ) 
FROM countries_by_population;

SELECT * FROM countries_by_population
WHERE population > 1000000
AND median_age < 50;

SELECT * FROM countries_by_population
WHERE urban_pop > 200000
OR net_migrants < 1000;

SELECT * FROM countries_by_population
WHERE population > 7000000
AND urban_pop > 1000000
AND median_age > 40;

SELECT country, AVG(density_per_sq_km) AS "avg_density" FROM countries_by_population 
GROUP BY country 
HAVING avg_density > 1000000;












