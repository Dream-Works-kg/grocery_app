import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NewCard extends StatefulWidget {
  final Function(String cardNumber) onAddCard;

  const NewCard({super.key, required this.onAddCard});

  @override
  State<NewCard> createState() => _NewCardState();
}

class _NewCardState extends State<NewCard> {
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
  final TextEditingController ccvController = TextEditingController();

  bool get isButtonActive {
    return cardNumberController.text.length == 16 &&
        expiryDateController.text.isNotEmpty &&
        ccvController.text.isNotEmpty;
  }

  @override
  void initState() {
    super.initState();
    cardNumberController.addListener(() => setState(() {}));
    expiryDateController.addListener(() => setState(() {}));
    ccvController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    cardNumberController.dispose();
    expiryDateController.dispose();
    ccvController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xffFF5E00),
          ),
        ),
        title: Text(
          'New Card',
          style: TextStyle(
            color: Color(0xffFF5E00),
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 20.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildLabel('Card number'),
            _buildTextField(
              controller: cardNumberController,
              hintText: 'xxxx xxxx xxxx xxxx',
              errorText: cardNumberController.text.length == 16 ||
                      cardNumberController.text.isEmpty
                  ? null
                  : 'Card number must be 16 digits',
            ),
            SizedBox(height: 3.5.h),
            _buildLabel('Expiry Date'),
            _buildTextField(
              controller: expiryDateController,
              hintText: 'MM/YY',
            ),
            SizedBox(height: 3.5.h),
            _buildLabel('CCV'),
            _buildTextField(
              controller: ccvController,
              hintText: '****',
            ),
            Spacer(),
            GestureDetector(
              onTap: isButtonActive
                  ? () {
                      widget.onAddCard(cardNumberController.text);
                      Navigator.pop(context);
                    }
                  : null,
              child: Container(
                height: 7.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: isButtonActive ? Color(0xffFF5E00) : Colors.grey,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                  child: Text(
                    'Add Card',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Color(0xff6D3805),
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hintText,
    String? errorText,
  }) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: hintText,
        errorText: errorText,
        hintStyle: TextStyle(
          color: Color(0xff906233),
          fontSize: 18.sp,
          fontWeight: FontWeight.w400,
        ),
        filled: true,
        fillColor: Color(0xffF5F5F5),
        contentPadding:
            EdgeInsets.symmetric(vertical: 15.sp, horizontal: 15.sp),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.sp),
          borderSide: BorderSide(
            color: errorText != null ? Colors.red : Colors.transparent,
            width: 1.5,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.sp),
          borderSide: BorderSide(
            color: errorText != null ? Colors.red : Colors.transparent,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
