// ignore_for_file: file_names

import 'Value.dart';

class Jokes {
  late String type;
  late Value value;

  Jokes(this.type, this.value);

  Jokes.fromJSON(parsedJSON) {
    type = parsedJSON["type"];
    value = (parsedJSON["value"] != null
        ? Value.fromJSON(parsedJSON["value"])
        : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['type'] = type;
    data['value'] = value.toJson();
    return data;
  }
}
