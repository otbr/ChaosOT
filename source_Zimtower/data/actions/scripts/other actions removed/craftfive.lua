-- The Souvenir Machine by Lukky513 --   
   function onUse(cid, item, frompos, item2, topos)
	mpos = {x=126, y=219, z=8, stackpos=255}
	if item.itemid == 1945 then
		thing = getThingfromPos(mpos)
		if thing.itemid == 2225 and thing.type >= 0 then
 			doSendMagicEffect(mpos,10)
			doRemoveItem(thing.uid,1)
			itemz = math.random(1,1580)
			if itemz == 1 then
				doCreateItem(2502,1,mpos)
			elseif itemz == 2 then
				doCreateItem(2503,1,mpos)
			elseif itemz == 3 then
				doCreateItem(2504,1,mpos)
			elseif itemz == 4 then
				doCreateItem(2641,1,mpos)
			elseif itemz == 5 then
				doCreateItem(2517,5,mpos)
			elseif itemz == 6 then
				doCreateItem(2471,1,mpos)
			elseif itemz == 7 then
				doCreateItem(2466,1,mpos)
			elseif itemz == 8 then
				doCreateItem(2470,1,mpos)
			elseif itemz == 9 then
				doCreateItem(2646,1,mpos)
			elseif itemz == 10 then
				doCreateItem(2523,1,mpos)
			elseif itemz == 11 then
				doCreateItem(2506,1,mpos)
			elseif itemz == 12 then
				doCreateItem(2503,1,mpos)
			elseif itemz == 13 then
				doCreateItem(2469,1,mpos)
			elseif itemz == 14 then
				doCreateItem(3982,1,mpos)
			elseif itemz == 15 then
				doCreateItem(2522,1,mpos)
			elseif itemz == 16 then
				doCreateItem(2352,1,mpos)
			elseif itemz == 17 then
				doCreateItem(3963,1,mpos)
			elseif itemz == 18 then
				doCreateItem(2446,1,mpos)
			elseif itemz == 19 then
				doCreateItem(2408,1,mpos)
			elseif itemz == 20 then
				doCreateItem(3964,1,mpos)
			elseif itemz == 21 then
				doCreateItem(3962,1,mpos)
			elseif itemz == 22 then
				doCreateItem(2443,1,mpos)
			elseif itemz == 23 then
				doCreateItem(2424,1,mpos)
			elseif itemz == 24 then
				doCreateItem(2452,1,mpos)
			elseif itemz == 25 then
				doCreateItem(2444,1,mpos)
			elseif itemz == 26 then
				doCreateItem(2274,1,mpos)
			elseif itemz == 27 then
				doCreateItem(2275,1,mpos)
			elseif itemz == 28 then
				doCreateItem(2276,1,mpos)
			elseif itemz == 29 then
				doCreateItem(2404,1,mpos)
			elseif itemz == 30 then
				doCreateItem(2435,1,mpos)
			elseif itemz == 31 then
				doCreateItem(2439,1,mpos)
			elseif itemz == 32 then
				doCreateItem(2449,5,mpos)
			elseif itemz == 33 then
				doCreateItem(2450,1,mpos)
			elseif itemz == 34 then
				doCreateItem(2453,1,mpos)
			elseif itemz == 35 then
				doCreateItem(3965,1,mpos)
			elseif itemz == 36 then
				doCreateItem(2352,1,mpos)
			elseif itemz == 37 then
				doCreateItem(2164,1,mpos)
			elseif itemz == 38 then
				doCreateItem(2168,1,mpos)
			elseif itemz == 39 then
				doCreateItem(2216,1,mpos)
			elseif itemz == 40 then
				doCreateItem(2214,1,mpos)
			elseif itemz == 41 then
				doCreateItem(2468,1,mpos)
			elseif itemz == 42 then
				doCreateItem(2474,1,mpos)
			elseif itemz == 43 then
				doCreateItem(2480,1,mpos)
			elseif itemz == 44 then
				doCreateItem(2508,1,mpos)
			elseif itemz == 45 then
				doCreateItem(2647,1,mpos)
			elseif itemz == 46 then
				doCreateItem(3983,1,mpos)
			elseif itemz == 47 then
				doCreateItem(2529,1,mpos)
			elseif itemz == 48 then
				doCreateItem(2195,1,mpos)
			
			elseif itemz == 49 then
				doCreateItem(2196,1,mpos)
			elseif itemz == 50 then
				doCreateItem(2648,1,mpos)
			elseif itemz == 51 then
				doCreateItem(2213,1,mpos)
			elseif itemz == 52 then
				doCreateItem(2458,1,mpos)
			elseif itemz == 53 then
				doCreateItem(2464,1,mpos)

			elseif itemz == 54 then
				doCreateItem(2140,1,mpos)

			elseif itemz == 55 then
				doCreateItem(2541,1,mpos)
			

----regulars x3-----


			elseif itemz == 56 then
				doCreateItem(2383,1,mpos)
			elseif itemz == 57 then
				doCreateItem(2383,1,mpos)
			elseif itemz == 58 then
				doCreateItem(2383,1,mpos)
			elseif itemz == 59 then
				doCreateItem(2390,1,mpos)
			elseif itemz == 60 then
				doCreateItem(2390,1,mpos)
			elseif itemz == 61 then
				doCreateItem(2390,1,mpos)
			elseif itemz == 62 then
				doCreateItem(2391,1,mpos)
			elseif itemz == 63 then
				doCreateItem(2391,1,mpos)
			elseif itemz == 64 then
				doCreateItem(2391,1,mpos)
			elseif itemz == 65 then
				doCreateItem(2392,1,mpos)
			elseif itemz == 66 then
				doCreateItem(2392,1,mpos)
			elseif itemz == 67 then
				doCreateItem(2392,1,mpos)
			
			elseif itemz == 68 then
				doCreateItem(2484,1,mpos)

			

			elseif itemz == 69 then
				doCreateItem(2393,1,mpos)
			elseif itemz == 70 then
				doCreateItem(2393,1,mpos)
			elseif itemz == 71 then
				doCreateItem(2393,1,mpos)
			elseif itemz == 72 then
				doCreateItem(2396,1,mpos)
			elseif itemz == 73 then
				doCreateItem(2396,1,mpos)
			elseif itemz == 74 then
				doCreateItem(2396,1,mpos)
			elseif itemz == 75 then
				doCreateItem(2400,1,mpos)
			elseif itemz == 76 then
				doCreateItem(2400,1,mpos)
			elseif itemz == 77 then
				doCreateItem(2400,1,mpos)
			elseif itemz == 78 then
				doCreateItem(2407,1,mpos)
			elseif itemz == 79 then
				doCreateItem(2407,1,mpos)
			elseif itemz == 80 then
				doCreateItem(2407,1,mpos)

			elseif itemz == 81 then
				doCreateItem(2409,1,mpos)
			elseif itemz == 82 then
				doCreateItem(2409,1,mpos)
			elseif itemz == 83 then
				doCreateItem(2409,1,mpos)
			elseif itemz == 84 then
				doCreateItem(2414,1,mpos)
			elseif itemz == 85 then
				doCreateItem(2414,1,mpos)
			elseif itemz == 86 then
				doCreateItem(2414,1,mpos)
			elseif itemz == 87 then
				doCreateItem(2415,1,mpos)
			elseif itemz == 88 then
				doCreateItem(2415,1,mpos)
			elseif itemz == 89 then
				doCreateItem(2415,1,mpos)
			elseif itemz == 90 then
				doCreateItem(2418,1,mpos)
			elseif itemz == 91 then
				doCreateItem(2418,1,mpos)
			elseif itemz == 92 then
				doCreateItem(2418,1,mpos)
			elseif itemz == 93 then
				doCreateItem(2421,1,mpos)
			elseif itemz == 94 then
				doCreateItem(2421,1,mpos)
			elseif itemz == 95 then
				doCreateItem(2421,1,mpos)
			elseif itemz == 96 then
				doCreateItem(2427,1,mpos)
			elseif itemz == 97 then
				doCreateItem(2427,1,mpos)
			elseif itemz == 98 then
				doCreateItem(2427,1,mpos)
			elseif itemz == 99 then
				doCreateItem(2430,1,mpos)
			elseif itemz == 100 then
				doCreateItem(2430,1,mpos)
			elseif itemz == 101 then
				doCreateItem(2430,1,mpos)
			elseif itemz == 102 then
				doCreateItem(2431,1,mpos)
			elseif itemz == 103 then
				doCreateItem(2431,1,mpos)
			elseif itemz == 104 then
				doCreateItem(2431,1,mpos)
			elseif itemz == 105 then
				doCreateItem(2432,1,mpos)
			elseif itemz == 106 then
				doCreateItem(2432,1,mpos)
			elseif itemz == 107 then
				doCreateItem(2432,1,mpos)		
			elseif itemz == 108 then
				doCreateItem(2434,1,mpos)
			elseif itemz == 109 then
				doCreateItem(2434,1,mpos)
			elseif itemz == 110 then
				doCreateItem(2434,1,mpos)
			elseif itemz == 111 then
				doCreateItem(2436,1,mpos)
			elseif itemz == 112 then
				doCreateItem(2436,1,mpos)
			elseif itemz == 113 then
				doCreateItem(2436,1,mpos)
			elseif itemz == 114 then
				doCreateItem(2437,1,mpos)
			elseif itemz == 115 then
				doCreateItem(2437,1,mpos)
			elseif itemz == 116 then
				doCreateItem(2437,1,mpos)
			elseif itemz == 117 then
				doCreateItem(2438,1,mpos)
			elseif itemz == 118 then
				doCreateItem(2438,1,mpos)
			elseif itemz == 119 then
				doCreateItem(2438,1,mpos)
			elseif itemz == 120 then
				doCreateItem(2445,1,mpos)
			elseif itemz == 121 then
				doCreateItem(2445,1,mpos)
			elseif itemz == 122 then
				doCreateItem(2445,1,mpos)
			elseif itemz == 123 then
				doCreateItem(2451,1,mpos)
			elseif itemz == 124 then
				doCreateItem(2451,1,mpos)
			elseif itemz == 125 then
				doCreateItem(2451,1,mpos)
			elseif itemz == 126 then
				doCreateItem(2514,1,mpos)
			elseif itemz == 127 then
				doCreateItem(2514,1,mpos)
			elseif itemz == 128 then
				doCreateItem(2514,1,mpos)
			elseif itemz == 129 then
				doCreateItem(2515,1,mpos)
			elseif itemz == 130 then
				doCreateItem(2515,1,mpos)
			elseif itemz == 131 then
				doCreateItem(2515,1,mpos)
			elseif itemz == 132 then
				doCreateItem(2516,1,mpos)
			elseif itemz == 133 then
				doCreateItem(2516,1,mpos)
			elseif itemz == 134 then
				doCreateItem(2516,1,mpos)
			elseif itemz == 135 then
				doCreateItem(2518,1,mpos)
			elseif itemz == 136 then
				doCreateItem(2518,1,mpos)
			elseif itemz == 137 then
				doCreateItem(2518,1,mpos)
			elseif itemz == 138 then
				doCreateItem(2519,1,mpos)
			elseif itemz == 139 then
				doCreateItem(2519,1,mpos)
			elseif itemz == 140 then
				doCreateItem(2519,1,mpos)				
			elseif itemz == 141 then
				doCreateItem(2520,1,mpos)
			elseif itemz == 142 then
				doCreateItem(2520,1,mpos)
			elseif itemz == 143 then
				doCreateItem(2520,1,mpos)
			elseif itemz == 144 then
				doCreateItem(2528,1,mpos)
			elseif itemz == 145 then
				doCreateItem(2528,1,mpos)
			elseif itemz == 146 then
				doCreateItem(2528,1,mpos)

			elseif itemz == 147 then
				doCreateItem(2532,1,mpos)
			elseif itemz == 148 then
				doCreateItem(2532,1,mpos)
			elseif itemz == 149 then
				doCreateItem(2532,1,mpos)
			elseif itemz == 150 then
				doCreateItem(2534,1,mpos)
			elseif itemz == 151 then
				doCreateItem(2534,1,mpos)
			elseif itemz == 152 then
				doCreateItem(2534,1,mpos)
			elseif itemz == 153 then
				doCreateItem(2536,1,mpos)
			elseif itemz == 154 then
				doCreateItem(2536,1,mpos)
			elseif itemz == 155 then
				doCreateItem(2536,1,mpos)
			elseif itemz == 156 then
				doCreateItem(2537,1,mpos)
			elseif itemz == 157 then
				doCreateItem(2537,1,mpos)
			elseif itemz == 158 then
				doCreateItem(2537,1,mpos)
			elseif itemz == 159 then
				doCreateItem(2539,1,mpos)
			elseif itemz == 160 then
				doCreateItem(2539,1,mpos)
			elseif itemz == 161 then
				doCreateItem(2539,1,mpos)
			elseif itemz == 162 then
				doCreateItem(2540,1,mpos)
			elseif itemz == 163 then
				doCreateItem(2540,1,mpos)
			elseif itemz == 164 then
				doCreateItem(2540,1,mpos)
			elseif itemz == 165 then
				doCreateItem(2542,1,mpos)
			elseif itemz == 166 then
				doCreateItem(2542,1,mpos)
			elseif itemz == 167 then
				doCreateItem(2542,1,mpos)
			elseif itemz == 168 then
				doCreateItem(2123,1,mpos)
			elseif itemz == 169 then
				doCreateItem(2123,1,mpos)
			elseif itemz == 170 then
				doCreateItem(2123,1,mpos)
			elseif itemz == 171 then
				doCreateItem(2124,1,mpos)
			elseif itemz == 172 then
				doCreateItem(2124,1,mpos)
			elseif itemz == 173 then
				doCreateItem(2124,1,mpos)
			elseif itemz == 174 then
				doCreateItem(2125,1,mpos)
			elseif itemz == 175 then
				doCreateItem(2125,1,mpos)
			elseif itemz == 176 then
				doCreateItem(2125,1,mpos)

			elseif itemz == 177 then
				doCreateItem(2127,1,mpos)
			elseif itemz == 178 then
				doCreateItem(2127,1,mpos)
			elseif itemz == 179 then
				doCreateItem(2127,1,mpos)
			elseif itemz == 180 then
				doCreateItem(2130,1,mpos)
			elseif itemz == 181 then
				doCreateItem(2130,1,mpos)
			elseif itemz == 182 then
				doCreateItem(2130,1,mpos)
			elseif itemz == 183 then
				doCreateItem(2131,1,mpos)
			elseif itemz == 184 then
				doCreateItem(2131,1,mpos)
			elseif itemz == 185 then
				doCreateItem(2131,1,mpos)
			elseif itemz == 186 then
				doCreateItem(2133,1,mpos)
			elseif itemz == 187 then
				doCreateItem(2133,1,mpos)
			elseif itemz == 188 then
				doCreateItem(2133,1,mpos)
			elseif itemz == 189 then
				doCreateItem(2135,1,mpos)
			elseif itemz == 190 then
				doCreateItem(2135,1,mpos)
			elseif itemz == 191 then
				doCreateItem(2135,1,mpos)
			elseif itemz == 192 then
				doCreateItem(2138,1,mpos)
			elseif itemz == 193 then
				doCreateItem(2138,1,mpos)
			elseif itemz == 194 then
				doCreateItem(2138,1,mpos)
			elseif itemz == 195 then
				doCreateItem(2142,1,mpos)
			elseif itemz == 196 then
				doCreateItem(2142,1,mpos)
			elseif itemz == 197 then
				doCreateItem(2142,1,mpos)
			elseif itemz == 198 then
				doCreateItem(2160,1,mpos)
			elseif itemz == 199 then
				doCreateItem(2160,1,mpos)
			elseif itemz == 200 then
				doCreateItem(2160,1,mpos)
			elseif itemz == 201 then
				doCreateItem(2179,1,mpos)
			elseif itemz == 202 then
				doCreateItem(2179,1,mpos)
			elseif itemz == 203 then
				doCreateItem(2179,1,mpos)
			elseif itemz == 204 then
				doCreateItem(2195,1,mpos)
			elseif itemz == 205 then
				doCreateItem(2195,1,mpos)
			elseif itemz == 206 then
				doCreateItem(2195,1,mpos)
			elseif itemz == 207 then
				doCreateItem(2319,1,mpos)
			elseif itemz == 208 then
				doCreateItem(2319,1,mpos)
			elseif itemz == 209 then
				doCreateItem(2319,1,mpos)
			elseif itemz == 210 then
				doCreateItem(2342,1,mpos)
			elseif itemz == 211 then
				doCreateItem(2342,1,mpos)
			elseif itemz == 212 then
				doCreateItem(2342,1,mpos)
			elseif itemz == 213 then
				doCreateItem(2343,1,mpos)
			elseif itemz == 214 then
				doCreateItem(2343,1,mpos)
			elseif itemz == 215 then
				doCreateItem(2343,1,mpos)
			elseif itemz == 216 then
				doCreateItem(2357,1,mpos)
			elseif itemz == 217 then
				doCreateItem(2357,1,mpos)
			elseif itemz == 218 then
				doCreateItem(2357,1,mpos)
			elseif itemz == 219 then
				doCreateItem(2358,1,mpos)
			elseif itemz == 220 then
				doCreateItem(2358,1,mpos)
			elseif itemz == 221 then
				doCreateItem(2358,1,mpos)

			elseif itemz == 222 then
				doCreateItem(2457,1,mpos)
			elseif itemz == 223 then
				doCreateItem(2457,1,mpos)
			elseif itemz == 224 then
				doCreateItem(2457,1,mpos)
			elseif itemz == 225 then
				doCreateItem(2462,1,mpos)
			elseif itemz == 226 then
				doCreateItem(2462,1,mpos)
			elseif itemz == 227 then
				doCreateItem(2462,1,mpos)
			elseif itemz == 228 then
				doCreateItem(2463,1,mpos)
			elseif itemz == 229 then
				doCreateItem(2463,1,mpos)
			elseif itemz == 230 then
				doCreateItem(2463,1,mpos)
			elseif itemz == 231 then
				doCreateItem(2472,1,mpos)
			elseif itemz == 232 then
				doCreateItem(2472,1,mpos)
			elseif itemz == 233 then
				doCreateItem(2472,1,mpos)
			elseif itemz == 234 then
				doCreateItem(2475,1,mpos)
			elseif itemz == 235 then
				doCreateItem(2475,1,mpos)
			elseif itemz == 236 then
				doCreateItem(2475,1,mpos)
			elseif itemz == 237 then
				doCreateItem(2476,1,mpos)
			elseif itemz == 238 then
				doCreateItem(2476,1,mpos)
			elseif itemz == 239 then
				doCreateItem(2476,1,mpos)
			elseif itemz == 240 then
				doCreateItem(2477,1,mpos)
			elseif itemz == 241 then
				doCreateItem(2477,1,mpos)
			elseif itemz == 242 then
				doCreateItem(2477,1,mpos)
			elseif itemz == 243 then
				doCreateItem(2479,1,mpos)
			elseif itemz == 244 then
				doCreateItem(2479,1,mpos)
			elseif itemz == 245 then
				doCreateItem(2479,1,mpos)
			elseif itemz == 246 then
				doCreateItem(2486,1,mpos)
			elseif itemz == 247 then
				doCreateItem(2486,1,mpos)
			elseif itemz == 248 then
				doCreateItem(2486,1,mpos)
			elseif itemz == 249 then
				doCreateItem(2487,1,mpos)
			elseif itemz == 250 then
				doCreateItem(2487,1,mpos)
			elseif itemz == 251 then
				doCreateItem(2487,1,mpos)
			elseif itemz == 252 then
				doCreateItem(2488,1,mpos)
			elseif itemz == 253 then
				doCreateItem(2488,1,mpos)
			elseif itemz == 254 then
				doCreateItem(2488,1,mpos)
			elseif itemz == 255 then
				doCreateItem(2489,1,mpos)
			elseif itemz == 256 then
				doCreateItem(2489,1,mpos)
			elseif itemz == 257 then
				doCreateItem(2489,1,mpos)
			elseif itemz == 258 then
				doCreateItem(2490,1,mpos)
			elseif itemz == 259 then
				doCreateItem(2490,1,mpos)
			elseif itemz == 260 then
				doCreateItem(2490,1,mpos)
			elseif itemz == 261 then
				doCreateItem(2491,1,mpos)
			elseif itemz == 262 then
				doCreateItem(2491,1,mpos)
			elseif itemz == 263 then
				doCreateItem(2491,1,mpos)
			elseif itemz == 264 then
				doCreateItem(2492,1,mpos)
			elseif itemz == 265 then
				doCreateItem(2492,1,mpos)
			elseif itemz == 266 then
				doCreateItem(2492,1,mpos)
			elseif itemz == 267 then
				doCreateItem(2493,1,mpos)
			elseif itemz == 268 then
				doCreateItem(2493,1,mpos)
			elseif itemz == 269 then
				doCreateItem(2493,1,mpos)							elseif itemz == 270 then
				doCreateItem(2494,1,mpos)
			elseif itemz == 271 then
				doCreateItem(2494,1,mpos)
			elseif itemz == 272 then
				doCreateItem(2494,1,mpos)							elseif itemz == 273 then
				doCreateItem(2495,1,mpos)
			elseif itemz == 274 then
				doCreateItem(2495,1,mpos)
			elseif itemz == 275 then
				doCreateItem(2495,1,mpos)
			elseif itemz == 276 then
				doCreateItem(2496,1,mpos)
			elseif itemz == 277 then
				doCreateItem(2496,1,mpos)
			elseif itemz == 278 then
				doCreateItem(2496,1,mpos)
			elseif itemz == 279 then
				doCreateItem(2497,1,mpos)
			elseif itemz == 280 then
				doCreateItem(2497,1,mpos)
			elseif itemz == 281 then
				doCreateItem(2497,1,mpos)
			elseif itemz == 282 then
				doCreateItem(2498,1,mpos)
			elseif itemz == 283 then
				doCreateItem(2498,1,mpos)
			elseif itemz == 284 then
				doCreateItem(2498,1,mpos)
			elseif itemz == 285 then
				doCreateItem(2498,1,mpos)
			elseif itemz == 286 then
				doCreateItem(2497,1,mpos)
			elseif itemz == 287 then
				doCreateItem(2640,1,mpos)
			elseif itemz == 288 then
				doCreateItem(2642,1,mpos)
			elseif itemz == 289 then
				doCreateItem(2642,1,mpos)
			elseif itemz == 290 then
				doCreateItem(2642,1,mpos)
			elseif itemz == 291 then
				doCreateItem(2644,1,mpos)
			elseif itemz == 292 then
				doCreateItem(2644,1,mpos)
			elseif itemz == 293 then
				doCreateItem(2644,1,mpos)
			elseif itemz == 294 then
				doCreateItem(2645,1,mpos)
			elseif itemz == 295 then
				doCreateItem(2645,1,mpos)
			elseif itemz == 296 then
				doCreateItem(2645,1,mpos)
			elseif itemz == 297 then
				doCreateItem(2647,1,mpos)
			elseif itemz == 298 then
				doCreateItem(2647,1,mpos)
			elseif itemz == 299 then
				doCreateItem(2647,1,mpos)
			elseif itemz == 300 then
				doCreateItem(2647,1,mpos)
			elseif itemz == 301 then
				doCreateItem(2647,1,mpos)
			elseif itemz == 302 then
				doCreateItem(2647,1,mpos)
			elseif itemz == 303 then
				doCreateItem(2660,1,mpos)
			elseif itemz == 304 then
				doCreateItem(2660,1,mpos)
			elseif itemz == 305 then
				doCreateItem(2660,1,mpos)
			elseif itemz == 306 then
				doCreateItem(2662,1,mpos)
			elseif itemz == 307 then
				doCreateItem(2662,1,mpos)
			elseif itemz == 308 then
				doCreateItem(2662,1,mpos)
			elseif itemz == 309 then
				doCreateItem(2662,1,mpos)
			elseif itemz == 310 then
				doCreateItem(2660,1,mpos)
			elseif itemz == 311 then
				doCreateItem(2663,1,mpos)
			elseif itemz == 312 then
				doCreateItem(2664,1,mpos)
			elseif itemz == 313 then
				doCreateItem(2664,1,mpos)
			elseif itemz == 314 then
				doCreateItem(2664,1,mpos)
			elseif itemz == 315 then
				doCreateItem(2665,1,mpos)
			elseif itemz == 316 then
				doCreateItem(2665,1,mpos)
			elseif itemz == 317 then
				doCreateItem(2665,1,mpos)
			elseif itemz == 318 then
				doCreateItem(3967,1,mpos)
			elseif itemz == 319 then
				doCreateItem(3967,1,mpos)
			elseif itemz == 320 then
				doCreateItem(3967,1,mpos)
			elseif itemz == 321 then
				doCreateItem(3968,1,mpos)
			elseif itemz == 322 then
				doCreateItem(3968,1,mpos)
			elseif itemz == 323 then
				doCreateItem(3968,1,mpos)
			elseif itemz == 324 then
				doCreateItem(3969,1,mpos)
			elseif itemz == 325 then
				doCreateItem(3969,1,mpos)
			elseif itemz == 326 then
				doCreateItem(3969,1,mpos)
			elseif itemz == 327 then
				doCreateItem(3970,1,mpos)
			elseif itemz == 328 then
				doCreateItem(3970,1,mpos)
			elseif itemz == 329 then
				doCreateItem(3970,1,mpos)
			elseif itemz == 330 then
				doCreateItem(3971,1,mpos)
			elseif itemz == 331 then
				doCreateItem(3971,1,mpos)
			elseif itemz == 332 then
				doCreateItem(3971,1,mpos)
			elseif itemz == 333 then
				doCreateItem(3972,1,mpos)
			elseif itemz == 334 then
				doCreateItem(3972,1,mpos)
			elseif itemz == 335 then
				doCreateItem(3972,1,mpos)
			elseif itemz == 336 then
				doCreateItem(2171,1,mpos)
			elseif itemz == 337 then
				doCreateItem(2171,1,mpos)
			elseif itemz == 338 then
				doCreateItem(2171,1,mpos)
			elseif itemz == 339 then
				doCreateItem(2507,1,mpos)
			elseif itemz == 340 then
				doCreateItem(2507,1,mpos)
			elseif itemz == 341 then
				doCreateItem(2507,1,mpos)
			elseif itemz == 342 then
				doCreateItem(2499,1,mpos)
			elseif itemz == 343 then
				doCreateItem(2499,1,mpos)
			elseif itemz == 344 then
				doCreateItem(2499,1,mpos)
			elseif itemz == 345 then
				doCreateItem(2500,1,mpos)
			elseif itemz == 346 then
				doCreateItem(2500,1,mpos)
			elseif itemz == 347 then
				doCreateItem(2500,1,mpos)
			elseif itemz == 348 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 349 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 350 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 351 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 352 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 353 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 354 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 355 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 356 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 357 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 358 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 359 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 360 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 361 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 362 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 363 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 364 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 365 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 366 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 367 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 368 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 369 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 370 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 371 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 372 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 373 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 374 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 375 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 376 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 377 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 378 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 379 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 380 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 381 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 382 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 383 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 384 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 385 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 386 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 387 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 388 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 389 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 390 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 391 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 392 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 393 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 394 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 395 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 396 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 397 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 398 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 399 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 400 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 401 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 402 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 402 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 403 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 404 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 405 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 406 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 407 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 408 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 409 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 410 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 411 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 412 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 413 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 414 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 415 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 416 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 417 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 418 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 419 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 420 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 421 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 422 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 423 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 424 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 425 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 426 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 427 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 428 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 429 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 430 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 431 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 432 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 433 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 434 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 435 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 436 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 437 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 438 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 439 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 440 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 441 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 442 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 443 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 444 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 445 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 446 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 447 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 448 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 449 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 450 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 451 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 452 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 453 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 454 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 455 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 456 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 457 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 458 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 459 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 460 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 461 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 462 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 463 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 464 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 465 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 466 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 467 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 468 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 469 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 470 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 471 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 472 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 473 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 474 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 475 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 476 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 477 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 478 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 479 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 480 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 481 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 482 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 483 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 484 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 485 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 486 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 487 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 488 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 489 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 490 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 491 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 492 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 493 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 494 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 495 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 496 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 497 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 498 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 499 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 500 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 501 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 502 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 503 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 504 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 505 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 506 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 507 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 508 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 509 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 510 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 511 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 512 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 513 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 514 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 515 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 516 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 517 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 518 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 519 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 520 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 521 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 522 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 523 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 524 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 525 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 526 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 527 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 528 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 529 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 530 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 531 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 532 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 533 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 534 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 535 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 536 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 537 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 538 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 539 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 540 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 541 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 542 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 543 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 544 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 545 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 546 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 547 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 548 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 549 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 550 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 551 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 552 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 553 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 554 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 555 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 556 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 557 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 558 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 559 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 560 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 561 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 562 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 563 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 564 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 565 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 566 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 567 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 568 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 569 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 570 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 571 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 572 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 573 then
				doCreateItem(2223,1,mpos)		
			elseif itemz == 574 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 575 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 576 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 577 then
				doCreateItem(2223,1,mpos)
			elseif itemz == 578 then
				doCreateItem(2223,1,mpos)

			elseif itemz == 579 then
				doCreateItem(2223,1,mpos)


			elseif itemz == 580 then
				doCreateItem(2223,1,mpos)


			elseif (itemz > 580 and itemz < 1580) then
				doCreateItem(2223,1,mpos)

























































































































































































































































































































			end
			doTransformItem(item.uid, 1946)
		else
			doPlayerSendTextMessage(cid,22,"You must put 1 Crafting Ore on the altar!")
		end
	else
	doTransformItem(item.uid, 1945)	
	end
   end