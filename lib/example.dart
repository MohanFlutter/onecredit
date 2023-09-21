// void generateTxnToken(int mode,
//       {required String astroId, required bool fromHome}) async {
//     CommonScreenLoading.show(
//         text: ""
//             "Payment processing...");
//     bool testing = false;
//     paymentLoading = true;
//     String paymentResponse = "";

//     //Host the Server Side Code on your Server and use your URL here. The following URL may or may not work. Because hosted on free server.
//     //Server Side code url: https://github.com/mrdishant/Paytm-Plugin-Server

//     var body = {
//       "amount": totalAmount.toString(),
//     };

//     try {
//       var hd = await getHeaders(false);
//       print("bodydata ${body} api${Api.getTxToken} body:${jsonEncode(
//               body)} headers ${hd}");
//       final response =
//       await http.post(Uri.parse(Api.getTxToken), body: body, headers: hd);
//       Get.back();
//       print("generate Txn res ${response.body}");
//       var res = jsonDecode(jsonDecode(response.body)['data'])['body'];
//       var resultCode = res['resultInfo']['resultStatus'];
//       var resultMsg = res['resultInfo']['resultMsg'];
//       var resultErrorCode = res['resultInfo']['resultCode'];
//       if (kDebugMode) {
//         print("test result token $res");
//       }
//       if (kDebugMode) {
//         //    print("test resultCode $resultCode type:${resultCode.runtimeType}");
//       }
//       if (resultCode == "S") {
//         if (kDebugMode) {
//           print("paytm initial response status is $resultCode");
//         }
//         String txnToken = res['txnToken'];
//         print("paytm initial txntoken status is $txnToken");

//         paymentResponse = txnToken;
//         if (kDebugMode) {
//           print(
//               "paytm initial txntoken change id paytmResponse status is $paymentResponse");
//         }

//         String orderId = jsonDecode(response.body)['order_id'];
//         if (kDebugMode) {
//           print("paytm initial orderId is $orderId");
//         }

//         if (kDebugMode) {
//           print("test order_id $orderId");
//         }
//         var callBackUrl = (testing
//             ? 'https://securegw-stage.paytm.in'
//             : 'https://securegw.paytm.in') +
//             '/theia/paytmCallback?ORDER_ID=' +
//             orderId;
//         print("paytm initial callback url is $callBackUrl");

//         if (response.statusCode == 200 || response.statusCode == 201) {
//           final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig
//               .instance;
//           await remoteConfig.setConfigSettings(RemoteConfigSettings(
//             fetchTimeout: const Duration(seconds: 10),
//             minimumFetchInterval: Duration.zero,
//           ));
//           await remoteConfig.fetchAndActivate();
//           // testing=remoteConfig.getBool('isPaymentTesting');
//           String key = "";
//           if (testing != null) {
//             if (testing == false) {
//               key = remoteConfig.getString('paytmKey');
//             } else {
//               key = remoteConfig.getString('paytmTestKey');
//             }
//           }
//           // String key="";
//           // if(testing!=null){
//           //   if(testing==false) {
//           //      key=remoteConfig.getString('paytmKey');
//           //   }else{
//           //     key= "pvjhtH14245429567334";
//           //        // remoteConfig.getString('paytmTestKey');
//           //   }
//           // }
//           if (kDebugMode) {
//             print("paytm key $key");
//           }
//           dynamic paytmResponse = Paytm.payWithPaytm(
//               mId: key,
//               //  AppConfig.payTmMerchantId,

//               orderId: orderId,
//               txnToken: txnToken,
//               txnAmount: totalAmount.toString(),
//               callBackUrl: callBackUrl,
//               staging: testing,
//               appInvokeEnabled: false
//           );
//           paytmResponse.then((value) {
//             print(value);
//             paymentLoading = false;
//             var error = "";
//             print("Value is ");
//             if (value['error']) {
//               if (kDebugMode) {
//                 print("error is ${value['error']}");
//               }
//               var error = value['errorMessage'];
//               commonSnackBar(title: "error".tr, msg: error);
//             } else {
//               if (value['response'] != null) {
//                 var status = value['response']['STATUS'];
//                 if (status == "TXN_SUCCESS") {
//                   if (kDebugMode) {
//                     print("Payment Success");
//                   }
//                   bookAppointment(
//                       astroId: astroId,
//                       paymentOrderId: orderId,
//                       paymentDetails: value['response'],
//                       fromHome: fromHome);
//                 }
//                 if (status == "TXN_FAILURE") {
//                   if (kDebugMode) {
//                     print("Payment Failure");
//                   }
//                   commonSnackBar(
//                       title: "Error",
//                       msg: "Something went wrong,try again later!");
//                 }
//                 if (kDebugMode) {
//                   print("Payment Status is $paymentResponse");
//                 }
//               }
//             }
//             paymentResponse += "\n" + value.toString();
//           });
//         } else {
//           paymentLoading = false;
//           print("API eRRor");
//         }
//       } else if (resultCode == "F") {
//         commonSnackBar(title: "error".tr, msg: "pay_ress".tr);
//         Get.to(() =>
//             Error404(
//               errorCode: "404",
//               platForm: "Error From Paytm",
//               errorMessage: resultMsg,
//               platformErrorCode: "Error Code ${resultErrorCode}",
//             ));
//       } else {
//         if (kDebugMode) {
//           print("Result Msg : $resultMsg");
//         }
//         commonSnackBar(title: "error".tr, msg: resultMsg);
//       }
//     } catch (e) {
//       Get.back();
//       paymentLoading = false;
//       if (kDebugMode) {
//         print("code eror API eRRor $e");
//       }
//     }
//   }