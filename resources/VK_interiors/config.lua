INTERIORS = {
    -- HOPITAL
    [1] = {id = 1, x = 253.95764160156, y = -1372.2917480469, z = 24.537784576416,  name = "Entrar no Hospital", destination = {2}},
	[2] = {id = 2, x = 343.51895141602, y = -1398.6724853516, z = 32.509265899658,  name = "Sair do Hospital", destination = {1}},
    
    -- FIB
    [4] = {id = 4, x = 138.18788146973, y = -764.86633300781, z = 45.75199508667,  name = "Sair do FIB", destination = {5}},
    [5] = {id = 5, x = 136.36924743652, y = -749.36987304688, z = 258.15179443359,  name = "Entrar na FBI", destination = {4}},

    -- FIB GARAGE
    [6] = {id = 6, x = 142.06883239746, y = -768.97241210938, z = 45.752010345459, h = 72.884956359863, name = "Predio FBI", destination = {7}},
    [7] = {id = 7, x = 176.67442321777, y = -728.77349853516, z = 39.403667449951, h = 248.2452545166, name = "Garagem", destination = {6}},

    -- BAHMAS MAMAS
    [8] = {id = 8, x = -1388.9272460938, y = -586.08123779297, z = 30.219741821289, h = 35.407787322998, name = "Sair", destination = {9}},
    [9] = {id = 9, x = -1394.5030517578, y = -596.09210205078, z = 30.319562911987, h = 205.4248046875, name = "Entrar", destination = {8}},
		
	-- Business
    [18] = {id = 18, x =  3562.8259277344, y = 3690.3332519531, z = 28.121658325195,  name = "Entrar Empresa", destination = {19}},
    [19] = {id = 19, x = 3526.3579101563, y = 3673.7409667969, z = 28.121139526367,  name = "Sair da Empresa", destination = {18}},	
	
	-- Heliponto
	[20] = {id = 20, x = 279.75527954102, y = -1349.0079345703, z = 24.537794113159,  name = "Voltar ao Hospital", destination = {21}},
    [21] = {id = 21, x = 335.42684936523, y = -1431.8175048828, z = 46.511493682861,  name = "Ir para Heliponto SAMU", destination = {20}},	
	
	-- Veículos Emergenciais SAMU
	[22] = {id = 22, x = 275.24313354492, y = -1361.2371826172, z = 24.537805557251,  name = "Voltar para o Hospital", destination = {23}},
	[23] = {id = 23, x = 307.41171264648, y = -1433.6192626953, z = 29.932350158691,  name = "Ir para Veículos SAMU", destination = {22}},
	
}
