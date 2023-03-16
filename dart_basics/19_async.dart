

void main() async {
  DataService dataService = DataService();
  String data = await dataService.getData();
  print(data);
}

class DataService {

  Future<String> _getDataFromCloud() async {
    // get data from cloud -> time
    await Future.delayed(Duration(seconds: 4));
    // return the data
    print("get data finished");
    return "fake data";
  }

  Future<String> _parseDataFromCloud({required String dataFromCloud}) async {
    // get data from cloud -> time
    await Future.delayed(Duration(seconds: 2));
    // return the data
    print("parsing data completed");
    return "fake parsed data";
  }

  Future<String> getData() async {
    final String dataFromCloud = await _getDataFromCloud();
    final String parsedData = await _parseDataFromCloud(dataFromCloud: dataFromCloud);

    // ! Alternative way syntax
    /* final String parsedData = await _getDataFromCloud().then((dataFromCloud) async {
      return await _parseDataFromCloud(dataFromCloud: dataFromCloud);
    }); */

    return parsedData;
  }
}