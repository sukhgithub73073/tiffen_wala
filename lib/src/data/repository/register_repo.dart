import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tiffen_wala/src/data/models/response_model.dart';
import 'package:tiffen_wala/src/data/network/api_status_code.dart';


abstract class RegisterRepository {
  Future<ResponseModel> registerApi(Map<String, dynamic> body);
}

class RegisterRepositoryImp extends RegisterRepository {
  @override
  Future<ResponseModel> registerApi(Map<String, dynamic> body) async {
    var responseModel = await ResponseModel();
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection(body["role_type"])
        .where("mobile", isEqualTo: body["mobile"])
        .get();
    if (querySnapshot.docs.isEmpty) {
      var res = await FirebaseFirestore.instance
          .collection(body["role_type"])
          .add(body);
      responseModel.status = "${RepoResponseStatus.success}";
      responseModel.message =
          "Registration Successful! Your records have been successfully registered";
      responseModel.data = res;
    } else {
      responseModel.status = "${RepoResponseStatus.error}";
      responseModel.message =
          "Mobile number already exists! please use a different mobile number";
      responseModel.data = {};
    }
    return responseModel;
  }
}
