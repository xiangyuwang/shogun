classifier_C = 0.017
classifier_accuracy = 1e-08
name = 'SVMLin'
classifier_num_threads = 1
data_train = [0.396750926, 0.103618788, 0.837074446, 0.550302393, 0.69095512, 0.68258217, 0.841606232, 0.132569403, 0.65972814, 0.575134054, 0.0308971226;0.201422909, 0.267571541, 0.0725563754, 0.354719806, 0.0272025087, 0.553183492, 0.211500961, 0.287003106, 0.910471626, 0.502816849, 0.269013931;0.598461758, 0.201671435, 0.0743956858, 0.0209063544, 0.951529045, 0.724610824, 0.799948148, 0.980917728, 0.931628703, 0.736913199, 0.69398707;0.336849997, 0.104017252, 0.573722548, 0.576253295, 0.952237285, 0.442570807, 0.690807624, 0.574970627, 0.176760229, 0.592064308, 0.540116709;0.493905994, 0.513422934, 0.163987972, 0.463477731, 0.605653272, 0.489449199, 0.488686195, 0.0775177098, 0.190774152, 0.320972693, 0.419346994;0.593937444, 0.863345105, 0.159164738, 0.0150880302, 0.449237131, 0.432102897, 0.551901218, 0.833221771, 0.802360551, 0.100043284, 0.933995367;0.110414395, 0.634570509, 0.672406294, 0.679877487, 0.265351172, 0.330345092, 0.548676875, 0.199587496, 0.0203104678, 0.562144455, 0.465278572;0.656731206, 0.146700576, 0.840924895, 0.146221488, 0.891343605, 0.449521173, 0.549805259, 0.896581336, 0.299913048, 0.181826996, 0.445751621;0.244367229, 0.527843912, 0.275257864, 0.864489536, 0.607324592, 0.000240669743, 0.805473735, 0.330212337, 0.320207984, 0.383062812, 0.630262528;0.44206071, 0.628635547, 0.146780722, 0.970164465, 0.729606287, 0.250207107, 0.724169908, 0.575025456, 0.109188996, 0.178196427, 0.0413081419;0.809238072, 0.551704753, 0.316748649, 0.126344902, 0.484045876, 0.525261347, 0.701948501, 0.96993721, 0.43494553, 0.406034207, 0.369930005]
classifier_labels = [1, 1, 1, 1, -1, 1, 1, 1, -1, -1, 1]
classifier_epsilon = 1e-05
data_test = [0.826923909, 0.156317221, 0.343812904, 0.724970805, 0.0156949353, 0.289380724, 0.641447163, 0.185952098, 0.302710569, 0.486045074, 0.422023566, 0.10602719, 0.938235322, 0.0442927206, 0.749742756, 0.0714227711, 0.467295803;0.175411292, 0.141097796, 0.125897977, 0.452786637, 0.515484909, 0.133384494, 0.97939573, 0.257765887, 0.45884134, 0.216269558, 0.493922645, 0.756016582, 0.521102014, 0.285648871, 0.248396609, 0.758934406, 0.118238176;0.369966494, 0.151482717, 0.257975829, 0.152683232, 0.886772509, 0.731904199, 0.560927246, 0.224425222, 0.510226827, 0.520833206, 0.590403726, 0.0600851572, 0.972901971, 0.465438971, 0.926531774, 0.00980811471, 0.247558396;0.10399557, 0.769616177, 0.32012505, 0.840492508, 0.832385366, 0.667794793, 0.665781804, 0.700159692, 0.673763835, 0.386908358, 0.682827645, 0.897406969, 0.332573492, 0.944889026, 0.0135815879, 0.349082538, 0.132098402;0.126619829, 0.815429494, 0.918368315, 0.777758254, 0.976615719, 0.21632897, 0.140799912, 0.520703782, 0.829037615, 0.0398390908, 0.995565661, 0.602245929, 0.978941812, 0.365081633, 0.458023821, 0.752361442, 0.792700451;0.233033053, 0.929801086, 0.867423122, 0.0182053031, 0.128568106, 0.496097106, 0.460955514, 0.708390855, 0.0897113761, 0.644855307, 0.616369931, 0.233619598, 0.542393964, 0.222207207, 0.146923027, 0.573134935, 0.977474278;0.236933349, 0.355336149, 0.256573226, 0.266459822, 0.404192134, 0.701855511, 0.038804524, 0.957124196, 0.0462798795, 0.881253182, 0.894378099, 0.524489188, 0.136996829, 0.565145971, 0.62863216, 0.857758958, 0.550895376;0.410709396, 0.838291194, 0.980951797, 0.645103205, 0.874387037, 0.598735113, 0.689787991, 0.688167118, 0.704786987, 0.321013444, 0.575661396, 0.594135584, 0.315071627, 0.349852368, 0.762246765, 0.582723841, 0.149211148;0.837636989, 0.883114287, 0.466141148, 0.208907432, 0.947606495, 0.882269565, 0.244381746, 0.0955937363, 0.440653608, 0.676396986, 0.175388585, 0.513212658, 0.425415494, 0.890551149, 0.429566633, 0.533776394, 0.955286196;0.299691766, 0.288990932, 0.79959508, 0.277538986, 0.83186587, 0.0955356094, 0.111261247, 0.901323374, 0.540812282, 0.718814267, 0.225288892, 0.166274368, 0.834954262, 0.358623407, 0.455032619, 0.0279718973, 0.385880734;0.770437808, 0.821275177, 0.698754789, 0.692179734, 0.506239267, 0.538329329, 0.742631747, 0.247301799, 0.231517068, 0.949924824, 0.0276898868, 0.139465464, 0.570332426, 0.737834839, 0.537891083, 0.355063996, 0.977976119]
classifier_bias = 0.0781820243484
data_type = 'double'
classifier_type = 'linear'
feature_class = 'simple'
classifier_classified = [0.246727504, 0.267782604, 0.226541582, 0.24672979, 0.288641545, 0.210718181, 0.305746768, 0.281761298, 0.187749106, 0.194733593, 0.243396772]
feature_type = 'Real'
