import 'package:flutter/material.dart';
import 'package:ti/constants/color_manager.dart';
import 'package:ti/data/Models/Payments.dart';

class PeymentMangement extends StatelessWidget {
  List<Payment> paymentList = [
    Payment(from: 'عرفان پزشک پور', amount: '113413412'),
    Payment(from: 'علی کریمی', amount: '1341341'),
    Payment(from: 'محمد محمدی', amount: '652625226'),
    Payment(from: 'کرم احمدی', amount: '256262362'),
    Payment(from: 'سعید سعیدی', amount: '256526256'),
    Payment(from: 'حسین منتظری', amount: '256256636'),
    Payment(from: 'پرویز ارجمند', amount: '26265666'),
  ];
  PeymentMangement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SizedBox(
          width: 200,
          height: 50,
          child: Image(
            image: AssetImage('images/2.png'),
            fit: BoxFit.cover,
          ),
        ),
        backgroundColor: ColorManager.purple,
        toolbarHeight: 50,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 100,
            child: Text(
              textAlign: TextAlign.center,
              'مدیریت پرداخت ها',
              style: TextStyle(
                  fontFamily: 'Vazir',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 500,
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(
                  paymentList.length,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(blurRadius: 7, color: Colors.black)
                          ],
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Center(
                                child: Text(
                                  '${paymentList[index].from}',
                                  style: const TextStyle(
                                      fontFamily: 'Vazir', fontSize: 16),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Center(
                                child: Text(
                                  '${paymentList[index].amount} تومان',
                                  style: const TextStyle(
                                      fontFamily: 'Mvazir', fontSize: 16),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 80,
              decoration: BoxDecoration(
                color: ColorManager.purple,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Text(
                  'بازگشت',
                  style: TextStyle(
                      fontFamily: 'Vazir', color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
