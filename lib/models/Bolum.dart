
class Bolum {

  String bolum_adi;
  int onsekiz_kontenjan;
  int ondokuz_kontenjan;

	Bolum.fromJsonMap(Map<String, dynamic> map): 
		bolum_adi = map["bolum_adi"],
		onsekiz_kontenjan = map["onsekiz_kontenjan"],
		ondokuz_kontenjan = map["ondokuz_kontenjan"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['bolum_adi'] = bolum_adi;
		data['onsekiz_kontenjan'] = onsekiz_kontenjan;
		data['ondokuz_kontenjan'] = ondokuz_kontenjan;
		return data;
	}
}
