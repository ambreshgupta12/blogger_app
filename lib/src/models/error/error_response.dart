class ErrorResponse {
  String? type;
  int? status;
  String? message;

  ErrorResponse({this.type, this.status, this.message});

  ErrorResponse.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['status'] = this.status;
    data['message'] = this.message;
    return data;
  }
}