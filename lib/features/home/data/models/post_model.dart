class PostModel {
  final String userName;
  final String mobileNumber;
  final String title;
  final int howManyBagsNeeeded;
  final String bloodType;
  final String hospitalName;
  final String whyDoYouNeedBlood;
  final String dateYouNeedBlod;
  final String cityName;
  PostModel({
    required this.cityName,
    required this.title,
    required this.userName,
    required this.dateYouNeedBlod,
    required this.mobileNumber,
    required this.howManyBagsNeeeded,
    required this.bloodType,
    required this.hospitalName,
    required this.whyDoYouNeedBlood,
  });
  toJson() {
    return {
      "cityName": cityName,
      "title": title,
      "userName": userName,
      "dateYouNeedBlod": dateYouNeedBlod,
      "mobileNumber": mobileNumber,
      "howManyBagsNeeeded": howManyBagsNeeeded,
      "bloodType": bloodType,
      "hospitalName": hospitalName,
      "whyDoYouNeedBlood": whyDoYouNeedBlood,
    };
  }

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      cityName: json["cityName"],
      title: json["title"],
      userName: json["userName"],
      dateYouNeedBlod: json["dateYouNeedBlod"],
      mobileNumber: json["mobileNumber"],
      howManyBagsNeeeded: json["howManyBagsNeeeded"],
      bloodType: json["bloodType"],
      hospitalName: json["hospitalName"],
      whyDoYouNeedBlood: json["whyDoYouNeedBlood"],
    );
  }
}

List<PostModel> posts = [
  PostModel(
    cityName: "Cairo",
    title: "Urgent Need for Blood",
    userName: "Ahmed Ali",
    dateYouNeedBlod: "2025-02-24",
    mobileNumber: "01012345678",
    howManyBagsNeeeded: 2,
    bloodType: "O+",
    hospitalName: "Cairo Hospital",
    whyDoYouNeedBlood: "Emergency surgery after a car accident.",
  ),
  PostModel(
    cityName: "Alexandria",
    title: "Help Save a Life",
    userName: "Sara Mohamed",
    dateYouNeedBlod: "2025-02-23",
    mobileNumber: "01198765432",
    howManyBagsNeeeded: 3,
    bloodType: "A-",
    hospitalName: "Alexandria Medical Center",
    whyDoYouNeedBlood: "Severe internal bleeding, urgent transfusion needed.",
  ),
  PostModel(
    cityName: "Mansoura",
    title: "Cancer Patient Needs Blood",
    userName: "Omar Tarek",
    dateYouNeedBlod: "2025-02-22",
    mobileNumber: "01234567890",
    howManyBagsNeeeded: 1,
    bloodType: "B+",
    hospitalName: "Mansoura Hospital",
    whyDoYouNeedBlood: "Ongoing chemotherapy treatment.",
  ),
  PostModel(
    cityName: "Giza",
    title: "Heart Surgery Patient Needs Blood",
    userName: "Youssef Hassan",
    dateYouNeedBlod: "2025-02-21",
    mobileNumber: "01098765432",
    howManyBagsNeeeded: 4,
    bloodType: "AB-",
    hospitalName: "Assiut University Hospital",
    whyDoYouNeedBlood: "Preparing for major heart surgery.",
  ),
  PostModel(
    cityName: "Giza",
    title: "Mother in Critical Condition Needs Blood",
    userName: "Mariam Adel",
    dateYouNeedBlod: "2025-02-20",
    mobileNumber: "01512345678",
    howManyBagsNeeeded: 2,
    bloodType: "O-",
    hospitalName: "Giza Specialized Hospital",
    whyDoYouNeedBlood:
        "Complications from childbirth, urgent transfusion required.",
  ),
];
