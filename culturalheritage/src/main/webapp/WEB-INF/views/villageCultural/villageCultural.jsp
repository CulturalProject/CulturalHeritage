<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>다각형에 이벤트 등록하기1</title>
    
</head>
<body>
<div id="map" style="width:100%;height:800px;"></div>
<p id="result"></p>

<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=d3dd36623f74d47f571f0f0e296558b2"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new daum.maps.LatLng(36.710837, 126.921369), // 지도의 중심좌표
        level: 11 // 지도의 확대 레벨  
    };

var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 다각형을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 다각형을 표시합니다 
//중구
var polygonPath = [
        new daum.maps.LatLng(36.349728, 127.403694),
        new daum.maps.LatLng(36.349431, 127.404334),
        new daum.maps.LatLng(36.349088, 127.404600),
        new daum.maps.LatLng(36.349066, 127.405293),
        new daum.maps.LatLng(36.349109, 127.405666),
        new daum.maps.LatLng(36.349088, 127.405932),
        new daum.maps.LatLng(36.349092, 127.405952),
        new daum.maps.LatLng(36.348824, 127.406085),
        new daum.maps.LatLng(36.348808, 127.406997),
        new daum.maps.LatLng(36.348378, 127.407019),
        new daum.maps.LatLng(36.348413, 127.408132),
        new daum.maps.LatLng(36.348055, 127.408510),
        new daum.maps.LatLng(36.347912, 127.409044),
        new daum.maps.LatLng(36.347338, 127.410334),
        new daum.maps.LatLng(36.346837, 127.411135),
        new daum.maps.LatLng(36.345511, 127.411780),
        new daum.maps.LatLng(36.345188, 127.412025),
        new daum.maps.LatLng(36.345027, 127.412381),
        new daum.maps.LatLng(36.344901, 127.412403), 
        new daum.maps.LatLng(36.344185, 127.412047),
        new daum.maps.LatLng(36.343826, 127.412292),
        new daum.maps.LatLng(36.343808, 127.412314),
        new daum.maps.LatLng(36.343737, 127.412803),
        new daum.maps.LatLng(36.342930, 127.413026),
        new daum.maps.LatLng(36.341655, 127.413893),
        new daum.maps.LatLng(36.340866, 127.414571),
        new daum.maps.LatLng(36.339973, 127.415680),
        new daum.maps.LatLng(36.339264, 127.418624),
        new daum.maps.LatLng(36.338648, 127.419771),
        new daum.maps.LatLng(36.337909, 127.420421),
        new daum.maps.LatLng(36.337263, 127.421759),
        new daum.maps.LatLng(36.333109, 127.424715),
        new daum.maps.LatLng(36.329042, 127.429672),
        new daum.maps.LatLng(36.327628, 127.431058),
        new daum.maps.LatLng(36.327017, 127.431826),
        new daum.maps.LatLng(36.323698, 127.434551),
        new daum.maps.LatLng(36.317621, 127.438227),
        new daum.maps.LatLng(36.311902, 127.441142),
        new daum.maps.LatLng(36.310778, 127.445896),
        new daum.maps.LatLng(36.309961, 127.448051),
        new daum.maps.LatLng(36.308122, 127.448241),
        new daum.maps.LatLng(36.304190, 127.451346),
        new daum.maps.LatLng(36.301023, 127.455022),
        new daum.maps.LatLng(36.296221, 127.456797),
        new daum.maps.LatLng(36.293412, 127.457304),
        new daum.maps.LatLng(36.293565, 127.451980),
        new daum.maps.LatLng(36.293616, 127.449191),
        new daum.maps.LatLng(36.292339, 127.447670),
        new daum.maps.LatLng(36.294842, 127.447227),
        new daum.maps.LatLng(36.296885, 127.446529),
        new daum.maps.LatLng(36.295557, 127.444121),
        new daum.maps.LatLng(36.296272, 127.441713),
        new daum.maps.LatLng(36.292799, 127.439304),
        new daum.maps.LatLng(36.291777, 127.433220),
        new daum.maps.LatLng(36.290245, 127.427833),
        new daum.maps.LatLng(36.286873, 127.429797),
        new daum.maps.LatLng(36.283910, 127.433030),
        new daum.maps.LatLng(36.282658, 127.436009),
        new daum.maps.LatLng(36.280819, 127.435565),
        new daum.maps.LatLng(36.278724, 127.432713),
        new daum.maps.LatLng(36.275330, 127.433277),
        new daum.maps.LatLng(36.272595, 127.437061),
        new daum.maps.LatLng(36.269807, 127.436147),
        new daum.maps.LatLng(36.265409, 127.434047),
        new daum.maps.LatLng(36.263471, 127.428039),
        new daum.maps.LatLng(36.254495, 127.425309),
        new daum.maps.LatLng(36.253335, 127.435440),
        new daum.maps.LatLng(36.249695, 127.435980),
        new daum.maps.LatLng(36.246442, 127.437353),
        new daum.maps.LatLng(36.244919, 127.442417),
        new daum.maps.LatLng(36.238689, 127.443619),
        new daum.maps.LatLng(36.236993, 127.437396),
        new daum.maps.LatLng(36.235595, 127.4365763),
        new daum.maps.LatLng(36.228061, 127.433208),
        new daum.maps.LatLng(36.229749, 127.424583),
        new daum.maps.LatLng(36.228102, 127.421520),
        new daum.maps.LatLng(36.211057, 127.412630),
        new daum.maps.LatLng(36.212556, 127.406465),
        new daum.maps.LatLng(36.216469, 127.409340),
        new daum.maps.LatLng(36.219239, 127.409898),
        new daum.maps.LatLng(36.222251, 127.408267),
        new daum.maps.LatLng(36.222043, 127.403547),
        new daum.maps.LatLng(36.226969, 127.403241),
        new daum.maps.LatLng(36.229647, 127.401761),
        new daum.maps.LatLng(36.231015, 127.399668),
        new daum.maps.LatLng(36.232791, 127.401256),
        new daum.maps.LatLng(36.235061, 127.395987),
        new daum.maps.LatLng(36.233809, 127.392739),
        new daum.maps.LatLng(36.235294, 127.387218),
        new daum.maps.LatLng(36.237186, 127.386604),
        new daum.maps.LatLng(36.239148, 127.392233),
        new daum.maps.LatLng(36.243128, 127.390473),
        new daum.maps.LatLng(36.243509, 127.388886),
        new daum.maps.LatLng(36.246797, 127.387984),
        new daum.maps.LatLng(36.247732, 127.389186),
        new daum.maps.LatLng(36.249081, 127.389057),
        new daum.maps.LatLng(36.251262, 127.385881),
        new daum.maps.LatLng(36.252369, 127.387040),
        new daum.maps.LatLng(36.260882, 127.391074),
        new daum.maps.LatLng(36.264412, 127.389057),
        new daum.maps.LatLng(36.265969, 127.387512),
        new daum.maps.LatLng(36.269913, 127.380860),
        new daum.maps.LatLng(36.272647, 127.373093),
        new daum.maps.LatLng(36.281158, 127.370775),
        new daum.maps.LatLng(36.285586, 127.368501),
        new daum.maps.LatLng(36.290601, 127.370647),
        new daum.maps.LatLng(36.293403, 127.376226),
        new daum.maps.LatLng(36.293023, 127.378715),
        new daum.maps.LatLng(36.298453, 127.382534),
        new daum.maps.LatLng(36.305474, 127.380646),
        new daum.maps.LatLng(36.311630, 127.387040),
        new daum.maps.LatLng(36.315710, 127.384980),
        new daum.maps.LatLng(36.320551, 127.385753),
        new daum.maps.LatLng(36.327121, 127.389272),
        new daum.maps.LatLng(36.337423, 127.400945),
        new daum.maps.LatLng(36.343749, 127.403648)

];



//서구
var polygonPath2 = [
                    new daum.maps.LatLng(36.368339, 127.369778),
                    new daum.maps.LatLng(36.372059, 127.380171),
                    new daum.maps.LatLng(36.371361, 127.380388),
                    new daum.maps.LatLng(36.372001, 127.380677),
                    new daum.maps.LatLng(36.372175, 127.381831),
                    new daum.maps.LatLng(36.372349, 127.383130),
                    new daum.maps.LatLng(36.371303, 127.388544),
                    new daum.maps.LatLng(36.372175, 127.392946),
                    new daum.maps.LatLng(36.371129, 127.393524),
                    new daum.maps.LatLng(36.370664, 127.393235),
                    new daum.maps.LatLng(36.370490, 127.394029),
                    new daum.maps.LatLng(36.370083, 127.394245),
                    new daum.maps.LatLng(36.369444, 127.394318),
                    new daum.maps.LatLng(36.369502, 127.395111),
                    new daum.maps.LatLng(36.369269, 127.395544),
                    new daum.maps.LatLng(36.368049, 127.395905),
                    new daum.maps.LatLng(36.367816, 127.396555),
                    new daum.maps.LatLng(36.366131, 127.397132),
                    new daum.maps.LatLng(36.364969, 127.397060),
                    new daum.maps.LatLng(36.363806, 127.397565),
                    new daum.maps.LatLng(36.362992, 127.398504),
                    new daum.maps.LatLng(36.361946, 127.399658),
                    new daum.maps.LatLng(36.361481, 127.400958),
                    new daum.maps.LatLng(36.355378, 127.403412),
                    new daum.maps.LatLng(36.354158, 127.403989),
                    new daum.maps.LatLng(36.353925, 127.404494),
                    new daum.maps.LatLng(36.352704, 127.403772),
                    new daum.maps.LatLng(36.351949, 127.404566),
                    new daum.maps.LatLng(36.350205, 127.404133),
                    new daum.maps.LatLng(36.347705, 127.403412),
                    new daum.maps.LatLng(36.347124, 127.403628),
                    new daum.maps.LatLng(36.346136, 127.402762),
                    new daum.maps.LatLng(36.345089, 127.402545),
                    new daum.maps.LatLng(36.343927, 127.403556),
                    new daum.maps.LatLng(36.333113, 127.396050),
                    new daum.maps.LatLng(36.327066, 127.389121),
                    new daum.maps.LatLng(36.325437, 127.387822),
                    new daum.maps.LatLng(36.324856, 127.388688),
                    new daum.maps.LatLng(36.323926, 127.388399),
                    new daum.maps.LatLng(36.322821, 127.386595),
                    new daum.maps.LatLng(36.320495, 127.385729),
                    new daum.maps.LatLng(36.318401, 127.383852),
                    new daum.maps.LatLng(36.316249, 127.384069),
                    new daum.maps.LatLng(36.315610, 127.385368),
                    new daum.maps.LatLng(36.312993, 127.386739),
                    new daum.maps.LatLng(36.311829, 127.387244),
                    new daum.maps.LatLng(36.305490, 127.380677),
                    new daum.maps.LatLng(36.302814, 127.381687),
                    new daum.maps.LatLng(36.302349, 127.380677),
                    new daum.maps.LatLng(36.302407, 127.382048),
                    new daum.maps.LatLng(36.300313, 127.382842),
                    new daum.maps.LatLng(36.299615, 127.381831),
                    new daum.maps.LatLng(36.299324, 127.382770),
                    new daum.maps.LatLng(36.296823, 127.381398),
                    new daum.maps.LatLng(36.293391, 127.376274),
                    new daum.maps.LatLng(36.293682, 127.375263),
                    new daum.maps.LatLng(36.293158, 127.373459),
                    new daum.maps.LatLng(36.292402, 127.372954),
                    new daum.maps.LatLng(36.289144, 127.370572),
                    new daum.maps.LatLng(36.286759, 127.370067),
                    new daum.maps.LatLng(36.285828, 127.368623),
                    new daum.maps.LatLng(36.283908, 127.368768),
                    new daum.maps.LatLng(36.281174, 127.370644),
                    new daum.maps.LatLng(36.280417, 127.369922),
                    new daum.maps.LatLng(36.279254, 127.370067),
                    new daum.maps.LatLng(36.277741, 127.371727),
                    new daum.maps.LatLng(36.276926, 127.371582),
                    new daum.maps.LatLng(36.275530, 127.372737),
                    new daum.maps.LatLng(36.274541, 127.372521),
                    new daum.maps.LatLng(36.272504, 127.373243),
                    new daum.maps.LatLng(36.270526, 127.371943),
                    new daum.maps.LatLng(36.268990, 127.361229),
                    new daum.maps.LatLng(36.264382, 127.361229),
                    new daum.maps.LatLng(36.264217, 127.361127),
                    new daum.maps.LatLng(36.254587, 127.362964),
                    new daum.maps.LatLng(36.264217, 127.361127),
                    new daum.maps.LatLng(36.241269, 127.363173),
                    new daum.maps.LatLng(36.235454, 127.361456),
                    new daum.maps.LatLng(36.232130, 127.364203),
                    new daum.maps.LatLng(36.221606, 127.362486),
                    new daum.maps.LatLng(36.217452, 127.359396),
                    new daum.maps.LatLng(36.213851, 127.358709),
                    new daum.maps.LatLng(36.208310, 127.347723),
                    new daum.maps.LatLng(36.197506, 127.347380),
                    new daum.maps.LatLng(36.195567, 127.342573),
                    new daum.maps.LatLng(36.192242, 127.342917),
                    new daum.maps.LatLng(36.189194, 127.339483),
                    new daum.maps.LatLng(36.184760, 127.337423),
                    new daum.maps.LatLng(36.183652, 127.332960),
                    new daum.maps.LatLng(36.185869, 127.331244),
                    new daum.maps.LatLng(36.188640, 127.331930),
                    new daum.maps.LatLng(36.190856, 127.329527),
                    new daum.maps.LatLng(36.192519, 127.330557),
                    new daum.maps.LatLng(36.195012, 127.329870),
                    new daum.maps.LatLng(36.196398, 127.332274),
                    new daum.maps.LatLng(36.198891, 127.331244),
                    new daum.maps.LatLng(36.200831, 127.333990),
                    new daum.maps.LatLng(36.201385, 127.330214),
                    new daum.maps.LatLng(36.203047, 127.322660),
                    new daum.maps.LatLng(36.205817, 127.322660),
                    new daum.maps.LatLng(36.209973, 127.319571),
                    new daum.maps.LatLng(36.212466, 127.321631),
                    new daum.maps.LatLng(36.215790, 127.318884),
                    new daum.maps.LatLng(36.222022, 127.314249),
                    new daum.maps.LatLng(36.223891, 127.311245),
                    new daum.maps.LatLng(36.224445, 127.308327),
                    new daum.maps.LatLng(36.227838, 127.305323),
                    new daum.maps.LatLng(36.228599, 127.305494),
                    new daum.maps.LatLng(36.229084, 127.303606),
                    new daum.maps.LatLng(36.227422, 127.303005),
                    new daum.maps.LatLng(36.226107, 127.302919),
                    new daum.maps.LatLng(36.225968, 127.303520),
                    new daum.maps.LatLng(36.223753, 127.303606),
                    new daum.maps.LatLng(36.222576, 127.303177),
                    new daum.maps.LatLng(36.221398, 127.297598),
                    new daum.maps.LatLng(36.223268, 127.293564),
                    new daum.maps.LatLng(36.224237, 127.293392),
                    new daum.maps.LatLng(36.228184, 127.293049),
                    new daum.maps.LatLng(36.228669, 127.291676),
                    new daum.maps.LatLng(36.229984, 127.291161),
                    new daum.maps.LatLng(36.230192, 127.290216),
                    new daum.maps.LatLng(36.231438, 127.289787),
                    new daum.maps.LatLng(36.231577, 127.289187),
                    new daum.maps.LatLng(36.234623, 127.287384),
                    new daum.maps.LatLng(36.234554, 127.286182),
                    new daum.maps.LatLng(36.234761, 127.284981),
                    new daum.maps.LatLng(36.235246, 127.283093),
                    new daum.maps.LatLng(36.235661, 127.281891),
                    new daum.maps.LatLng(36.236007, 127.281633),
                    new daum.maps.LatLng(36.236630, 127.283007),
                    new daum.maps.LatLng(36.238500, 127.282749),
                    new daum.maps.LatLng(36.239053, 127.283178),
                    new daum.maps.LatLng(36.239746, 127.282234),
                    new daum.maps.LatLng(36.240438, 127.282148),
                    new daum.maps.LatLng(36.241338, 127.281633),
                    new daum.maps.LatLng(36.241753, 127.282148),
                    new daum.maps.LatLng(36.242515, 127.281977),
                    new daum.maps.LatLng(36.243761, 127.280346),
                    new daum.maps.LatLng(36.245076, 127.280518),
                    new daum.maps.LatLng(36.244938, 127.281204),
                    new daum.maps.LatLng(36.247914, 127.280003),
                    new daum.maps.LatLng(36.248883, 127.281462),
                    new daum.maps.LatLng(36.251652, 127.279488),
                    new daum.maps.LatLng(36.252136, 127.280088),
                    new daum.maps.LatLng(36.252967, 127.279144),
                    new daum.maps.LatLng(36.254420, 127.281462),
                    new daum.maps.LatLng(36.255805, 127.282148),
                    new daum.maps.LatLng(36.256151, 127.283264),
                    new daum.maps.LatLng(36.256843, 127.281891),
                    new daum.maps.LatLng(36.258504, 127.282234),
                    new daum.maps.LatLng(36.260788, 127.287127),
                    new daum.maps.LatLng(36.261480, 127.287384),
                    new daum.maps.LatLng(36.261065, 127.289444),
                    new daum.maps.LatLng(36.262587, 127.290302),
                    new daum.maps.LatLng(36.263210, 127.291504),
                    new daum.maps.LatLng(36.264387, 127.291847),
                    new daum.maps.LatLng(36.265494, 127.294508),
                    new daum.maps.LatLng(36.266117, 127.294508),
                    new daum.maps.LatLng(36.266117, 127.294508),
                    new daum.maps.LatLng(36.267155, 127.296654),
                    new daum.maps.LatLng(36.268124, 127.296396),
                    new daum.maps.LatLng(36.268816, 127.296911),
                    new daum.maps.LatLng(36.271930, 127.303263),
                    new daum.maps.LatLng(36.271445, 127.304808),
                    new daum.maps.LatLng(36.272552, 127.307125),
                    new daum.maps.LatLng(36.271376, 127.308756),
                    new daum.maps.LatLng(36.273521, 127.310387),
                    new daum.maps.LatLng(36.273521, 127.310816),
                    new daum.maps.LatLng(36.274075, 127.311073),
                    new daum.maps.LatLng(36.275320, 127.309872),
                    new daum.maps.LatLng(36.275459, 127.309013),
                    new daum.maps.LatLng(36.276012, 127.309185),
                    new daum.maps.LatLng(36.276497, 127.308413),
                    new daum.maps.LatLng(36.277258, 127.308413),
                    new daum.maps.LatLng(36.277465, 127.309443),
                    new daum.maps.LatLng(36.278849, 127.309872),
                    new daum.maps.LatLng(36.279679, 127.311331),
                    new daum.maps.LatLng(36.281079, 127.310092),
                    new daum.maps.LatLng(36.282010, 127.310885),
                    new daum.maps.LatLng(36.282359, 127.311030),
                    new daum.maps.LatLng(36.282650, 127.311896),
                    new daum.maps.LatLng(36.282359, 127.312401),
                    new daum.maps.LatLng(36.283522, 127.313845),
                    new daum.maps.LatLng(36.285384, 127.314350),
                    new daum.maps.LatLng(36.286490, 127.313989),
                    new daum.maps.LatLng(36.287362, 127.314566),
                    new daum.maps.LatLng(36.287653, 127.315216),
                    new daum.maps.LatLng(36.288526, 127.315577),
                    new daum.maps.LatLng(36.288060, 127.317093),
                    new daum.maps.LatLng(36.288758, 127.319402),
                    new daum.maps.LatLng(36.288817, 127.320701),
                    new daum.maps.LatLng(36.289457, 127.320773),
                    new daum.maps.LatLng(36.290736, 127.322794),
                    new daum.maps.LatLng(36.292365, 127.322578),
                    new daum.maps.LatLng(36.293354, 127.323444),
                    new daum.maps.LatLng(36.295623, 127.322722),
                    new daum.maps.LatLng(36.298473, 127.322578),
                    new daum.maps.LatLng(36.299927, 127.324960),
                    new daum.maps.LatLng(36.300800, 127.324887),
                    new daum.maps.LatLng(36.300509, 127.326042),
                    new daum.maps.LatLng(36.301323, 127.325537),
                    new daum.maps.LatLng(36.301556, 127.326187),
                    new daum.maps.LatLng(36.302429, 127.326042),
                    new daum.maps.LatLng(36.303359, 127.326980),
                    new daum.maps.LatLng(36.301498, 127.326475),
                    new daum.maps.LatLng(36.301149, 127.327125),
                    new daum.maps.LatLng(36.302138, 127.327558),
                    new daum.maps.LatLng(36.302661, 127.327630),
                    new daum.maps.LatLng(36.302254, 127.328857),
                    new daum.maps.LatLng(36.302312, 127.330300),
                    new daum.maps.LatLng(36.302603, 127.330878),
                    new daum.maps.LatLng(36.302196, 127.331311),
                    new daum.maps.LatLng(36.302487, 127.331455),
                    new daum.maps.LatLng(36.301731, 127.333260),
                    new daum.maps.LatLng(36.309699, 127.333621),
                    new daum.maps.LatLng(36.309932, 127.334270),
                    new daum.maps.LatLng(36.310281, 127.335641),
                    new daum.maps.LatLng(36.311153, 127.335641),
                    new daum.maps.LatLng(36.313770, 127.337951),
                    new daum.maps.LatLng(36.313537, 127.338817),
                    new daum.maps.LatLng(36.314584, 127.339322),
                    new daum.maps.LatLng(36.317143, 127.338095),
                    new daum.maps.LatLng(36.317783, 127.338312),
                    new daum.maps.LatLng(36.318248, 127.338889),
                    new daum.maps.LatLng(36.318771, 127.338889),
                    new daum.maps.LatLng(36.319935, 127.337157),
                    new daum.maps.LatLng(36.320837, 127.338110),
                    new daum.maps.LatLng(36.323189, 127.336737),
                    new daum.maps.LatLng(36.324295, 127.338110),
                    new daum.maps.LatLng(36.326923, 127.337595),
                    new daum.maps.LatLng(36.327061, 127.336393),
                    new daum.maps.LatLng(36.327753, 127.335878),
                    new daum.maps.LatLng(36.327614, 127.337595),
                    new daum.maps.LatLng(36.331487, 127.338453),
                    new daum.maps.LatLng(36.333284, 127.337595),
                    new daum.maps.LatLng(36.333561, 127.338282),
                    new daum.maps.LatLng(36.332316, 127.339655),
                    new daum.maps.LatLng(36.327614, 127.337595),
                    new daum.maps.LatLng(36.332178, 127.344976),
                    new daum.maps.LatLng(36.332731, 127.344976),
                    new daum.maps.LatLng(36.332455, 127.346865),
                    new daum.maps.LatLng(36.331072, 127.349440),
                    new daum.maps.LatLng(36.330795, 127.351156),
                    new daum.maps.LatLng(36.331210, 127.351156),
                    new daum.maps.LatLng(36.331210, 127.352873),
                    new daum.maps.LatLng(36.331901, 127.354933),
                    new daum.maps.LatLng(36.333146, 127.355276),
                    new daum.maps.LatLng(36.335912, 127.355448),
                    new daum.maps.LatLng(36.341028, 127.352701),
                    new daum.maps.LatLng(36.348218, 127.349440),
                    new daum.maps.LatLng(36.352227, 127.349440),
                    new daum.maps.LatLng(36.353333, 127.351671),
                    new daum.maps.LatLng(36.355822, 127.354590),
                    new daum.maps.LatLng(36.355960, 127.356306),
                    new daum.maps.LatLng(36.356928, 127.356478),
                    new daum.maps.LatLng(36.357757, 127.358366),
                    new daum.maps.LatLng(36.360660, 127.360083),
                    new daum.maps.LatLng(36.363149, 127.361628),
                    new daum.maps.LatLng(36.364669, 127.365919),
                    new daum.maps.LatLng(36.367296, 127.369696),
                    new daum.maps.LatLng(36.372133, 127.379995)
                    
            ];

// 지도에 표시할 다각형을 생성합니다
var polygon = new daum.maps.Polygon({
    path:polygonPath, // 그려질 다각형의 좌표 배열입니다
    strokeWeight: 3, // 선의 두께입니다
    strokeColor: '#39DE2A', // 선의 색깔입니다
    strokeOpacity: 0.8, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
    strokeStyle: 'solid', // 선의 스타일입니다
    fillColor: '#A2FF99', // 채우기 색깔입니다
    fillOpacity: 0.7 // 채우기 불투명도 입니다
});

var polygon2 = new daum.maps.Polygon({
    path:polygonPath2, // 그려질 다각형의 좌표 배열입니다
    strokeWeight: 3, // 선의 두께입니다
    strokeColor: '#39DE2A', // 선의 색깔입니다
    strokeOpacity: 0.8, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
    strokeStyle: 'solid', // 선의 스타일입니다
    fillColor: '#A2FF99', // 채우기 색깔입니다
    fillOpacity: 0.7 // 채우기 불투명도 입니다
});

// 지도에 다각형을 표시합니다
polygon.setMap(map);
polygon2.setMap(map);

// 다각형에 마우스오버 이벤트가 발생했을 때 변경할 채우기 옵션입니다
var mouseoverOption = { 
    fillColor: '#EFFFED', // 채우기 색깔입니다
    fillOpacity: 0.8 // 채우기 불투명도 입니다        
};

// 다각형에 마우스아웃 이벤트가 발생했을 때 변경할 채우기 옵션입니다
var mouseoutOption = {
    fillColor: '#A2FF99', // 채우기 색깔입니다 
    fillOpacity: 0.7 // 채우기 불투명도 입니다        
};

// 다각형에 마우스오버 이벤트를 등록합니다
daum.maps.event.addListener(polygon, 'mouseover', function() { 

    // 다각형의 채우기 옵션을 변경합니다
    polygon.setOptions(mouseoverOption);

});   

daum.maps.event.addListener(polygon, 'mouseout', function() { 

    // 다각형의 채우기 옵션을 변경합니다
    polygon.setOptions(mouseoutOption);
    
}); 

// 다각형에 마우스다운 이벤트를 등록합니다
var downCount = 0;
daum.maps.event.addListener(polygon, 'mousedown', function() { 
    console.log(event);
    var resultDiv = document.getElementById('result');
    resultDiv.innerHTML = '다각형에 mousedown 이벤트가 발생했습니다!' + (++downCount);
}); 
</script>
</body>
</html>