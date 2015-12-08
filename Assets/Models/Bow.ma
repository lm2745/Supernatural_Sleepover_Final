//Maya ASCII 2016 scene
//Name: Bow.ma
//Last modified: Tue, Dec 01, 2015 04:02:47 PM
//Codeset: 1252
requires maya "2016";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "1AE68A2E-4859-AECB-7287-5084A252B234";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.4271847983136468 9.279063656308038 -50.41363267394248 ;
	setAttr ".r" -type "double3" -9.3383527294781565 899.79999999995721 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D2A0BAA6-4BF8-97B1-E31A-968F40347C99";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 53.056317709795209;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "85A2D355-43A4-5BF3-AC4E-D2B85B6CABCF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "4FCF6087-4E34-9470-8A59-DEAAE7F2FEEB";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "0972E052-4F47-05D3-4E8B-0E8239E3BE08";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "7A852BC0-4448-FD84-AD2A-AEB1E8439E95";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "22B7AE91-4D50-E504-F443-078EFD9E0B8D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "490BAA4D-43F4-F48E-841C-5890BCC19EC3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCylinder1";
	rename -uid "EBE2E8AE-495C-D4B6-4FB9-5A93F0D3AE43";
	setAttr ".s" -type "double3" 0.22466061511461372 3.3616863536911299 0.22466061511461372 ;
createNode transform -n "transform2" -p "pCylinder1";
	rename -uid "5CEACB23-4D86-C8F3-C1CE-24A5566C0A20";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape1" -p "transform2";
	rename -uid "82DB3D06-41AD-6C62-8EC7-94B87B809EA0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999988079071045 0.67265474796295166 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 81 ".pt";
	setAttr ".pt[20]" -type "float3" 0.91300792 -0.11328526 -2.050853 ;
	setAttr ".pt[21]" -type "float3" 0.88124269 -0.11292763 -2.032181 ;
	setAttr ".pt[22]" -type "float3" 0.85683715 -0.11242853 -2.0045822 ;
	setAttr ".pt[23]" -type "float3" 0.84218049 -0.11183683 -1.9707572 ;
	setAttr ".pt[24]" -type "float3" 0.83870727 -0.11121043 -1.9340169 ;
	setAttr ".pt[25]" -type "float3" 0.84675729 -0.11061066 -1.8979583 ;
	setAttr ".pt[26]" -type "float3" 0.86554289 -0.11009622 -1.8661113 ;
	setAttr ".pt[27]" -type "float3" 0.89322484 -0.10971747 -1.8415923 ;
	setAttr ".pt[28]" -type "float3" 0.92709374 -0.10951146 -1.8268023 ;
	setAttr ".pt[29]" -type "float3" 0.96383423 -0.10949842 -1.8231883 ;
	setAttr ".pt[30]" -type "float3" 0.99984968 -0.10967956 -1.8311048 ;
	setAttr ".pt[31]" -type "float3" 1.031615 -0.11003718 -1.8497763 ;
	setAttr ".pt[32]" -type "float3" 1.0560203 -0.11053628 -1.8773751 ;
	setAttr ".pt[33]" -type "float3" 1.0706769 -0.11112798 -1.9112003 ;
	setAttr ".pt[34]" -type "float3" 1.0741506 -0.11175437 -1.9479401 ;
	setAttr ".pt[35]" -type "float3" 1.0661004 -0.11235416 -1.983999 ;
	setAttr ".pt[36]" -type "float3" 1.0473146 -0.11286859 -2.0158465 ;
	setAttr ".pt[37]" -type "float3" 1.0196328 -0.11324736 -2.040365 ;
	setAttr ".pt[38]" -type "float3" 0.98769635 -0.11345334 -1.9444392 ;
	setAttr ".pt[39]" -type "float3" 0.95095593 -0.11346639 -1.9480536 ;
	setAttr ".pt[41]" -type "float3" 0.95642877 -0.11148239 -1.9409783 ;
	setAttr ".pt[82]" -type "float3" -3.2102015 -0.21769711 -0.042209454 ;
	setAttr ".pt[83]" -type "float3" -3.2346072 -0.21719806 -0.014610358 ;
	setAttr ".pt[84]" -type "float3" -3.2663722 -0.21684042 0.0040613934 ;
	setAttr ".pt[85]" -type "float3" -3.3023877 -0.21665926 0.011977844 ;
	setAttr ".pt[86]" -type "float3" -3.3391283 -0.21667233 0.0083638951 ;
	setAttr ".pt[87]" -type "float3" -3.3729968 -0.21687832 -0.0064261481 ;
	setAttr ".pt[88]" -type "float3" -3.4006796 -0.21725707 -0.03094513 ;
	setAttr ".pt[89]" -type "float3" -3.4194643 -0.21777149 -0.062792607 ;
	setAttr ".pt[90]" -type "float3" -3.4275146 -0.2183713 -0.098851271 ;
	setAttr ".pt[91]" -type "float3" -3.4240413 -0.21899767 -0.13559121 ;
	setAttr ".pt[92]" -type "float3" -3.4093845 -0.21958938 -0.16941613 ;
	setAttr ".pt[93]" -type "float3" -3.384979 -0.22008848 -0.19701546 ;
	setAttr ".pt[94]" -type "float3" -3.353214 -0.22044609 -0.21568698 ;
	setAttr ".pt[95]" -type "float3" -3.3171988 -0.22062723 -0.22360343 ;
	setAttr ".pt[96]" -type "float3" -3.2804585 -0.22061419 -0.21998948 ;
	setAttr ".pt[97]" -type "float3" -3.2465894 -0.2204082 -0.20519942 ;
	setAttr ".pt[98]" -type "float3" -3.2189071 -0.22002944 -0.18068045 ;
	setAttr ".pt[99]" -type "float3" -3.2001219 -0.21951503 -0.14883298 ;
	setAttr ".pt[100]" -type "float3" -3.1920712 -0.21891524 -0.11277456 ;
	setAttr ".pt[101]" -type "float3" -3.195545 -0.21828882 -0.076034613 ;
	setAttr ".pt[202]" -type "float3" -3.1047444 -0.076444082 -1.4655017 ;
	setAttr ".pt[203]" -type "float3" -3.0803394 -0.076943167 -1.493101 ;
	setAttr ".pt[204]" -type "float3" -3.048574 -0.077300787 -1.5117725 ;
	setAttr ".pt[205]" -type "float3" -3.012558 -0.077481955 -1.519689 ;
	setAttr ".pt[206]" -type "float3" -2.9758182 -0.07746888 -1.516075 ;
	setAttr ".pt[207]" -type "float3" -2.9419491 -0.077262901 -1.501285 ;
	setAttr ".pt[208]" -type "float3" -2.9142673 -0.076884143 -1.476766 ;
	setAttr ".pt[209]" -type "float3" -2.8954813 -0.076369703 -1.4449185 ;
	setAttr ".pt[210]" -type "float3" -2.8874311 -0.075769916 -1.40886 ;
	setAttr ".pt[211]" -type "float3" -2.8909044 -0.075143524 -1.3721201 ;
	setAttr ".pt[212]" -type "float3" -2.9055614 -0.074551828 -1.338295 ;
	setAttr ".pt[213]" -type "float3" -2.9299667 -0.074052729 -1.3106956 ;
	setAttr ".pt[214]" -type "float3" -2.9617319 -0.073695108 -1.2920241 ;
	setAttr ".pt[215]" -type "float3" -2.9977469 -0.073513947 -1.2841077 ;
	setAttr ".pt[216]" -type "float3" -3.034488 -0.073527016 -1.2877214 ;
	setAttr ".pt[217]" -type "float3" -3.0683572 -0.073732994 -1.3025117 ;
	setAttr ".pt[218]" -type "float3" -3.0960388 -0.074111767 -1.3270307 ;
	setAttr ".pt[219]" -type "float3" -3.1148243 -0.074626185 -1.3588781 ;
	setAttr ".pt[220]" -type "float3" -3.1228745 -0.075225972 -1.3949366 ;
	setAttr ".pt[221]" -type "float3" -3.1194012 -0.075852379 -1.4316767 ;
	setAttr ".pt[222]" -type "float3" -5.1403613 -0.17591494 -0.7381649 ;
	setAttr ".pt[223]" -type "float3" -5.1085963 -0.17627254 -0.75683641 ;
	setAttr ".pt[224]" -type "float3" -5.0725808 -0.17645371 -0.76475286 ;
	setAttr ".pt[225]" -type "float3" -5.0358386 -0.17644067 -0.76113915 ;
	setAttr ".pt[226]" -type "float3" -5.0019708 -0.17623463 -0.74634886 ;
	setAttr ".pt[227]" -type "float3" -4.9742894 -0.1758559 -0.72182989 ;
	setAttr ".pt[228]" -type "float3" -4.9555039 -0.17534146 -0.68998241 ;
	setAttr ".pt[229]" -type "float3" -4.947454 -0.17474169 -0.65392375 ;
	setAttr ".pt[230]" -type "float3" -4.9509263 -0.1741153 -0.61718369 ;
	setAttr ".pt[231]" -type "float3" -4.9655833 -0.17352358 -0.58335865 ;
	setAttr ".pt[232]" -type "float3" -4.9899888 -0.17302449 -0.55575955 ;
	setAttr ".pt[233]" -type "float3" -5.0217547 -0.17266688 -0.53708804 ;
	setAttr ".pt[234]" -type "float3" -5.0577683 -0.17248572 -0.52917159 ;
	setAttr ".pt[235]" -type "float3" -5.0945096 -0.17249876 -0.5327853 ;
	setAttr ".pt[236]" -type "float3" -5.1283784 -0.17270474 -0.54757559 ;
	setAttr ".pt[237]" -type "float3" -5.1560607 -0.17308353 -0.57209456 ;
	setAttr ".pt[238]" -type "float3" -5.1748462 -0.17359796 -0.6039418 ;
	setAttr ".pt[239]" -type "float3" -5.1828961 -0.17419773 -0.64000034 ;
	setAttr ".pt[240]" -type "float3" -5.1794238 -0.17482412 -0.67674041 ;
	setAttr ".pt[241]" -type "float3" -5.1647668 -0.17541586 -0.71056557 ;
createNode transform -n "pCylinder2";
	rename -uid "2E7A5DF4-41CA-20B0-4EE7-9396A3FE839E";
	setAttr ".t" -type "double3" -1.1917213397332127 0 -0.022519768362171844 ;
	setAttr ".s" -type "double3" 0.034897382148271566 3.395278401612841 0.034897382148271566 ;
createNode transform -n "transform1" -p "pCylinder2";
	rename -uid "CDD04534-40DB-44A1-1A34-09BAF478DC96";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape2" -p "transform1";
	rename -uid "9FC78DA5-4683-BBC3-3409-F9B22584FD4B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder3";
	rename -uid "A4ADF822-41F3-8CAE-037E-6F8D70699BAB";
	setAttr ".t" -type "double3" -10.077361686898447 0 0 ;
	setAttr ".s" -type "double3" 1.4349314913922984 1.9477374953367383 1 ;
createNode mesh -n "pCylinder3Shape" -p "pCylinder3";
	rename -uid "BBCF3F9C-4CE7-6712-F7EC-459BF679EB95";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Arrow:pCylinder1";
	rename -uid "651AF24F-464E-FF20-0C05-52B39F9E5AE5";
	setAttr ".s" -type "double3" 0.26872901509848374 5.6850782603341719 0.26872901509848374 ;
createNode transform -n "Arrow:transform5" -p "Arrow:pCylinder1";
	rename -uid "082D3F8C-45BA-CFD7-622E-2E95412E44A8";
	setAttr ".v" no;
createNode mesh -n "Arrow:pCylinderShape1" -p "Arrow:transform5";
	rename -uid "B8B0BF88-4E97-0E95-127A-FDB69C9412AA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Arrow:pCone1";
	rename -uid "7D22E001-4C49-9907-3331-148A54AC3A19";
	setAttr ".t" -type "double3" 0 6.5745830992956247 0 ;
	setAttr ".s" -type "double3" 0.52846418979372589 1 1.0509776016972965 ;
createNode transform -n "Arrow:transform4" -p "Arrow:pCone1";
	rename -uid "90F04C76-4471-2072-DAB0-A5823216426E";
	setAttr ".v" no;
createNode mesh -n "Arrow:pConeShape1" -p "Arrow:transform4";
	rename -uid "FA96918F-474E-E8A6-B711-D3A5396373C9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.56249997019767761 0.75 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt[16:17]" -type "float3"  0.060287643 0 -0.060287643 
		-0.060287643 0 0.060287643;
createNode transform -n "Arrow:pCone2";
	rename -uid "2D796D20-4AB4-AFF0-E305-FC9C7D1F87F4";
	setAttr ".t" -type "double3" 0 -4.4085653002746694 0.53911859382559557 ;
	setAttr ".s" -type "double3" 0.18687019944058444 1 0.35414759384320199 ;
createNode transform -n "Arrow:transform3" -p "Arrow:pCone2";
	rename -uid "B65BF448-49D3-532C-976B-96AF60D19CA9";
	setAttr ".v" no;
createNode mesh -n "Arrow:pConeShape2" -p "Arrow:transform3";
	rename -uid "83888420-4B5D-8C19-056D-EB8F8CE8F3E4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[20]" -type "float3"  0 0 -0.9891929;
createNode transform -n "Arrow:pCone3";
	rename -uid "56B87A8C-4C33-5173-7DFA-078EA9AAC808";
	setAttr ".t" -type "double3" 0.48496651150103465 -4.4085653002746694 -0.18036703735517046 ;
	setAttr ".r" -type "double3" 0 114.23104149379303 0 ;
	setAttr ".s" -type "double3" 0.18687019944058444 1 0.35414759384320199 ;
createNode transform -n "Arrow:transform2" -p "Arrow:pCone3";
	rename -uid "8DC7DA9D-4472-AE18-FAC5-DAAA86B1E5F6";
	setAttr ".v" no;
createNode mesh -n "Arrow:pConeShape3" -p "Arrow:transform2";
	rename -uid "17537581-482F-77CE-05A6-B2A421FA78D3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:20]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.7377643 0.1727457
		 0.70225441 0.1030536 0.64694643 0.04774563 0.5772543 0.012235746 0.5 -1.1920929e-007
		 0.4227457 0.012235761 0.35305363 0.047745675 0.2977457 0.10305364 0.26223582 0.17274573
		 0.24999994 0.25 0.26223582 0.32725427 0.2977457 0.39694634 0.35305366 0.4522543 0.42274573
		 0.48776418 0.5 0.5 0.57725424 0.48776415 0.64694631 0.45225427 0.70225424 0.39694631
		 0.73776412 0.32725424 0.75 0.25 0.25 0.5 0.27500001 0.5 0.30000001 0.5 0.32500002
		 0.5 0.35000002 0.5 0.37500003 0.5 0.40000004 0.5 0.42500004 0.5 0.45000005 0.5 0.47500005
		 0.5 0.50000006 0.5 0.52500004 0.5 0.55000001 0.5 0.57499999 0.5 0.59999996 0.5 0.62499994
		 0.5 0.64999992 0.5 0.67499989 0.5 0.69999987 0.5 0.72499985 0.5 0.74999982 0.5 0.5
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[20]" -type "float3"  0 0 -0.9891929;
	setAttr -s 21 ".vt[0:20]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-008 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0 1 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 0 20 1 1 20 1 2 20 1 3 20 1 4 20 1 5 20 1 6 20 1 7 20 1 8 20 1 9 20 1
		 10 20 1 11 20 1 12 20 1 13 20 1 14 20 1 15 20 1 16 20 1 17 20 1 18 20 1 19 20 1;
	setAttr -s 21 -ch 80 ".fc[0:20]" -type "polyFaces" 
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 3 0 21 -21
		mu 0 3 20 21 41
		f 3 1 22 -22
		mu 0 3 21 22 41
		f 3 2 23 -23
		mu 0 3 22 23 41
		f 3 3 24 -24
		mu 0 3 23 24 41
		f 3 4 25 -25
		mu 0 3 24 25 41
		f 3 5 26 -26
		mu 0 3 25 26 41
		f 3 6 27 -27
		mu 0 3 26 27 41
		f 3 7 28 -28
		mu 0 3 27 28 41
		f 3 8 29 -29
		mu 0 3 28 29 41
		f 3 9 30 -30
		mu 0 3 29 30 41
		f 3 10 31 -31
		mu 0 3 30 31 41
		f 3 11 32 -32
		mu 0 3 31 32 41
		f 3 12 33 -33
		mu 0 3 32 33 41
		f 3 13 34 -34
		mu 0 3 33 34 41
		f 3 14 35 -35
		mu 0 3 34 35 41
		f 3 15 36 -36
		mu 0 3 35 36 41
		f 3 16 37 -37
		mu 0 3 36 37 41
		f 3 17 38 -38
		mu 0 3 37 38 41
		f 3 18 39 -39
		mu 0 3 38 39 41
		f 3 19 20 -40
		mu 0 3 39 40 41;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Arrow:pCone4";
	rename -uid "1F4D1825-42E4-CA7F-85DC-EA99BAC78F3A";
	setAttr ".t" -type "double3" -0.29798075425512227 -4.4085653002746694 -0.37418141786460124 ;
	setAttr ".r" -type "double3" 0 221.3702777743697 0 ;
	setAttr ".s" -type "double3" 0.18687019944058444 1 0.35414759384320199 ;
createNode transform -n "Arrow:transform1" -p "Arrow:pCone4";
	rename -uid "03B0549B-4742-CD21-6E10-5DBE77C780CF";
	setAttr ".v" no;
createNode mesh -n "Arrow:pConeShape4" -p "Arrow:transform1";
	rename -uid "6ADA3393-4EBE-2BDB-DDD4-3BBA4A4719C6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:20]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.7377643 0.1727457
		 0.70225441 0.1030536 0.64694643 0.04774563 0.5772543 0.012235746 0.5 -1.1920929e-007
		 0.4227457 0.012235761 0.35305363 0.047745675 0.2977457 0.10305364 0.26223582 0.17274573
		 0.24999994 0.25 0.26223582 0.32725427 0.2977457 0.39694634 0.35305366 0.4522543 0.42274573
		 0.48776418 0.5 0.5 0.57725424 0.48776415 0.64694631 0.45225427 0.70225424 0.39694631
		 0.73776412 0.32725424 0.75 0.25 0.25 0.5 0.27500001 0.5 0.30000001 0.5 0.32500002
		 0.5 0.35000002 0.5 0.37500003 0.5 0.40000004 0.5 0.42500004 0.5 0.45000005 0.5 0.47500005
		 0.5 0.50000006 0.5 0.52500004 0.5 0.55000001 0.5 0.57499999 0.5 0.59999996 0.5 0.62499994
		 0.5 0.64999992 0.5 0.67499989 0.5 0.69999987 0.5 0.72499985 0.5 0.74999982 0.5 0.5
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[20]" -type "float3"  0 0 -0.9891929;
	setAttr -s 21 ".vt[0:20]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-008 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0 1 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 0 20 1 1 20 1 2 20 1 3 20 1 4 20 1 5 20 1 6 20 1 7 20 1 8 20 1 9 20 1
		 10 20 1 11 20 1 12 20 1 13 20 1 14 20 1 15 20 1 16 20 1 17 20 1 18 20 1 19 20 1;
	setAttr -s 21 -ch 80 ".fc[0:20]" -type "polyFaces" 
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 3 0 21 -21
		mu 0 3 20 21 41
		f 3 1 22 -22
		mu 0 3 21 22 41
		f 3 2 23 -23
		mu 0 3 22 23 41
		f 3 3 24 -24
		mu 0 3 23 24 41
		f 3 4 25 -25
		mu 0 3 24 25 41
		f 3 5 26 -26
		mu 0 3 25 26 41
		f 3 6 27 -27
		mu 0 3 26 27 41
		f 3 7 28 -28
		mu 0 3 27 28 41
		f 3 8 29 -29
		mu 0 3 28 29 41
		f 3 9 30 -30
		mu 0 3 29 30 41
		f 3 10 31 -31
		mu 0 3 30 31 41
		f 3 11 32 -32
		mu 0 3 31 32 41
		f 3 12 33 -33
		mu 0 3 32 33 41
		f 3 13 34 -34
		mu 0 3 33 34 41
		f 3 14 35 -35
		mu 0 3 34 35 41
		f 3 15 36 -36
		mu 0 3 35 36 41
		f 3 16 37 -37
		mu 0 3 36 37 41
		f 3 17 38 -38
		mu 0 3 37 38 41
		f 3 18 39 -39
		mu 0 3 38 39 41
		f 3 19 20 -40
		mu 0 3 39 40 41;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Arrow:pCylinder2";
	rename -uid "6C12D9E8-4C07-FEE8-F56D-739A026E006A";
	setAttr ".t" -type "double3" -9.6845062834470834 0 0 ;
	setAttr ".r" -type "double3" 0 0 88.960605938508678 ;
createNode mesh -n "Arrow:pCylinder1Shape" -p "Arrow:pCylinder2";
	rename -uid "52A2DF4E-489C-891B-83B4-1380C71FBA80";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "0A3C892D-4762-6EE8-E6AD-CC90784FEAF9";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "5D6F1687-414C-78EC-3487-88A5049F302D";
createNode displayLayer -n "defaultLayer";
	rename -uid "6744F196-4B78-C5BF-5410-F5B2311DC261";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "13DD1817-45FE-751D-0F88-329B62B2A9AC";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "CB5B42A7-406F-04FB-45E0-118ED62D5853";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "CECEA116-479F-EC57-B82F-59B0B5056AA8";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "BD4C3281-4AA5-192F-A266-E49094915EEC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40:59]";
	setAttr ".ix" -type "matrix" 0.22466061511461372 0 0 0 0 3.3616863536911299 0 0 0 0 0.22466061511461372 0
		 0 0 0 1;
	setAttr ".wt" 0.64481794834136963;
	setAttr ".dr" no;
	setAttr ".re" 51;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "DFE9F1EF-495C-BF21-17F8-2EB41E960CDE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40:59]";
	setAttr ".ix" -type "matrix" 0.22466061511461372 0 0 0 0 3.3616863536911299 0 0 0 0 0.22466061511461372 0
		 0 0 0 1;
	setAttr ".wt" 0.49335634708404541;
	setAttr ".re" 51;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "CA2284B1-4501-1689-9556-F7800ADE25C3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[100:101]" "e[103]" "e[105]" "e[107]" "e[109]" "e[111]" "e[113]" "e[115]" "e[117]" "e[119]" "e[121]" "e[123]" "e[125]" "e[127]" "e[129]" "e[131]" "e[133]" "e[135]" "e[137]";
	setAttr ".ix" -type "matrix" 0.22466061511461372 0 0 0 0 3.3616863536911299 0 0 0 0 0.22466061511461372 0
		 0 0 0 1;
	setAttr ".wt" 0.80725038051605225;
	setAttr ".dr" no;
	setAttr ".re" 137;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "A8F4554B-4C8A-019D-FCD0-9DB1B310D47C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40:59]";
	setAttr ".ix" -type "matrix" 0.22466061511461372 0 0 0 0 3.3616863536911299 0 0 0 0 0.22466061511461372 0
		 0 0 0 1;
	setAttr ".wt" 0.2344992607831955;
	setAttr ".re" 52;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "25FD64F5-47D4-D4DF-FED3-CDBEC6DC8E06";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[140:141]" "e[143]" "e[145]" "e[147]" "e[149]" "e[151]" "e[153]" "e[155]" "e[157]" "e[159]" "e[161]" "e[163]" "e[165]" "e[167]" "e[169]" "e[171]" "e[173]" "e[175]" "e[177]";
	setAttr ".ix" -type "matrix" 0.22466061511461372 0 0 0 0 3.3616863536911299 0 0 0 0 0.22466061511461372 0
		 0 0 0 1;
	setAttr ".wt" 0.55158346891403198;
	setAttr ".dr" no;
	setAttr ".re" 175;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "0E50FEEF-4AC0-DEE3-DECC-18A1CC591768";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[140:141]" "e[143]" "e[145]" "e[147]" "e[149]" "e[151]" "e[153]" "e[155]" "e[157]" "e[159]" "e[161]" "e[163]" "e[165]" "e[167]" "e[169]" "e[171]" "e[173]" "e[175]" "e[177]";
	setAttr ".ix" -type "matrix" 0.22466061511461372 0 0 0 0 3.3616863536911299 0 0 0 0 0.22466061511461372 0
		 0 0 0 1;
	setAttr ".wt" 0.57354414463043213;
	setAttr ".dr" no;
	setAttr ".re" 141;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "C4462EB5-4033-A5A1-454F-89ADE329A791";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40:59]";
	setAttr ".ix" -type "matrix" 0.22466061511461372 0 0 0 0 3.3616863536911299 0 0 0 0 0.22466061511461372 0
		 0 0 0 1;
	setAttr ".wt" 0.66677802801132202;
	setAttr ".dr" no;
	setAttr ".re" 40;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "F911B974-4EC4-E8A4-8CD0-6DBBDFC3C4C7";
	setAttr ".uopa" yes;
	setAttr -s 105 ".tk";
	setAttr ".tk[0]" -type "float3" 1.1920929e-006 -0.52148116 0 ;
	setAttr ".tk[1]" -type "float3" 1.1920929e-006 -0.52148116 0 ;
	setAttr ".tk[2]" -type "float3" 1.1920929e-006 -0.52148116 0 ;
	setAttr ".tk[3]" -type "float3" 1.1920929e-006 -0.52148116 0 ;
	setAttr ".tk[4]" -type "float3" 1.1920929e-006 -0.52148116 0 ;
	setAttr ".tk[5]" -type "float3" 1.1920929e-006 -0.52148116 0 ;
	setAttr ".tk[6]" -type "float3" 1.1920929e-006 -0.52148116 0 ;
	setAttr ".tk[7]" -type "float3" 1.1920929e-006 -0.52148116 0 ;
	setAttr ".tk[8]" -type "float3" 1.1920929e-006 -0.52148116 0 ;
	setAttr ".tk[9]" -type "float3" 1.1920929e-006 -0.52148116 -8.8365889e-023 ;
	setAttr ".tk[10]" -type "float3" 1.1920929e-006 -0.52148116 0 ;
	setAttr ".tk[11]" -type "float3" 1.1920929e-006 -0.52148116 0 ;
	setAttr ".tk[12]" -type "float3" 1.1920929e-006 -0.52148116 0 ;
	setAttr ".tk[13]" -type "float3" 1.1920929e-006 -0.52148116 0 ;
	setAttr ".tk[14]" -type "float3" 1.1920929e-006 -0.52148116 0 ;
	setAttr ".tk[15]" -type "float3" 1.1920929e-006 -0.52148116 0 ;
	setAttr ".tk[16]" -type "float3" 1.1920929e-006 -0.52148116 0 ;
	setAttr ".tk[17]" -type "float3" 1.1920929e-006 -0.52148116 0 ;
	setAttr ".tk[18]" -type "float3" 1.1920929e-006 -0.52148116 0 ;
	setAttr ".tk[19]" -type "float3" 1.1920929e-006 -0.52148116 -8.8365889e-023 ;
	setAttr ".tk[20]" -type "float3" 0 0.50005358 0 ;
	setAttr ".tk[21]" -type "float3" 0 0.50005358 0 ;
	setAttr ".tk[22]" -type "float3" 0 0.50005358 0 ;
	setAttr ".tk[23]" -type "float3" 0 0.50005358 0 ;
	setAttr ".tk[24]" -type "float3" 0 0.50005358 0 ;
	setAttr ".tk[25]" -type "float3" 0 0.50005358 0 ;
	setAttr ".tk[26]" -type "float3" 0 0.50005358 0 ;
	setAttr ".tk[27]" -type "float3" 0 0.50005358 0 ;
	setAttr ".tk[28]" -type "float3" 0 0.50005358 0 ;
	setAttr ".tk[29]" -type "float3" 0 0.50005358 -2.9455296e-023 ;
	setAttr ".tk[30]" -type "float3" 0 0.50005358 0 ;
	setAttr ".tk[31]" -type "float3" 0 0.50005358 0 ;
	setAttr ".tk[32]" -type "float3" 0 0.50005358 0 ;
	setAttr ".tk[33]" -type "float3" 0 0.50005358 0 ;
	setAttr ".tk[34]" -type "float3" 0 0.50005358 0 ;
	setAttr ".tk[35]" -type "float3" 0 0.50005358 0 ;
	setAttr ".tk[36]" -type "float3" 0 0.50005358 0 ;
	setAttr ".tk[37]" -type "float3" 0 0.50005358 0 ;
	setAttr ".tk[38]" -type "float3" 0 0.50005358 0 ;
	setAttr ".tk[39]" -type "float3" 0 0.50005358 -2.9455296e-023 ;
	setAttr ".tk[40]" -type "float3" 1.1920929e-006 -0.52148116 -8.8365889e-023 ;
	setAttr ".tk[41]" -type "float3" 0 0.50005358 -2.9455296e-023 ;
	setAttr ".tk[42]" -type "float3" -0.7328499 0.14417224 0.53244662 ;
	setAttr ".tk[43]" -type "float3" -0.86151719 0.14417224 0.27992392 ;
	setAttr ".tk[44]" -type "float3" -0.90585226 0.14417224 1.6197903e-007 ;
	setAttr ".tk[45]" -type "float3" -0.86151719 0.14417224 -0.27992362 ;
	setAttr ".tk[46]" -type "float3" -0.73284984 0.14417224 -0.5324465 ;
	setAttr ".tk[47]" -type "float3" -0.53244668 0.14417224 -0.73284978 ;
	setAttr ".tk[48]" -type "float3" -0.27992365 0.14417224 -0.86151719 ;
	setAttr ".tk[49]" -type "float3" 1.0798599e-007 0.14417224 -0.90585214 ;
	setAttr ".tk[50]" -type "float3" 0.27992389 0.14417224 -0.86151713 ;
	setAttr ".tk[51]" -type "float3" 0.53244704 0.14417224 -0.73284996 ;
	setAttr ".tk[52]" -type "float3" 0.73285037 0.14417224 -0.53244662 ;
	setAttr ".tk[53]" -type "float3" 0.86151713 0.14417224 -0.27992362 ;
	setAttr ".tk[54]" -type "float3" 0.90585226 0.14417224 1.6197903e-007 ;
	setAttr ".tk[55]" -type "float3" 0.86151719 0.14417224 0.27992392 ;
	setAttr ".tk[56]" -type "float3" 0.73284984 0.14417224 0.53244662 ;
	setAttr ".tk[57]" -type "float3" 0.53244668 0.14417224 0.73284984 ;
	setAttr ".tk[58]" -type "float3" 0.2799238 0.14417224 0.86151713 ;
	setAttr ".tk[59]" -type "float3" 8.0989516e-008 0.14417224 0.90585238 ;
	setAttr ".tk[60]" -type "float3" -0.27992365 0.14417224 0.86151719 ;
	setAttr ".tk[61]" -type "float3" -0.5324465 0.14417224 0.73284984 ;
	setAttr ".tk[62]" -type "float3" -0.73284984 -0.13848963 0.53244668 ;
	setAttr ".tk[63]" -type "float3" -0.86151665 -0.13848963 0.27992392 ;
	setAttr ".tk[64]" -type "float3" -0.90585214 -0.13848963 1.6197903e-007 ;
	setAttr ".tk[65]" -type "float3" -0.86151665 -0.13848963 -0.27992359 ;
	setAttr ".tk[66]" -type "float3" -0.73284984 -0.13848963 -0.53244656 ;
	setAttr ".tk[67]" -type "float3" -0.53244674 -0.13848963 -0.73284984 ;
	setAttr ".tk[68]" -type "float3" -0.27992374 -0.13848963 -0.86151677 ;
	setAttr ".tk[69]" -type "float3" 1.0798598e-007 -0.13848963 -0.90585238 ;
	setAttr ".tk[70]" -type "float3" 0.27992398 -0.13848963 -0.86151707 ;
	setAttr ".tk[71]" -type "float3" 0.53244686 -0.13848963 -0.73284996 ;
	setAttr ".tk[72]" -type "float3" 0.73285037 -0.13848963 -0.53244668 ;
	setAttr ".tk[73]" -type "float3" 0.86151713 -0.13848963 -0.27992365 ;
	setAttr ".tk[74]" -type "float3" 0.90585214 -0.13848963 1.6197903e-007 ;
	setAttr ".tk[75]" -type "float3" 0.86151671 -0.13848963 0.27992383 ;
	setAttr ".tk[76]" -type "float3" 0.73284984 -0.13848963 0.53244674 ;
	setAttr ".tk[77]" -type "float3" 0.53244674 -0.13848963 0.73284984 ;
	setAttr ".tk[78]" -type "float3" 0.2799238 -0.13848963 0.86151683 ;
	setAttr ".tk[79]" -type "float3" 8.0989516e-008 -0.13848963 0.90585238 ;
	setAttr ".tk[80]" -type "float3" -0.27992365 -0.13848963 0.86151707 ;
	setAttr ".tk[81]" -type "float3" -0.53244656 -0.13848963 0.73284984 ;
	setAttr ".tk[82]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".tk[83]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".tk[84]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".tk[122]" -type "float3" 0 0.14245147 0 ;
	setAttr ".tk[123]" -type "float3" 0 0.14245147 0 ;
	setAttr ".tk[124]" -type "float3" 0 0.14245147 0 ;
	setAttr ".tk[125]" -type "float3" 0 0.14245147 0 ;
	setAttr ".tk[126]" -type "float3" 0 0.14245147 -2.9455296e-023 ;
	setAttr ".tk[127]" -type "float3" 0 0.14245147 0 ;
	setAttr ".tk[128]" -type "float3" 0 0.14245147 0 ;
	setAttr ".tk[129]" -type "float3" 0 0.14245147 0 ;
	setAttr ".tk[130]" -type "float3" 0 0.14245147 0 ;
	setAttr ".tk[131]" -type "float3" 0 0.14245147 0 ;
	setAttr ".tk[132]" -type "float3" 0 0.14245147 0 ;
	setAttr ".tk[133]" -type "float3" 0 0.14245147 0 ;
	setAttr ".tk[134]" -type "float3" 0 0.14245147 0 ;
	setAttr ".tk[135]" -type "float3" 0 0.14245147 0 ;
	setAttr ".tk[136]" -type "float3" 0 0.14245147 -2.9455296e-023 ;
	setAttr ".tk[137]" -type "float3" 0 0.14245147 0 ;
	setAttr ".tk[138]" -type "float3" 0 0.14245147 0 ;
	setAttr ".tk[139]" -type "float3" 0 0.14245147 0 ;
	setAttr ".tk[140]" -type "float3" 0 0.14245147 0 ;
	setAttr ".tk[141]" -type "float3" 0 0.14245147 0 ;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "2F02CC31-4FC5-2DDF-26D9-11928F039BCF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40:59]";
	setAttr ".ix" -type "matrix" 0.22466061511461372 0 0 0 0 3.3616863536911299 0 0 0 0 0.22466061511461372 0
		 0 0 0 1;
	setAttr ".wt" 0.43999218940734863;
	setAttr ".re" 40;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "B3B7BDAA-45A6-A37F-4FC9-A18EC19CBAB1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[180:181]" "e[183]" "e[185]" "e[187]" "e[189]" "e[191]" "e[193]" "e[195]" "e[197]" "e[199]" "e[201]" "e[203]" "e[205]" "e[207]" "e[209]" "e[211]" "e[213]" "e[215]" "e[217]";
	setAttr ".ix" -type "matrix" 0.22466061511461372 0 0 0 0 3.3616863536911299 0 0 0 0 0.22466061511461372 0
		 0 0 0 1;
	setAttr ".wt" 0.75534045696258545;
	setAttr ".dr" no;
	setAttr ".re" 199;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	rename -uid "F80E297C-4847-B318-238C-A999EB688464";
	setAttr ".uopa" yes;
	setAttr -s 102 ".tk";
	setAttr ".tk[0]" -type "float3" -0.19631107 0.072907008 0 ;
	setAttr ".tk[1]" -type "float3" -0.19631107 0.072907008 0 ;
	setAttr ".tk[2]" -type "float3" -0.19631107 0.072907008 0 ;
	setAttr ".tk[3]" -type "float3" -0.19631107 0.072907008 0 ;
	setAttr ".tk[4]" -type "float3" -0.19631107 0.072907008 0 ;
	setAttr ".tk[5]" -type "float3" -0.19631107 0.072907008 0 ;
	setAttr ".tk[6]" -type "float3" -0.19631107 0.072907008 0 ;
	setAttr ".tk[7]" -type "float3" -0.19631107 0.072907008 0 ;
	setAttr ".tk[8]" -type "float3" -0.19631107 0.072907008 0 ;
	setAttr ".tk[9]" -type "float3" -0.19631107 0.072907008 -1.4727648e-022 ;
	setAttr ".tk[10]" -type "float3" -0.19631107 0.072907008 0 ;
	setAttr ".tk[11]" -type "float3" -0.19631107 0.072907008 0 ;
	setAttr ".tk[12]" -type "float3" -0.19631107 0.072907008 0 ;
	setAttr ".tk[13]" -type "float3" -0.19631107 0.072907008 0 ;
	setAttr ".tk[14]" -type "float3" -0.19631107 0.072907008 0 ;
	setAttr ".tk[15]" -type "float3" -0.19631107 0.072907008 0 ;
	setAttr ".tk[16]" -type "float3" -0.19631107 0.072907008 0 ;
	setAttr ".tk[17]" -type "float3" -0.19631107 0.072907008 0 ;
	setAttr ".tk[18]" -type "float3" -0.19631107 0.072907008 0 ;
	setAttr ".tk[19]" -type "float3" -0.19631107 0.072907008 -1.4727648e-022 ;
	setAttr ".tk[20]" -type "float3" -0.1035428 0.069221698 1.9224545 ;
	setAttr ".tk[21]" -type "float3" -0.1035428 0.069221698 1.9224545 ;
	setAttr ".tk[22]" -type "float3" -0.1035428 0.069221698 1.9224545 ;
	setAttr ".tk[23]" -type "float3" -0.1035428 0.069221698 1.9224545 ;
	setAttr ".tk[24]" -type "float3" -0.1035428 0.069221698 1.9224545 ;
	setAttr ".tk[25]" -type "float3" -0.1035428 0.069221698 1.9224545 ;
	setAttr ".tk[26]" -type "float3" -0.1035428 0.069221698 1.9224545 ;
	setAttr ".tk[27]" -type "float3" -0.1035428 0.069221698 1.9224545 ;
	setAttr ".tk[28]" -type "float3" -0.1035428 0.069221698 1.9224545 ;
	setAttr ".tk[29]" -type "float3" -0.1035428 0.069221698 1.9224545 ;
	setAttr ".tk[30]" -type "float3" -0.1035428 0.069221698 1.9224545 ;
	setAttr ".tk[31]" -type "float3" -0.1035428 0.069221698 1.9224545 ;
	setAttr ".tk[32]" -type "float3" -0.1035428 0.069221698 1.9224545 ;
	setAttr ".tk[33]" -type "float3" -0.1035428 0.069221698 1.9224545 ;
	setAttr ".tk[34]" -type "float3" -0.1035428 0.069221698 1.9224545 ;
	setAttr ".tk[35]" -type "float3" -0.1035428 0.069221698 1.9224545 ;
	setAttr ".tk[36]" -type "float3" -0.1035428 0.069221698 1.9224545 ;
	setAttr ".tk[37]" -type "float3" -0.1035428 0.069221698 1.9224545 ;
	setAttr ".tk[38]" -type "float3" -0.1035428 0.069221698 1.9224545 ;
	setAttr ".tk[39]" -type "float3" -0.1035428 0.069221698 1.9224545 ;
	setAttr ".tk[40]" -type "float3" -0.19631107 0.072907038 -1.4727648e-022 ;
	setAttr ".tk[41]" -type "float3" -0.1035428 0.069221698 1.9224545 ;
	setAttr ".tk[102]" -type "float3" -2.8564498 0.15791324 0 ;
	setAttr ".tk[103]" -type "float3" -2.8564498 0.15791324 0 ;
	setAttr ".tk[104]" -type "float3" -2.8564498 0.15791324 0 ;
	setAttr ".tk[105]" -type "float3" -2.8564498 0.15791324 -8.8365889e-023 ;
	setAttr ".tk[106]" -type "float3" -2.8564498 0.15791324 0 ;
	setAttr ".tk[107]" -type "float3" -2.8564498 0.15791324 0 ;
	setAttr ".tk[108]" -type "float3" -2.8564498 0.15791324 0 ;
	setAttr ".tk[109]" -type "float3" -2.8564498 0.15791324 0 ;
	setAttr ".tk[110]" -type "float3" -2.8564498 0.15791324 0 ;
	setAttr ".tk[111]" -type "float3" -2.8564498 0.15791324 0 ;
	setAttr ".tk[112]" -type "float3" -2.8564498 0.15791324 0 ;
	setAttr ".tk[113]" -type "float3" -2.8564498 0.15791324 0 ;
	setAttr ".tk[114]" -type "float3" -2.8564498 0.15791324 0 ;
	setAttr ".tk[115]" -type "float3" -2.8564498 0.15791324 -8.8365889e-023 ;
	setAttr ".tk[116]" -type "float3" -2.8564498 0.15791324 0 ;
	setAttr ".tk[117]" -type "float3" -2.8564498 0.15791324 0 ;
	setAttr ".tk[118]" -type "float3" -2.8564498 0.15791324 0 ;
	setAttr ".tk[119]" -type "float3" -2.8564498 0.15791324 0 ;
	setAttr ".tk[120]" -type "float3" -2.8564498 0.15791324 0 ;
	setAttr ".tk[121]" -type "float3" -2.8564498 0.15791324 0 ;
	setAttr ".tk[162]" -type "float3" -4.7667608 0.079149403 0 ;
	setAttr ".tk[163]" -type "float3" -4.7667608 0.079149403 -1.4727648e-022 ;
	setAttr ".tk[164]" -type "float3" -4.7667608 0.079149403 0 ;
	setAttr ".tk[165]" -type "float3" -4.7667608 0.079149403 0 ;
	setAttr ".tk[166]" -type "float3" -4.7667608 0.079149403 0 ;
	setAttr ".tk[167]" -type "float3" -4.7667608 0.079149403 0 ;
	setAttr ".tk[168]" -type "float3" -4.7667608 0.079149403 0 ;
	setAttr ".tk[169]" -type "float3" -4.7667608 0.079149403 0 ;
	setAttr ".tk[170]" -type "float3" -4.7667608 0.079149403 0 ;
	setAttr ".tk[171]" -type "float3" -4.7667608 0.079149403 0 ;
	setAttr ".tk[172]" -type "float3" -4.7667608 0.079149403 0 ;
	setAttr ".tk[173]" -type "float3" -4.7667608 0.079149403 -1.4727648e-022 ;
	setAttr ".tk[174]" -type "float3" -4.7667608 0.079149403 0 ;
	setAttr ".tk[175]" -type "float3" -4.7667608 0.079149403 0 ;
	setAttr ".tk[176]" -type "float3" -4.7667608 0.079149403 0 ;
	setAttr ".tk[177]" -type "float3" -4.7667608 0.079149403 0 ;
	setAttr ".tk[178]" -type "float3" -4.7667608 0.079149403 0 ;
	setAttr ".tk[179]" -type "float3" -4.7667608 0.079149403 0 ;
	setAttr ".tk[180]" -type "float3" -4.7667608 0.079149403 0 ;
	setAttr ".tk[181]" -type "float3" -4.7667608 0.079149403 0 ;
	setAttr ".tk[182]" -type "float3" -3.3202612 -0.010808805 0 ;
	setAttr ".tk[183]" -type "float3" -3.3202612 -0.010808805 -2.0618707e-022 ;
	setAttr ".tk[184]" -type "float3" -3.3202612 -0.010808805 0 ;
	setAttr ".tk[185]" -type "float3" -3.3202612 -0.010808805 0 ;
	setAttr ".tk[186]" -type "float3" -3.3202612 -0.010808805 0 ;
	setAttr ".tk[187]" -type "float3" -3.3202612 -0.010808805 0 ;
	setAttr ".tk[188]" -type "float3" -3.3202612 -0.010808805 0 ;
	setAttr ".tk[189]" -type "float3" -3.3202612 -0.010808805 0 ;
	setAttr ".tk[190]" -type "float3" -3.3202612 -0.010808805 0 ;
	setAttr ".tk[191]" -type "float3" -3.3202612 -0.010808805 0 ;
	setAttr ".tk[192]" -type "float3" -3.3202612 -0.010808805 0 ;
	setAttr ".tk[193]" -type "float3" -3.3202612 -0.010808805 -2.0618707e-022 ;
	setAttr ".tk[194]" -type "float3" -3.3202612 -0.010808805 0 ;
	setAttr ".tk[195]" -type "float3" -3.3202612 -0.010808805 0 ;
	setAttr ".tk[196]" -type "float3" -3.3202612 -0.010808805 0 ;
	setAttr ".tk[197]" -type "float3" -3.3202612 -0.010808805 0 ;
	setAttr ".tk[198]" -type "float3" -3.3202612 -0.010808805 0 ;
	setAttr ".tk[199]" -type "float3" -3.3202612 -0.010808805 0 ;
	setAttr ".tk[200]" -type "float3" -3.3202612 -0.010808805 0 ;
	setAttr ".tk[201]" -type "float3" -3.3202612 -0.010808805 0 ;
createNode polySplitRing -n "polySplitRing10";
	rename -uid "D958FE68-43D3-BDCD-FF47-D08406677A8C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[180:181]" "e[183]" "e[185]" "e[187]" "e[189]" "e[191]" "e[193]" "e[195]" "e[197]" "e[199]" "e[201]" "e[203]" "e[205]" "e[207]" "e[209]" "e[211]" "e[213]" "e[215]" "e[217]";
	setAttr ".ix" -type "matrix" 0.22466061511461372 0 0 0 0 3.3616863536911299 0 0 0 0 0.22466061511461372 0
		 0 0 0 1;
	setAttr ".wt" 0.51193290948867798;
	setAttr ".dr" no;
	setAttr ".re" 201;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyCylinder -n "polyCylinder2";
	rename -uid "F4E5ADDB-4556-2B17-1A32-E78EC30E3E4D";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyUnite -n "polyUnite1";
	rename -uid "F804D479-435B-F14B-0BEE-568BA6C3F1D3";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId1";
	rename -uid "25709D0E-4E5C-4AAE-7635-BD8436280FD6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "3E1848EC-42AF-73EA-9C5B-89897859096E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:259]";
createNode groupId -n "groupId2";
	rename -uid "189EFA04-4577-0E22-1B7C-E5A9D77B42A7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "37313AEC-4F39-8B7C-0184-E096321A1356";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "32BE82BF-4C8F-E6D4-0F73-F286A0EFA1A4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:59]";
createNode groupId -n "groupId4";
	rename -uid "5796C966-4D3E-3D58-61DD-AE9068104C7F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "ACB827E4-425B-3679-0950-79BB4545BA1D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "9F6EC4BC-4BF9-8C55-1832-74880E064CF3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:319]";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "9102927A-4B3D-9FD2-2414-ACA08C6384FB";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 2443\n                -height 1443\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2443\n            -height 1443\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n"
		+ "            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n"
		+ "                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n"
		+ "\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n"
		+ "                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2443\\n    -height 1443\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2443\\n    -height 1443\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "D5BE3636-4360-492B-E171-F99A0672BD1A";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCylinder -n "Arrow:polyCylinder1";
	rename -uid "12FA6114-4FF6-0EE3-D1DB-AB93AE7540A5";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCone -n "Arrow:polyCone1";
	rename -uid "DD1FC3B9-433E-6A31-B9C7-BA917BA800DB";
	setAttr ".cuv" 3;
createNode polyCone -n "Arrow:polyCone2";
	rename -uid "A315B491-4234-F5C3-8A7B-3DBF0B62D5F5";
	setAttr ".cuv" 3;
createNode polyUnite -n "polyUnite2";
	rename -uid "AD33D516-4682-F514-45E5-62A59F640A0A";
	setAttr -s 5 ".ip";
	setAttr -s 5 ".im";
createNode groupId -n "Arrow:groupId1";
	rename -uid "BB360635-4DD9-38E5-27E9-49A1E67DB793";
	setAttr ".ihi" 0;
createNode groupParts -n "Arrow:groupParts1";
	rename -uid "ACBC492B-4CDA-A3B1-1CC0-91861A9BC15D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:59]";
createNode groupId -n "Arrow:groupId2";
	rename -uid "696BD82B-4C5F-219A-F9EA-DF897A2F4825";
	setAttr ".ihi" 0;
createNode groupId -n "Arrow:groupId3";
	rename -uid "2891ACF1-4B52-243B-63C2-AAA0D5434AEB";
	setAttr ".ihi" 0;
createNode groupParts -n "Arrow:groupParts2";
	rename -uid "6E05EC34-4F1E-9B5B-C0B1-2DB7EA179A6B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:20]";
createNode groupId -n "Arrow:groupId4";
	rename -uid "3F0A75B8-4C2C-D784-B20E-349AC7FFF542";
	setAttr ".ihi" 0;
createNode groupId -n "Arrow:groupId5";
	rename -uid "6C21D184-4172-7125-F4E8-038A2F855078";
	setAttr ".ihi" 0;
createNode groupParts -n "Arrow:groupParts3";
	rename -uid "1BF0BB24-4F87-3A73-DDE7-7EBF9E8D82B1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:20]";
createNode groupId -n "Arrow:groupId6";
	rename -uid "0710C9DB-44ED-40B6-9898-BE990CEC5427";
	setAttr ".ihi" 0;
createNode groupId -n "Arrow:groupId7";
	rename -uid "C2A58958-44E4-86C8-1960-02B30D0BE4BC";
	setAttr ".ihi" 0;
createNode groupId -n "Arrow:groupId8";
	rename -uid "85BFB7A1-4945-6B43-384E-7299EAF3927B";
	setAttr ".ihi" 0;
createNode groupId -n "Arrow:groupId9";
	rename -uid "75733C69-4011-E450-38E3-BD8C8EF60536";
	setAttr ".ihi" 0;
createNode groupId -n "Arrow:groupId10";
	rename -uid "FEDE349A-450D-42A8-FF52-A5B3B48FBCD6";
	setAttr ".ihi" 0;
createNode groupId -n "Arrow:groupId11";
	rename -uid "9C00EA2D-48E2-1F7A-909E-D681E8B16CBE";
	setAttr ".ihi" 0;
createNode groupParts -n "Arrow:groupParts4";
	rename -uid "44794B21-4BE5-3305-665D-508AF45C4B1F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:143]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 16 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 16 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId1.id" "pCylinderShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pCylinderShape1.i";
connectAttr "groupId2.id" "pCylinderShape1.ciog.cog[0].cgid";
connectAttr "groupId3.id" "pCylinderShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape2.iog.og[0].gco";
connectAttr "groupParts2.og" "pCylinderShape2.i";
connectAttr "groupId4.id" "pCylinderShape2.ciog.cog[0].cgid";
connectAttr "groupParts3.og" "pCylinder3Shape.i";
connectAttr "groupId5.id" "pCylinder3Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinder3Shape.iog.og[0].gco";
connectAttr "Arrow:groupParts1.og" "Arrow:pCylinderShape1.i";
connectAttr "Arrow:groupId1.id" "Arrow:pCylinderShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Arrow:pCylinderShape1.iog.og[0].gco";
connectAttr "Arrow:groupId2.id" "Arrow:pCylinderShape1.ciog.cog[0].cgid";
connectAttr "Arrow:groupParts2.og" "Arrow:pConeShape1.i";
connectAttr "Arrow:groupId3.id" "Arrow:pConeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Arrow:pConeShape1.iog.og[0].gco";
connectAttr "Arrow:groupId4.id" "Arrow:pConeShape1.ciog.cog[0].cgid";
connectAttr "Arrow:groupParts3.og" "Arrow:pConeShape2.i";
connectAttr "Arrow:groupId5.id" "Arrow:pConeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Arrow:pConeShape2.iog.og[0].gco";
connectAttr "Arrow:groupId6.id" "Arrow:pConeShape2.ciog.cog[0].cgid";
connectAttr "Arrow:groupId7.id" "Arrow:pConeShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Arrow:pConeShape3.iog.og[0].gco";
connectAttr "Arrow:groupId8.id" "Arrow:pConeShape3.ciog.cog[0].cgid";
connectAttr "Arrow:groupId9.id" "Arrow:pConeShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Arrow:pConeShape4.iog.og[0].gco";
connectAttr "Arrow:groupId10.id" "Arrow:pConeShape4.ciog.cog[0].cgid";
connectAttr "Arrow:groupParts4.og" "Arrow:pCylinder1Shape.i";
connectAttr "Arrow:groupId11.id" "Arrow:pCylinder1Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Arrow:pCylinder1Shape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCylinder1.out" "polySplitRing1.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing6.mp";
connectAttr "polyTweak1.out" "polySplitRing7.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing7.mp";
connectAttr "polySplitRing6.out" "polyTweak1.ip";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing8.mp";
connectAttr "polyTweak2.out" "polySplitRing9.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing9.mp";
connectAttr "polySplitRing8.out" "polyTweak2.ip";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing10.mp";
connectAttr "pCylinderShape1.o" "polyUnite1.ip[0]";
connectAttr "pCylinderShape2.o" "polyUnite1.ip[1]";
connectAttr "pCylinderShape1.wm" "polyUnite1.im[0]";
connectAttr "pCylinderShape2.wm" "polyUnite1.im[1]";
connectAttr "polySplitRing10.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyCylinder2.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyUnite1.out" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "Arrow:pCylinderShape1.o" "polyUnite2.ip[0]";
connectAttr "Arrow:pConeShape1.o" "polyUnite2.ip[1]";
connectAttr "Arrow:pConeShape2.o" "polyUnite2.ip[2]";
connectAttr "Arrow:pConeShape3.o" "polyUnite2.ip[3]";
connectAttr "Arrow:pConeShape4.o" "polyUnite2.ip[4]";
connectAttr "Arrow:pCylinderShape1.wm" "polyUnite2.im[0]";
connectAttr "Arrow:pConeShape1.wm" "polyUnite2.im[1]";
connectAttr "Arrow:pConeShape2.wm" "polyUnite2.im[2]";
connectAttr "Arrow:pConeShape3.wm" "polyUnite2.im[3]";
connectAttr "Arrow:pConeShape4.wm" "polyUnite2.im[4]";
connectAttr "Arrow:polyCylinder1.out" "Arrow:groupParts1.ig";
connectAttr "Arrow:groupId1.id" "Arrow:groupParts1.gi";
connectAttr "Arrow:polyCone1.out" "Arrow:groupParts2.ig";
connectAttr "Arrow:groupId3.id" "Arrow:groupParts2.gi";
connectAttr "Arrow:polyCone2.out" "Arrow:groupParts3.ig";
connectAttr "Arrow:groupId5.id" "Arrow:groupParts3.gi";
connectAttr "polyUnite2.out" "Arrow:groupParts4.ig";
connectAttr "Arrow:groupId11.id" "Arrow:groupParts4.gi";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinder3Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Arrow:pCylinderShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Arrow:pCylinderShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Arrow:pConeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Arrow:pConeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Arrow:pConeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Arrow:pConeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Arrow:pConeShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Arrow:pConeShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Arrow:pConeShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Arrow:pConeShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Arrow:pCylinder1Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "Arrow:groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "Arrow:groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "Arrow:groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "Arrow:groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "Arrow:groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "Arrow:groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "Arrow:groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "Arrow:groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "Arrow:groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "Arrow:groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "Arrow:groupId11.msg" ":initialShadingGroup.gn" -na;
// End of Bow.ma
