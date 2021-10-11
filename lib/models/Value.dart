// ignore_for_file: file_names

class Value {
  late int id;
  late String joke;

  Value({id, joke});

  Value.fromJSON(parsedJSON) {
    id = parsedJSON["id"];
    joke = parsedJSON["joke"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['joke'] = joke;
    return data;
  }
}
