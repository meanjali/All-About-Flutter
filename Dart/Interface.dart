void main() {
  country c = new country();
  print("Country Name : ${c.country_name()}");
  print("Country Name : ${c.flag_image_url()}");
  print("Country Language Name : ${c.language_name()}");
  print("Country Language Id : ${c.language_id()}");
}

class country implements country_info, language {
  String country_name() {
    return "VietNam";
  }

  String flag_image_url() {
    return "VN";
  }

  String language_name() {
    return "Viet Nam";
  }

  String language_id() {
    return "V_N";
  }
}

class country_info {
  String country_name() {}
  String flag_image_url() {}
}

class language {
  String language_name() {}
  String language_id() {}
}
